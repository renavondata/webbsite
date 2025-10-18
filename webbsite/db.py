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
            g.db = _pool.getconn()

            # Set cursor factory for dict-like access
            g.db.cursor_factory = psycopg2.extras.RealDictCursor

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
            # Return connection to pool instead of closing
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
        _pool = psycopg2.pool.SimpleConnectionPool(
            app.config['DB_POOL_MIN_CONN'],
            app.config['DB_POOL_MAX_CONN'],
            app.config['DATABASE_URL'],
            connect_timeout=app.config['DB_CONNECT_TIMEOUT']
        )
        logger.info(f"Database connection pool initialized "
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
