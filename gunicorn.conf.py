"""
Gunicorn configuration for Webb-site Flask app on Render
Optimized for production with database connection pooling
"""

import os
import signal
import subprocess
import sys

# Server socket
bind = f"0.0.0.0:{os.environ.get('PORT', '10000')}"
# Shallow on purpose. The listen backlog is the queue of connections accepted by
# the kernel but not yet picked up by a worker thread. At 2048 a request flood
# could park ~2000 connections here; Caddy holds a live proxy request (and its
# buffers) for every one of them, which is how Caddy reached 4.7 GB and was
# OOM-killed on 2026-09-11 while this app was still answering in 90-340 ms.
# A shallow queue makes saturation visible fast (the kernel drops the SYN, and
# Caddy's dial_timeout turns that into a prompt 502) instead of absorbing it
# invisibly into the proxy's heap. 128 still absorbs an ordinary burst against
# 24 request slots.
backlog = 128

# Worker processes
workers = int(os.environ.get("GUNICORN_WORKERS", "3"))
worker_class = "gthread"
threads = 8  # 3 workers × 8 threads = 24 concurrent request slots
worker_connections = 1000
timeout = 60  # Most queries are fast (8s DB statement_timeout); a few heavy,
              # deterministic, edge-cached analytical pages (e.g. leagueDirsHK's
              # ~23k cagrel() calls) need a cold-compute headroom under 60s.
graceful_timeout = 15  # Give workers 15s to finish in-flight requests during restart
# No keep-alive to Caddy: a retiring worker closes the idle connections it holds,
# so a request Caddy has just written on one becomes a 502. See pre_request below
# for the other half of this.
keepalive = 0

# Restart workers after this many requests (helps prevent memory leaks)
max_requests = 1000
max_requests_jitter = 50

# Logging
accesslog = "-"  # Log to stdout
errorlog = "-"  # Log to stderr
loglevel = os.environ.get("GUNICORN_LOG_LEVEL", "info")
# Trailing field: the X-Request-Id Caddy mints per request (deploy/Caddyfile) and
# the app echoes back, so a journal line, a Caddy access-log line, a Sentry event
# and a user's report can all be joined on one string. Then the Server-Timing the
# app set (webbsite/timing.py: app/db/render/cpu ms, cache state), so per-route
# db vs render time can be read straight off the journal.
access_log_format = '%(h)s %(l)s %(u)s %(t)s "%(r)s" %(s)s %(b)s "%(f)s" "%(a)s" %(D)s %({x-request-id}i)s "%({server-timing}o)s"'

# Process naming
proc_name = "webbsite"

# Server mechanics
daemon = False
pidfile = None
umask = 0
user = None
group = None
tmp_upload_dir = None
worker_tmp_dir = "/dev/shm"  # RAM-backed heartbeat; prevents false worker kills on overlay FS

# preload_app MUST stay False: the auto-deploy (site-deploy timer) applies code
# changes with `systemctl reload` = SIGHUP, and gunicorn does NOT reload
# application code on HUP when the app is preloaded — recycled workers fork
# from the stale master image while Jinja reads the NEW templates from disk.
# That skew 500'd every orgdata.asp request on 2026-07-16 (template called a
# Jinja global the old code had never registered; fixed by revert #20). The
# preload was a Render-era optimization (fast forks on 0.5 CPU); on the droplet
# the per-worker re-import cost is fine, and HUP now reloads config + code +
# templates atomically. If preload is ever re-enabled, the deploy contract must
# change to `systemctl restart` first.
preload_app = False


def on_starting(server):
    """Called just before the master process is initialized."""
    server.log.info("Starting Gunicorn server")


def _ensure_warm_loop(server):
    """Keep one scripts/warm_loop.py running, and wake it if it already is.

    The handle lives on the arbiter because a reload re-executes this file but
    keeps the arbiter. Hooks run in the master, so nothing here may raise.
    WEBBSITE_WARM=0 turns it off; so does having no database (a local run).
    """
    if os.environ.get("WEBBSITE_WARM") == "0" or not os.environ.get("DATABASE_URL"):
        return
    try:
        running = getattr(server, "_warm_loop", None)
        if running is not None and running.poll() is None:
            running.send_signal(signal.SIGUSR1)
        else:
            root = os.path.dirname(os.path.abspath(__file__))
            server._warm_loop = subprocess.Popen(
                [sys.executable, os.path.join(root, "scripts", "warm_loop.py")], cwd=root
            )
    except Exception as e:
        server.log.error(f"Warm loop not started: {e}")


def on_reload(server):
    """Called to recycle workers during a reload via SIGHUP."""
    server.log.info("Reloading Gunicorn server")
    _ensure_warm_loop(server)


def when_ready(server):
    """Called just after the server is started."""
    server.log.info(f"Gunicorn server ready. Workers: {workers}, Threads: {threads}, Timeout: {timeout}s")
    _ensure_warm_loop(server)


def post_fork(server, worker):
    """Dispose inherited DB connections after fork.

    Defensive holdover from the preload_app=True era (a master-created
    SQLAlchemy engine must not share sockets across forks). With preload off
    the engine is created per-worker and this is a guarded no-op — kept
    because it is harmless and load-bearing again the moment anyone
    re-enables preload.
    """
    try:
        from webbsite.db import _engine
        if _engine is not None:
            _engine.dispose()
    except Exception as e:
        server.log.error(f"Worker {worker.pid}: failed to dispose engine: {e}")
    server.log.info(f"Worker spawned (pid: {worker.pid}) - fresh connection pool")


def pre_request(worker, req):
    """Stop a worker accepting before max_requests retires it.

    Stock gthread sets alive=False in the request thread, while the main loop sits
    in select(1.0) with the listener still registered. It can accept a new connection,
    then leave the loop and reset it at exit, which Caddy returns as a 502. All 44 such
    502s on 2026-11-01..03 fell within 0.5 s of a worker exit. alive is set here too,
    so a request that fails before gunicorn counts it can't leave a worker that
    answers heartbeats and accepts nothing. Private attributes, pinned by uv.lock and
    tests/test_gunicorn_recycle.py; without them the worker recycles as stock does.
    """
    if worker.nr + 1 < worker.max_requests:
        return
    if _stop_accepting(worker):
        worker.alive = False


def _stop_accepting(worker) -> bool:
    """Take the listeners out of the worker's event loop; False if it has no such loop."""
    try:
        with worker._lock:
            for sock in worker.sockets:
                try:
                    worker.poller.unregister(sock)
                except (KeyError, ValueError, OSError):
                    pass  # another thread got here first, or the loop has already closed it
    except (AttributeError, TypeError):  # TypeError: no lock yet
        return False
    return True


def post_worker_init(worker):
    """A reload or stop must not reset connections either.

    The stock handler only clears alive, and epoll resumes with the listener still
    registered: the next connection is accepted, the loop exits without serving it, and
    exit resets it. Two 502s on the 2026-11-03 12:53 deploy; 15 resets in 15 reloads
    locally, 0 with this. A SIGTERM landing just after select returns can still lose one.
    worker._lock is reentrant, so the handler can't deadlock against the main thread it
    interrupts. signal.signal resets siginterrupt, so gunicorn's setting is restored.
    """
    stock = worker.handle_exit

    def stop_then_exit(sig, frame):
        _stop_accepting(worker)
        stock(sig, frame)

    signal.signal(signal.SIGTERM, stop_then_exit)
    signal.siginterrupt(signal.SIGTERM, False)


def worker_int(worker):
    """Called when a worker receives the SIGINT or SIGQUIT signal."""
    worker.log.info("Worker received INT or QUIT signal")


def worker_abort(worker):
    """Called when a worker receives the SIGABRT signal."""
    worker.log.info("Worker received ABORT signal")
