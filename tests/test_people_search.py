#!/usr/bin/env python3
"""Runnable checks for people search on enigma.people_search (no DB).

    uv run python tests/test_people_search.py

Pins:
  1. search_groups mirrors the tsquery the route builds: family-name words and
     all but the last two given names are required; the last two given names are
     the branches ("a" & "b") | "ab".
  2. pick_drivers: the rarest required lexeme drives; with none, the rarest of
     each branch; a required lexeme nobody has means no query; a word with no
     lexemes (only underscores) constrains nothing.
  3. the route: ready table -> lexeme lookup, then ONE driver query per driver
     over people_search with the page's own WHERE clause and every value bound;
     a zero count -> no main query; table missing or empty -> the old query on
     people (with the 25 s budget).

tests/test_people_search_pg.py proves against a real Postgres that the token
path returns exactly what the old query does.
"""

import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

os.environ.setdefault("DATABASE_URL", "postgresql://stub:stub@127.0.0.1:1/stub")

from webbsite import create_app  # noqa: E402
from webbsite.db import DatabaseError, QueryTimeoutError  # noqa: E402
from webbsite.routes import search  # noqa: E402

_failures: list[str] = []


def check(name, got, want):
    if got != want:
        _failures.append(f"{name}: got {got!r}, want {want!r}")
    else:
        print(f"  ok  {name}")


class Stub:
    """execute_query stand-in: answers by SQL shape, records every call."""

    def __init__(self, ready=True, tokfreq_rows=True, counts=None):
        self.calls, self.ready, self.tokfreq_rows = [], ready, tokfreq_rows
        self.counts = counts or {}

    def __call__(self, sql, params=None, timeout_s=None):
        self.calls.append((sql, params, timeout_s))
        if "to_regclass" in sql:
            return [{"ok": self.ready}]
        if "people_tokfreq f" in sql:
            # to_tsvector('simple', word) lowercases; words come as typed.
            return [{"word": w, "lex": w.lower(), "n": self.counts.get(w.lower(), 0),
                     "ready": self.tokfreq_rows}
                    for w in params[0] if w.strip("_")]
        return []

    def shapes(self):
        def shape(sql):
            if "to_regclass" in sql:
                return "ready"
            if "people_tokfreq f" in sql:
                return "lexemes"
            if "people_search" in sql:
                return f"tokens x{sql.count('FROM enigma.people_search')}"
            if "enigma.alias" in sql:
                return "alias"
            return "people"
        return [shape(s) for s, _, _ in self.calls]


def run():
    if os.environ.get("PLANTED_FAILURE"):
        check("planted failure (CI self-proof; expected to fail)", 1, 0)

    # 1. search_groups -----------------------------------------------------------
    check("groups: one given name is required",
          search.search_groups(["chan"], ["jayne"]), (["chan", "jayne"], None))
    check("groups: last two given names are branches",
          search.search_groups(["chan"], ["tai", "man"]), (["chan"], (["tai", "man"], ["taiman"])))
    check("groups: earlier given names stay required",
          search.search_groups([], ["a", "b", "c"]), (["a"], (["b", "c"], ["bc"])))

    # 2. pick_drivers --------------------------------------------------------------
    lex = {"chan": [("chan", 18504)], "jayne": [("jayne", 35)], "a_b": [("a", 9), ("b", 3)],
           "tai": [("tai", 700)], "man": [("man", 900)], "taiman": [("taiman", 4)],
           "ghost": [("ghost", 0)], "___": []}
    check("drivers: rarest required lexeme",
          search.pick_drivers(lex, ["chan", "jayne"], None), ["jayne"])
    check("drivers: a phrase word's lexemes are all required",
          search.pick_drivers(lex, ["chan", "a_b"], None), ["b"])
    check("drivers: nobody has a required lexeme -> no query",
          search.pick_drivers(lex, ["chan", "ghost"], None), [])
    check("drivers: no required lexeme -> rarest of each branch",
          search.pick_drivers(lex, [], (["tai", "man"], ["taiman"])), ["tai", "taiman"])
    check("drivers: a lexeme-less word constrains nothing",
          search.pick_drivers(lex, ["___"], (["tai", "man"], ["taiman"])), ["tai", "taiman"])
    check("drivers: a dead branch is dropped",
          search.pick_drivers(lex, [], (["tai", "man"], ["ghost"])), ["tai"])
    check("drivers: nothing at all -> no query", search.pick_drivers(lex, ["___"], None), [])
    check("drivers: branches cheaper than the required word -> branches",
          search.pick_drivers(lex, ["chan"], (["tai", "man"], ["taiman"])), ["tai", "taiman"])
    check("drivers: required word cheaper than the branches -> it alone",
          search.pick_drivers(lex, ["jayne"], (["tai", "man"], ["taiman"])), ["jayne"])
    check("drivers: branches nobody can satisfy -> no query",
          search.pick_drivers(lex, ["chan"], (["ghost"], ["ghost"])), [])

    # 3. the route -------------------------------------------------------------------
    client = create_app().test_client()
    real = search.execute_query
    try:
        stub = Stub(counts={"chan": 50, "tai": 7, "man": 9, "taiman": 2})
        search.execute_query = stub
        client.get("/dbpub/searchpeople.asp?n1=Chan&n2=Tai+Man")
        check("route: ready -> lexemes -> token query (two cheap branches) -> alias",
              stub.shapes(), ["ready", "lexemes", "tokens x2", "alias"])
        sql, params, _ = stub.calls[2]
        tsq = '"Chan" & (("Tai" & "Man") | "TaiMan")'
        check("route: each driver bound, the page's tsquery bound after it",
              params, ("tai", tsq, "taiman", tsq))
        stub = Stub(counts={"chan": 1, "tai": 7, "man": 9, "taiman": 2})
        search.execute_query = stub
        client.get("/dbpub/searchpeople.asp?n1=Chan&n2=Tai+Man")
        check("route: a rare required word drives alone",
              (stub.shapes()[2], stub.calls[2][1]), ("tokens x1", ("chan", tsq)))
        check("route: no user text in the SQL", "Chan" in sql or "Tai" in sql, False)

        logged = []
        search.execute_query = lambda sql, params=None, timeout_s=None: (
            logged.append(timeout_s) or [])
        real_tokens = search._search_people_tokens

        def broken(*a):
            raise DatabaseError("permission denied")

        search._search_people_tokens = broken
        check("route: a failing token table falls back to people, not a 500",
              (client.get("/dbpub/searchpeople.asp?n1=Chan").status_code, logged), (200, [25, 25]))

        def timed_out(*a):
            raise QueryTimeoutError("statement timeout")

        logged.clear()
        search._search_people_tokens = timed_out
        check("route: a token-table timeout does not spend another 25 s",
              (client.get("/dbpub/searchpeople.asp?n1=Chan").status_code, logged), (504, []))
        search._search_people_tokens = real_tokens

        stub = Stub(counts={"chan": 50})
        search.execute_query = stub
        client.get("/dbpub/searchpeople.asp?n1=Chan")
        check("route: the token query runs on the default budget",
              [t for sql, _, t in stub.calls if "people_search" in sql and "token =" in sql], [None])

        stub = Stub(counts={"tai": 7, "man": 9, "taiman": 2})
        search.execute_query = stub
        client.get("/dbpub/searchpeople.asp?n2=Tai+Man")
        check("route: branches only -> one UNION branch per driver",
              stub.shapes(), ["ready", "lexemes", "tokens x2", "alias"])

        stub = Stub(counts={"chan": 50})
        search.execute_query = stub
        client.get("/dbpub/searchpeople.asp?n1=Chan&n2=Ghost&d=1")
        check("route: a required lexeme nobody has -> no main query",
              stub.shapes(), ["ready", "lexemes", "alias"])

        stub = Stub(ready=False)
        search.execute_query = stub
        client.get("/dbpub/searchpeople.asp?n1=Chan")
        check("route: table missing -> the old query on people, 25 s budget",
              [(sh, c[2]) for sh, c in zip(stub.shapes(), stub.calls)],
              [("ready", None), ("people", 25), ("alias", 25)])

        stub = Stub(tokfreq_rows=False, counts={"chan": 50})
        search.execute_query = stub
        client.get("/dbpub/searchpeople.asp?n1=Chan")
        check("route: table empty (restored, not rebuilt yet) -> the old query",
              stub.shapes(), ["ready", "lexemes", "people", "alias"])

        stub = Stub()
        search.execute_query = stub
        client.get("/dbpub/searchpeople.asp?n1=Chan&e=1")
        check("route: exact mode never touches the token table",
              stub.shapes(), ["people", "alias"])

        stub = Stub()
        search.execute_query = stub
        client.get("/dbpub/searchpeople.asp?n1=%21%21&d=1")
        check("route: input sanitised to nothing in d mode -> 1=0, not all people",
              [("1=0" in s) for s, _, _ in stub.calls], [True, True])
    finally:
        search.execute_query = real

    if _failures:
        print("\nFAILED:")
        for f in _failures:
            print("  " + f)
        return 1
    print("\nall people-search checks passed")
    return 0


def test_all():
    assert run() == 0


if __name__ == "__main__":
    sys.exit(run())
