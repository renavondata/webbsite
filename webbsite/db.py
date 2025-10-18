"""
Database connection helpers
Direct port from Classic ASP ADODB connection patterns
"""
import psycopg2
import psycopg2.extras
from flask import current_app, g
import logging

logger = logging.getLogger(__name__)


def get_db():
    """Get database connection from Flask g context"""
    if 'db' not in g:
        try:
            g.db = psycopg2.connect(
                current_app.config['DATABASE_URL'],
                cursor_factory=psycopg2.extras.RealDictCursor
            )
            if current_app.config.get('DEBUG'):
                logger.debug(f"Database connection established")
        except Exception as e:
            logger.error(f"Failed to connect to database: {e}", exc_info=True)
            raise
    return g.db


def close_db(e=None):
    """Close database connection"""
    db = g.pop('db', None)
    if db is not None:
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


def init_app(app):
    """Register database functions with Flask app"""
    app.teardown_appcontext(close_db)
