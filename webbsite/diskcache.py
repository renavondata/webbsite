"""Tiny persistent disk cache for deterministic, expensive query results.

A few heavy aggregate pages (leagueDirsHK, shortsum) produce output that is
constant FOR A GIVEN DATASET. Compute once, persist as JSON, serve from disk
thereafter. Best-effort: any failure falls back to a live recompute, so a
fresh DB restore or unwritable dir just costs the first hit its normal time.

The dataset is refreshed daily, so any page whose inputs the loader touches
must use the *_keyed variants with the data watermark as the key: the first
hit after a refresh recomputes once and older files are swept. An unkeyed
entry never expires -- shortsum was frozen at its first post-deploy render
from 2026-07 until this was noticed.

Cache dir: WEBBSITE_CACHE_DIR or LEAGUE_CACHE_DIR (kept for back-compat), else
~/.cache/webbsite (the service user's HOME, which it owns).
"""

import json
import os
import tempfile
from pathlib import Path


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


def load_json_keyed(prefix, key):
    """Load `<prefix>_<key>.json`; None on miss. `key` is normally a watermark."""
    return load_json(f"{prefix}_{key}")


def save_json_keyed(prefix, key, obj):
    """Save `<prefix>_<key>.json` and sweep every other `<prefix>_*.json`, so a
    daily refresh leaves exactly one file per page behind."""
    name = f"{prefix}_{key}"
    save_json(name, obj)
    try:
        for old in Path(cache_dir()).glob(f"{prefix}_*.json"):
            if old.name != f"{name}.json":
                old.unlink(missing_ok=True)
    except OSError:
        pass
