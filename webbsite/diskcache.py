"""Tiny persistent disk cache for deterministic, expensive query results.

The site serves a frozen dataset, so a few heavy aggregate pages (leagueDirsHK,
shortsum) produce constant output. Compute once, persist as JSON, serve from
disk thereafter. Best-effort: any failure falls back to a live recompute, so a
fresh DB restore or unwritable dir just costs the first hit its normal time.

Cache dir: WEBBSITE_CACHE_DIR or LEAGUE_CACHE_DIR (kept for back-compat), else
~/.cache/webbsite (the service user's HOME, which it owns).
"""

import json
import os
import tempfile


def cache_dir():
    return (
        os.environ.get("WEBBSITE_CACHE_DIR")
        or os.environ.get("LEAGUE_CACHE_DIR")
        or os.path.join(os.path.expanduser("~"), ".cache", "webbsite")
    )


def _path(name):
    return os.path.join(cache_dir(), f"{name}.json")


def load_json(name):
    try:
        with open(_path(name), encoding="utf-8") as f:
            return json.load(f)
    except (OSError, ValueError):
        return None


def save_json(name, obj):
    """Best-effort atomic write; failure just means the next hit recomputes."""
    try:
        d = cache_dir()
        os.makedirs(d, exist_ok=True)
        fd, tmp = tempfile.mkstemp(dir=d)
        with os.fdopen(fd, "w", encoding="utf-8") as f:
            json.dump(obj, f)
        os.replace(tmp, _path(name))
    except OSError:
        pass
