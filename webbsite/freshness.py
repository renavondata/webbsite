"""The CCASS freshness budget, read from deploy/freshness.toml.

Stdlib only and dependency-free on purpose: scripts/refresh/refresh.py carries
a copy of `budget_for` (it runs under its own PEP 723 environment and cannot
import this package), and tests/test_freshness.py pins the two copies to the
same answers. Change the rule here AND there, or the loader and /health?deep=1
will disagree about what "stale" means -- which is precisely the disagreement
this file exists to end.
"""

from __future__ import annotations

import tomllib
from datetime import date
from pathlib import Path

FRESHNESS_TOML = Path(__file__).resolve().parent.parent / "deploy" / "freshness.toml"
DEFAULT_BUDGET = 4


def _in_window(today: date, start: str, end: str) -> bool:
    """Inclusive MM-DD window, wrapping the year end when start > end."""
    s = (int(start[:2]), int(start[3:]))
    e = (int(end[:2]), int(end[3:]))
    t = (today.month, today.day)
    return s <= t <= e if s <= e else (t >= s or t <= e)


def budget_for(today: date, config: dict | None = None) -> int:
    """Trading days CCASSdateDone may lag on `today`: a window's budget when one
    applies (first match wins), else the default, else 4."""
    if config is None:
        try:
            config = tomllib.loads(FRESHNESS_TOML.read_text())
        except (OSError, tomllib.TOMLDecodeError):
            return DEFAULT_BUDGET
    ccass = config.get("ccass", {})
    for w in ccass.get("windows", []):
        if _in_window(today, w["start"], w["end"]):
            return int(w["budget_trading_days"])
    return int(ccass.get("budget_trading_days", DEFAULT_BUDGET))
