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
  7. searchpeople.asp exact mode and indexhk.asp bind user text (CodeQL #2).
  8. events.asp?sc= matches an unpadded stock code ('5' finds '0005').
  9. holders.asp's tree modes (x=c, x=y) start with no parent (-1, not 0):
     an issue with no holders was a 500; and condensed mode attributes a
     holding through hidden 100% intermediates as the ASP's drawTable did.
 10. adviserships.asp shows the ASP's three return columns, measured over the
     window the ASP used for each kind of role, and numbers its rows.
 11. govacCSV.asp exports a leaf item (no children) as its own row: the
     fallback reused the item row, which never selected id/head (WEBBSITE-24);
     and it writes the ASP's layout (Others row, totals, quoting, filename),
     from the same table govac.asp renders.
 12. a page rendered after a route swallowed a database failure (timeout,
     query error, no connection) is never cached: routes catch broadly and
     render an empty 200, which the edge then served for hours, or a year.
 13. CSV.asp exports: it called .cursor() on a SQLAlchemy Connection (a 500
     for every table), and a LIMIT 50000 truncated whole-table exports;
     values are written as the ASP's GetCSV wrote them.
 14. one failed query is one Sentry issue: the route's own re-log of a
     failure db.py already reported is dropped (with or without exc_info),
     while unrelated route errors and unhandled exceptions still report.
 15. one database outage is one Sentry issue (connection failures are not
     split by route; query errors still are), the 04:30 route check's own
     requests are tagged synthetic, and a disposed engine does not strand a
     request still running (WEBBSITE-2F: "Database engine not initialized").

The DB engine points at a port nothing listens on; routes that need rows get
a stubbed execute_query.
"""

import logging
import os
import re
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

    # 7. CodeQL py/sql-injection: user text is bound, never spliced into SQL.
    from webbsite.routes import search

    bound = []

    def rec_bound(sql, params=None, timeout_s=None):
        bound.append((sql, params))
        return []

    real_search, real_stats = search.execute_query, statistics.execute_query
    search.execute_query = statistics.execute_query = rec_bound
    try:
        client.get("/dbpub/searchpeople.asp?n1=O'Brien&n2=Pat&e=1")
        check("searchpeople exact: two queries", len(bound), 2)
        for sql, params in bound:
            check("searchpeople exact: name not in SQL", "Brien" in sql, False)
            check("searchpeople exact: names bound", params, ("O'Brien", "Pat"))
        bound.clear()
        client.get("/dbpub/searchpeople.asp?n1=Chan&e=1")
        check("searchpeople exact, no n2: IS NULL and one param",
              [("dn2 IS NULL" in s, p) for s, p in bound], [(True, ("Chan",))] * 2)
        bound.clear()
        client.get("/dbpub/indexhk.asp?p=B")
        check("indexhk: letter bound as a LIKE prefix",
              [("LIKE %s" in s, p) for s, p in bound], [(True, ("B%",))] * 2)
        bound.clear()
        client.get("/dbpub/indexhk.asp?p=0")
        check("indexhk: numeric starts take no params", [p for _, p in bound], [None, None])
    finally:
        search.execute_query, statistics.execute_query = real_search, real_stats

    # 8. events.asp?sc= pads the stock code (sc=5 found nothing; only '0005' did).
    from webbsite.routes.dbpub import events

    looked_up = []

    def rec_events(sql, params=None, timeout_s=None):
        looked_up.append((sql, params))
        return []

    real_events = events.execute_query
    events.execute_query = rec_events
    try:
        client.get("/dbpub/events.asp?sc=5")
        lookup = [(s, p) for s, p in looked_up if "stocklistings" in s]
        check("events sc=: stockcode compared padded",
              len(lookup) == 1 and "LPAD(stockCode, 8, '0') = LPAD(%s, 8, '0')" in lookup[0][0], True)
        check("events sc=: code bound as text", lookup[0][1] if lookup else None, ("5",))
    finally:
        events.execute_query = real_events

    # 9. tuntraff.asp sorts by a SELECT alias, never a base column. The query is
    # grouped, so ORDER BY defcnt is a GroupingError (WEBBSITE-1G/1H) -- the two
    # direction-column headers were 500s in both directions and both frequencies.

    from webbsite.routes.dbpub import transport

    tt_sql = []

    def rec_tuntraff(sql, params=None, timeout_s=None):
        tt_sql.append(sql)
        if "FROM enigma.tunnels WHERE" in sql:
            return [{"name": "Cross-Harbour", "notes": "", "opened": date(1972, 8, 2)}]
        if "defdir" in sql:
            return [{"defdir": "Northbound", "altdir": "Southbound"}]
        return []

    # What the template prints, so a SELECT that stopped defining these would
    # blank the page even though every sort still parsed.
    printed = {"d", "defc", "altc", "defa", "alta"}
    real_t = transport.execute_query
    transport.execute_query = rec_tuntraff
    try:
        for sort in ("defup", "defdn", "altup", "altdn", "defaup", "defadn",
                     "altaup", "altadn", "datup", "datdn", "junk"):
            for f in (1, 2):
                tt_sql.clear()
                r = client.get(f"/dbpub/tuntraff.asp?t=1&vc=0&f={f}&sort={sort}")
                main = [s for s in tt_sql if "SUM(defcnt)" in s and "GROUP BY" in s]
                # Derived from the query itself, not a literal: a renamed alias
                # must not leave this passing while the sort links 500 again.
                aliases = {a.lower() for a in re.findall(r"\bAS\s+(\w+)", main[0], re.I)} if main else set()
                terms = [t.strip().removesuffix(" DESC")
                         for t in main[0].rsplit("ORDER BY", 1)[1].split(",")] if main else []
                check(f"tuntraff sort={sort} f={f}: 200", r.status_code, 200)
                check(f"tuntraff sort={sort} f={f}: ORDER BY names a SELECT alias",
                      terms and set(terms) <= aliases, True)
                check(f"tuntraff sort={sort} f={f}: SELECT defines what the template prints",
                      aliases >= printed, True)
    finally:
        transport.execute_query = real_t

    # 9. holders.asp tree modes: top-level holders have no parent. The sort
    # sweep found x=c and x=y were 500s on every company it tried; once they
    # rendered, condensed mode turned out to attribute stakes differently from
    # the ASP's drawTable.
    holders_of, issues_of = {}, {}

    def rec_holders(sql, params=None, timeout_s=None):
        if "enigma.sectypes" in sql:
            return [{"issueid": 10, "typelong": "Ordinary shares",
                     "osdate": None, "outstanding": 1000}]
        if "enigma.webholders3" in sql:
            return [dict(r) for r in holders_of.get(params[-1], [])]
        if "SELECT id1 FROM enigma.issue" in sql:
            return [{"id1": i} for i in issues_of.get(params[0], [])]
        return []

    def holder(pid, name, stake, issue, kind="P"):
        return {"personid": pid, "persontype": kind, "name": name, "stakecomp": stake,
                "issue": issue, "holdingdate": None, "typeshort": None, "orgtype": None}

    def condensed_rows():
        """(level, stake) per tree row; the stake cell is 60px wider per level."""
        body = client.get("/dbpub/holders.asp?p=1&x=c").get_data(as_text=True)
        return sorted((int(w) // 60 - 1, pct) for w, pct in re.findall(
            r'text-align:right;width:(\d+)px;padding-right:5px">\s*(\d+\.\d\d)%', body))

    real_h = corporate.execute_query
    corporate.execute_query = rec_holders
    try:
        for x in ("c", "y"):
            r = client.get(f"/dbpub/holders.asp?p=1&x={x}")
            check(f"holders x={x}: an issue with no holders renders", r.status_code, 200)

        # Two people holding the issue directly keep their own stakes (with
        # parent 0, the second became the first's child and took its 30%).
        holders_of.clear()
        holders_of[10] = [holder(2, "Alpha", 0.3, 10), holder(3, "Beta", 0.2, 10)]
        check("holders x=c: each top-level holder keeps its own stake",
              condensed_rows(), [(0, "20.00"), (0, "30.00")])

        # A wholly-owned intermediate is hidden and its owner shown holding
        # what the intermediate held: MrX 60%, not the 100% he has of HoldCo.
        holders_of.clear()
        issues_of.clear()
        holders_of[10] = [holder(2, "HoldCo", 0.6, 10, "O"), holder(3, "MrsY", 0.4, 10)]
        holders_of[20] = [holder(4, "MrX", 1.0, 20)]
        issues_of[2] = [20]
        check("holders x=c: a 100% intermediate passes its stake down",
              condensed_rows(), [(0, "40.00"), (0, "60.00")])

        # A visible intermediate keeps its holders' own stakes beneath it.
        holders_of.clear()
        issues_of.clear()
        holders_of[10] = [holder(2, "Vis", 0.3, 10, "O")]
        holders_of[30] = [holder(5, "A", 0.5, 30), holder(6, "B", 0.5, 30)]
        issues_of[2] = [30]
        check("holders x=c: holders of a visible intermediate keep their stakes",
              condensed_rows(), [(0, "30.00"), (1, "50.00"), (1, "50.00")])
    finally:
        corporate.execute_query = real_h

    # 10. adviserships.asp: returns, per the ASP (dbpub/adviserships.asp).
    adv_sql = []
    one_time = [False]
    same_client = [False]

    def rec_adv(sql, params=None, timeout_s=None):
        if "enigma.adviserships adv" in sql:
            adv_sql.append((sql, params))
            return [
                {"orgid": 763, "org": "OOIL", "issueid": 279, "adddate": date(1998, 3, 20),
                 "remdate": None, "totret": 646.6509, "cagret": 0.2613, "cagrel": 0.2096},
                {"orgid": 763 if same_client[0] else 66471, "org": "Samsonite", "issueid": 6940,
                 "adddate": date(2011, 6, 3), "remdate": date(2017, 3, 15),
                 "totret": 0.9882, "cagret": 0.1270, "cagrel": None},
            ]
        if "FROM enigma.organisations WHERE personid" in sql:
            return [{"name1": "HSBC"}]
        if "roleID" in sql or "roleid" in sql.lower():
            return [{"roleid": 2, "rolelong": "Banker", "onetime": one_time[0]}]
        return []

    real_s = statistics.execute_query
    statistics.execute_query = rec_adv
    try:
        body = client.get("/dbpub/adviserships.asp?p=382&r=2&sort=cagretdn"
                          "&f=2010-01-01&t=2020-12-31").get_data(as_text=True)
        sql, params = adv_sql[-1]
        check("adviserships: totret, cagret and cagrel selected",
              all(f"enigma.{fn}(" in sql for fn in ("totret", "cagret", "cagrel")), True)
        check("adviserships: sorted as asked, no return last",
              sql.rstrip().endswith("ORDER BY cagret DESC NULLS LAST, org"), True)
        check("adviserships: continuing role clips its tenure to the chosen dates",
              "GREATEST(COALESCE(addDate, CAST(%s AS date)), CAST(%s AS date))" in sql
              and "LEAST(COALESCE(remDate, CAST(%s AS date)), CAST(%s AS date))" in sql, True)
        check("adviserships: dates bound, never pasted",
              "2010-01-01" in sql or "2020-12-31" in sql, False)
        check("adviserships: one placeholder per param",
              sql.count("%s"), len(params))
        bound = sql
        for v in params:
            bound = bound.replace("%s", repr(v), 1)
        check("adviserships: the start date clips the start, the end date the end",
              ("GREATEST(COALESCE(addDate, CAST('2010-01-01' AS date))" in bound,
               "LEAST(COALESCE(remDate, CAST('2020-12-31' AS date))" in bound), (True, True))
        client.get("/dbpub/adviserships.asp?p=382&r=2&f=2020-12-31&t=2010-01-01")
        swapped = adv_sql[-1][0]
        for v in adv_sql[-1][1]:
            swapped = swapped.replace("%s", repr(v), 1)
        check("adviserships: dates given backwards are swapped, as the ASP did",
              "GREATEST(COALESCE(addDate, CAST('2010-01-01' AS date))" in swapped, True)
        same_client[0] = True
        junk = client.get("/dbpub/adviserships.asp?p=382&r=2&sort=junk").get_data(as_text=True)
        current = client.get("/dbpub/adviserships.asp?p=382&r=2&sort=orgup&hide=Y"
                             ).get_data(as_text=True)
        same_client[0] = False
        check("adviserships: an unknown sort is Client order, grouped by client",
              re.findall(r'<td class="right colHide1">(\d*)</td>', junk), ["1", ""])
        check("adviserships: a client's second row keeps every column under Current",
              [row.count("<td") for row in re.findall(r"<tr[^>]*>(.*?)</tr>", current, re.S)[1:3]],
              [7, 7])
        check("adviserships: percentages as the ASP formatted them",
              ("64,665.09%" in body, "26.13%" in body, "98.82%" in body), (True, True, True))
        check("adviserships: average of the CAGRs that exist",
              (f"{(0.2613 + 0.1270) / 2:.2%}</b>" in body, "20.96%</b>" in body),
              (True, True))
        check("adviserships: rows numbered 1, 2 (a set in a for loop reset every row)",
              re.findall(r'<td class="right colHide1">(\d+)</td>', body), ["1", "2"])
        check("adviserships: header links keep the dates",
              "&amp;f=2010-01-01&amp;t=2020-12-31&amp;y=1&amp;hide=N&sort=totdn" in body, True)
        check("adviserships: chart link starts where the measurement does",
              'ctr.asp?i1=6940&d1=2011-06-03' in body and 'ctr.asp?i1=279&d1=2010-01-01' in body,
              True)

        client.get("/dbpub/adviserships.asp?p=382&r=2&sort=cagdn")
        check("adviserships: advltsnap's sort=cagdn means CAGR relative",
              adv_sql[-1][0].rstrip().endswith("ORDER BY cagrel DESC NULLS LAST, org"), True)

        one_time[0] = True
        client.get("/dbpub/adviserships.asp?p=382&r=2&y=2")
        sql, params = adv_sql[-1]
        check("adviserships: one-time role measured over the period after appointment",
              "enigma.totret(a.ID1, addDate, addDate + %s)" in sql and 730 in params, True)
        check("adviserships: one-time role has no relative return before 12-Nov-1999",
              "CASE WHEN addDate >= '1999-11-12' THEN enigma.cagrel(" in sql, True)
    finally:
        statistics.execute_query = real_s

    # 11. govacCSV.asp on a leaf item: with no children the export falls back to
    # the item row itself, so that row must carry the id and head the per-column
    # sum reads (WEBBSITE-24: KeyError 'id' for /dbpub/govacCSV.asp?t=0&i=4587).
    # Then the layout the ASP wrote: one row per item across the periods, an
    # "Others/no breakdown" row where the item's own value differs from its
    # breakdown (the total is then the item's own value), a Total row only for
    # 2+ rows, quoted names, and the graph title as the filename.

    items = {
        4587: {"id": 4587, "parentid": 100, "txt": "Leaf item", "head": False},
        100: {"id": 100, "parentid": None, "txt": "Rates/Fees head", "head": True},
    }
    children = {100: [{"id": 1, "txt": "Alpha", "head": False, "rev": True},
                      {"id": 2, "txt": 'Fees "misc"', "head": False, "rev": True}]}
    # a head's own value is 10 in 2001 (its breakdown sums to 8) and absent in 2002
    values = {4587: [10, 12], 1: [5, 5], 2: [3, 3], 100: [10, None]}
    periods = ["2001-03-31", "2002-03-31"]

    def rec_govac(sql, params=None, timeout_s=None):
        if "WHERE g.id = %s" in sql:
            # Only the columns the route actually selects, as psycopg would.
            cols = {**items[params[1]], "firstd": date(2000, 3, 31), "rev": True,
                    "origtxt": items[params[1]]["txt"], "approved": True, "h3": None}
            select = sql.split("FROM", 1)[0]
            return [{k: v for k, v in cols.items()
                     if re.search(rf"\b(g\.{k}|as {k})\b", select)}]
        if "SELECT txt FROM enigma.govitems WHERE id = %s" in sql:
            return [{"txt": items[params[0]]["txt"]}]
        if "SELECT DISTINCT d::text" in sql:
            return [{"d": d} for d in periods]
        if "ORDER BY COALESCE(a.priority, g.priority)" in sql:
            return children.get(params[1], [])
        if "AND govitem = %s" in sql:
            return [{"d": d, "act": v} for d, v in zip(periods, values[params[0]])
                    if v is not None]
        return []

    statistics.execute_query = rec_govac
    try:
        r = client.get("/dbpub/govacCSV.asp?t=0&i=4587")
        check("govacCSV leaf: 200, not a KeyError", r.status_code, 200)
        check("govacCSV leaf: the item is its own row, no Total for one row",
              r.get_data(as_text=True).splitlines(),
              ["Year ended,2001-03-31,2002-03-31", "Leaf item,10,12"])
        check("govacCSV leaf: named after its parent, as the ASP's graphTitle",
              r.headers["Content-Disposition"],
              "attachment; filename*=UTF-8''Rates%2FFees%20head.csv")

        r = client.get("/dbpub/govacCSV.asp?t=0&i=100")
        check("govacCSV head: Others row, own value as total, quoted names",
              r.get_data(as_text=True).splitlines(),
              ["Year ended,2001-03-31,2002-03-31", "Alpha,5,5",
               '"Fees ""misc""",3,3', "Others/no breakdown,2,0", "Total,10,8"])
        check("govacCSV head: named after the item itself, a / percent-encoded",
              r.headers["Content-Disposition"],
              "attachment; filename*=UTF-8''Rates%2FFees%20head.csv")

        html = client.get("/dbpub/govac.asp?t=0&i=100").get_data(as_text=True)
        check("govac.asp: same Others row as the CSV",
              "Others/no breakdown" in html, True)
        check("govac.asp: a period with no own value totals its breakdown (8, not 0)",
              [re.sub(r"<[^>]+>|\s", "", c) for c in
               re.findall(r"<tr[^>]*>\s*<td[^>]*>\s*(?:<b>)?Total.*?</tr>", html, re.S)][:1],
              ["Total108"])
    finally:
        statistics.execute_query = real_s

    # 12. A swallowed database failure must not be cached. bornyear.asp catches
    # every exception and renders an empty table as a 200 (WEBBSITE-1Y/1Z), and
    # _set_cache_headers gave it the data-page edge TTL like any other 200.

    class _TimingOut:
        def execute(self, *a, **k):
            raise RuntimeError("canceling statement due to statement timeout")

        def rollback(self):
            pass

    class _NoPool:
        def connect(self):
            raise RuntimeError("connection refused")

    def cache_headers(path):
        r = client.get(path)
        return r.status_code, r.headers.get("Cache-Control"), r.headers.get("CDN-Cache-Control")

    class _Answers:  # every query succeeds, with no rows
        returns_rows = True

        def execute(self, *a, **k):
            return self

        def __iter__(self):
            return iter(())

        def fetchone(self):
            return None

        def rollback(self):
            pass

    real_get_db, real_engine = db_module.get_db, db_module._engine
    db_module.get_db = lambda: _Answers()
    try:
        check("queries that succeed: the page keeps its edge TTL",
              cache_headers("/dbpub/bornyear.asp?y=1957&m=4"), (200, "public, max-age=3600",
                                                                "max-age=14400"))
    finally:
        db_module.get_db = real_get_db
    db_module.get_db = lambda: _TimingOut()
    try:
        check("swallowed query timeout: 200 but never cached",
              cache_headers("/dbpub/bornyear.asp?y=1957&m=4"), (200, "no-store", None))
        check("swallowed timeout on a pinned-date page: never cached",
              cache_headers("/dbpub/SFClicensees.asp?d=2020-01-01")[1:], ("no-store", None))
        from flask import abort

        probe_app = create_app()  # routes cannot be added once app has served

        @probe_app.route("/_probe_404")  # a lookup that failed, shown as not found
        def _probe_404():
            try:
                db_module.execute_query("SELECT 1")
            except Exception:
                abort(404)

        r = probe_app.test_client().get("/_probe_404")
        check("swallowed failure rendered as a 404: never cached",
              (r.status_code, r.headers.get("Cache-Control"), r.headers.get("CDN-Cache-Control")),
              (404, "no-store", None))
    finally:
        db_module.get_db = real_get_db
    db_module._engine = _NoPool()
    try:
        check("swallowed connection failure: never cached",
              cache_headers("/dbpub/bornyear.asp?y=1957&m=4"), (200, "no-store", None))
    finally:
        db_module._engine = real_engine
    db_module.get_db = lambda: _Answers()
    try:
        check("the next request is cacheable again (the flag is per request)",
              cache_headers("/dbpub/bornyear.asp?y=1957&m=4")[2], "max-age=14400")
    finally:
        db_module.get_db = real_get_db

    # 13. CSV.asp: every export was an AttributeError (.cursor() on a
    # SQLAlchemy Connection), and LIMIT 50000 would have truncated the file.
    # Now streamed through db.stream_query, driven here by a fake session so
    # the server-side cursor, the timeout and its reset are all exercised.

    from datetime import datetime, timedelta, timezone

    hkt = timezone(timedelta(hours=8))
    jail_rows = [
        (1, 'Stanley "Women\'s"', date(1937, 1, 1), datetime(2020, 5, 6, 7, 8, 9, tzinfo=hkt),
         1 / 3, True, None),
        (2, "Lai Chi Kok", date(1976, 3, 1), datetime(2020, 5, 6), 2.5, False, "x"),
    ]

    class _Streaming:
        """A pooled connection whose SELECT streams rows. Like a real server-side
        cursor, it dies if its connection is closed (by teardown, say) mid-stream;
        fail_at makes the n-th row fail."""

        def __init__(self, fail_start=None, fail_at=None):
            self.sql, self.options, self.closed = [], {}, False
            self.fail_start, self.fail_at = fail_start, fail_at

        def connect(self):  # the engine hands out this one connection
            return self

        def execute(self, stmt, *a, execution_options=None, **k):
            self.sql.append(str(stmt))
            self.options = execution_options or self.options
            if str(stmt).startswith("SELECT") and self.fail_start:
                raise RuntimeError(self.fail_start)
            return self

        def keys(self):
            return ["id", "name", "opened", "seen", "rate", "open", "note"]

        def __iter__(self):
            for n, row in enumerate(jail_rows):
                if self.closed:
                    raise RuntimeError("named cursor isn't valid anymore")
                if n == self.fail_at:
                    raise RuntimeError("canceling statement due to statement timeout")
                yield row

        def close(self):
            self.closed = True

        def rollback(self):
            pass

    real_engine = db_module._engine
    try:
        conn = db_module._engine = _Streaming()
        try:
            r = client.get("/dbpub/CSV.asp?t=jails")
            status, body = r.status_code, r.get_data(as_text=True).splitlines()
        except Exception as ex:  # the stream died mid-body
            status, body = None, [repr(ex)]
        check("CSV.asp: 200", status, 200)
        check("CSV.asp: every row, after teardown closed the request's connection",
              body,
              ["id,name,opened,seen,rate,open,note",
               '1,"Stanley ""Women\'s""",1937-01-01,2020-05-06 07:08:09,0.33333,1,',
               '2,"Lai Chi Kok",1976-03-01,2020-05-06,2.5,0,"x"'])
        check("CSV.asp: the whole table, no LIMIT, 30 s for this transaction only",
              conn.sql, ["SET LOCAL statement_timeout = '30s'", "SELECT * FROM enigma.jails"])
        check("CSV.asp: a server-side cursor on its own connection, closed at the end",
              (conn.options.get("stream_results"), conn.closed), (True, True))
        check("CSV.asp: an unknown table is refused",
              client.get("/dbpub/CSV.asp?t=people").status_code, 400)

        conn = db_module._engine = _Streaming()
        r = client.get("/dbpub/CSV.asp?t=jails", buffered=False)
        next(iter(r.response))  # the header, then the client goes away
        r.close()
        check("CSV.asp: a download dropped before its first row returns the connection",
              conn.closed, True)
        conn = db_module._engine = _Streaming()
        client.head("/dbpub/CSV.asp?t=jails").close()
        check("CSV.asp: a HEAD request (body never started) returns the connection",
              conn.closed, True)

        conn = db_module._engine = _Streaming(
            fail_start="canceling statement due to statement timeout")
        r = client.get("/dbpub/CSV.asp?t=jails")
        check("CSV.asp: a timeout starting the export is the uncached 504",
              (r.status_code, r.headers.get("Cache-Control"), r.headers.get("CDN-Cache-Control")),
              (504, "no-store", None))
        check("CSV.asp: the connection is closed after a failed start", conn.closed, True)

        conn = db_module._engine = _Streaming(fail_at=1)
        with app.test_request_context("/dbpub/CSV.asp?t=jails"):
            cols, rows = db_module.stream_query("SELECT * FROM enigma.jails", timeout_s=30)
            got = []
            try:
                for row in rows:
                    got.append(row[0])
                raised = None
            except db_module.QueryTimeoutError as ex:
                raised = ex
            check("stream_query: a failure mid-stream raises, after the rows it had",
                  (got, type(raised).__name__), ([1], "QueryTimeoutError"))
            check("stream_query: its connection is closed after a mid-stream failure",
                  conn.closed, True)
    finally:
        db_module._engine = real_engine

    # 14. One failed query, one Sentry issue. db.py logs it with the SQL; the
    # route then logged it again, a second issue under another type (every
    # timeout filed WEBBSITE-1Y and 1Z). Through a real client, so the hint
    # before_send is actually given is what is tested.

    import sentry_sdk
    from sentry_sdk.transport import Transport
    from webbsite import _sentry_options

    sent = []

    events = []

    class _Capture(Transport):
        def capture_envelope(self, envelope):
            ev = envelope.get_event()
            if ev is not None:
                sent.append(ev.get("logger"))
                events.append(ev)

    probe_app = create_app()

    # Configured as production is (a DSN, so sentry_on), for the request tags;
    # made before the capturing client below replaces the one this starts.
    from webbsite.config import Config

    class _WithSentry(Config):
        SENTRY_DSN = "https://k@example.invalid/1"

    tagged_client = create_app(_WithSentry).test_client()

    @probe_app.route("/_probe_other")  # a DB failure, then an unrelated error
    def _probe_other():
        try:
            db_module.execute_query("SELECT 1")
        except Exception:
            pass
        try:
            int("x")
        except ValueError:
            probe_app.logger.error("parse failed", exc_info=True)
        return "ok"

    @probe_app.route("/_probe_during")  # an error raised while handling a DB failure
    def _probe_during():
        try:
            db_module.execute_query("SELECT 1")
        except Exception:
            try:
                {}["missing"]
            except KeyError:
                probe_app.logger.error("lookup failed", exc_info=True)
        return "ok"

    @probe_app.route("/_probe_crash")  # a DB failure, then an unhandled crash
    def _probe_crash():
        try:
            db_module.execute_query("SELECT 1")
        except Exception:
            pass
        raise KeyError("unrelated")

    sentry_sdk.init(**{**_sentry_options(app), "dsn": "https://k@example.invalid/1",
                       "transport": _Capture, "traces_sample_rate": 0})
    real_get_db = db_module.get_db
    db_module.get_db = lambda: _TimingOut()
    try:
        sent.clear()
        client.get("/dbpub/bornyear.asp?y=1957&m=4")  # route logs with exc_info
        check("sentry: a swallowed timeout is one event, db.py's", sent, ["webbsite.db"])
        sent.clear()
        client.get("/dbpub/SFClicensees.asp")  # route logs f"...: {ex}", no exc_info
        check("sentry: a message-only re-log is dropped too",
              (len(sent) >= 1, set(sent)), (True, {"webbsite.db"}))
        sent.clear()
        probe_app.test_client().get("/_probe_other")
        check("sentry: an unrelated route error is still reported",
              sent, ["webbsite.db", "webbsite"])
        sent.clear()
        probe_app.test_client().get("/_probe_during")
        check("sentry: an error raised while handling a DB failure is its own report",
              sent, ["webbsite.db", "webbsite"])
        sent.clear()
        probe_app.test_client().get("/_probe_crash")
        check("sentry: an unhandled exception is still reported",
              None in sent, True)

        # 15. An outage is one issue: a connection failure on two routes shares
        # one fingerprint (06:59 on 2026-09-23 filed nine, one per route), while
        # query errors on two routes still split. The route check is tagged.
        def db_fingerprints(path, **kw):
            events.clear()
            client.get(path, **kw)
            return [e.get("fingerprint") for e in events if e.get("logger") == "webbsite.db"]

        class _Refusing:
            def connect(self):
                raise RuntimeError("connection to server at \"localhost\" (::1), port 5432 "
                                   "failed: Connection refused")

        db_module.get_db = real_get_db
        real_engine = db_module._engine
        db_module._engine = _Refusing()
        try:
            refused = (db_fingerprints("/dbpub/bornyear.asp?y=1957&m=4")[:1]
                       + db_fingerprints("/dbpub/SFClicensees.asp")[:1])
        finally:
            db_module._engine = real_engine
        check("sentry: a connection failure on two routes is one issue",
              (len(refused), refused[0] if refused else None,
               len({str(f) for f in refused})),
              (2, ["webbsite.db", "connection-failed"], 1))
        db_module.get_db = lambda: _TimingOut()
        timed = (db_fingerprints("/dbpub/bornyear.asp?y=1957&m=4")[:1]
                 + db_fingerprints("/dbpub/SFClicensees.asp")[:1])
        check("sentry: query failures on two routes stay two issues",
              (len(timed), len({str(f) for f in timed})), (2, 2))
        events.clear()
        tagged_client.get("/dbpub/bornyear.asp?y=1957&m=4",
                          headers={"User-Agent": "webbsite-route-check/1 (+deploy/README.md)"})
        check("sentry: the route check's requests are tagged synthetic",
              [dict(e.get("tags") or {}).get("synthetic") for e in events][:1], ["route-check"])
        events.clear()
        tagged_client.get("/dbpub/bornyear.asp?y=1957&m=4", headers={"User-Agent": "Mozilla/5.0"})
        check("sentry: a visitor's request is not tagged synthetic",
              [dict(e.get("tags") or {}).get("synthetic") for e in events][:1], [None])
    finally:
        db_module.get_db = real_get_db
        sentry_sdk.get_client().close()
        sentry_sdk.init()

    # 15b. dispose_engine (atexit) keeps the engine: disposing closes the pool,
    # and a request still running then reconnects rather than failing with
    # "Database engine not initialized" (WEBBSITE-2F).
    class _Pool:
        def __init__(self):
            self.disposed = 0

        def dispose(self):
            self.disposed += 1

        def connect(self):
            return _FreshConn()

    class _FreshConn:
        def close(self):
            pass

        def __eq__(self, other):
            return other == "fresh connection"

    real_engine = db_module._engine
    stub = db_module._engine = _Pool()
    try:
        db_module.dispose_engine()
        with app.app_context():
            try:
                got = db_module.get_db()
            except RuntimeError as ex:
                got = repr(ex)
        check("dispose_engine: pool closed, engine kept, a late request reconnects",
              (stub.disposed, db_module._engine is stub, got), (1, True, "fresh connection"))
    finally:
        db_module._engine = real_engine

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
