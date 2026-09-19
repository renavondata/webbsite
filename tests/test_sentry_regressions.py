#!/usr/bin/env python3
"""Runnable checks for the 2026-09-19 Sentry batch (no DB, no pytest).

Same house style as tests/test_app_hardening.py: a plain script, run it directly.

    uv run python tests/test_sentry_regressions.py

Pins:
  1. /pages/TV.asp renders (the template is TV.html; Linux is case-sensitive);
  2. reghist.asp computes non-CCASS holdings = issued - CCASS total, the change
     against the chronologically previous row in both sort orders, and drops
     unchanged rows when o=0;
  3. an empty or junk ?d= falls back to the default instead of reaching SQL
     as '' (SFClicensees.asp?d= was an InvalidDatetimeFormat);
  3b. positions.asp / possum.asp validate ?f= ?t= (they were pasted into SQL);
  3d. str.asp?sc= compares the zero-padded varchar stockcode as text;
  3e. status.asp counts only tables that exist, and one failing figure shows
      '?' without blanking the rest;
  4. a failed query is ONE error log record (the logging integration makes
     each ERROR line its own Sentry issue);
  5. ncipchg.asp joins currencies and filters on holdings, not a SELECT alias;
     no query uses c.currency without binding alias c;
  6. db.py error events are fingerprinted per route (one frame, else merged).

The DB engine points at a port nothing listens on; routes that need rows get
a stubbed execute_query.
"""

import logging
import os
import sys
from datetime import date

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

os.environ.setdefault("DATABASE_URL", "postgresql://stub:stub@127.0.0.1:1/stub")

from webbsite import create_app  # noqa: E402
from webbsite import db as db_module  # noqa: E402
from webbsite.asp_helpers import get_date_or_default  # noqa: E402
from webbsite.routes import ccass  # noqa: E402

_failures: list[str] = []


def check(name, got, want):
    if got != want:
        _failures.append(f"{name}: got {got!r}, want {want!r}")
    else:
        print(f"  ok  {name}")


# dailylog rows for one issue, ascending: issued 1000 throughout, CCASS total
# 600 -> 600 -> 700, so non-CCASS holding 400 -> 400 -> 300.
_DAILYLOG = [
    {"atdate": date(2026, 1, 1), "ctotal": 600, "maxdate": date(2025, 12, 31), "shares": 1000},
    {"atdate": date(2026, 1, 2), "ctotal": 600, "maxdate": date(2025, 12, 31), "shares": 1000},
    {"atdate": date(2026, 1, 3), "ctotal": 700, "maxdate": date(2025, 12, 31), "shares": 1000},
]


def _stub_execute_query(sql, params=None, timeout_s=None):
    if "ccass.dailylog" in sql:
        return list(reversed(_DAILYLOG)) if "d.atDate DESC" in sql else _DAILYLOG
    if "stockName" in sql:
        return [{"stockname": "ACME:  Ord HKD", "personid": 7}]
    return []


class _Collect(logging.Handler):
    def __init__(self):
        super().__init__(logging.ERROR)
        self.records = []

    def emit(self, record):
        self.records.append(record)


class _FailingSession:
    def execute(self, *a, **k):
        raise RuntimeError("boom")

    def rollback(self):
        pass


def run():
    app = create_app()
    client = app.test_client()

    # 1. TV page ---------------------------------------------------------------
    check("TV.asp renders", client.get("/pages/TV.asp").status_code, 200)

    # 2. reghist ---------------------------------------------------------------
    real = ccass.execute_query
    ccass.execute_query = _stub_execute_query
    try:
        up = client.get("/ccass/reghist.asp?i=1&sort=dateup&o=1")
        body = up.get_data(as_text=True)
        check("reghist dateup: 200", up.status_code, 200)
        check("reghist dateup: holding 300 shown", "<td class=\"colHide2\">300</td>" in body, True)
        check("reghist dateup: change -100 shown", "<td>-100</td>" in body, True)
        check("reghist dateup: stake 30.00%", "<td>30.00</td>" in body, True)
        check("reghist dateup o=1: 3 rows", body.count("href=\"chldchg.asp?i=1&amp;d="), 3)

        dn = client.get("/ccass/reghist.asp?i=1&sort=datedn&o=1")
        body = dn.get_data(as_text=True)
        check("reghist datedn: 200", dn.status_code, 200)
        check("reghist datedn: newest row first",
              -1 < body.find("d=2026-01-03") < body.find("d=2026-01-01"), True)
        check("reghist datedn: change -100 shown", "<td>-100</td>" in body, True)

        # o=0 drops the 2026-01-02 row (change 0); the first-dated row has no
        # comparison and stays, as in reghist.asp.
        body = client.get("/ccass/reghist.asp?i=1&sort=dateup&o=0").get_data(as_text=True)
        check("reghist o=0: unchanged row dropped", "d=2026-01-02" in body, False)
        check("reghist o=0: 2 rows", body.count("href=\"chldchg.asp?i=1&amp;d="), 2)
    finally:
        ccass.execute_query = real

    # 3. empty/invalid ?d= -----------------------------------------------------
    for qs, want in (("d=", "2020-01-01"), ("d=junk", "2020-01-01"), ("d=2024-05-06", "2024-05-06")):
        with app.test_request_context(f"/?{qs}"):
            check(f"get_date_or_default ?{qs}", get_date_or_default("d", "2020-01-01"), want)

    # 3b. f/t never reach SQL raw (positions.asp and possum.asp interpolated them)
    from webbsite.routes.dbpub import corporate, statistics

    evil = "2024-01-01') OR 1=1 --"
    seen = []

    def rec(sql, params=None, timeout_s=None):
        seen.append((sql, params))
        if "FROM enigma.people" in sql:
            return [{"name1": "X", "name2": None, "cname": None, "is_org": False}]
        return []

    real_c, real_s = corporate.execute_query, statistics.execute_query
    corporate.execute_query = statistics.execute_query = rec
    try:
        for url in (f"/dbpub/positions.asp?p=1&f={evil}&t={evil}",
                    f"/dbpub/possum.asp?p=1&f={evil}&t={evil}"):
            seen.clear()
            client.get(url)
            leaked = [s for s, p in seen if "OR 1=1" in s or "OR 1=1" in str(p)]
            check(f"{url.split('?')[0]}: injected f/t never reaches SQL", leaked, [])
        seen.clear()
        client.get("/dbpub/positions.asp?p=1&f=2020-01-01&t=2021-01-01&hide=Y")
        main = [(s, p) for s, p in seen if "enigma.directorships" in s]
        check("positions: date filter parameterized", "'2020-01-01'" in main[0][0], False)
        check("positions: date filter params bound", list(main[0][1][-2:]), ["2020-01-01", "2021-01-01"])
    finally:
        corporate.execute_query, statistics.execute_query = real_c, real_s

    # 3c. timeout shapes: filter-first calendars, guarded positions, no holdings scan
    from webbsite import watermarks
    from webbsite.routes.dbpub import incorporations

    real_i, real_db = incorporations.execute_query, db_module.execute_query
    real_ccass_done = watermarks.ccass_done
    incorporations.execute_query = corporate.execute_query = rec
    # str_route imports execute_query from webbsite.db per call, so stub there.
    db_module.execute_query = rec
    try:
        for qs in ("", "&t=2", "&w=3", "&t=2&w=3"):
            seen.clear()
            client.get(f"/dbpub/disHKcaltype.asp?y=2023{qs}")
            main = [s for s, _ in seen if "LIMIT 5000" in s]
            check(f"disHKcaltype{qs or ' (all)'}: filters before ORDER BY/LIMIT",
                  len(main) == 1 and "AS MATERIALIZED" in main[0], True)
        for qs in ("", "&t=2"):
            seen.clear()
            client.get(f"/dbpub/incHKcaltype.asp?y=2023{qs}")
            main = [s for s, _ in seen if "LIMIT 5000" in s]
            check(f"incHKcaltype{qs or ' (all)'}: filters before ORDER BY/LIMIT",
                  len(main) == 1 and "AS MATERIALIZED" in main[0], True)

        seen.clear()
        client.get("/dbpub/positions.asp?p=1")
        main = [s for s, _ in seen if "enigma.directorships" in s]
        check("positions: return functions only for listed rows",
              main[0].count("CASE WHEN h.issueid IS NOT NULL THEN enigma."), 3)

        seen.clear()
        client.get("/pages/status.asp")
        check("status: no MAX(atdate) scan of ccass.holdings",
              [s for s, _ in seen if "MAX(atdate)" in s and "ccass.holdings" in s], [])

        # 3d. stockcode is a zero-padded varchar ('0700'): str.asp?sc=00700
        # compared it to the int 700, an UndefinedFunction error.
        seen.clear()
        client.get("/dbpub/str.asp?sc=00700")
        main = [(s, p) for s, p in seen if "enigma.stocklistings sl" in s]
        check("str.asp: stockcode compared LPAD-normalised",
              len(main) == 1 and "LPAD(sl.stockcode, 8, '0')" in main[0][0], True)
        check("str.asp: stockcode bound as text", main[0][1] if main else None, ("700",))

        # 3e. status.asp: enigma.hksols and enigma.reports do not exist
        # (WEBBSITE-1C), and one failing figure used to blank all of them.
        # Stub the watermark, or its dead-port failure ends the page before
        # the hksols query and this check passes vacuously.
        watermarks.ccass_done = lambda: "2025-10-10"
        status_sql = []

        def counts(sql, params=None, timeout_s=None):
            status_sql.append(sql)
            return [{"count": 5}]

        db_module.execute_query = counts
        client.get("/pages/status.asp")
        check("status: no query on the missing hksols/reports tables",
              [s for s in status_sql if "enigma.hksols" in s or "enigma.reports" in s], [])

        def one_fails(sql, params=None, timeout_s=None):
            if "enigma.people" in sql:
                raise RuntimeError("boom")
            return [{"count": 5}]

        db_module.execute_query = one_fails
        body = client.get("/pages/status.asp").get_data(as_text=True)
        check("status: a failing figure shows '?'", body.count('<td class="right">?</td>'), 1)
        check("status: the other figures still render",
              body.count('<td class="right">5</td>'), 6)
    finally:
        incorporations.execute_query, corporate.execute_query = real_i, real_c
        db_module.execute_query = real_db
        watermarks.ccass_done = real_ccass_done

    # 4. one log record per failed query --------------------------------------
    collect = _Collect()
    db_module.logger.addHandler(collect)
    real_get_db = db_module.get_db
    db_module.get_db = lambda: _FailingSession()
    try:
        with app.app_context():
            for fn in (db_module.execute_query, db_module.execute_scalar):
                collect.records.clear()
                try:
                    fn("SELECT 1")
                except Exception:
                    pass
                check(f"{fn.__name__}: one ERROR record per failure", len(collect.records), 1)
    finally:
        db_module.get_db = real_get_db
        db_module.logger.removeHandler(collect)

    # 5. ncipchg.asp: missing currencies join (WEBBSITE-1D), and the default
    # "hide unchanged" filter named the SELECT alias hldchg inside WHERE.
    captured = []

    def cap(sql, params=None, timeout_s=None):
        captured.append(sql)
        return []

    real = ccass.execute_query
    ccass.execute_query = cap
    try:
        for z in ("0", "1"):
            captured.clear()
            client.get(f"/ccass/ncipchg.asp?d=2026-09-14&z={z}")
            main = [s for s in captured if "ncip1" in s]
            check(f"ncipchg z={z}: currencies joined as c",
                  len(main) == 1 and "enigma.currencies c ON" in main[0], True)
            where = main[0].split("WHERE COALESCE(n2.holding", 1)[1] if main else ""
            check(f"ncipchg z={z}: WHERE does not name the hldchg alias",
                  "hldchg" in where.split("ORDER BY")[0], False)
    finally:
        ccass.execute_query = real

    # 5b. No query anywhere uses c.currency without binding alias c.
    import glob
    import re

    root = os.path.join(os.path.dirname(__file__), "..", "webbsite")
    unbound = []
    for f in glob.glob(os.path.join(root, "**", "*.py"), recursive=True):
        src = open(f, newline="").read()
        for m in re.finditer(r'"""(.*?)"""', src, re.S):
            q = m.group(1)
            if (re.search(r"\bc\.currency\b", q, re.I)
                    and not re.search(r"currencies\s+(AS\s+)?c\b", q, re.I)):
                unbound.append(f"{os.path.relpath(f, root)}:{src[:m.start()].count(chr(10)) + 1}")
    check("every c.currency query joins currencies c", unbound, [])

    # 6. Sentry grouping: db.py errors split by route, everything else untouched.
    from webbsite import _group_db_errors_by_route as group

    ev = group({"logger": "webbsite.db", "transaction": "ccass.ncipchg"}, None)
    check("sentry: db error fingerprinted by route",
          ev.get("fingerprint"), ["{{ default }}", "ccass.ncipchg"])
    check("sentry: other loggers keep default grouping",
          "fingerprint" in group({"logger": "webbsite", "transaction": "x"}, None), False)
    check("sentry: no transaction, default grouping",
          "fingerprint" in group({"logger": "webbsite.db"}, None), False)

    if _failures:
        print("\nFAILED:")
        for f in _failures:
            print("  " + f)
        return 1
    print("\nall checks passed")
    return 0


def test_all():
    """pytest entry point (CI); the direct-run house style still works."""
    assert run() == 0, "\n".join(_failures)


if __name__ == "__main__":
    sys.exit(run())
