"""
Database connection helpers
Direct port from Classic ASP ADODB connection patterns
"""
import psycopg2
import psycopg2.extras
from flask import current_app, g


def get_db():
    """Get database connection from Flask g context"""
    if 'db' not in g:
        g.db = psycopg2.connect(
            current_app.config['DATABASE_URL'],
            cursor_factory=psycopg2.extras.RealDictCursor
        )
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
    """
    db = get_db()
    cur = db.cursor()
    cur.execute(sql, params or ())
    try:
        results = cur.fetchall()
        return results
    except psycopg2.ProgrammingError:
        # No results (e.g., INSERT/UPDATE)
        db.commit()
        return []
    finally:
        cur.close()


def execute_scalar(sql, params=None):
    """
    Execute SQL query and return single value
    Similar to ASP: con.Execute(sql).Fields(0)
    """
    db = get_db()
    cur = db.cursor()
    cur.execute(sql, params or ())
    result = cur.fetchone()
    cur.close()
    return result[0] if result else None


def init_app(app):
    """Register database functions with Flask app"""
    app.teardown_appcontext(close_db)
