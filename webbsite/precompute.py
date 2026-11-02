"""Whole-page results computed once per data version, then served from disk.

Some pages aggregate the whole market or the whole company register and take
seconds to compute, but take only a handful of parameter values (an exchange,
a type, a sort). This module computes each such variant once per data version
and serves it from a local pickle afterwards, so a hit makes no queries.

    rows = precomputed("listed", "m_s", ("market", "today"), compute,
                       module=__name__)

Key: ``<cache>/pc/<page>/<variant>.<code>-<digest>.pkl``. The digest covers:

- FORMAT (bump it to drop every entry when the payload layout changes);
- the code: the calling module's source, this file's, database/schema/
  functions.sql (the page SQL calls those functions, and converge applies them),
  and any ``files=``. Sources are hashed when this module is imported, so the
  digest describes the code this process is running, not what is on disk now: a
  worker still on the old code after the deploy's git pull cannot save its
  output under the new code's key;
- one version per source: ``market`` (the loader's MB/GEM/CCASS watermarks:
  the ccass tables and enigma.issuedshares), ``enigma`` (every other
  enigma.log row: the rest of enigma; see watermarks.enigma_version for the
  contract writers follow), ``today``, ``month``, ``year``.

A source whose version cannot be read means "compute live, save nothing".

page and variant must match ``[A-Za-z0-9_-]{1,80}`` and must only ever be
built from validated, finite parameter values: anything else is computed live
and never saved, so junk query strings cannot create files.

Single-flight: one process computes a variant at a time (``flock`` on a lock
file; threads count too, as each opens its own descriptor). While one
computes, the others serve the previous data version if the same code wrote
one (marked ``stale``: the edge keeps it for 60 s, see webbsite/__init__.py),
else wait: another release's payload may have another shape.
A superseded version is deleted 15 minutes after its replacement is written.
A failing compute saves nothing and raises, so the next request retries. Requests
already waiting on it get :class:`ComputeFailed` instead of repeating it in turn: a
page timing out at 8 s would otherwise hold slots for minutes, one timeout after
another, and there are only 24 slots.

Payloads are pickled (protocol 5), so Decimal, date and None survive exactly.
The files are written and read only by the app's own user.
"""

from __future__ import annotations

import fcntl
import hashlib
import os
import pickle
import re
import sys
import tempfile
import time
from datetime import date
from pathlib import Path

from flask import g, has_app_context

from webbsite import watermarks
from webbsite.db import _mark_failed

FORMAT = "pc1"
SLUG = re.compile(r"[A-Za-z0-9_-]{1,80}")
GRACE_S = 900  # a superseded version lives this long after its replacement
WAIT_S = 120  # how long to wait for another process's compute before doing it
POLL_S = 0.05


def cache_root() -> Path:
    return Path(
        os.environ.get("WEBBSITE_CACHE_DIR")
        or os.path.join(os.path.expanduser("~"), ".cache", "webbsite")
    ) / "pc"


def _market_version():
    return "|".join(watermarks.log_val(k) for k in watermarks.LOADER_KEYS)


SOURCES = {
    "market": _market_version,
    "enigma": watermarks.enigma_version,
    "today": lambda: date.today().isoformat(),
    "month": lambda: date.today().strftime("%Y-%m"),
    "year": lambda: str(date.today().year),
}

_PACKAGE = Path(__file__).resolve().parent
_FUNCTIONS_SQL = _PACKAGE.parent / "database" / "schema" / "functions.sql"
_file_digests: dict[str, str] = {}


def _file_digest(path) -> str:
    """sha256 of a file's bytes, memoised per process (code changes only on a
    deploy, which restarts the workers). A file that isn't there hashes as
    empty: functions.sql is absent if the package is deployed without database/."""
    key = str(Path(path).resolve())
    hit = _file_digests.get(key)
    if hit is None:
        try:
            hit = hashlib.sha256(Path(key).read_bytes()).hexdigest()
        except FileNotFoundError:
            hit = ""
        _file_digests[key] = hit
    return hit


def _snapshot_sources() -> None:
    """Hash what is running now, while it is what is on disk: workers import every
    route at start, and a later git pull must not change these digests."""
    for path in (*_PACKAGE.rglob("*.py"), _FUNCTIONS_SQL):
        _file_digest(path)


_snapshot_sources()


def code_fingerprint(module: str, files=()) -> str:
    paths = [__file__, sys.modules[module].__file__, _FUNCTIONS_SQL, *files]
    return hashlib.sha256(
        "\x00".join(_file_digest(p) for p in paths).encode()
    ).hexdigest()


def code_tag(fingerprint) -> str:
    """Which release wrote a file: the stale path serves only its own."""
    return hashlib.sha256(f"{FORMAT}\x00{fingerprint}".encode()).hexdigest()[:12]


def digest(page, variant, versions, fingerprint) -> str:
    parts = [FORMAT, page, variant, fingerprint, *versions]
    return hashlib.sha256("\x00".join(parts).encode()).hexdigest()[:20]


def _set_state(state):
    if has_app_context():
        g.cache_state = state


def _contained(root: str, *parts: str) -> Path | None:
    """root/parts, or None if it would land outside root.

    The slug check already rules out separators and dots; this is the check
    that holds even if a slug rule is ever loosened.
    """
    base = os.path.realpath(root)
    full = os.path.realpath(os.path.join(base, *parts))
    return Path(full) if full.startswith(base + os.sep) else None


def _load(path: Path):
    try:
        with open(path, "rb") as f:
            return pickle.load(f)
    except FileNotFoundError:
        return None
    except Exception:
        # A truncated or foreign file: drop it and recompute.
        path.unlink(missing_ok=True)
        return None


def _save(path: Path, value) -> None:
    """Atomic write; a failure only means the next hit recomputes."""
    tmp = None
    try:
        fd, tmp = tempfile.mkstemp(dir=path.parent, prefix=".tmp-")
        with os.fdopen(fd, "wb") as f:
            pickle.dump(value, f, protocol=5)
        os.replace(tmp, path)
        tmp = None
    except OSError:
        pass
    finally:
        if tmp:
            Path(tmp).unlink(missing_ok=True)


def _versions_of(page_dir: Path, variant: str, tag: str):
    """Versions of one variant saved by this release, newest first."""
    try:
        found = [p for p in page_dir.glob(f"{variant}.{tag}-*.pkl")
                 if p.name.count(".") == 2]
        return sorted(found, key=lambda p: p.stat().st_mtime_ns, reverse=True)
    except OSError:
        return []


def sweep(page_dir: Path, max_entries: int, now: float | None = None) -> None:
    """Delete superseded versions past their grace, stray temp files, and the
    least recently written variants beyond max_entries."""
    now = time.time() if now is None else now
    try:
        files = list(page_dir.iterdir())
    except OSError:
        return
    groups: dict[str, list[Path]] = {}
    for p in files:
        try:
            if p.name.startswith(".tmp-"):
                if now - p.stat().st_mtime > GRACE_S:
                    p.unlink(missing_ok=True)
            elif p.suffix == ".pkl" and p.name.count(".") == 2:
                groups.setdefault(p.name.split(".", 1)[0], []).append(p)
        except OSError:
            pass
    newest = []
    for paths in groups.values():
        try:
            paths.sort(key=lambda p: p.stat().st_mtime_ns, reverse=True)
            head = paths[0]
            newest.append(head)
            if now - head.stat().st_mtime > GRACE_S:
                for old in paths[1:]:
                    old.unlink(missing_ok=True)
        except OSError:
            pass
    if len(newest) > max_entries:
        try:
            newest.sort(key=lambda p: p.stat().st_mtime_ns)
            for p in newest[: len(newest) - max_entries]:
                for q in groups[p.name.split(".", 1)[0]]:
                    q.unlink(missing_ok=True)
                Path(page_dir, p.name.split(".", 1)[0] + ".lock").unlink(missing_ok=True)
        except OSError:
            pass


class ComputeFailed(RuntimeError):
    """The compute this request was waiting for failed."""


def _raise_shared_failure():
    """Fail a waiter like the compute it waited on: routes catch this and render an
    empty table, which must not be cached at the edge."""
    error = ComputeFailed("the compute this request was waiting for failed")
    if has_app_context():
        _mark_failed(error)
    _set_state("bypass")
    raise error


def _failed_since(err_path: Path, moment: float) -> bool:
    try:
        return err_path.stat().st_mtime >= moment
    except OSError:
        return False


def precomputed(page, variant, sources, compute, *, module, files=(),
                max_entries=64):
    """compute() once per data version of (page, variant); see the module doc.

    compute() takes no arguments and returns any picklable value. Callers must
    not mutate what is returned (a hit returns a fresh unpickled copy, but a
    live compute returns compute()'s own object).
    """
    if not (SLUG.fullmatch(page) and SLUG.fullmatch(variant)):
        _set_state("bypass")
        return compute()
    versions = [SOURCES[s]() for s in sources]
    if any(v is None for v in versions):
        _set_state("bypass")
        return compute()

    fingerprint = code_fingerprint(module, files)
    tag = code_tag(fingerprint)
    version = f"{tag}-{digest(page, variant, versions, fingerprint)}"
    root = str(cache_root())
    page_dir = _contained(root, page)
    path = _contained(root, page, f"{variant}.{version}.pkl")
    lock_path = _contained(root, page, f"{variant}.lock")
    err_path = _contained(root, page, f"{variant}.err")
    if page_dir is None or path is None or lock_path is None or err_path is None:
        _set_state("bypass")
        return compute()
    hit = _load(path)
    if hit is not None:
        _set_state("hit")
        return hit

    try:
        page_dir.mkdir(parents=True, exist_ok=True)
        lock = open(lock_path, "a+b")
    except OSError:
        _set_state("bypass")
        return compute()
    with lock:
        arrived = time.time()
        deadline = time.monotonic() + WAIT_S
        while True:
            try:
                fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
                break
            except BlockingIOError:
                # Someone else is computing this variant: serve their previous
                # version if there is one, else wait for the new one.
                hit = _load(path)
                if hit is not None:
                    _set_state("hit")
                    return hit
                older = [p for p in _versions_of(page_dir, variant, tag) if p != path]
                stale = _load(older[0]) if older else None
                if stale is not None:
                    _set_state("stale")
                    return stale
                if time.monotonic() > deadline:
                    _set_state("bypass")
                    return compute()
                time.sleep(POLL_S)
        try:
            hit = _load(path)  # written while we waited for the lock
            if hit is not None:
                _set_state("hit")
                return hit
            if _failed_since(err_path, arrived):
                _raise_shared_failure()
            try:
                value = compute()
            except Exception:
                try:
                    err_path.touch()
                except OSError:
                    pass
                raise
            err_path.unlink(missing_ok=True)
            _save(path, value)
            sweep(page_dir, max_entries)
            _set_state("miss")
            return value
        finally:
            fcntl.flock(lock, fcntl.LOCK_UN)


def sort_rows(rows, spec):
    """Sort dict rows by ``spec``: a list of ``(field, descending)`` or
    ``(field, descending, "first"|"last")``, most significant first.

    NULLs (None) go where PostgreSQL puts them: last ascending, first
    descending, unless the third element says otherwise. Sorting is stable,
    so rows equal on every key keep their stored order. Compare text with an
    ordinal column (see :func:`ordinal`) rather than the text itself, so the
    order is the database collation's, not Python's code-point order.
    """
    out = list(rows)
    for field, desc, *nulls in reversed(spec):
        if out and field not in out[0]:
            # A misspelt field would otherwise sort nothing, silently.
            raise KeyError(f"sort field {field!r} not in rows")
        nulls_first = (nulls[0] == "first") if nulls else desc
        present = [r for r in out if r.get(field) is not None]
        absent = [r for r in out if r.get(field) is None]
        present.sort(key=lambda r: r[field], reverse=desc)
        out = absent + present if nulls_first else present + absent
    return out


def ordinal(expr: str, name: str) -> str:
    """SQL for a column holding expr's rank in the database's own order.

    ``dense_rank() OVER (ORDER BY expr)`` gives equal values equal ranks and
    puts NULLs last (rank above every value), so sorting the rank in Python
    reproduces ``ORDER BY expr [DESC]`` exactly, collation and NULLs included.
    expr and name must be constants written in the code, never user input.
    """
    if not re.fullmatch(r"[a-z_][a-z0-9_]*", name):
        raise ValueError(f"bad ordinal name: {name!r}")
    return f"dense_rank() OVER (ORDER BY {expr}) AS {name}"
