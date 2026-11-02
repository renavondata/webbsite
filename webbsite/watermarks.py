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


# The keys the daily refresh loader advances (scripts/refresh/refresh.py
# LOG_*). They version market data -- the ccass tables AND enigma.issuedshares,
# which the loader also writes; every OTHER enigma.log row versions the rest of
# the enigma tables (organisations, people, directorships, ...). A page that
# reads issuedshares is "market" data, whatever its schema says.
LOADER_KEYS = ("CCASSdateDone", "MBquotesDate", "GEMquotesDate")
_enigma_cache: list = []  # [(version, monotonic fetched-at)]


def enigma_version() -> str | None:
    """A digest of every ``enigma.log`` row the loader does not own.

    Contract for anything that writes the enigma tables (today nothing does;
    the renavon revival will): advance an ``enigma.log`` key in the same
    transaction, or pages precomputed from enigma data keep serving the old
    result. None when the query fails, so a caller computes live instead of
    caching under a version it could not read. Memoised like :func:`log_val`.
    """
    import hashlib

    from webbsite.db import execute_query

    if _enigma_cache and time.monotonic() - _enigma_cache[0][1] < _TTL:
        return _enigma_cache[0][0]
    try:
        rows = execute_query(
            "SELECT name, val FROM enigma.log WHERE name <> ALL(CAST(%s AS text[])) "
            "ORDER BY name",
            (list(LOADER_KEYS),),
        )
    except Exception:
        return _enigma_cache[0][0] if _enigma_cache else None
    h = hashlib.sha256()
    for r in rows:
        h.update(f"{r['name']}\x00{r['val']}\x01".encode())
    version = h.hexdigest()[:16]
    _enigma_cache[:] = [(version, time.monotonic())]
    return version
