"""
Short selling data
"""

from flask import Blueprint, render_template, request, abort, current_app, Response
from datetime import date, timedelta
import calendar
import io
import re
from webbsite.db import execute_query, get_db
from webbsite.asp_helpers import get_int, get_bool, get_str
from webbsite.routes.dbpub._navctx import stock_nav
from webbsite.diskcache import load_json, save_json

bp = Blueprint("dbpub_short_selling", __name__)


@bp.route("/short.asp")
def short():
    """Short selling positions for a specific stock - time series with charting data"""
    from flask import current_app

    issue_id = get_int("i", 0)
    stock_code = request.args.get("sc", "")

    # Convert stock code to issueID if needed
    if stock_code and not issue_id:
        try:
            result = execute_query(
                """
                SELECT i.ID1 AS issueid
                FROM enigma.stockListings sl
                JOIN enigma.issue i ON sl.issueid = i.ID1
                WHERE sl.stockCode = %s AND sl.delistdate IS NULL
                ORDER BY sl.firsttradedate DESC LIMIT 1
            """,
                (stock_code,),
            )
            if result:
                issue_id = result[0]["issueid"]
        except Exception as e:
            current_app.logger.error(f"Error looking up stock code: {e}")

    # Build orgBar + stockBar navigation context
    nav = stock_nav(issue_id)

    shorts = []
    if issue_id:
        try:
            # Get short position history with prices and outstanding shares
            # Note: Uses MySQL functions lastQuote() and outstanding() which need PostgreSQL equivalents
            shorts = execute_query(
                """
                SELECT s.atDate,
                       EXTRACT(EPOCH FROM s.atDate)::BIGINT * 1000 AS timestamp,
                       s.shares,
                       COALESCE(
                           (SELECT q.closing
                            FROM ccass.quotes q
                            WHERE q.issueid = s.issueid
                              AND q.atDate <= s.atDate
                            ORDER BY q.atDate DESC
                            LIMIT 1), 0) AS price,
                       COALESCE(
                           (SELECT os.outstanding
                            FROM enigma.issuedshares os
                            WHERE os.issueid = s.issueid
                              AND os.atDate <= s.atDate
                            ORDER BY os.atDate DESC
                            LIMIT 1), 0) AS outstanding,
                       CASE WHEN COALESCE(
                                (SELECT os.outstanding
                                 FROM enigma.issuedshares os
                                 WHERE os.issueid = s.issueid
                                   AND os.atDate <= s.atDate
                                 ORDER BY os.atDate DESC
                                 LIMIT 1), 0) > 0
                            THEN s.shares / COALESCE(
                                (SELECT os.outstanding
                                 FROM enigma.issuedshares os
                                 WHERE os.issueid = s.issueid
                                   AND os.atDate <= s.atDate
                                 ORDER BY os.atDate DESC
                                 LIMIT 1), 1)
                            ELSE 0
                       END AS stake
                FROM enigma.sfcshort s
                WHERE s.issueid = %s
                ORDER BY s.atDate DESC
            """,
                (issue_id,),
            )

        except Exception as e:
            current_app.logger.error(f"Error querying short positions: {e}")
            shorts = []

    return render_template(
        "dbpub/short.html",
        issue_id=issue_id,
        shorts=shorts,
        **nav,
    )


@bp.route("/shortsum.asp")
def shortsum():
    """Short selling weekly summary - aggregate across all stocks"""
    from flask import current_app

    # The market-wide weekly summary is constant over the frozen dataset, so
    # compute it once and serve from disk. The aggregate is heavy: each
    # sfcshort row needs an as-of outstanding-shares and closing-price lookup.
    # Doing those as repeated correlated subqueries inside the aggregate timed
    # out at 8s; instead resolve each row's market cap ONCE via LATERAL joins
    # (the pattern shortdate uses), then GROUP BY date.
    summaries = load_json("shortsum")
    if summaries is None:
        try:
            raw = execute_query(
                """
                SELECT t.atDate,
                       EXTRACT(EPOCH FROM t.atDate)::BIGINT * 1000 AS timestamp,
                       COUNT(*) AS cnt,
                       SUM(t.value) / 1000000000.0 AS sumVal,
                       SUM(t.mcap) / 1000000000.0 AS sumCap,
                       CASE WHEN SUM(t.mcap) > 0
                            THEN SUM(t.value) / SUM(t.mcap) ELSE 0 END AS stake
                FROM (
                    SELECT s.atDate, s.value,
                           COALESCE(os.outstanding, 0) * COALESCE(q.closing, 0) AS mcap
                    FROM enigma.sfcshort s
                    LEFT JOIN LATERAL (
                        SELECT outstanding FROM enigma.issuedshares
                        WHERE issueid = s.issueid AND atDate <= s.atDate
                        ORDER BY atDate DESC LIMIT 1
                    ) os ON TRUE
                    LEFT JOIN LATERAL (
                        SELECT closing FROM ccass.quotes
                        WHERE issueid = s.issueid AND atDate <= s.atDate
                        ORDER BY atDate DESC LIMIT 1
                    ) q ON TRUE
                ) t
                GROUP BY t.atDate
                ORDER BY t.atDate DESC
            """,
                timeout_s=30,
            )
            summaries = [
                {
                    "datestr": r["atdate"].strftime("%Y-%m-%d") if r["atdate"] else "",
                    "timestamp": int(r["timestamp"]) if r["timestamp"] is not None else 0,
                    "cnt": int(r["cnt"]) if r["cnt"] is not None else 0,
                    "sumval": float(r["sumval"]) if r["sumval"] is not None else 0.0,
                    "sumcap": float(r["sumcap"]) if r["sumcap"] is not None else 0.0,
                    "stake": float(r["stake"]) if r["stake"] is not None else 0.0,
                }
                for r in raw
            ]
            save_json("shortsum", summaries)
        except Exception as e:
            current_app.logger.error(f"Error querying short summary: {e}")
            summaries = []

    return render_template("dbpub/shortsum.html", summaries=summaries)


@bp.route("/shortdate.asp")
def shortdate():
    """Short positions on a specific date - all stocks"""
    from flask import current_app
    from datetime import date

    # Get date parameter
    d = request.args.get("d", "")
    sort_param = request.args.get("sort", "stakdn")

    # Get list of available dates
    date_list = []
    try:
        date_list = execute_query(
            """
            SELECT DISTINCT atDate
            FROM enigma.sfcshort
            ORDER BY atDate DESC
        """
        )
    except Exception as e:
        current_app.logger.error(f"Error getting short dates: {e}")

    # Use first date if not specified
    if not d and date_list:
        d = str(date_list[0]["atdate"])
    elif not d:
        d = str(date.today())

    # Get previous date for change calculation
    prev_date = None
    try:
        result = execute_query(
            """
            SELECT COALESCE(
                (SELECT MAX(atDate) FROM enigma.sfcshort WHERE atDate < %s),
                '2012-08-31'::date
            ) AS prevDate
        """,
            (d,),
        )
        if result:
            prev_date = result[0]["prevdate"]
    except Exception as e:
        current_app.logger.error(f"Error getting previous short date: {e}")
        prev_date = "2012-08-31"

    # Sort mapping
    sort_map = {
        "nameup": "name1",
        "namedn": "name1 DESC",
        "stakdn": "stake DESC, name1",
        "stakup": "stake, name1",
        "valudn": "value DESC, name1",
        "valuup": "value, name1",
        "codeup": "stockCode",
        "codedn": "stockCode DESC",
        "mcapdn": "mcap DESC",
        "mcapup": "mcap",
        "typeup": "typeShort, stake DESC",
        "typedn": "typeShort DESC, stake DESC",
        "diffdn": "diff DESC, name1",
        "diffup": "diff, name1",
    }
    ob = sort_map.get(sort_param, "stake DESC, name1")

    shorts = []
    try:
        # Query all short positions on the specified date
        shorts = execute_query(
            f"""
            SELECT sl.stockCode AS stockcode, i.issuer AS issuer, t1.shares AS shortpos, t1.value,
                   t1.stake * 100 AS pct, o.name1 AS name, st.typeShort, st.typeLong,
                   COALESCE(t1.shares - t2.prevShares, 0) AS change,
                   COALESCE((t1.stake - t2.prevStake) * 100, 0) AS pctchange,
                   t1.mcap, t1.os AS outstanding
            FROM (
                SELECT s.issueid, s.shares, s.value,
                       os.outstanding AS os,
                       CASE WHEN os.outstanding > 0
                            THEN s.shares / os.outstanding
                            ELSE 0 END AS stake,
                       COALESCE(q.closing, 0) * os.outstanding AS mcap
                FROM enigma.sfcshort s
                LEFT JOIN LATERAL (
                    SELECT outstanding
                    FROM enigma.issuedshares
                    WHERE issueid = s.issueid AND atDate <= %s
                    ORDER BY atDate DESC
                    LIMIT 1
                ) os ON TRUE
                LEFT JOIN LATERAL (
                    SELECT closing
                    FROM ccass.quotes
                    WHERE issueid = s.issueid AND atDate <= %s
                    ORDER BY atDate DESC
                    LIMIT 1
                ) q ON TRUE
                WHERE s.atDate = %s
            ) t1
            JOIN enigma.issue i ON t1.issueid = i.ID1
            JOIN enigma.organisations o ON i.issuer = o.personid
            JOIN enigma.secTypes st ON i.typeID = st.typeID
            LEFT JOIN (
                SELECT s2.issueid,
                       s2.shares AS prevShares,
                       CASE WHEN os2.outstanding > 0
                            THEN s2.shares / os2.outstanding
                            ELSE 0 END AS prevStake
                FROM enigma.sfcshort s2
                LEFT JOIN LATERAL (
                    SELECT outstanding
                    FROM enigma.issuedshares
                    WHERE issueid = s2.issueid AND atDate <= %s
                    ORDER BY atDate DESC
                    LIMIT 1
                ) os2 ON TRUE
                WHERE s2.atDate = %s
            ) t2 ON t1.issueid = t2.issueid
            LEFT JOIN LATERAL (
                SELECT stockCode
                FROM enigma.stockListings
                WHERE issueid = t1.issueid AND delistdate IS NULL
                ORDER BY firsttradedate DESC
                LIMIT 1
            ) sl ON TRUE
            ORDER BY {ob}
        """,
            (d, d, d, prev_date, prev_date),
        )

    except Exception as e:
        current_app.logger.error(f"Error querying short positions by date: {e}")
        shorts = []

    return render_template(
        "dbpub/shortdate.html",
        d=d,
        prev_date=prev_date,
        shorts=shorts,
        date_list=date_list,
        sort=sort_param,
    )


@bp.route("/shortnotes.asp")
def short_notes():
    """Short selling notes"""
    return render_template("dbpub/short_notes.html")


# Events and distributions
