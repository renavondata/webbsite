"""webbsite/precompute.py: per-data-version page results (no DB).

Run:  uv run pytest -q tests/test_precompute.py
"""

import multiprocessing
import os
import sys
import tempfile
import threading
import time
from datetime import date
from decimal import Decimal
from pathlib import Path

import pytest

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

from webbsite import precompute  # noqa: E402
from webbsite.precompute import ordinal, precomputed, sort_rows, sweep  # noqa: E402

MOD = __name__


@pytest.fixture(autouse=True)
def cache(monkeypatch):
    tmp = tempfile.mkdtemp()
    monkeypatch.setenv("WEBBSITE_CACHE_DIR", tmp)
    version = {"market": "m1", "enigma": "e1"}
    monkeypatch.setitem(precompute.SOURCES, "market", lambda: version["market"])
    monkeypatch.setitem(precompute.SOURCES, "enigma", lambda: version["enigma"])
    yield Path(tmp) / "pc", version


def counting(value, delay=0.0):
    calls = []

    def compute():
        calls.append(1)
        if delay:
            time.sleep(delay)
        return value

    return compute, calls


def pkls(root, page):
    d = root / page
    return sorted(p.name for p in d.glob("*.pkl")) if d.exists() else []


def test_repeat_is_a_hit_and_types_survive(cache):
    value = [{"n": Decimal("1.2345678901234567890"), "d": date(2025, 10, 10), "x": None}]
    compute, calls = counting(value)
    first = precomputed("p", "v", ("market",), compute, module=MOD)
    second = precomputed("p", "v", ("market",), compute, module=MOD)
    assert len(calls) == 1
    assert first == second == value
    assert type(second[0]["n"]) is Decimal and type(second[0]["d"]) is date


def test_version_change_recomputes_once(cache):
    root, version = cache
    compute, calls = counting([1])
    precomputed("p", "v", ("market", "enigma"), compute, module=MOD)
    version["enigma"] = "e2"
    precomputed("p", "v", ("market", "enigma"), compute, module=MOD)
    precomputed("p", "v", ("market", "enigma"), compute, module=MOD)
    assert len(calls) == 2
    assert len(pkls(root, "p")) == 2  # the superseded one waits out its grace


def test_unreadable_version_computes_live_and_saves_nothing(cache):
    root, version = cache
    version["market"] = None
    compute, calls = counting([1])
    precomputed("p", "v", ("market",), compute, module=MOD)
    precomputed("p", "v", ("market",), compute, module=MOD)
    assert len(calls) == 2 and not root.exists()


@pytest.mark.parametrize("page,variant", [
    ("p", "../x"), ("p", "a b"), ("p", "x" * 81), ("p", ""), ("../p", "v"), ("p", "a.b"),
])
def test_junk_slugs_create_no_files(cache, page, variant):
    root, _ = cache
    compute, calls = counting([1])
    precomputed(page, variant, ("market",), compute, module=MOD)
    assert calls == [1] and not root.exists()


def test_code_change_recomputes(cache, tmp_path):
    extra = tmp_path / "functions.sql"
    extra.write_text("v1")
    compute, calls = counting([1])
    precomputed("p", "v", ("market",), compute, module=MOD, files=[extra])
    extra.write_text("v2")
    precompute._file_digests.clear()  # a deploy restarts the workers
    precomputed("p", "v", ("market",), compute, module=MOD, files=[extra])
    assert len(calls) == 2


def test_failed_compute_saves_nothing_and_retries(cache):
    root, _ = cache
    calls = []

    def boom():
        calls.append(1)
        raise RuntimeError("timeout")

    for _ in range(2):
        with pytest.raises(RuntimeError):
            precomputed("p", "v", ("market",), boom, module=MOD)
    assert len(calls) == 2 and pkls(root, "p") == []


def test_two_threads_compute_once(cache):
    compute, calls = counting([1], delay=0.3)
    out = []
    threads = [threading.Thread(target=lambda: out.append(
        precomputed("p", "v", ("market",), compute, module=MOD))) for _ in range(2)]
    for t in threads:
        t.start()
    for t in threads:
        t.join()
    assert len(calls) == 1 and out == [[1], [1]]


def _child(counter, result_q):
    def compute():
        with open(counter, "a") as f:
            f.write("x")
        time.sleep(0.4)
        return ["done"]

    result_q.put(precomputed("p", "v", ("market",), compute, module=MOD))


def test_two_processes_compute_once(cache, tmp_path):
    counter = tmp_path / "count"
    ctx = multiprocessing.get_context("fork")
    q = ctx.Queue()
    procs = [ctx.Process(target=_child, args=(counter, q)) for _ in range(2)]
    for p in procs:
        p.start()
    results = [q.get(timeout=10), q.get(timeout=10)]
    for p in procs:
        p.join(5)
    assert counter.read_text() == "x" and results == [["done"], ["done"]]


def test_stale_version_served_while_another_recomputes(cache):
    from flask import Flask, g

    root, version = cache
    precomputed("p", "v", ("market",), lambda: ["old"], module=MOD)
    version["market"] = "m2"
    started, release = threading.Event(), threading.Event()

    def slow():
        started.set()
        release.wait(5)
        return ["new"]

    t = threading.Thread(target=lambda: precomputed("p", "v", ("market",), slow, module=MOD))
    t.start()
    started.wait(5)
    app = Flask(__name__)
    with app.app_context():
        got = precomputed("p", "v", ("market",), lambda: ["should not run"], module=MOD)
        state = g.cache_state
    release.set()
    t.join()
    assert (got, state) == (["old"], "stale")
    with app.app_context():
        got = precomputed("p", "v", ("market",), lambda: ["should not run"], module=MOD)
        assert (got, g.cache_state) == (["new"], "hit")


def test_waits_when_there_is_no_previous_version(cache):
    started, release = threading.Event(), threading.Event()

    def slow():
        started.set()
        release.wait(5)
        return ["first"]

    t = threading.Thread(target=lambda: precomputed("p", "v", ("market",), slow, module=MOD))
    t.start()
    started.wait(5)
    threading.Timer(0.2, release.set).start()
    got = precomputed("p", "v", ("market",), lambda: ["should not run"], module=MOD)
    t.join()
    assert got == ["first"]


def test_sweep_grace_and_cap(cache):
    root, version = cache
    precomputed("p", "v", ("market",), lambda: [1], module=MOD)
    version["market"] = "m2"
    precomputed("p", "v", ("market",), lambda: [2], module=MOD)
    assert len(pkls(root, "p")) == 2
    sweep(root / "p", max_entries=64, now=time.time() + precompute.GRACE_S - 5)
    assert len(pkls(root, "p")) == 2, "kept inside the grace period"
    sweep(root / "p", max_entries=64, now=time.time() + precompute.GRACE_S + 5)
    assert len(pkls(root, "p")) == 1, "dropped after it"
    assert precomputed("p", "v", ("market",), lambda: [9], module=MOD) == [2]

    for i in range(4):
        precomputed("p", f"w{i}", ("market",), lambda: [i], module=MOD)
        time.sleep(0.01)
    sweep(root / "p", max_entries=3)
    assert [n.split(".")[0] for n in pkls(root, "p")] == ["w1", "w2", "w3"]


def test_stale_page_gets_a_short_edge_ttl(monkeypatch):
    monkeypatch.setenv("DATABASE_URL", "postgresql://x@127.0.0.1:1/x")
    from flask import g

    from webbsite import create_app

    app = create_app()

    @app.route("/_t/stale.asp")
    def _stale():
        g.cache_state = "stale"
        return "ok"

    @app.route("/_t/fresh.asp")
    def _fresh():
        g.cache_state = "hit"
        return "ok"

    c = app.test_client()
    assert c.get("/_t/stale.asp").headers["CDN-Cache-Control"] == "max-age=60"
    assert c.get("/_t/fresh.asp").headers["CDN-Cache-Control"] == "max-age=14400"


ROWS = [
    {"id": 1, "name": 2, "ret": None, "d": "2001-01-01"},
    {"id": 2, "name": 1, "ret": Decimal("0.5"), "d": None},
    {"id": 3, "name": 2, "ret": Decimal("-0.1"), "d": "1999-01-01"},
    {"id": 4, "name": 3, "ret": Decimal("0.5"), "d": "2001-01-01"},
]


def ids(rows):
    return [r["id"] for r in rows]


@pytest.mark.parametrize("spec,want", [
    # PostgreSQL defaults: NULLs last ascending, first descending.
    ([("d", False)], [3, 1, 4, 2]),
    ([("d", True)], [2, 1, 4, 3]),
    ([("ret", False)], [3, 2, 4, 1]),
    ([("ret", True)], [1, 2, 4, 3]),
    # Explicit NULLS FIRST / LAST.
    ([("ret", True, "last")], [2, 4, 3, 1]),
    ([("ret", False, "first")], [1, 3, 2, 4]),
    # Secondary keys break ties; full ties keep stored order.
    ([("ret", True, "last"), ("name", True)], [4, 2, 3, 1]),
    ([("name", False), ("d", True)], [2, 1, 3, 4]),
    ([("name", False)], [2, 1, 3, 4]),
])
def test_sort_rows(spec, want):
    assert ids(sort_rows(ROWS, spec)) == want


def test_sort_rows_does_not_mutate():
    rows = list(ROWS)
    sort_rows(rows, [("name", True)])
    assert rows == ROWS


def test_sort_rows_rejects_an_unknown_field():
    with pytest.raises(KeyError):
        sort_rows(ROWS, [("nmae", False)])
    assert sort_rows([], [("anything", False)]) == []


def test_ordinal():
    assert ordinal("o.name1", "o_name") == "dense_rank() OVER (ORDER BY o.name1) AS o_name"
    for bad in ("o-name", "x; drop", "Name", ""):
        with pytest.raises(ValueError):
            ordinal("o.name1", bad)
