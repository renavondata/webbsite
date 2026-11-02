#!/usr/bin/env python3
"""precompute.sort_rows over ordinal() columns orders rows exactly as SQL does.

A precomputed page is fetched once and sorted in Python per request. Text is
sorted on ``dense_rank() OVER (ORDER BY col)`` ranks rather than on the text,
so the order is the database collation's. This proves, against a real
Postgres, that every ORDER BY shape the migrated pages use (listed.asp,
leagueDirsHK.asp) comes back identical from the Python path, NULLs, ties and
collation included. Self-proving: it first requires sorting the raw text in
Python to DISAGREE with the database, so the fixture really exercises the
collation.

Run:  PGHOST=127.0.0.1 PGUSER=postgres uv run python tests/test_precompute_pg.py
"""

import os
import sys
from decimal import Decimal

import psycopg2
import psycopg2.extras

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

from webbsite.precompute import ordinal, sort_rows  # noqa: E402

# Case, accents, punctuation, spaces and digits order differently under a
# linguistic collation than by code point; NULLs and ties test the rest.
NAMES = ["apple", "Apple", "BANANA", "banana", "Éclair", "eclair", "zeta", "Zeta",
         "a b", "ab", "a-b", "10", "9", "_x", None, "apple"]
RETS = [Decimal("0.5"), None, Decimal("-0.25"), Decimal("0.5"), Decimal("12.125"),
        None, Decimal("0"), Decimal("-3"), Decimal("0.5"), None, Decimal("1"),
        Decimal("2"), Decimal("0"), None, Decimal("7"), Decimal("0.5")]
DATES = ["2001-01-01", None, "1999-12-31", "2001-01-01", None, "1990-01-01",
         "2010-05-05", "2001-01-01", "1999-12-31", None, "2020-02-02", "1980-01-01",
         "2001-01-01", "2010-05-05", "1995-06-06", None]

# (SQL ORDER BY, sort_rows spec): the shapes listed.asp and leagueDirsHK.asp
# use. Every SQL order ends in id so the expected order is total; the Python
# rows arrive in id order and sort stably, which is the same tiebreak.
CASES = [
    ("name", [("o_name", False)]),
    ("name DESC", [("o_name", True)]),
    ("name, code", [("o_name", False), ("o_code", False)]),
    ("code DESC", [("o_code", True)]),
    ("dt DESC, name", [("dt", True), ("o_name", False)]),
    ("dt, name", [("dt", False), ("o_name", False)]),
    ("ret DESC NULLS LAST, dt", [("ret", True, "last"), ("dt", False)]),
    ("ret NULLS FIRST, dt DESC", [("ret", False, "first"), ("dt", True)]),
    ("ret DESC, name", [("ret", True), ("o_name", False)]),
    ("ret, name DESC", [("ret", False), ("o_name", True)]),
]


def main():
    conn = psycopg2.connect(dbname=os.environ.get("PGDATABASE", "postgres"))
    conn.autocommit = True
    cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)
    cur.execute("SELECT datcollate FROM pg_database WHERE datname = current_database()")
    collation = cur.fetchone()["datcollate"]
    # Under a C collation code-point order IS the database order and the self-
    # proof below could not fail; pin a linguistic one so it always can.
    coll = ' COLLATE "und-x-icu"' if collation in ("C", "POSIX", "C.UTF-8") else ""
    cur.execute(f"""
        CREATE TEMP TABLE t (id int PRIMARY KEY, name text{coll}, code text{coll},
                             ret numeric, dt date)""")
    for i, (n, r, d) in enumerate(zip(NAMES, RETS, DATES)):
        cur.execute("INSERT INTO t VALUES (%s, %s, %s, %s, %s)",
                    (i, n, None if n is None else n[::-1], r, d))

    failures = []

    def check(label, got, want):
        if got != want:
            failures.append(f"{label}: got {got}, want {want}")
        else:
            print(f"  ok  {label}")

    cur.execute("SELECT id FROM t ORDER BY name, id")
    sql_order = [r["id"] for r in cur.fetchall()]
    cur.execute("SELECT id, name FROM t ORDER BY id")
    naive = sort_rows(cur.fetchall(), [("name", False)])
    if [r["id"] for r in naive] == sql_order:
        print(f"SELF-PROOF FAILED: raw-text sorting matches {collation}{coll}; "
              "the fixture does not exercise the collation")
        return 1
    print(f"  ok  self-proof: sorting the raw text in Python disagrees with {collation}{coll}")

    cur.execute(f"""
        SELECT id, name, code, ret, dt,
               {ordinal("name", "o_name")}, {ordinal("code", "o_code")}
        FROM t ORDER BY id""")
    rows = cur.fetchall()
    for order_by, spec in CASES:
        cur.execute(f"SELECT id FROM t ORDER BY {order_by}, id")
        want = [r["id"] for r in cur.fetchall()]
        check(f"ORDER BY {order_by}", [r["id"] for r in sort_rows(rows, spec)], want)

    if failures:
        print("\n".join(["FAILED:"] + failures))
        return 1
    print(f"all {len(CASES)} orders identical")
    return 0


if __name__ == "__main__":
    sys.exit(main())
