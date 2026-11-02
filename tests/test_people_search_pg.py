#!/usr/bin/env python3
"""People search on enigma.people_search returns exactly what the old query does.

Against a real Postgres (CI's Postgres 17 job; PG* env, superuser), nothing
production:

  1. seed a fixture enigma.people (4,000 people; common and rare names, phrase
     words, hyphens, underscores, apostrophes; (name1, name2) unique so ORDER BY
     has no ties to differ on), build people_search with scripts/build_derived.sh;
  2. self-proof: the token path is really taken (the page reads people_search)
     and a planted wrong driver would be caught (a deliberately broken
     pick_drivers changes some result);
  3. for ~25 searches -- combined and separate (d=1) modes, one/two/three given
     names, words beyond the 500 cap, misses, sanitised-away input -- the person
     ids the page lists, in order, are identical with the token table and
     without it (the old GIN query on people).

    uv run python tests/test_people_search_pg.py
"""

import os
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

DB = "enigma_pg_peoplesearchtest"
HOST = os.environ.get("PGHOST", "localhost")
USER = os.environ.get("PGUSER", "postgres")
PASSWORD = os.environ.get("PGPASSWORD", "")
os.environ["DATABASE_URL"] = f"postgresql://{USER}:{PASSWORD}@{HOST}:5432/{DB}"

_failures: list[str] = []


def check(name, got, want):
    if got != want:
        _failures.append(f"{name}: got {got!r}, want {want!r}")
    else:
        print(f"  ok  {name}")


def psql(sql):
    subprocess.run(["psql", "-X", "-q", "-v", "ON_ERROR_STOP=1", "-d", DB],
                   input=sql, text=True, check=True)


SURNAMES = ["Chan", "Wong", "Lee", "Smith", "Ng", "O'Brien", "Cheung", "Lam", "Ho", "Tsang"]
GIVEN = ["Tai", "Man", "John", "Jayne", "Xiao", "Ping", "Xiaoping", "Ka", "Shing",
         "Mary-Ann", "a_b", "Siu", "Wai"]


def seed():
    rows = []
    for i in range(1, 4001):
        n1 = SURNAMES[i % len(SURNAMES)] if i % 97 else f"Rare{i}"
        if i % 13 == 0:
            n1, n2 = f"{n1} Q{i}", None              # unique even without a name2
        else:
            words = [GIVEN[i % len(GIVEN)], GIVEN[(i // 3) % len(GIVEN)]]
            if i % 5 == 0:
                words.append(GIVEN[(i // 7) % len(GIVEN)])
            n2 = " ".join(words) + f" N{i}"          # N{i}: (name1, name2) unique
        esc = lambda v: "NULL" if v is None else "'" + v.replace("'", "''") + "'"  # noqa: E731
        rows.append(f"({i}, {esc(n1)}, {esc(n2)}, NULL, {1900 + i % 100}, NULL, NULL, "
                    f"{esc(n1)}, {esc(n2)})")
    # dn1 alone has the word foo; dn1 || ' ' || dn2 parses as one <tag>, without it.
    rows.append("(4001, '<foo', 'bar>', NULL, 1950, NULL, NULL, '<foo', 'bar>')")
    return "INSERT INTO enigma.people VALUES\n" + ",\n".join(rows) + ";"


SEARCHES = [
    ("Chan", "", 0), ("", "Jayne", 0), ("Chan", "Tai Man", 0), ("", "Xiao Ping", 0),
    ("Wong", "Xiaoping", 0), ("O'Brien", "", 0), ("Smith", "John", 0), ("Lee", "Ka Shing", 0),
    ("", "Tai Man Siu", 0), ("", "Mary Ann", 0), ("", "Mary-Ann", 0), ("", "a_b", 0),
    ("Rare97", "", 0), ("Chan", "N10", 0), ("Nosuchname", "", 0), ("___", "", 0),
    ("Chan", "___", 0), ("Chan", "", 1), ("", "Tai", 1), ("Chan", "Tai Man", 1),
    ("Cheung", "Wai", 1), ("", "Ka Shing", 1), ("!!", "", 1), ("Lam", "Jayne Ping", 0),
    ("ho", "siu wai", 0), ("foo", "", 1), ("", "bar", 1),
]


def listed(client, n1, n2, d):
    q = {"n1": n1, "n2": n2}
    if d:
        q["d"] = "1"
    html = client.get("/dbpub/searchpeople.asp", query_string=q).get_data(as_text=True)
    # The fixture has no aliases, so every person link is a current-name result.
    return [int(m) for m in re.findall(r'natperson\.asp\?p=(\d+)', html)]


def run():
    subprocess.run(["dropdb", "--if-exists", DB], check=True, capture_output=True)
    subprocess.run(["createdb", DB], check=True)
    try:
        psql("""
            CREATE SCHEMA enigma; CREATE SCHEMA ccass;
            CREATE TABLE enigma.people (
                personid bigint PRIMARY KEY, name1 varchar(90) NOT NULL, name2 varchar(63),
                cname varchar(20), yob integer, mob smallint, dob smallint,
                dn1 varchar(90) NOT NULL, dn2 varchar(63));
            CREATE TABLE enigma.alias (
                personid bigint, n1 varchar(90), n2 varchar(63), cn varchar(20),
                alias boolean, dn1 varchar(90), dn2 varchar(63));
        """ + seed())
        env = dict(os.environ, DB=DB, PSQL_CMD="psql")
        subprocess.run([str(ROOT / "scripts" / "build_derived.sh"), "people_search"],
                       env=env, check=True)

        from webbsite import create_app
        from webbsite.routes import search

        client = create_app().test_client()

        # 2. self-proof: the token path is taken, and a wrong driver would show
        seen = []
        real_eq = search.execute_query
        search.execute_query = lambda sql, *a, **k: (seen.append(sql), real_eq(sql, *a, **k))[1]
        listed(client, "Chan", "Tai Man", 0)
        search.execute_query = real_eq
        check("self-proof: the page reads people_search", any("people_search" in s for s in seen), True)
        real_pick = search.pick_drivers
        search.pick_drivers = lambda lex, m, b: ["n10"]            # a wrong driver
        broken = listed(client, "Chan", "", 0)
        search.pick_drivers = real_pick
        check("self-proof: a wrong driver changes the result", broken != listed(client, "Chan", "", 0), True)

        # 2b. a table that is there but fails (through the real execute_query,
        # whose exception types are what the route must catch): same rows, no 500.
        want = listed(client, "Chan", "Tai Man", 0)
        psql("ALTER TABLE enigma.people_search RENAME COLUMN token TO tok;")
        check("a failing token table falls back to the same rows",
              listed(client, "Chan", "Tai Man", 0), want)
        psql("ALTER TABLE enigma.people_search RENAME COLUMN tok TO token;")

        # 3. identical with and without the token table
        with_tokens = {s: listed(client, *s) for s in SEARCHES}
        psql("ALTER TABLE enigma.people_search RENAME TO people_search_off;")
        without = {s: listed(client, *s) for s in SEARCHES}
        psql("ALTER TABLE enigma.people_search_off RENAME TO people_search;")
        capped = 0
        for s in SEARCHES:
            check(f"identical: n1={s[0]!r} n2={s[1]!r} d={s[2]} ({len(without[s])} people)",
                  with_tokens[s], without[s])
            capped += len(without[s]) == 500
        check("some searches hit the 500 cap (the LIMIT path is exercised)", capped > 0, True)
        check("some searches find nobody", any(not v for v in without.values()), True)
    finally:
        try:
            from webbsite import db as db_module
            db_module.dispose_engine()
        except Exception:  # noqa: BLE001
            pass
        subprocess.run(["dropdb", "--if-exists", DB], capture_output=True)

    if os.environ.get("PLANTED_FAILURE"):
        check("planted failure (CI self-proof; expected to fail)", 1, 0)
    if _failures:
        print("\nFAILED:")
        for f in _failures:
            print("  " + f)
        return 1
    print("\nall people-search equivalence checks passed")
    return 0


if __name__ == "__main__":
    sys.exit(run())
