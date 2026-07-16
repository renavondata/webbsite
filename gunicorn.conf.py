"""
Gunicorn configuration for Webb-site Flask app on Render
Optimized for production with database connection pooling
"""

import os

# Server socket
bind = f"0.0.0.0:{os.environ.get('PORT', '10000')}"
backlog = 2048

# Worker processes
workers = int(os.environ.get("GUNICORN_WORKERS", "3"))
worker_class = "gthread"
threads = 8  # 3 workers × 8 threads = 24 concurrent request slots
worker_connections = 1000
timeout = 60  # Most queries are fast (8s DB statement_timeout); a few heavy,
              # deterministic, edge-cached analytical pages (e.g. leagueDirsHK's
              # ~23k cagrel() calls) need a cold-compute headroom under 60s.
graceful_timeout = 15  # Give workers 15s to finish in-flight requests during restart
keepalive = 5

# Restart workers after this many requests (helps prevent memory leaks)
max_requests = 1000
max_requests_jitter = 50

# Logging
accesslog = "-"  # Log to stdout
errorlog = "-"  # Log to stderr
loglevel = os.environ.get("GUNICORN_LOG_LEVEL", "info")
access_log_format = '%(h)s %(l)s %(u)s %(t)s "%(r)s" %(s)s %(b)s "%(f)s" "%(a)s" %(D)s'

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


def on_reload(server):
    """Called to recycle workers during a reload via SIGHUP."""
    server.log.info("Reloading Gunicorn server")


def when_ready(server):
    """Called just after the server is started."""
    server.log.info(f"Gunicorn server ready. Workers: {workers}, Threads: {threads}, Timeout: {timeout}s")


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


def worker_int(worker):
    """Called when a worker receives the SIGINT or SIGQUIT signal."""
    worker.log.info("Worker received INT or QUIT signal")


def worker_abort(worker):
    """Called when a worker receives the SIGABRT signal."""
    worker.log.info("Worker received ABORT signal")
