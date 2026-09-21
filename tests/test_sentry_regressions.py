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
