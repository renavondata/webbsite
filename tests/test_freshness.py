#!/usr/bin/env python3
"""Runnable checks for the freshness budget (no DB, no pytest needed).

    uv run python tests/test_freshness.py

Pins deploy/freshness.toml's shape, the window logic, and -- the point -- that
webbsite/freshness.py and the loader's private copy in scripts/refresh/refresh.py
give the same answer for the same day and config.
"""

import importlib.util
import os
import sys
from datetime import date

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

from webbsite import freshness  # noqa: E402

_failures: list[str] = []


def check(name, got, want):
    if got != want:
        _failures.append(f"{name}: got {got!r}, want {want!r}")
    else:
        print(f"  ok  {name}")


def load_loader_copy():
    """Import scripts/refresh/refresh.py as a module WITHOUT running it: its
    third-party imports (boto3, pyarrow, psycopg2) are lazy or guarded."""
    spec = importlib.util.spec_from_file_location(
        "refresh_under_test",
        os.path.join(os.path.dirname(__file__), "..", "scripts", "refresh", "refresh.py"),
    )
    mod = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = mod  # dataclasses resolve annotations via sys.modules
    spec.loader.exec_module(mod)
    return mod


def run():
    cfg = {"ccass": {"budget_trading_days": 4, "windows": [
        {"start": "12-24", "end": "01-02", "budget_trading_days": 6},
        {"start": "10-01", "end": "10-07", "budget_trading_days": 5},
    ]}}
    b = freshness.budget_for
    check("default outside windows", b(date(2026, 6, 15), cfg), 4)
    check("inside a plain window", b(date(2026, 10, 3), cfg), 5)
    check("window edges inclusive", (b(date(2026, 10, 1), cfg), b(date(2026, 10, 7), cfg)), (5, 5))
    check("year-wrapping window, December side", b(date(2026, 12, 31), cfg), 6)
    check("year-wrapping window, January side", b(date(2027, 1, 2), cfg), 6)
    check("just outside the wrap", b(date(2027, 1, 3), cfg), 4)
    check("no ccass table -> default 4", b(date(2026, 6, 15), {}), 4)
    check("real deploy/freshness.toml parses to 4 today", b(date.today()), 4)
    check("missing file -> default 4", freshness.budget_for(date.today(), None) if not freshness.FRESHNESS_TOML.exists() else 4, 4)

    loader = load_loader_copy()
    for d in (date(2026, 6, 15), date(2026, 10, 3), date(2026, 12, 31), date(2027, 1, 2), date(2027, 1, 3)):
        check(f"loader copy agrees on {d}", loader.budget_for(d, cfg), b(d, cfg))
    check("loader reads the same file", loader.FRESHNESS_TOML.resolve(), freshness.FRESHNESS_TOML.resolve())

    if _failures:
        print("\nFAILED:")
        for f in _failures:
            print("  " + f)
        return 1
    print("\nall freshness checks passed")
    return 0


def test_all():
    assert run() == 0, "\n".join(_failures)


if __name__ == "__main__":
    sys.exit(run())
