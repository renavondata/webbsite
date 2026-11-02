#!/usr/bin/env python3
"""Runnable checks for request-parameter validation found by the 2026-11 audit. No DB.

    uv run python tests/test_param_validation.py

Pins:
  1. int_range / calendar_range (pure): the calendar pages read y/m/d as the
     ASP did -- m and d clamped, not defaulted; a day is that single day.
  2. incHKcaltype / disHKcaltype / incUKcaltype: an impossible date
     (?m=2&d=31) renders instead of raising a 500, and ?d= binds one day
     (it used to bind the 1st of the month .. d). incUKcaltype's dom is one of
     the three UK registries.
  3. SFClicount.asp: an unparseable db never reaches the SQL.
  4. oldestHKcos.asp: the type filter is bound, not interpolated.
  5. boardcomp.asp / INEDHKDistnCos.asp: the snapshot date is clamped to
     1990-01-01 .. today.
  6. rel=canonical keeps m and f, which are content (a month, a frequency, a
     from-date) on every page but str.asp, where f is a view toggle.

Queries go to a recording stub; the engine points at a port nothing listens on.
"""

import os
import sys
from datetime import date

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

os.environ.setdefault("DATABASE_URL", "postgresql://stub:stub@127.0.0.1:1/stub")

from webbsite import create_app  # noqa: E402
from webbsite import db as db_module  # noqa: E402
from webbsite import asp_helpers  # noqa: E402
from webbsite.asp_helpers import calendar_range, canonical_query, int_range  # noqa: E402
from webbsite.routes.dbpub import incorporations, sfc, statistics  # noqa: E402

_failures: list[str] = []


def check(name, got, want):
    if got != want:
        _failures.append(f"{name}: got {got!r}, want {want!r}")
    else:
        print(f"  ok  {name}")


class Recorder:
    """Stands in for execute_query: records (sql, params), answers lookups."""

    def __init__(self, answers=None):
        self.calls, self.answers = [], answers or {}

    def __call__(self, sql, params=None, timeout_s=None):
        self.calls.append((sql, params))
        for needle, rows in self.answers.items():
            if needle in sql:
                return rows
        return []

    def bound(self):
        return [p for _, p in self.calls if p]


def one_day(params, day):
    """The bound date range is exactly [day, day] (incUKcaltype binds dom first)."""
    dates = [v for v in params if isinstance(v, date)]
    return dates[:2] == [day, day]


def with_stub(client, url, answers=None):
    rec = Recorder(answers)
    saved = (db_module.execute_query, incorporations.execute_query,
             sfc.execute_query, statistics.execute_query)
    db_module.execute_query = incorporations.execute_query = rec
    sfc.execute_query = statistics.execute_query = rec
    try:
        r = client.get(url)
    finally:
        (db_module.execute_query, incorporations.execute_query,
         sfc.execute_query, statistics.execute_query) = saved
    return r, rec


def run():
    if os.environ.get("PLANTED_FAILURE"):
        check("planted failure (CI self-proof; expected to fail)", 1, 0)

    # 1. pure ------------------------------------------------------------------
    check("int_range: default passes through", int_range(0, 0, 1, 12), 0)
    check("int_range: over clamps to hi", int_range(13, 0, 1, 12), 12)
    check("int_range: under clamps to lo", int_range(-3, 0, 1, 12), 1)
    check("calendar_range: whole year",
          calendar_range(2023, 0, 9), (0, 0, date(2023, 1, 1), date(2023, 12, 31)))
    check("calendar_range: a month",
          calendar_range(2023, 5, 0), (5, 0, date(2023, 5, 1), date(2023, 5, 31)))
    check("calendar_range: a day is that single day",
          calendar_range(2023, 5, 10), (5, 10, date(2023, 5, 10), date(2023, 5, 10)))
    check("calendar_range: 31 Feb clamps to the month end",
          calendar_range(2023, 2, 31), (2, 28, date(2023, 2, 28), date(2023, 2, 28)))
    check("calendar_range: leap year",
          calendar_range(2024, 2, 31)[1], 29)
    check("calendar_range: m=13 is December",
          calendar_range(2023, 13, 0), (12, 0, date(2023, 12, 1), date(2023, 12, 31)))

    app = create_app()
    client = app.test_client()

    # 2. the calendar pages ------------------------------------------------------
    for path in ("/dbpub/incHKcaltype.asp", "/dbpub/disHKcaltype.asp",
                 "/dbpub/incUKcaltype.asp"):
        r, rec = with_stub(client, f"{path}?y=2023&m=2&d=31")
        check(f"{path}: impossible date renders", r.status_code, 200)
        check(f"{path}: 31 Feb binds 28 Feb as a single day",
              any(one_day(p, date(2023, 2, 28)) for p in rec.bound()), True)
        r, rec = with_stub(client, f"{path}?y=2023&m=5&d=10")
        check(f"{path}: ?d= binds one day, not the 1st..d",
              any(one_day(p, date(2023, 5, 10)) for p in rec.bound()), True)

    r, rec = with_stub(client, "/dbpub/incUKcaltype.asp?y=2023&dom=999")
    check("incUKcaltype: unknown dom falls back to England & Wales",
          any(116 in p for p in rec.bound()) and not any(999 in p for p in rec.bound()), True)

    # 3. SFClicount ----------------------------------------------------------------
    r, rec = with_stub(client, "/dbpub/SFClicount.asp?da=2024-01-01&db=junk'--")
    check("SFClicount: junk db never reaches the SQL",
          any("junk" in str(p) for p in rec.bound()), False)
    check("SFClicount: dates bound in order (db <= da)",
          all(p[0] <= p[1] for p in rec.bound() if len(p) >= 2 and isinstance(p[0], str)), True)

    # 4. oldestHKcos -----------------------------------------------------------------
    r, rec = with_stub(client, "/dbpub/oldestHKcos.asp?t=5",
                       answers={"FROM enigma.orgtypes": [{"typename": "Private"}]})
    main = [(s, p) for s, p in rec.calls if "LIMIT" in s]
    check("oldestHKcos: type filter bound as a parameter",
          [(("orgtype = %s" in s), p) for s, p in main], [(True, (5,))])
    r, rec = with_stub(client, "/dbpub/oldestHKcos.asp?t=5")
    main = [(s, p) for s, p in rec.calls if "LIMIT" in s]
    check("oldestHKcos: unknown type is ignored", [p for _, p in main], [None])

    # 5. snapshot-date clamps -------------------------------------------------------
    for path in ("/dbpub/boardcomp.asp", "/dbpub/INEDHKDistnCos.asp"):
        r, rec = with_stub(client, f"{path}?d=1900-01-01")
        check(f"{path}: date before 1990 clamps to 1990-01-01",
              all(v == date(1990, 1, 1) for p in rec.bound() for v in p
                  if isinstance(v, date)) and bool(rec.bound()), True)
        r, rec = with_stub(client, f"{path}?d=2999-01-01")
        check(f"{path}: future date clamps to today",
              all(v == date.today() for p in rec.bound() for v in p
                  if isinstance(v, date)) and bool(rec.bound()), True)

    # 6. canonical ----------------------------------------------------------------------
    for url, want in [
        ("/dbpub/incHKcaltype.asp?y=2023&m=5&sort=namdn", "y=2023&m=5"),
        ("/dbpub/bornyear.asp?y=1957&m=4", "y=1957&m=4"),
        ("/dbpub/hpw.asp?i=1088&f=m&sort=datedn", "i=1088&f=m"),
        ("/dbpub/str.asp?i=1088&f=1", "i=1088"),
        # A page's own default is the same page as leaving it out...
        ("/dbpub/hpw.asp?i=1088&f=w", "i=1088"),
        ("/dbpub/incHKcaltype.asp?y=2023&m=0", "y=2023"),
        # ...but only on that page: f=w means nothing to str.asp's neighbours.
        ("/dbpub/prhunits.asp?f=w", "f=w"),
        # Family tree depth is a view of one person, not a page of its own.
        ("/dbpub/natperson.asp?p=1&m=3", "p=1"),
    ]:
        with app.test_request_context(url):
            check(f"canonical: {url}", canonical_query(), want)
    rules = {r.rule for r in app.url_map.iter_rules()}
    check("canonical tables name real routes",
          sorted((set(asp_helpers.CANONICAL_DEFAULTS_BY_PATH)
                  | set(asp_helpers.CANONICAL_DROP_PARAMS_BY_PATH)) - rules), [])

    # 7. very old dates: 200, on the route that parses the helper's result --------------
    for q in ("da=0999-06-01", "db=0999-06-01", "da=0001-01-01", "db=0001-01-01"):
        check(f"SFClicount {q}", client.get(f"/dbpub/SFClicount.asp?{q}").status_code, 200)
    with app.test_request_context("/?d=0999-06-01"):
        check("get_date_or_default pads the year",
              asp_helpers.get_date_or_default("d"), "0999-06-01")

    if _failures:
        print("\nFAILED:")
        for f in _failures:
            print("  " + f)
        return 1
    print("\nall parameter-validation checks passed")
    return 0


def test_all():
    assert run() == 0


if __name__ == "__main__":
    sys.exit(run())
