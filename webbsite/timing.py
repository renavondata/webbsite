"""Per-request timing: where a request's time went, on every response.

Emits a ``Server-Timing`` header (visible in any browser's devtools, and logged
by gunicorn's access log -- gunicorn.conf.py) with:

    app     wall time from _start_timer to the response (ms)
    db      time inside SQL statements (ms), desc = statement count
    render  time inside render_template (ms)
    cpu     this thread's CPU time (ms): app - cpu ~ time spent waiting
    cache   desc = hit | miss | stale | bypass, when a cache layer set g.cache_state
    dberr   present when a query failed (g.db_failed; the page is not cached)

The point is the split: a slow page is either slow in SQL (fix the query or
precompute it), slow in the template (render fewer rows), or slow waiting (load).
Without it the only number we had was Sentry's sampled wall time per route.

SQL time comes from SQLAlchemy cursor events on the engine, so every path that
executes SQL is covered -- execute_query, execute_scalar, stream_query (its
execute only; streamed fetches happen after the response starts), watermarks,
and raw get_db() callers alike -- without touching any of them.
"""

import time

from flask import before_render_template, g, has_request_context, template_rendered
from sqlalchemy import event


def _add(name, amount):
    setattr(g, name, getattr(g, name, 0) + amount)


# --- SQL ----------------------------------------------------------------------

def _before_cursor(conn, cursor, statement, parameters, context, executemany):
    conn.info.setdefault("timing_t0", []).append(time.perf_counter())


def _after_cursor(conn, cursor, statement, parameters, context, executemany):
    _close_statement(conn)


def _on_error(exception_context):
    conn = exception_context.connection
    if conn is not None:
        _close_statement(conn)


def _close_statement(conn):
    stack = conn.info.get("timing_t0")
    if not stack:
        return
    elapsed_ms = (time.perf_counter() - stack.pop()) * 1000
    if has_request_context():
        _add("_db_ms", elapsed_ms)
        _add("_db_n", 1)


def attach_engine(engine):
    """Count SQL time per request. Called once by db.init_engine."""
    event.listen(engine, "before_cursor_execute", _before_cursor)
    event.listen(engine, "after_cursor_execute", _after_cursor)
    event.listen(engine, "handle_error", _on_error)


# --- templates ----------------------------------------------------------------

def _before_render(sender, template, context, **extra):
    if has_request_context():
        g.setdefault("_render_t0", []).append(time.perf_counter())


def _rendered(sender, template, context, **extra):
    if has_request_context():
        stack = g.get("_render_t0")
        if stack:
            _add("_render_ms", (time.perf_counter() - stack.pop()) * 1000)


# --- header -------------------------------------------------------------------

def server_timing(app_ms=None, db_ms=0.0, db_n=0, render_ms=0.0, cpu_ms=None,
                  cache_state=None, db_failed=False):
    """The Server-Timing header value for one request (pure)."""
    parts = []
    if app_ms is not None:
        parts.append(f"app;dur={app_ms:.1f}")
    parts.append(f'db;dur={db_ms:.1f};desc="{db_n}q"')
    parts.append(f"render;dur={render_ms:.1f}")
    if cpu_ms is not None:
        parts.append(f"cpu;dur={cpu_ms:.1f}")
    if cache_state:
        parts.append(f'cache;desc="{cache_state}"')
    if db_failed:
        parts.append("dberr")
    return ", ".join(parts)


def start_request():
    """Mark the start of the timed part of a request (called by _start_timer)."""
    g._cpu_start = time.thread_time()


def init_app(app):
    """Connect the render signals and add the header to every response.

    Register early: Flask runs after_request functions in reverse order, so an
    early registration runs late and its numbers cover the other hooks too.
    """
    before_render_template.connect(_before_render, app)
    template_rendered.connect(_rendered, app)

    @app.after_request
    def _server_timing(response):
        start = g.get("_request_start")
        cpu_start = g.get("_cpu_start")
        response.headers["Server-Timing"] = server_timing(
            app_ms=None if start is None else (time.monotonic() - start) * 1000,
            db_ms=g.get("_db_ms", 0.0),
            db_n=g.get("_db_n", 0),
            render_ms=g.get("_render_ms", 0.0),
            cpu_ms=None if cpu_start is None else (time.thread_time() - cpu_start) * 1000,
            cache_state=g.get("cache_state"),
            db_failed=bool(g.get("db_failed")),
        )
        return response
