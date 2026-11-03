"""A worker retiring at max_requests must not reset connections (Caddy's 502s).

Runs the real gunicorn with the real pre_request and keepalive from gunicorn.conf.py,
under open-loop traffic, as stock gthread only shows this between requests.
"""
import http.client
import os
import random
import runpy
import select
import signal
import socket
import subprocess
import sys
import threading
import time
from pathlib import Path
from types import SimpleNamespace

import pytest

REPO = Path(__file__).resolve().parent.parent
CONF = REPO / "gunicorn.conf.py"
APP = """
import time
def app(env, start_response):
    time.sleep(0.002)
    body = b"ok" * 500
    start_response("200 OK", [("Content-Length", str(len(body)))])
    return [body]
"""
# A worker lasts about 3 s here. Much shorter and they retire faster than they boot,
# so requests queue and arrive in bursts: a burst accepted just before the limit is
# lost whatever the hook does. Production recycles every 1000 requests at a few a second.
RATE, SECONDS, MAX_REQUESTS, MIN_EXITS = 200, 25, 200, 15
# Stock gunicorn resets about one exit in four here. Allow one rather than none: this
# gates CI, and a loaded runner can still lose a rare race.
MAX_RESETS = 1
RELOADS = 6


def _conf(port):
    return f"""
import runpy
_real = runpy.run_path({str(CONF)!r})
pre_request = _real["pre_request"]
post_worker_init = _real["post_worker_init"]
keepalive = _real["keepalive"]
worker_class = _real["worker_class"]
threads = _real["threads"]
bind = "127.0.0.1:{port}"
workers = 3
max_requests = {MAX_REQUESTS}
loglevel = "info"
"""


def _free_port():
    with socket.socket() as s:
        s.bind(("127.0.0.1", 0))
        return s.getsockname()[1]


def _drive(port, rate=RATE, seconds=SECONDS):
    """Open-loop GETs through a pool that drops connections it can see are dead."""
    pool, lock, results = [], threading.Lock(), {"ok": 0, "reset": 0}

    def one():
        conn = None
        with lock:
            while pool and conn is None:
                c = pool.pop()
                if select.select([c.sock], [], [], 0)[0]:
                    c.close()
                else:
                    conn = c
        conn = conn or http.client.HTTPConnection("127.0.0.1", port, timeout=10)
        try:
            conn.request("GET", "/")
            resp = conn.getresponse()
            resp.read()
            with lock:
                results["ok"] += 1
                if resp.will_close:
                    conn.close()
                else:
                    pool.append(conn)
        except OSError:
            with lock:
                results["reset"] += 1
            conn.close()
        except http.client.HTTPException:
            with lock:
                results["reset"] += 1
            conn.close()

    threads, end = [], time.monotonic() + seconds
    while time.monotonic() < end:
        t = threading.Thread(target=one)
        t.start()
        threads.append(t)
        time.sleep(random.expovariate(rate))
    for t in threads:
        t.join()
    return results


def test_recycling_resets_no_connections(tmp_path):
    port = _free_port()
    (tmp_path / "recycleapp.py").write_text(APP)
    conf = tmp_path / "conf.py"
    conf.write_text(_conf(port))
    log = tmp_path / "g.log"
    env = {k: v for k, v in os.environ.items() if k != "DATABASE_URL"}
    with log.open("w") as out:
        proc = subprocess.Popen(
            [sys.executable, "-m", "gunicorn", "-c", str(conf), "--chdir", str(tmp_path),
             "recycleapp:app"],
            stdout=out, stderr=subprocess.STDOUT, env=env, cwd=tmp_path)
    try:
        deadline = time.monotonic() + 15
        while True:
            try:
                socket.create_connection(("127.0.0.1", port), timeout=1).close()
                break
            except OSError:
                assert time.monotonic() < deadline, log.read_text()
                time.sleep(0.1)
        results = _drive(port)
    finally:
        proc.terminate()
        proc.wait(timeout=30)
    text = log.read_text()
    exits = text.count("Worker exiting")
    assert exits >= MIN_EXITS, f"too few recycles to prove anything: {exits}\n{text[-500:]}"
    assert results["reset"] <= MAX_RESETS, (results, exits)
    assert "Error handling request" not in text, text[-800:]


def test_reloading_resets_no_connections(tmp_path):
    """Each reload lost about one connection before post_worker_init: 15 in 15."""
    port = _free_port()
    (tmp_path / "recycleapp.py").write_text("import time\ntime.sleep(1)\n" + APP)
    conf = tmp_path / "conf.py"
    conf.write_text(_conf(port).replace(f"max_requests = {MAX_REQUESTS}", "max_requests = 100000"))
    log = tmp_path / "g.log"
    env = {k: v for k, v in os.environ.items() if k != "DATABASE_URL"}
    with log.open("w") as out:
        proc = subprocess.Popen(
            [sys.executable, "-m", "gunicorn", "-c", str(conf), "--chdir", str(tmp_path),
             "recycleapp:app"],
            stdout=out, stderr=subprocess.STDOUT, env=env, cwd=tmp_path)
    results = {}
    try:
        deadline = time.monotonic() + 15
        while True:
            try:
                socket.create_connection(("127.0.0.1", port), timeout=1).close()
                break
            except OSError:
                assert time.monotonic() < deadline, log.read_text()
                time.sleep(0.1)
        time.sleep(2)
        driver = threading.Thread(target=lambda: results.update(_drive(port, 40, RELOADS * 3 + 3)))
        driver.start()
        for _ in range(RELOADS):
            time.sleep(3)
            proc.send_signal(signal.SIGHUP)
        driver.join()
    finally:
        proc.terminate()
        proc.wait(timeout=30)
    text = log.read_text()
    assert text.count("Worker exiting") >= RELOADS * 3, text[-500:]
    assert results["ok"] > 0 and results["reset"] <= MAX_RESETS, results
    assert "Error handling request" not in text, text[-800:]


def _worker(nr, max_requests, **kw):
    return SimpleNamespace(nr=nr, max_requests=max_requests, alive=True, **kw)


class _Poller:
    def __init__(self, error=None):
        self.removed, self.error = [], error

    def unregister(self, sock):
        if self.error:
            raise self.error
        self.removed.append(sock)


hook = runpy.run_path(str(CONF))["pre_request"]


def test_hook_leaves_a_worker_below_its_limit_alone():
    worker = _worker(5, 10, _lock=threading.Lock(), sockets=["s"], poller=_Poller())
    hook(worker, None)
    assert worker.alive and worker.poller.removed == []


def test_hook_retires_at_the_limit_so_the_worker_can_never_go_deaf():
    worker = _worker(9, 10, _lock=threading.Lock(), sockets=["s"], poller=_Poller())
    hook(worker, None)
    assert worker.poller.removed == ["s"] and not worker.alive


@pytest.mark.parametrize("error", [KeyError("s"), ValueError("closed"), OSError("closed")])
def test_hook_survives_a_listener_already_gone(error):
    worker = _worker(9, 10, _lock=threading.Lock(), sockets=["s"], poller=_Poller(error))
    hook(worker, None)
    assert not worker.alive


def test_hook_falls_back_to_stock_recycling_without_the_private_attributes():
    worker = _worker(9, 10)
    hook(worker, None)
    assert worker.alive, "stock gunicorn sets alive itself; nothing was unregistered"
