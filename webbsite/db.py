"""
Database connection helpers
Direct port from Classic ASP ADODB connection patterns
Using SQLAlchemy for robust connection pooling and management
"""
from sqlalchemy import create_engine, text
from sqlalchemy.pool import NullPool
from flask import current_app, g
import logging

logger = logging.getLogger(__name__)

# Global SQLAlchemy engine (initialized in init_app)
_engine = None


def get_db():
    """Get database connection from pool and store in Flask g context"""
    if 'db' not in g:
        try:
            if _engine is None:
                raise RuntimeError("Database engine not initialized. Call init_app() first.")

            # Get connection from pool
            # pool_pre_ping=True automatically validates connections before use
            conn = _engine.connect()

            # Set search_path to include enigma and ccass schemas
            # This allows unqualified table references (e.g., "stories") to work
            # Matches MySQL behavior where USE database switches context
            conn.execute(text("SET search_path TO enigma, ccass, public"))

            # Commit the SET command
            conn.commit()

            g.db = conn

            if current_app.config.get('DEBUG'):
                logger.debug("Database connection acquired from pool")
        except Exception as e:
            logger.error(f"Failed to get connection from pool: {e}", exc_info=True)
            raise
    return g.db


def close_db(e=None):
    """Return database connection to pool"""
    db = g.pop('db', None)
    if db is not None:
        # SQLAlchemy connection.close() returns connection to pool automatically
        db.close()
        if current_app.config.get('DEBUG'):
            logger.debug("Database connection returned to pool")


def execute_query(sql, params=None):
    """
    Execute SQL query and return results as list of dicts
    Similar to ASP: rs.Open sql, con

    Raises:
        Exception: Any database error (logged with full details)
    """
    db = get_db()

    # Log SQL in debug mode
    if current_app.config.get('SQL_ECHO', False):
        logger.debug(f"SQL: {sql}")
        if params:
            logger.debug(f"Params: {params}")

    try:
        # Convert psycopg2-style positional params to SQLAlchemy named params
        if params is None:
            params = {}
        elif isinstance(params, (list, tuple)):
            # Convert %s placeholders to :param1, :param2, etc.
            # and convert tuple params to dict
            param_dict = {}
            param_index = 1
            new_sql = sql
            while '%s' in new_sql:
                param_name = f'param{param_index}'
                new_sql = new_sql.replace('%s', f':{param_name}', 1)
                if param_index <= len(params):
                    param_dict[param_name] = params[param_index - 1]
                param_index += 1
            sql = new_sql
            params = param_dict

        result = db.execute(text(sql), params)

        # Check if this is a SELECT query (has results)
        if result.returns_rows:
            # Convert rows to list of dicts (like RealDictCursor)
            rows = [dict(row._mapping) for row in result]
            if current_app.config.get('SQL_ECHO', False):
                logger.debug(f"Returned {len(rows)} rows")
            return rows
        else:
            # INSERT/UPDATE/DELETE - commit the transaction
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

        # Rollback on error
        try:
            db.rollback()
        except:
            pass

        # In debug mode, re-raise to show in browser
        if current_app.config.get('DEBUG'):
            raise
        # In production, raise a more generic error
        raise Exception(f"Database query failed: {str(e)}")


def execute_scalar(sql, params=None):
    """
    Execute SQL query and return single value
    Similar to ASP: con.Execute(sql).Fields(0)

    Raises:
        Exception: Any database error (logged with full details)
    """
    db = get_db()

    # Log SQL in debug mode
    if current_app.config.get('SQL_ECHO', False):
        logger.debug(f"SQL (scalar): {sql}")
        if params:
            logger.debug(f"Params: {params}")

    try:
        # Convert psycopg2-style positional params to SQLAlchemy named params
        if params is None:
            params = {}
        elif isinstance(params, (list, tuple)):
            # Convert %s placeholders to :param1, :param2, etc.
            # and convert tuple params to dict
            param_dict = {}
            param_index = 1
            new_sql = sql
            while '%s' in new_sql:
                param_name = f'param{param_index}'
                new_sql = new_sql.replace('%s', f':{param_name}', 1)
                if param_index <= len(params):
                    param_dict[param_name] = params[param_index - 1]
                param_index += 1
            sql = new_sql
            params = param_dict

        result = db.execute(text(sql), params)
        row = result.fetchone()
        return row[0] if row else None
    except Exception as e:
        # Log the error with full SQL context
        logger.error(f"SQL Error (scalar): {e}")
        logger.error(f"SQL Query: {sql}")
        if params:
            logger.error(f"SQL Params: {params}")
        logger.error("Full traceback:", exc_info=True)

        # Rollback on error
        try:
            db.rollback()
        except:
            pass

        # In debug mode, re-raise to show in browser
        if current_app.config.get('DEBUG'):
            raise
        # In production, raise a more generic error
        raise Exception(f"Database query failed: {str(e)}")


def init_engine(app):
    """Initialize SQLAlchemy database engine with connection pooling"""
    global _engine

    if _engine is not None:
        logger.warning("Database engine already initialized")
        return

    try:
        db_url = app.config['DATABASE_URL']

        # Create SQLAlchemy engine with optimized pooling settings
        _engine = create_engine(
            db_url,
            # Automatically test connections before using them
            # This prevents SSL errors from stale connections
            pool_pre_ping=True,
            # Pool size configuration
            pool_size=app.config.get('DB_POOL_MIN_CONN', 5),
            max_overflow=app.config.get('DB_POOL_MAX_CONN', 20) - app.config.get('DB_POOL_MIN_CONN', 5),
            # Connection timeout
            connect_args={
                'connect_timeout': app.config.get('DB_CONNECT_TIMEOUT', 30),
                # TCP keepalives to detect dead connections
                'keepalives': 1,
                'keepalives_idle': 30,
                'keepalives_interval': 10,
                'keepalives_count': 5,
            },
            # Recycle connections after 1 hour to prevent long-lived connection issues
            pool_recycle=3600,
            # Echo SQL if configured
            echo=app.config.get('SQL_ECHO', False),
        )
        logger.info(f"SQLAlchemy database engine initialized with pool_pre_ping "
                   f"(pool_size={app.config.get('DB_POOL_MIN_CONN', 5)}, "
                   f"max_overflow={app.config.get('DB_POOL_MAX_CONN', 20) - app.config.get('DB_POOL_MIN_CONN', 5)})")
    except Exception as e:
        logger.error(f"Failed to initialize database engine: {e}", exc_info=True)
        raise


def dispose_engine():
    """Dispose of the engine and close all connections in the pool"""
    global _engine
    if _engine is not None:
        _engine.dispose()
        logger.info("Database engine disposed and all connections closed")
        _engine = None


def init_app(app):
    """Register database functions with Flask app"""
    # Initialize SQLAlchemy engine
    init_engine(app)

    # Register cleanup functions
    app.teardown_appcontext(close_db)

    # Dispose engine on app shutdown
    import atexit
    atexit.register(dispose_engine)
