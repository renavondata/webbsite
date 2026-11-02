"""The latency budget the daily route check holds every page to.

Targets (2026-11 latency programme): every page answers in <= 500 ms at the
origin, search in <= 200 ms. Measured on the app's own Server-Timing `app`
figure (webbsite/timing.py), which excludes time queued in gunicorn -- the sort
sweep runs six requests at once, and queueing is load, not page cost.

Pure data and pure functions, stdlib only, like route_fixtures.py: the checker
runs on the box with nothing but the app's venv.

Modes (ROUTE_CHECK_BUDGET):
  report   (default) over-budget URLs are listed as INFO; nothing fails.
  enforce  an over-budget URL is measured once more, sequentially (warm), and
           fails if it is still over -- unless it is in KNOWN_OVER_BUDGET and
           under that entry's ceiling.

KNOWN_OVER_BUDGET is the honest list of pages not yet fixed. It may only
shrink: its size is pinned (KNOWN_OVER_BUDGET_PINNED), so adding a slow page
means raising the pin in review, in the open.
"""

import math

BUDGET_MS = 500
SEARCH_BUDGET_MS = 200
SEARCH_PATHS = frozenset({"/dbpub/searchpeople.asp", "/dbpub/searchorgs.asp"})

# path -> (ceiling_ms, reason). A path matches every query string on it.
KNOWN_OVER_BUDGET: dict[str, tuple[int, str]] = {}
KNOWN_OVER_BUDGET_PINNED = 0

# Every `timeout_s=` override in webbsite/routes is a page that needed more than
# the 8 s default. The count may only fall as pages are fixed. 24 = the 22 on
# master plus searchpeople.asp's two (PR #85).
TIMEOUT_S_SITES_PINNED = 24


def parse_server_timing(header):
    """{'app': 12.3, 'db': 4.0, 'db_n': 3, 'render': 1.0, 'cache': 'hit', 'dberr': True}.

    Unknown or malformed parts are skipped: the header is diagnostics, never a
    reason for the checker itself to fail.
    """
    out = {}
    for part in (header or "").split(","):
        bits = [b.strip() for b in part.split(";") if b.strip()]
        if not bits:
            continue
        name, params = bits[0], dict(
            (b.split("=", 1) + [""])[:2] for b in bits[1:])
        if name == "dberr":
            out["dberr"] = True
            continue
        if "dur" in params:
            try:
                out[name] = float(params["dur"])
            except ValueError:
                pass
        desc = params.get("desc", "").strip('"')
        if name == "db" and desc.endswith("q"):
            try:
                out["db_n"] = int(desc[:-1])
            except ValueError:
                pass
        elif name == "cache" and desc:
            out["cache"] = desc
    return out


def budget_ms(path):
    return SEARCH_BUDGET_MS if path in SEARCH_PATHS else BUDGET_MS


def verdict(path, warm_ms):
    """Why a URL fails the budget when measured warm, or None if it passes."""
    limit = budget_ms(path)
    if warm_ms <= limit:
        return None
    known = KNOWN_OVER_BUDGET.get(path)
    if known is None:
        return f"{warm_ms:.0f} ms > {limit} ms budget"
    ceiling, _reason = known
    if warm_ms > ceiling:
        return f"{warm_ms:.0f} ms > its known-slow ceiling {ceiling} ms"
    return None


def percentile(values, q):
    """Nearest-rank percentile of a non-empty list (q in 0..100)."""
    s = sorted(values)
    k = max(0, min(len(s) - 1, math.ceil(q / 100 * len(s)) - 1))
    return s[k]
