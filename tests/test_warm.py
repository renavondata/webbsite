"""webbsite/warm.py: it requests every precomputed variant and reports failures (no DB).

Run:  uv run pytest -q tests/test_warm.py
"""

import os
import sys

import pytest

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

os.environ.setdefault("DATABASE_URL", "postgresql://x@127.0.0.1:1/x")

from webbsite import precompute, warm  # noqa: E402


@pytest.fixture
def requested(monkeypatch, tmp_path):
    """(page, variant) of every precomputed() call the warm URLs make."""
    monkeypatch.setenv("WEBBSITE_CACHE_DIR", str(tmp_path))
    seen = []

    def record(page, variant, sources, compute, **kw):
        seen.append((page, variant))
        raise RuntimeError("recorded")  # the routes catch it and render empty

    for mod in ("listings", "incorporations", "short_selling", "statistics"):
        monkeypatch.setattr(f"webbsite.routes.dbpub.{mod}.precomputed", record)
    return seen


def test_every_precomputed_variant_is_warmed(requested):
    from webbsite import create_app

    client = create_app().test_client()
    for url in warm.warm_urls():
        client.get(url)
    got = set(requested)
    want_listed = {("listed", f"{e}_{t}") for e in "mgsrca" for t in "srwh"}
    assert want_listed <= got, sorted(want_listed - got)
    for pair in [("inchkannual", "t0"), ("inchkmonth", "t-1"), ("inchksurvive", "t-1"),
                 ("shortsum", "all"), ("leaguedirshk", "default")]:
        assert pair in got, pair


def test_warm_urls_are_unique_and_routed():
    from webbsite import create_app

    urls = warm.warm_urls()
    assert len(urls) == len(set(urls))
    adapter = create_app().url_map.bind("localhost")
    for url in urls:
        adapter.match(url.split("?", 1)[0])  # raises NotFound for a dead URL


def test_main_reports_failures_and_successes(capsys):
    from flask import g

    from webbsite import create_app

    app = create_app()

    @app.route("/_t/good.asp")
    def _good():
        return "ok"

    @app.route("/_t/dberr.asp")
    def _dberr():
        g.db_failed = True  # what db.py sets after a caught query failure
        return "partial"

    @app.route("/_t/boom.asp")
    def _boom():
        raise RuntimeError("boom")

    assert warm.main(["/_t/good.asp"], app=app) == 0
    assert warm.main(["/_t/good.asp", "/_t/dberr.asp", "/_t/boom.asp"], app=app) == 1
    out = capsys.readouterr().out
    assert "FAIL 200" in out and "FAIL 500" in out
    assert "warmed 1 pages" in out and "2 failed" in out


def test_failed():
    class R:
        def __init__(self, status, cc):
            self.status_code, self.headers = status, {"Cache-Control": cc}

    assert warm.failed(R(500, "public"))
    assert warm.failed(R(200, "no-store"))
    assert not warm.failed(R(200, "public, max-age=3600"))


def test_precompute_module_is_the_one_the_routes_use():
    from webbsite.routes.dbpub import listings

    assert listings.precomputed is precompute.precomputed
