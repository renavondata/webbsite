"""
Database connection helpers
Direct port from Classic ASP ADODB connection patterns
Using SQLAlchemy for robust connection pooling and management
"""

from sqlalchemy import create_engine, text
from flask import current_app, g
import logging
import threading

logger = logging.getLogger(__name__)

# Global SQLAlchemy engine (initialized in init_app)
_engine = None


class DatabaseError(Exception):
    """Any failure inside execute_query/execute_scalar. Always raised `from` the
    DBAPI exception, so the original class and message survive in __cause__."""


class QueryTimeoutError(DatabaseError):
    """Raised when a database query exceeds the statement_timeout limit."""
    pass


def _mark_failed(e):
    """Record on the request that a database call failed, and which exception.

    Routes catch broadly and render an empty page as a 200: _set_cache_headers
    reads g.db_failed so such a page is served no-store instead of cached at
    the edge (for up to a year). g.db_reported lets Sentry's before_send drop
    the route's own re-log of a failure this module already reported, which
    filed every timeout twice (WEBBSITE-1Y beside 1Z). Returns e, to raise it.
    """
    g.db_failed = True
    g.db_reported = [*g.get("db_reported", []), e]
    return e


def get_db():
    """Get database connection from pool and store in Flask g context"""
    if "db" not in g:
        try:
            if _engine is None:
                raise RuntimeError(
                    "Database engine not initialized. Call init_app() first."
                )

            # Get connection from pool. search_path and the 8s statement_timeout
            # are session defaults set at connect time (init_engine's
            # connect_args["options"]), so a pooled connection already carries
            # them; issuing them here again cost three round-trips per request.
            # pool_pre_ping=True validates the connection before handing it over.
            conn = _engine.connect()
            g.db = conn

            if current_app.config.get("DEBUG"):
                logger.debug("Database connection acquired from pool")
        except Exception as e:
            _mark_failed(e)
            logger.error(f"Failed to get connection from pool: {e}", exc_info=True)
            raise
    return g.db


def close_db(e=None):
    """Return database connection to pool"""
    db = g.pop("db", None)
    if db is not None:
        # SQLAlchemy connection.close() returns connection to pool automatically
        db.close()
        if current_app.config.get("DEBUG"):
            logger.debug("Database connection returned to pool")


def execute_query(sql, params=None, timeout_s=None):
    """
    Execute SQL query and return results as list of dicts
    Similar to ASP: rs.Open sql, con

    timeout_s: optional per-query statement_timeout override (seconds). Used by a
        few deterministic, edge-cached analytical reports whose cold run can
        exceed the 8s default (e.g. leagueDirsHK). Reset to 8s afterwards so the
        pooled connection never leaks a long timeout to the next request.

    Raises:
        Exception: Any database error (logged with full details)
    """
    db = get_db()

    # Log SQL in debug mode (params intentionally excluded to avoid logging sensitive data)
    if current_app.config.get("SQL_ECHO", False):
        logger.debug(f"SQL: {sql}")

    try:
        if timeout_s is not None:
            db.execute(text(f"SET statement_timeout = '{int(timeout_s)}s'"))
        # Convert psycopg2-style positional params to SQLAlchemy named params
        if params is None:
            params = {}
        elif isinstance(params, (list, tuple)):
            # Convert %s placeholders to :param1, :param2, etc.
            # and convert tuple params to dict
            param_dict = {}
            param_index = 1
            new_sql = sql
            while "%s" in new_sql:
                param_name = f"param{param_index}"
                new_sql = new_sql.replace("%s", f":{param_name}", 1)
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
            if current_app.config.get("SQL_ECHO", False):
                logger.debug(f"Returned {len(rows)} rows")
            return rows
        else:
            # INSERT/UPDATE/DELETE - commit the transaction
            db.commit()
            if current_app.config.get("SQL_ECHO", False):
                logger.debug("Query executed successfully (no results)")
            return []
    except Exception as e:
        # str(e) from SQLAlchemy carries the bound parameters ([parameters: ...]);
        # acceptable here: every value comes from a public URL of a login-free archive.
        # One record per failure: the logging integration turns each ERROR line
        # into its own Sentry issue, so three lines made three issues.
        _mark_failed(e)
        logger.error("SQL Error: %s\nSQL Query: %s", e, sql, exc_info=True)

        # Rollback on error
        try:
            db.rollback()
        except:
            pass

        # Detect statement_timeout cancellation
        if "canceling statement due to statement timeout" in str(e):
            raise _mark_failed(QueryTimeoutError("Query exceeded 8s time limit")) from e

        # In debug mode, re-raise to show in browser
        if current_app.config.get("DEBUG"):
            raise
        # Chain, never erase: routes catch broadly and render an empty page, so
        # the ERROR log lines above (and Sentry, which ingests them) are the only
        # place the real failure survives. `from e` keeps the DBAPI class in the
        # traceback; DatabaseError lets a caller distinguish "the database
        # failed" from any other exception.
        raise _mark_failed(DatabaseError(f"Database query failed: {e}")) from e
    finally:
        # Restore the default timeout on this pooled connection.
        if timeout_s is not None:
            try:
                db.execute(text("SET statement_timeout = '8s'"))
            except Exception:
                pass


def execute_scalar(sql, params=None):
    """
    Execute SQL query and return single value
    Similar to ASP: con.Execute(sql).Fields(0)

    Raises:
        Exception: Any database error (logged with full details)
    """
    db = get_db()

    # Log SQL in debug mode (params intentionally excluded to avoid logging sensitive data)
    if current_app.config.get("SQL_ECHO", False):
        logger.debug(f"SQL (scalar): {sql}")

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
            while "%s" in new_sql:
                param_name = f"param{param_index}"
                new_sql = new_sql.replace("%s", f":{param_name}", 1)
                if param_index <= len(params):
                    param_dict[param_name] = params[param_index - 1]
                param_index += 1
            sql = new_sql
            params = param_dict

        result = db.execute(text(sql), params)
        row = result.fetchone()
        return row[0] if row else None
    except Exception as e:
        # str(e) includes the bound parameters; see execute_query.
        _mark_failed(e)
        logger.error("SQL Error (scalar): %s\nSQL Query: %s", e, sql, exc_info=True)

        # Rollback on error
        try:
            db.rollback()
        except:
            pass

        # Detect statement_timeout cancellation
        if "canceling statement due to statement timeout" in str(e):
            raise _mark_failed(QueryTimeoutError("Query exceeded 8s time limit")) from e

        # In debug mode, re-raise to show in browser
        if current_app.config.get("DEBUG"):
            raise
        # Chain, never erase: routes catch broadly and render an empty page, so
        # the ERROR log lines above (and Sentry, which ingests them) are the only
        # place the real failure survives. `from e` keeps the DBAPI class in the
        # traceback; DatabaseError lets a caller distinguish "the database
        # failed" from any other exception.
        raise _mark_failed(DatabaseError(f"Database query failed: {e}")) from e


def _failure(db, e, sql):
    """db.py's handling of a failed query, as execute_query does it: marked,
    logged once, rolled back. Returns the exception to raise from e."""
    _mark_failed(e)
    logger.error("SQL Error (stream): %s\nSQL Query: %s", e, sql, exc_info=True)
    try:
        db.rollback()
    except Exception:
        pass
    if "canceling statement due to statement timeout" in str(e):
        return _mark_failed(QueryTimeoutError("Query exceeded the statement time limit"))
    return _mark_failed(DatabaseError(f"Database query failed: {e}"))


def stream_query(sql, timeout_s=None, batch=5000):
    """Run a parameterless SELECT through a server-side cursor.

    Returns (column names, rows): iterate rows for tuples, holding only
    `batch` in memory, and call rows.close() in a finally. For whole-table
    exports the ASP streamed (GetCSV ran with Response.Buffer=False). The
    cursor gets its own pooled connection, returned by rows.close(): g's is closed at teardown, which Flask runs before
    a streamed body is sent, and that killed the cursor after the first rows.
    The timeout is SET LOCAL, so closing (a rollback) restores the default.

    A failure to start is handled as execute_query handles one (marked,
    logged once, the uncached error page). One mid-stream is raised, which
    cuts the chunked response short -- neither a browser nor the edge keeps
    that as complete -- and is not logged here: the headers are gone, and
    the WSGI error report of the raise is its one Sentry event.
    """
    if _engine is None:
        raise RuntimeError("Database engine not initialized. Call init_app() first.")
    try:
        conn = _engine.connect()
    except Exception as e:
        _mark_failed(e)
        logger.error(f"Failed to get connection from pool: {e}", exc_info=True)
        raise
    try:
        if timeout_s is not None:
            conn.execute(text(f"SET LOCAL statement_timeout = '{int(timeout_s)}s'"))
        # Options on this execute only: Connection.execution_options() would
        # set them on the connection for every later statement.
        result = conn.execute(
            text(sql),
            execution_options={"stream_results": True, "max_row_buffer": batch},
        )
        columns = list(result.keys())
    except Exception as e:
        err = _failure(conn, e, sql)
        conn.close()
        raise err from e

    return columns, _StreamRows(conn, result)


class _StreamRows:
    """stream_query's rows. close() returns the connection, and the caller must
    call it (a finally around the loop): a download dropped before the first
    row closes a generator that never started, whose own finally never runs,
    and each such connection sat idle in transaction until the pool ran dry.
    """

    def __init__(self, conn, result):
        self._conn, self._result = conn, result

    def __iter__(self):
        try:
            for row in self._result:
                yield tuple(row)
        except Exception as e:
            if "canceling statement due to statement timeout" in str(e):
                raise QueryTimeoutError("Query exceeded the statement time limit") from e
            raise DatabaseError(f"Database query failed: {e}") from e
        finally:
            self.close()

    def close(self):
        if self._conn is None:
            return
        conn, self._conn = self._conn, None
        try:
            self._result.close()
        except Exception:
            pass
        conn.close()


def init_engine(app):
    """Initialize SQLAlchemy database engine with connection pooling"""
    global _engine

    if _engine is not None:
        logger.warning("Database engine already initialized")
        return

    try:
        db_url = app.config["DATABASE_URL"]

        # Create SQLAlchemy engine with optimized pooling settings
        _engine = create_engine(
            db_url,
            # Automatically test connections before using them
            # This prevents SSL errors from stale connections
            pool_pre_ping=True,
            # Pool size configuration
            pool_size=app.config.get("DB_POOL_MIN_CONN", 2),
            max_overflow=app.config.get("DB_POOL_MAX_CONN", 8)
            - app.config.get("DB_POOL_MIN_CONN", 2),
            # Fail fast when pool is exhausted instead of hanging
            pool_timeout=10,
            # Connection timeout
            connect_args={
                "connect_timeout": app.config.get("DB_CONNECT_TIMEOUT", 30),
                # Session defaults applied by the server at connect time, once
                # per pooled connection rather than once per request:
                #   search_path -- unqualified table names resolve like the
                #     original MySQL `USE` did;
                #   statement_timeout -- the 8s ceiling every page query gets
                #     (execute_query's timeout_s overrides it per query and
                #     restores it in its finally).
                "options": "-c search_path=enigma,ccass,public -c statement_timeout=8s",
                # TCP keepalives to detect dead connections
                "keepalives": 1,
                "keepalives_idle": 30,
                "keepalives_interval": 10,
                "keepalives_count": 5,
            },
            # Recycle connections after 1 hour to prevent long-lived connection issues
            pool_recycle=3600,
            # Echo SQL if configured
            echo=app.config.get("SQL_ECHO", False),
        )
        logger.info(
            f"SQLAlchemy database engine initialized with pool_pre_ping "
            f"(pool_size={app.config.get('DB_POOL_MIN_CONN', 2)}, "
            f"max_overflow={app.config.get('DB_POOL_MAX_CONN', 8) - app.config.get('DB_POOL_MIN_CONN', 2)})"
        )
    except Exception as e:
        logger.error(f"Failed to initialize database engine: {e}", exc_info=True)
        raise


def dispose_engine():
    """Close every pooled connection (atexit). The engine itself is kept.

    It used to be set to None, and a request still running when this ran then
    failed with "Database engine not initialized" (WEBBSITE-2F, 2026-09-23).
    A disposed engine opens a fresh pool on demand, so a late request just
    reconnects. What let a request outlive the worker is not known: every
    graceful exit tried locally joined the request threads before atexit. So
    any other threads still alive are logged, to name the trigger if it recurs.
    """
    if _engine is not None:
        _engine.dispose()
        others = [t.name for t in threading.enumerate() if t is not threading.current_thread()]
        if others:
            logger.warning("Database engine disposed while threads still run: %s", others)
        else:
            logger.info("Database engine disposed and all connections closed")


def init_app(app):
    """Register database functions with Flask app"""
    # Initialize SQLAlchemy engine
    init_engine(app)

    # Register cleanup functions
    app.teardown_appcontext(close_db)

    # Dispose engine on app shutdown
    import atexit

    atexit.register(dispose_engine)
