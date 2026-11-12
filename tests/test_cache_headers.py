#!/usr/bin/env python3
"""Runnable checks for the freshness rework (no DB, no pytest).

Covers the load-bearing, DB-free logic:
  1. the data-page TTL ladder (_data_page_ttls / _asof_from_args),
  2. the enigma.log watermark helper's fallback path, and
  3. a grep gate proving the hardcoded freeze constants are gone.

Run:  uv run python tests/test_cache_headers.py
"""

import importlib.util
import os
import re
import sys
from datetime import date, timedelta
from pathlib import Path

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

import hermetic  # noqa: E402

hermetic.isolate()

from webbsite import (  # noqa: E402
    _asof_from_args,
    _data_page_ttls,
    _edge_cc,
    _TTL_DEEP,
    _TTL_LATEST,
    _TTL_SETTLED,
    _TTL_STALE,
)
from webbsite import watermarks  # noqa: E402

_failures: list[str] = []


def check(name, got, want):
    # Assert as well as record: CI runs this file under pytest, which never reaches
    # the __main__ block below, so a check that only recorded could not fail there.
    if got != want:
        _failures.append(f"{name}: got {got!r}, want {want!r}")
    else:
        print(f"  ok  {name}")
    assert got == want, name


def iso(days_ago):
    return (date.today() - timedelta(days=days_ago)).isoformat()


def test_ttl_ladder():
    print("== TTL ladder ==")
    check("no date -> latest", _data_page_ttls({}), _TTL_LATEST)
    check("d1 alone (open range) -> latest", _data_page_ttls({"d1": iso(400)}), _TTL_LATEST)
    check("recent d -> latest", _data_page_ttls({"d": iso(3)}), _TTL_LATEST)
    check("14d-boundary d -> latest", _data_page_ttls({"d": iso(14)}), _TTL_LATEST)
    check("30d-old d -> settled", _data_page_ttls({"d": iso(30)}), _TTL_SETTLED)
    check("400d-old d -> deep", _data_page_ttls({"d": iso(400)}), _TTL_DEEP)
    check("d2 pins over d", _data_page_ttls({"d": iso(3), "d2": iso(400)}), _TTL_DEEP)
    check("malformed d -> latest", _data_page_ttls({"d": "not-a-date"}), _TTL_LATEST)
    check("asof reads d2 then d", _asof_from_args({"d2": iso(30)}), date.today() - timedelta(days=30))
    check("asof None when no date", _asof_from_args({"d1": iso(30)}), None)


def test_edge_cc_stale_while_revalidate():
    print("== edge header: stale-while-revalidate ==")
    check("latest", _edge_cc(*_TTL_LATEST[1:]), "max-age=14400, stale-while-revalidate=72000")
    check("settled", _edge_cc(*_TTL_SETTLED[1:]), "max-age=2592000, stale-while-revalidate=604800")
    check("deep", _edge_cc(*_TTL_DEEP[1:]), "max-age=31536000, stale-while-revalidate=2592000")
    # The previous data version is on its way out: it must not linger for a day.
    check("stale precompute has no SWR", _edge_cc(*_TTL_STALE[1:]), "max-age=60")
    check("latest stays within the agreed 24 h", sum(_TTL_LATEST[1:]), 86400)
    for tier in (_TTL_LATEST, _TTL_SETTLED, _TTL_DEEP, _TTL_STALE):
        value = _edge_cc(*tier[1:])
        # Any of these turns Cloudflare's SWR off, silently.
        check(f"no SWR-disabling directive in {value!r}",
              re.findall(r"must-revalidate|s-maxage|no-cache|no-store|private", value), [])


def test_data_page_headers_end_to_end(monkeypatch):
    """Through the real hook: SWR on data pages only, and never on a failed page."""
    monkeypatch.setenv("DATABASE_URL", "postgresql://x@127.0.0.1:1/x")
    from flask import g

    from webbsite import create_app

    app = create_app()

    @app.route("/_t/page.asp")
    def _page():
        return "ok"

    @app.route("/_t/failed.asp")
    def _failed():
        g.db_failed = True
        return "partial"

    @app.route("/_t/thingCSV.asp")
    def _csv():
        return "a,b"

    def headers(url):
        r = app.test_client().get(url)
        return r.headers.get("Cache-Control"), r.headers.get("CDN-Cache-Control")

    check("latest: browser TTL unchanged, SWR at the edge only", headers("/_t/page.asp"),
          ("public, max-age=3600", "max-age=14400, stale-while-revalidate=72000"))
    check("old date: settled", headers(f"/_t/page.asp?d={iso(30)}"),
          ("public, max-age=86400", "max-age=2592000, stale-while-revalidate=604800"))
    check("very old date: deep", headers(f"/_t/page.asp?d={iso(400)}"),
          ("public, max-age=604800", "max-age=31536000, stale-while-revalidate=2592000"))
    check("a failed page is never cached, stale or otherwise", headers("/_t/failed.asp"),
          ("no-store", None))
    check("CSV has no SWR", headers("/_t/thingCSV.asp"),
          ("public, max-age=3600", "max-age=14400"))


def test_watermark_fallback():
    print("== watermark fallback (no DB) ==")
    # The query fails -> the frozen-archive fallback is returned. On a private copy of
    # the module: tests/test_overlay.py replaces watermarks.log_val when pytest imports
    # it, and other tests leave stubs and memoised values on the shared one.
    spec = importlib.util.spec_from_file_location("_watermarks_fresh", watermarks.__file__)
    fresh = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(fresh)

    def no_database(*_args):
        raise RuntimeError("no database")

    fresh.execute_scalar = no_database
    check("ccass_done fallback", fresh.ccass_done(), "2025-10-17")
    check("quotes_end fallback = min(MB,GEM)", fresh.quotes_end(), "2025-10-10")
    check("data_end is a date", fresh.data_end(), date(2025, 10, 10))


def test_freeze_constants_gone():
    print("== grep gate: freeze constants removed ==")
    pkg = Path(__file__).resolve().parent.parent / "webbsite"
    banned = {
        "2025-10-17": [],
        "DATA_END": [],
        "DATA_FREEZE": [],
    }
    for py in pkg.rglob("*.py"):
        # watermarks.py is the ONE sanctioned home of the frozen-archive fallback.
        if py.name == "watermarks.py":
            continue
        text = py.read_text(encoding="utf-8")
        for token in banned:
            if re.search(re.escape(token), text):
                banned[token].append(str(py.relative_to(pkg.parent)))
    for token, hits in banned.items():
        check(f"no `{token}` in webbsite/", hits, [])


if __name__ == "__main__":
    test_ttl_ladder()
    test_edge_cc_stale_while_revalidate()
    test_watermark_fallback()
    test_freeze_constants_gone()
    if _failures:
        print("\nFAILURES:")
        for f in _failures:
            print(f"  - {f}")
        sys.exit(1)
    print("\nAll cache-header / freshness checks passed.")
