#!/usr/bin/env python3
"""Runnable checks for the freshness rework (no DB, no pytest).

Covers the load-bearing, DB-free logic:
  1. the data-page TTL ladder (_data_page_ttls / _asof_from_args),
  2. the enigma.log watermark helper's fallback path, and
  3. a grep gate proving the hardcoded freeze constants are gone.

Run:  uv run python tests/test_cache_headers.py
"""

import os
import re
import sys
from datetime import date, timedelta
from pathlib import Path

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

from webbsite import _asof_from_args, _data_page_ttls, _TTL_DEEP, _TTL_LATEST, _TTL_SETTLED
from webbsite import watermarks

_failures: list[str] = []


def check(name, got, want):
    if got != want:
        _failures.append(f"{name}: got {got!r}, want {want!r}")
    else:
        print(f"  ok  {name}")


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


def test_watermark_fallback():
    print("== watermark fallback (no DB) ==")
    # No app context -> the query fails -> the frozen-archive fallback is returned.
    check("ccass_done fallback", watermarks.ccass_done(), "2025-10-17")
    check("quotes_end fallback = min(MB,GEM)", watermarks.quotes_end(), "2025-10-10")
    check("data_end is a date", watermarks.data_end(), date(2025, 10, 10))


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
    test_watermark_fallback()
    test_freeze_constants_gone()
    if _failures:
        print("\nFAILURES:")
        for f in _failures:
            print(f"  - {f}")
        sys.exit(1)
    print("\nAll cache-header / freshness checks passed.")
