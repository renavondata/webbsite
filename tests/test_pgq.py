#!/usr/bin/env python3
"""Checks for scripts/pgq.py's read-only lint (no DB, no network, no pytest).

    uv run python tests/test_pgq.py

The real boundary is server-side (`default_transaction_read_only = on`), so
these pin the client-side lint that catches a typo before it becomes a
transaction -- including the ways a write can hide: behind a comment, behind a
second statement, or behind leading whitespace.
"""

import importlib.util
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

_spec = importlib.util.spec_from_file_location(
    "pgq", os.path.join(os.path.dirname(__file__), "..", "scripts", "pgq.py")
)
pgq = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(pgq)

_failures: list[str] = []


def check(name, got, want):
    if got != want:
        _failures.append(f"{name}: got {got!r}, want {want!r}")
    else:
        print(f"  ok  {name}")


READS = [
    "SELECT 1",
    "  select count(*) from enigma.log  ",
    "WITH x AS (SELECT 1) SELECT * FROM x",
    "EXPLAIN (ANALYZE, BUFFERS) SELECT 1",
    "SHOW jit",
    "TABLE enigma.log",
    "-- a comment\nSELECT 1",
    "/* block */ SELECT 1",
    "SELECT 1; SELECT 2;",
    "\\timing on\nSELECT 1",
    "SELECT ';' AS semicolon_in_a_string",
]

WRITES = [
    "UPDATE enigma.log SET val = 'x'",
    "delete from enigma.log",
    "INSERT INTO enigma.log VALUES (1)",
    "DROP TABLE enigma.log",
    "TRUNCATE enigma.log",
    "SELECT 1; DROP TABLE enigma.log",
    "-- SELECT 1\nUPDATE enigma.log SET val = 'x'",
    "/* SELECT 1 */ DELETE FROM enigma.log",
    "CREATE INDEX ON enigma.log (name)",
    "GRANT ALL ON enigma.log TO public",
    "COPY enigma.log FROM '/tmp/x'",
    "SELECT 1; \\copy enigma.log FROM '/tmp/x'",
]


def run():
    for sql in READS:
        check(f"read allowed: {sql.strip()[:40]!r}", pgq.check_read_only(sql), [])
    for sql in WRITES:
        check(f"write refused: {sql.strip()[:40]!r}", pgq.check_read_only(sql) != [], True)

    # The session preamble is the actual guarantee; pin all three lines.
    pre = pgq.preamble(30, jit=False)
    check("preamble: read-only", "SET default_transaction_read_only = on;" in pre, True)
    check("preamble: timeout", "SET statement_timeout = '30s';" in pre, True)
    check("preamble: jit off", "SET jit = off;" in pre, True)
    check("preamble: jit on when asked", "SET jit = on;" in pgq.preamble(30, jit=True), True)

    # Timeout is clamped, so a typo cannot pin production for an hour.
    check("timeout cap", pgq.MAX_TIMEOUT_S <= 300, True)

    # The repo is public: the production host must never be a literal here.
    src = open(os.path.join(os.path.dirname(__file__), "..", "scripts", "pgq.py")).read()
    import re
    hosts = [m for m in re.findall(r"\b\d{1,3}(?:\.\d{1,3}){3}\b", src) if m != "127.0.0.1"]
    check("no production host committed", hosts, [])

    if _failures:
        print("\nFAILED:")
        for f in _failures:
            print("  " + f)
        return 1
    print(f"\nall {len(READS) + len(WRITES) + 6} checks passed")
    return 0


def test_all():
    """pytest entry point (CI); the direct-run house style still works."""
    assert run() == 0, "\n".join(_failures)


if __name__ == "__main__":
    sys.exit(run())
