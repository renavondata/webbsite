"""Make a DB-free test module independent of the machine it runs on.

Call ``isolate()`` at the top of a DB-free test module, before anything imports
``webbsite``: ``webbsite.config`` reads the environment (and a ``.env`` file,
found by walking up from the package) once, at import, so whatever is there
first decides the whole session. Without this a developer's ``DATABASE_URL``,
an operator overlay or Sentry DSN, a ``.env`` in a parent directory, or the
whole-page cache in ``~/.cache/webbsite`` (pickles written by an earlier run
under a stubbed data version) all change what these tests see.

Idempotent: every module in a session shares one temporary cache directory.
Tests that need a cache of their own still point WEBBSITE_CACHE_DIR at one.
DB-backed tests (``*_pg.py``, ``check_all_routes.py``) do not call this.
"""

import atexit
import os
import shutil
import tempfile

# Nothing listens on port 1: a query that is not stubbed fails fast, as a
# refused connection, instead of reaching a real database.
STUB_DATABASE_URL = "postgresql://stub:stub@127.0.0.1:1/stub"

# Settings a deployment (or a developer's shell) sets that change what a page
# renders or where its events go. The tests pin the defaults.
OPERATOR_ENV = (
    "CANONICAL_HOST", "SEARCH_DOMAIN", "SITE_NAME", "SITE_SHORT_NAME",
    "WEBBSITE_OVERLAY_DIR", "POSTHOG_KEY", "POSTHOG_HOST", "SENTRY_DSN",
    "SENTRY_ENVIRONMENT", "PUBLISH_HKID_INDEX", "FLASK_DEBUG", "SQL_ECHO",
    "SECRET_KEY", "DB_POOL_MIN_CONN", "DB_POOL_MAX_CONN", "DB_CONNECT_TIMEOUT",
    "FRESHNESS_TOML", "WEBBSITE_WARM",
)

_cache_dir: list[str] = []


def isolate() -> None:
    os.environ["DATABASE_URL"] = STUB_DATABASE_URL
    os.environ["PYTHON_DOTENV_DISABLED"] = "1"
    for name in OPERATOR_ENV:
        os.environ.pop(name, None)
    if not _cache_dir:
        path = tempfile.mkdtemp(prefix="webbsite-test-cache-")
        atexit.register(shutil.rmtree, path, ignore_errors=True)
        _cache_dir.append(path)
    os.environ["WEBBSITE_CACHE_DIR"] = _cache_dir[0]
