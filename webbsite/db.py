"""
Database connection helpers
Direct port from Classic ASP ADODB connection patterns
With connection pooling for production reliability
"""
import psycopg2
import psycopg2.extras
import psycopg2.pool
from flask import current_app, g
import logging

logger = logging.getLogger(__name__)

# Global connection pool (initialized in init_app)
_pool = None


def get_db():
    """Get database connection from pool and store in Flask g context"""
    if 'db' not in g:
        try:
            if _pool is None:
                raise RuntimeError("Database pool not initialized. Call init_app() first.")

            # Get connection from pool
            conn = _pool.getconn()

            # CRITICAL: Validate connection is alive before use
            # This prevents SSL errors from stale connections
            try:
                with conn.cursor() as cur:
                    cur.execute("SELECT 1")
            except (psycopg2.OperationalError, psycopg2.InterfaceError) as e:
                # Connection is stale/broken - discard and get fresh one
                logger.warning(f"Stale connection detected: {e}, getting fresh connection")
                _pool.putconn(conn, close=True)
                conn = _pool.getconn()

            # Set cursor factory for dict-like access
            conn.cursor_factory = psycopg2.extras.RealDictCursor

            # Set search_path to include enigma and ccass schemas
            # This allows unqualified table references (e.g., "stories") to work
            # Matches MySQL behavior where USE database switches context
            with conn.cursor() as cur:
                cur.execute("SET search_path TO enigma, ccass, public")

            g.db = conn

            if current_app.config.get('DEBUG'):
                logger.debug(f"Database connection acquired from pool")
        except Exception as e:
            logger.error(f"Failed to get connection from pool: {e}", exc_info=True)
            raise
    return g.db


def close_db(e=None):
    """Return database connection to pool"""
    db = g.pop('db', None)
    if db is not None:
        if _pool is not None:
            # Check if connection is healthy before returning to pool
            # If connection had errors or was closed, discard it
            if db.closed != 0:
                # Connection is closed/broken, discard from pool
                logger.warning("Connection was closed, discarding from pool")
                _pool.putconn(db, close=True)
            else:
                # Return healthy connection to pool for reuse
                _pool.putconn(db)
                if current_app.config.get('DEBUG'):
                    logger.debug(f"Database connection returned to pool")
        else:
            # Fallback: close if pool not available
            db.close()


def execute_query(sql, params=None):
    """
    Execute SQL query and return results as list of dicts
    Similar to ASP: rs.Open sql, con

    Raises:
        Exception: Any database error (logged with full details)
    """
    db = get_db()
    cur = db.cursor()

    # Log SQL in debug mode
    if current_app.config.get('SQL_ECHO', False):
        logger.debug(f"SQL: {sql}")
        if params:
            logger.debug(f"Params: {params}")

    try:
        cur.execute(sql, params or ())
        try:
            results = cur.fetchall()
            if current_app.config.get('SQL_ECHO', False):
                logger.debug(f"Returned {len(results)} rows")
            return results
        except psycopg2.ProgrammingError:
            # No results (e.g., INSERT/UPDATE)
            db.commit()
            if current_app.config.get('SQL_ECHO', False):
                logger.debug("Query executed successfully (no results)")
            return []
    except Exception as e:
        # Log the error with full SQL context
        logger.error(f"SQL Error: {e}")
        logger.error(f"SQL Query: {sql}")
        if params:
            logger.error(f"SQL Params: {params}")
        logger.error("Full traceback:", exc_info=True)

        # In debug mode, re-raise to show in browser
        if current_app.config.get('DEBUG'):
            raise
        # In production, raise a more generic error
        raise Exception(f"Database query failed: {str(e)}")
    finally:
        cur.close()


def execute_scalar(sql, params=None):
    """
    Execute SQL query and return single value
    Similar to ASP: con.Execute(sql).Fields(0)

    Raises:
        Exception: Any database error (logged with full details)
    """
    db = get_db()
    cur = db.cursor()

    # Log SQL in debug mode
    if current_app.config.get('SQL_ECHO', False):
        logger.debug(f"SQL (scalar): {sql}")
        if params:
            logger.debug(f"Params: {params}")

    try:
        cur.execute(sql, params or ())
        result = cur.fetchone()
        return result[0] if result else None
    except Exception as e:
        # Log the error with full SQL context
        logger.error(f"SQL Error (scalar): {e}")
        logger.error(f"SQL Query: {sql}")
        if params:
            logger.error(f"SQL Params: {params}")
        logger.error("Full traceback:", exc_info=True)

        # In debug mode, re-raise to show in browser
        if current_app.config.get('DEBUG'):
            raise
        # In production, raise a more generic error
        raise Exception(f"Database query failed: {str(e)}")
    finally:
        cur.close()


def init_pool(app):
    """Initialize database connection pool"""
    global _pool

    if _pool is not None:
        logger.warning("Database pool already initialized")
        return

    try:
        # Add PostgreSQL TCP keepalive parameters to prevent silent connection drops
        db_url = app.config['DATABASE_URL']

        # Build keepalive parameters
        # These settings ensure dead connections are detected within ~60 seconds
        keepalive_params = (
            "keepalives=1"              # Enable TCP keepalives
            "&keepalives_idle=30"       # Start keepalives after 30s of idle
            "&keepalives_interval=10"   # Send keepalive probe every 10s
            "&keepalives_count=5"       # Declare dead after 5 failed probes
        )

        # Append parameters to connection string
        if '?' not in db_url:
            db_url += '?' + keepalive_params
        else:
            db_url += '&' + keepalive_params

        _pool = psycopg2.pool.SimpleConnectionPool(
            app.config['DB_POOL_MIN_CONN'],
            app.config['DB_POOL_MAX_CONN'],
            db_url,
            connect_timeout=app.config['DB_CONNECT_TIMEOUT']
        )
        logger.info(f"Database connection pool initialized with keepalives "
                   f"(min={app.config['DB_POOL_MIN_CONN']}, "
                   f"max={app.config['DB_POOL_MAX_CONN']})")
    except Exception as e:
        logger.error(f"Failed to initialize database pool: {e}", exc_info=True)
        raise


def close_pool():
    """Close all connections in the pool"""
    global _pool
    if _pool is not None:
        _pool.closeall()
        logger.info("Database connection pool closed")
        _pool = None


def init_app(app):
    """Register database functions with Flask app"""
    # Initialize connection pool
    init_pool(app)

    # Register cleanup functions
    app.teardown_appcontext(close_db)

    # Close pool on app shutdown
    import atexit
    atexit.register(close_pool)
