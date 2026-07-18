"""Dataset watermarks from ``enigma.log``, cached per-process for ~5 minutes.

The archive is no longer frozen — the daily refresh loader advances these keys as
fresh CCASS/quotes rows land (see ``deploy/README`` "Daily data refresh"). Routes
read the current watermark instead of a hardcoded freeze date, so "latest" views
follow the data. Cached per gunicorn worker with a short TTL: the watermark changes
at most once a day, so a few minutes of staleness is invisible, and this avoids a
per-request ``enigma.log`` round-trip on every page.
"""

from __future__ import annotations

import time
from datetime import date

from webbsite.db import execute_scalar

_TTL = 300.0  # seconds
_cache: dict[str, tuple[str, float]] = {}  # name -> (val, monotonic fetched-at)

# The last values ever true of the frozen archive. Used ONLY when the DB row is
# missing or the query fails and nothing is cached yet — never in steady state.
_FALLBACK = {
    "CCASSdateDone": "2025-10-17",
    "MBquotesDate": "2025-10-10",
    "GEMquotesDate": "2025-10-10",
}


def log_val(name: str) -> str:
    """The current ``enigma.log`` value for ``name`` (ISO date string), memoised.

    Dict get/set is GIL-atomic, so no lock is needed (worst case, two workers each
    do one redundant fetch). Requires an app context (all call sites have one).
    """
    hit = _cache.get(name)
    if hit and time.monotonic() - hit[1] < _TTL:
        return hit[0]
    try:
        val = execute_scalar("SELECT val FROM enigma.log WHERE name = %s", (name,))
        val = val or _FALLBACK[name]
    except Exception:
        # DB hiccup: prefer a stale cached value; else the frozen-archive fallback.
        return hit[0] if hit else _FALLBACK[name]
    _cache[name] = (val, time.monotonic())
    return val


def ccass_done() -> str:
    """Latest CCASS settlement date loaded (``CCASSdateDone``), ISO string."""
    return log_val("CCASSdateDone")


def quotes_end() -> str:
    """Latest quotes date — the min of the two boards (ISO strings compare)."""
    return min(log_val("MBquotesDate"), log_val("GEMquotesDate"))


def data_end() -> date:
    """Latest quotes date as a ``date`` (the market-data upper bound)."""
    return date.fromisoformat(quotes_end())
