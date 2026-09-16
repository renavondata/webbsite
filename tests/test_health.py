#!/usr/bin/env python3
"""Runnable checks for /health and /health?deep=1 (no DB, no pytest).

Same house style as tests/test_cache_headers.py: a plain script, run it directly.

    uv run python tests/test_health.py

WHY THESE EXIST. On 2026-09-11 Caddy was OOM-killed and the site served
Cloudflare 521s for five days while this app stayed perfectly healthy and bare
/health answered 200 the whole time. The deep variant is what an external uptime
probe points at, so its three outcomes -- ok / stale / database unreachable --
are worth pinning down, especially the rule that a DB failure must NOT be
absorbed the way page rendering absorbs it (webbsite.watermarks deliberately
falls back to frozen-archive values; the health check must not).

The route imports execute_scalar lazily, inside the handler, so replacing the
attribute on webbsite.db is enough to stub it -- no import-order games.
"""

import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

os.environ.setdefault("DATABASE_URL", "postgresql://stub:stub@127.0.0.1:1/stub")

from webbsite import create_app  # noqa: E402
from webbsite import db as _db  # noqa: E402

_failures: list[str] = []


def check(name, got, want):
    if got != want:
        _failures.append(f"{name}: got {got!r}, want {want!r}")
    else:
        print(f"  ok  {name}")


def stub_scalar(*, ccass_done="2026-09-12", behind=0, raises=None):
    """Stand in for db.execute_scalar, keyed on which of the two queries it is."""

    def _fake(sql, params=None):
        if raises is not None:
            raise raises
        if "enigma.log" in sql:
            return ccass_done
        if "ccass.calendar" in sql:
            return behind
        raise AssertionError(f"unexpected query: {sql}")

    return _fake


def run():
    app = create_app()
    app.config["TESTING"] = True
    client = app.test_client()
    original = _db.execute_scalar

    print("== bare /health (liveness) ==")
    r = client.get("/health")
    check("status", r.status_code, 200)
    check("body", r.get_json(), {"status": "ok"})
    check("never cached", r.headers.get("Cache-Control"), "no-store")

    print("== bare /health does no database work ==")
    # The liveness probe must stay I/O-free: it is the cheap one, and it is hit
    # by anything that does not know about ?deep=1.
    _db.execute_scalar = stub_scalar(raises=AssertionError("bare /health touched the DB"))
    try:
        check("still 200 with a poisoned DB", client.get("/health").status_code, 200)
    finally:
        _db.execute_scalar = original

    print("== /health?deep=1 healthy ==")
    _db.execute_scalar = stub_scalar(ccass_done="2026-09-12", behind=2)
    try:
        r = client.get("/health?deep=1")
        body = r.get_json()
        check("status", r.status_code, 200)
        check("ok", body["status"], "ok")
        check("reports watermark", body["ccass_done"], "2026-09-12")
        check("reports lag", body["trading_days_behind"], 2)
        check("never cached", r.headers.get("Cache-Control"), "no-store")
    finally:
        _db.execute_scalar = original

    print("== /health?deep=1 at the freshness budget edge ==")
    # Budget is 4 trading days, matching scripts/refresh/refresh.py::freshness_ok.
    # 4 is still healthy; 5 is not. Off-by-one here means either a check that
    # cries on every long weekend or one that never fires.
    for behind, want in ((4, 200), (5, 503)):
        _db.execute_scalar = stub_scalar(behind=behind)
        try:
            check(f"{behind} days behind", client.get("/health?deep=1").status_code, want)
        finally:
            _db.execute_scalar = original

    print("== /health?deep=1 with the database down ==")
    _db.execute_scalar = stub_scalar(raises=RuntimeError("could not connect"))
    try:
        r = client.get("/health?deep=1")
        body = r.get_json()
        check("500, not 200", r.status_code, 500)
        check("status", body["status"], "error")
        check("names the failure", body["deep"].startswith("RuntimeError:"), True)
    finally:
        _db.execute_scalar = original

    print("== /health?deep=1 with the watermark row missing ==")
    # A wedged loader that left enigma.log empty must not read as healthy.
    _db.execute_scalar = stub_scalar(ccass_done=None)
    try:
        check("500", client.get("/health?deep=1").status_code, 500)
    finally:
        _db.execute_scalar = original

    print("== deep is opt-in ==")
    _db.execute_scalar = stub_scalar(raises=AssertionError("shallow path hit the DB"))
    try:
        for q in ("", "?deep=0", "?deep=", "?deep=no"):
            check(f"'{q}' stays shallow", client.get("/health" + q).status_code, 200)
    finally:
        _db.execute_scalar = original


def test_all():
    """pytest entry point (CI); the direct-run house style still works."""
    run()
    assert not _failures, "\n".join(_failures)


if __name__ == "__main__":
    run()
    print()
    if _failures:
        print(f"FAILED ({len(_failures)}):")
        for f in _failures:
            print("  -", f)
        sys.exit(1)
    print("all health checks passed")
