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
timeout = 30  # Kill stuck workers fast; DB has its own 8s statement_timeout
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

# Preload app in master process: workers inherit compiled bytecode via fork (near-instant
# restarts instead of re-importing 25K+ lines on 0.5 CPU). post_fork disposes inherited
# DB connections so each worker creates its own fresh pool.
preload_app = True


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

    With preload_app=True, the master creates the SQLAlchemy engine during app
    loading.  After fork, children must NOT share the parent's socket connections.
    engine.dispose() closes all pooled connections; new ones are created on demand
    in each worker with their own SSL state.
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
