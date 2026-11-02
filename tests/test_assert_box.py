#!/usr/bin/env python3
"""Runnable checks for the pure parts of scripts/assert_box.py (no DB, no box).

    uv run python tests/test_assert_box.py

The invariants job runs as root on the droplet once a day; what can be pinned
here is the logic that decides "drift" and "armed": the setting normaliser
(conf-file spelling vs pg_settings units), the three parsers, and the verdict
over the monitoring instance's check list. Everything I/O-shaped stays in the script.
"""

import os
import re
import sys
from types import SimpleNamespace

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "scripts"))
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

import assert_box as ab  # noqa: E402

_failures: list[str] = []


def check(name, got, want):
    if got != want:
        _failures.append(f"{name}: got {got!r}, want {want!r}")
    else:
        print(f"  ok  {name}")


def run():
    n = ab.normalize
    # memory: conf spelling vs pg_settings (setting, unit)
    check("2GB == 262144 x 8kB", n("'2GB'", None), n("262144", "8kB"))
    check("6GB == 786432 x 8kB", n("6GB", None), n("786432", "8kB"))
    check("96MB == 98304 kB", n("'96MB'", None), n("98304", "kB"))
    check("1GB == 1048576 kB", n("1GB", None), n("1048576", "kB"))
    check("4GB == 4096 MB (max_wal_size)", n("'4GB'", None), n("4096", "MB"))
    check("memory drift detected", n("1GB", None) == n("262144", "8kB"), False)
    # time
    check("bare 2000 in conf == 2000 ms (both sides get pg's unit)", n("2000", "ms"), n("2000", "ms"))
    check("2s == 2000 ms", n("2s", None), n("2000", "ms"))
    # plain
    check("40 == 40", n("40", None), n("40", None))
    check("1.1 == 1.1", n("1.1", None), n("1.1", None))
    check("quoted string", n("'localhost'", None), "localhost")
    check("on == on", n("on", None), n("on", None))
    check("pg_stat_statements string", n("'pg_stat_statements'", None), "pg_stat_statements")

    conf = ab.parse_conf("# c\nshared_buffers = '2GB'  # inline\n\nwork_mem='96MB'\npg_stat_statements.track = 'top'\n")
    check("parse_conf", conf, {"shared_buffers": "'2GB'", "work_mem": "'96MB'", "pg_stat_statements.track": "'top'"})

    real = ab.parse_conf(ab.PG_CONF.read_text())
    check("real conf has 14 settings", len(real), 14)
    check("real conf turns JIT off", real["jit"], "off")
    check("real conf loads pg_stat_statements", real["shared_preload_libraries"], "'pg_stat_statements'")

    idx = ab.parse_index_names("CREATE INDEX IF NOT EXISTS a_b ON t (x);\ncreate index if not exists c\n  on t (y);")
    check("parse_index_names", idx, ["a_b", "c"])
    check("parse_index_names: CONCURRENTLY",
          ab.parse_index_names("CREATE INDEX CONCURRENTLY IF NOT EXISTS d ON t (z);"), ["d"])
    check("real indexes.sql names 29", len(ab.parse_index_names(ab.INDEXES_SQL.read_text())), 29)

    fns = ab.parse_functions(ab.FUNCTIONS_SQL.read_text())
    check("functions.sql declares the three return calculations",
          sorted(fns), ["cagrel", "cagret", "totret"])
    check("every declared function guards its divisors",
          [n for n, b in fns.items() if "NULLIF" not in b], [])
    check("same_sql ignores whitespace runs", ab.same_sql("a  b\nc", "a b c"), True)
    check("same_sql sees a dropped NULLIF",
          ab.same_sql("x / NULLIF(y, 0)", "x / y"), False)

    # derived tables (database/derived/, scripts/build_derived.sh)
    hdrs = {f.stem: ab.parse_derived_header(f.read_text()) for f in sorted(ab.DERIVED_DIR.glob("*.sql"))}
    check("people_search declares its two tables",
          hdrs["people_search"]["tables"], ["enigma.people_search", "enigma.people_tokfreq"])
    check("every derived file has tables, a fingerprint query and a size",
          [n for n, h in hdrs.items() if not (h["tables"] and h["fingerprint"].upper().startswith("SELECT")
                                              and h["size_gb"] > 0)], [])
    check("derived bodies only create _new objects (never touch the live tables)",
          [n for n in hdrs if any(f"CREATE TABLE {t} " in (ab.DERIVED_DIR / f"{n}.sql").read_text()
                                  or f"CREATE TABLE {t}\n" in (ab.DERIVED_DIR / f"{n}.sql").read_text()
                                  for t in hdrs[n]["tables"])], [])
    excluded = {t for h in hdrs.values() if h["exclude_data"] for t in h["tables"]}
    check("backup-producer.sh excludes exactly the exclude-data derived tables",
          ab.backup_excludes(ab.BACKUP_PRODUCER.read_text()), excluded)
    # A running oneshot is "activating": is-active's exit code would call it idle.
    real_run = ab.subprocess.run
    try:
        for state, want in [("activating", True), ("active", True), ("inactive", False),
                            ("failed", False), ("", False)]:
            ab.subprocess.run = lambda *a, s=state, **k: SimpleNamespace(stdout=s + "\n", returncode=0)
            check(f"db build running when ActiveState={state!r}", ab.db_build_active(), want)
    finally:
        ab.subprocess.run = real_run
    root = ab.DERIVED_DIR.parent.parent
    check("oneshot guards read ActiveState, not is-active",
          [f for f in ("scripts/db_build.sh", "deploy/converge.sh")
           if re.search(r"is-active[^\n]*webbsite-(refresh|db-build)", (root / f).read_text())], [])
    stamp = ab.derived_stamp("abc", "42")
    check("derived: fresh when the comment carries the stamp",
          ab.derived_problem("t", "present", stamp + "built=2026-11-01T00:00:00Z", stamp), None)
    check("derived: stale on another stamp",
          ab.derived_problem("t", "present", ab.derived_stamp("abc", "41") + "built=x", stamp) is not None, True)
    check("derived: a prefix of the fingerprint is not a match",
          ab.derived_problem("t", "present", ab.derived_stamp("abc", "4") + "built=x", stamp) is not None, True)
    check("derived: missing / empty reported",
          [ab.derived_problem("t", s, None, stamp) for s in ("missing", "empty")],
          ["t missing", "t empty"])

    rows = ab.parse_checks(ab.CHECKS_TXT.read_text())
    check("checks.txt parses 7 rows", len(rows), 7)
    check("every row is live", [r["name"] for r in rows if r["status"] != "live"], [])

    expected = [{"name": "a", "status": "live"}, {"name": "b", "status": "pending"}, {"name": "c", "status": "live"}, {"name": "d", "status": "live"}]
    live = [
        {"name": "a", "status": "up", "channels": "x"},
        {"name": "b", "status": "up", "channels": ""},          # pending: not asserted
        {"name": "c", "status": "paused", "channels": "x"},
        # d absent
    ]
    v = ab.checks_verdict(expected, live)
    check("verdict: paused + missing flagged, pending ignored", v,
          ["check c: PAUSED (pings are accepted and discarded)", "check d: does not exist on hc"])
    check("verdict: no channel flagged", ab.checks_verdict([{"name": "a", "status": "live"}],
          [{"name": "a", "status": "up", "channels": ""}]),
          ["check a: no notification channel (its alarm goes nowhere)"])
    check("verdict: channels key absent (read-only API key) not asserted",
          ab.checks_verdict([{"name": "a", "status": "live"}], [{"name": "a", "status": "up"}]),
          [])

    if _failures:
        print("\nFAILED:")
        for f in _failures:
            print("  " + f)
        return 1
    print("\nall assert_box checks passed")
    return 0


def test_all():
    assert run() == 0, "\n".join(_failures)


if __name__ == "__main__":
    sys.exit(run())
