#!/usr/bin/env python3
"""Runnable checks for the Server-Timing header (webbsite/timing.py). No DB.

    uv run python tests/test_server_timing.py

Pins:
  1. the header format (pure);
  2. SQL time and statement count are summed per request from SQLAlchemy cursor
     events -- including a statement that fails -- and nothing leaks outside a
     request (an in-memory SQLite engine stands in for Postgres);
  3. render time is summed from Flask's template signals;
  4. every response carries the header through the real hooks: app/cpu on a
     timed request, dberr when a query failed (the page is never cached), and
     no app/cpu on a response short-circuited before the timer (bot 403).
"""

import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

import hermetic  # noqa: E402

hermetic.isolate()

from flask import g, render_template_string  # noqa: E402
from sqlalchemy import create_engine, text  # noqa: E402

from webbsite import create_app, timing  # noqa: E402

_failures: list[str] = []


def check(name, got, want):
    if got != want:
        _failures.append(f"{name}: got {got!r}, want {want!r}")
    else:
        print(f"  ok  {name}")


def fields(header):
    """{'app': 'app;dur=1.0', 'db': ...} keyed by metric name."""
    return {p.strip().split(";")[0]: p.strip() for p in header.split(",")}


def run():
    if os.environ.get("PLANTED_FAILURE"):
        check("planted failure (CI self-proof; expected to fail)", 1, 0)

    # 1. format ----------------------------------------------------------------
    check("format: full",
          timing.server_timing(app_ms=12.34, db_ms=5.0, db_n=3, render_ms=2.25,
                               cpu_ms=7.0, cache_state="hit", db_failed=True),
          'app;dur=12.3, db;dur=5.0;desc="3q", render;dur=2.2, cpu;dur=7.0, '
          'cache;desc="hit", dberr')
    check("format: untimed request has no app/cpu",
          timing.server_timing(), 'db;dur=0.0;desc="0q", render;dur=0.0')

    app = create_app()

    # 2. SQL accounting ---------------------------------------------------------
    engine = create_engine("sqlite://")
    timing.attach_engine(engine)
    with app.test_request_context("/"):
        with engine.connect() as conn:
            conn.execute(text("SELECT 1"))
            conn.execute(text("SELECT 2"))
            try:
                conn.execute(text("SELECT * FROM no_such_table"))
            except Exception:
                pass
            check("sql: three statements counted, the failed one too", g.get("_db_n"), 3)
            check("sql: time accumulated", g.get("_db_ms", 0) > 0, True)
            check("sql: no start time left on the connection",
                  conn.connection.info.get("timing_t0") or conn.info.get("timing_t0"), [])
    with engine.connect() as conn:  # outside any request: counted nowhere, no error
        conn.execute(text("SELECT 1"))
    check("sql: outside a request is harmless", True, True)

    # 3. render accounting ------------------------------------------------------
    with app.test_request_context("/"):
        render_template_string("{% for i in range(2000) %}{{ i }}{% endfor %}")
        render_template_string("x")
        check("render: time accumulated over two renders", g.get("_render_ms", 0) > 0, True)
        check("render: start stack drained", g.get("_render_t0"), [])

    # 4. through the hooks ------------------------------------------------------
    client = app.test_client()
    r = client.get("/robots.txt")
    st = fields(r.headers.get("Server-Timing", ""))
    check("hooks: robots.txt carries app, db, render, cpu",
          sorted(st), ["app", "cpu", "db", "render"])
    check("hooks: no dberr on a clean request", "dberr" in st, False)

    # A page whose query fails (the stub DB refuses connections) is flagged.
    r = client.get("/dbpub/bornyear.asp?y=1957&m=4")
    check("hooks: failed-DB page is flagged dberr",
          "dberr" in fields(r.headers.get("Server-Timing", "")), True)

    r = client.get("/", headers={"User-Agent": "Mozilla/5.0 (compatible; Bytespider)"})
    st = fields(r.headers.get("Server-Timing", ""))
    check("hooks: bot 403 short-circuits before the timer (no app/cpu)",
          (r.status_code, "app" in st, "cpu" in st), (403, False, False))

    if _failures:
        print("\nFAILED:")
        for f in _failures:
            print("  " + f)
        return 1
    print("\nall server-timing checks passed")
    return 0


def test_all():
    assert run() == 0


if __name__ == "__main__":
    sys.exit(run())
