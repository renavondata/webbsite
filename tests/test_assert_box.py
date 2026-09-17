#!/usr/bin/env python3
"""Runnable checks for the pure parts of scripts/assert_box.py (no DB, no box).

    uv run python tests/test_assert_box.py

The invariants job runs as root on the droplet once a day; what can be pinned
here is the logic that decides "drift" and "armed": the setting normaliser
(conf-file spelling vs pg_settings units), the three parsers, and the verdict
over the monitoring instance's check list. Everything I/O-shaped stays in the script.
"""

import os
import sys

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
    check("real conf has 13 settings", len(real), 13)
    check("real conf loads pg_stat_statements", real["shared_preload_libraries"], "'pg_stat_statements'")

    idx = ab.parse_index_names("CREATE INDEX IF NOT EXISTS a_b ON t (x);\ncreate index if not exists c\n  on t (y);")
    check("parse_index_names", idx, ["a_b", "c"])
    check("real indexes.sql names 21", len(ab.parse_index_names(ab.INDEXES_SQL.read_text())), 21)

    rows = ab.parse_checks(ab.CHECKS_TXT.read_text())
    check("checks.txt parses 6 rows", len(rows), 6)
    check("refresh is live", [r["name"] for r in rows if r["status"] == "live"], ["webbsite-refresh", "webbsite-invariants"])

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
