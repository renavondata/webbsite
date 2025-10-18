"""
Gunicorn configuration for Webb-site Flask app on Render
Optimized for production with database connection pooling
"""
import multiprocessing
import os

# Server socket
bind = f"0.0.0.0:{os.environ.get('PORT', '10000')}"
backlog = 2048

# Worker processes
workers = int(os.environ.get('GUNICORN_WORKERS', '4'))
worker_class = 'sync'
worker_connections = 1000
timeout = 120  # Increased from default 30s for slow DB queries
keepalive = 5

# Restart workers after this many requests (helps prevent memory leaks)
max_requests = 1000
max_requests_jitter = 50

# Logging
accesslog = '-'  # Log to stdout
errorlog = '-'   # Log to stderr
loglevel = os.environ.get('GUNICORN_LOG_LEVEL', 'info')
access_log_format = '%(h)s %(l)s %(u)s %(t)s "%(r)s" %(s)s %(b)s "%(f)s" "%(a)s" %(D)s'

# Process naming
proc_name = 'webbsite'

# Server mechanics
daemon = False
pidfile = None
umask = 0
user = None
group = None
tmp_upload_dir = None

# Preload app for faster worker spawning
preload_app = True

def on_starting(server):
    """Called just before the master process is initialized."""
    server.log.info("Starting Gunicorn server")

def on_reload(server):
    """Called to recycle workers during a reload via SIGHUP."""
    server.log.info("Reloading Gunicorn server")

def when_ready(server):
    """Called just after the server is started."""
    server.log.info(f"Gunicorn server ready. Workers: {workers}, Timeout: {timeout}s")

def worker_int(worker):
    """Called when a worker receives the SIGINT or SIGQUIT signal."""
    worker.log.info("Worker received INT or QUIT signal")

def worker_abort(worker):
    """Called when a worker receives the SIGABRT signal."""
    worker.log.info("Worker received ABORT signal")
