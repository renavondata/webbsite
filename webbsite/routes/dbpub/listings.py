"""
Stock listings and delisting routes
"""

from flask import Blueprint, render_template, request, abort, current_app, Response
from datetime import date, timedelta
import calendar
import io
import re
from webbsite.db import execute_query, get_db
from webbsite.asp_helpers import get_int, get_bool, get_str

bp = Blueprint("dbpub_listings", __name__)


@bp.route("/listed.asp")
def listed():
    """
    Port of dbpub/listed.asp
    Shows currently listed stocks with filtering by exchange and security type

    Query params:
    - e: exchange (m=Main Board, g=GEM, s=Secondary, r=REIT, c=CIS, a=All)
    - t: type (s=shares/units, r=rights, w=warrants, h=H-shares)
    - d: snapshot date (default: today)
    - sort: sorting column

    Tables used: stocklistings, enigma.issue, enigma.organisations, sectypes
    """
    # Get query parameters
    sort_param = request.args.get("sort", "nameup")
    e = request.args.get("e", "a")
    t = request.args.get("t", "s")
    d = request.args.get("d", str(date.today()))

    # Build title based on filters
    exchange_titles = {
        "m": "Main Board primary-listed",
        "g": "Growth Enterprise Market",
        "s": "Secondary-listed",
        "r": "Real Estate Investment Trust",
        "c": "Collective Investment Scheme",
        "a": "Main Board, GEM and secondary",
    }

    type_suffixes = {
        "r": " rights",
        "w": " subscription warrants",
        "h": " H-shares",
        "s": " shares" if e not in ["r", "c"] else " units",
    }

    title = exchange_titles.get(e, exchange_titles["a"]) + type_suffixes.get(
        t, " shares"
    )

    # Build ORDER BY clause based on sort parameter (lowercase for PostgreSQL)
    # Note: PostgreSQL defaults differ from MySQL for NULL sorting:
    # - MySQL: ASC=NULLS FIRST, DESC=NULLS LAST
    # - PostgreSQL: ASC=NULLS LAST, DESC=NULLS FIRST
    # We explicitly specify NULLS FIRST/LAST to match MySQL behavior
    order_by_map = {
        "namedn": "o.name1 DESC",
        "codeup": "sl.stockcode",
        "codedn": "sl.stockcode DESC",
        "typeup": "st.typeshort, o.name1",
        "typedn": "st.typeshort DESC, o.name1",
        "datedn": "sl.firsttradedate DESC, o.name1",
        "dateup": "sl.firsttradedate, o.name1",
        "totrdn": "totret DESC NULLS LAST, sl.firsttradedate",
        "totrup": "totret NULLS FIRST, sl.firsttradedate DESC",
        "cagretdn": "cagret DESC NULLS LAST, sl.firsttradedate",
        "cagretup": "cagret NULLS FIRST, sl.firsttradedate DESC",
        "cagreldn": "cagrel DESC NULLS LAST, sl.firsttradedate",
        "cagrelup": "cagrel NULLS FIRST, sl.firsttradedate DESC",
        "nameup": "o.name1, sl.stockcode",  # default
    }
    order_by = order_by_map.get(sort_param, order_by_map["nameup"])

    # Build exchange filter (lowercase for PostgreSQL)
    exchange_filters = {
        "m": "sl.stockexid = 1",  # Main Board
        "g": "sl.stockexid = 20",  # GEM
        "s": "sl.stockexid = 22",  # Secondary
        "r": "sl.stockexid = 23",  # REIT
        "c": "sl.stockexid = 38",  # CIS
        "a": "sl.stockexid IN (1, 20, 22)",  # All HK
    }
    exchange_filter = exchange_filters.get(e, exchange_filters["a"])

    # Build security type filter (lowercase for PostgreSQL)
    type_filters = {
        "r": "i.typeid = 2",  # Rights
        "w": "i.typeid = 1",  # Warrants
        "h": "i.typeid = 6",  # H-shares
        "s": "i.typeid NOT IN (1, 2, 40, 41, 46)",  # Regular shares/units
    }
    type_filter = type_filters.get(t, type_filters["s"])

    # Query for listed stocks with total returns calculations
    sql = f"""
        SELECT
            sl.stockcode,
            sl.issueid,
            st.typeshort,
            st.typelong,
            o.name1,
            o.personid,
            sl.firsttradedate,
            enigma.totRet(sl.issueid, sl.firsttradedate, %s) - 1 AS totret,
            enigma.CAGRet(sl.issueid, sl.firsttradedate, %s) - 1 AS cagret,
            enigma.CAGRel(sl.issueid, sl.firsttradedate, %s) - 1 AS cagrel
        FROM enigma.stocklistings sl
        JOIN enigma.issue i ON sl.issueid = i.id1
        JOIN enigma.organisations o ON i.issuer = o.personid
        JOIN enigma.sectypes st ON i.typeid = st.typeid
        WHERE (sl.firsttradedate IS NULL OR sl.firsttradedate <= %s)
          AND (sl.delistdate IS NULL OR sl.delistdate > %s)
          AND sl."2ndCtr" = FALSE
          AND {exchange_filter}
          AND {type_filter}
        ORDER BY {order_by}
    """

    try:
        results = execute_query(sql, (d, d, d, d, d))
        stocks = []
        for row in results:
            # Format return percentages (NULL becomes empty string, values multiplied by 100 and formatted to 2 decimals)
            totret = "" if row["totret"] is None else f"{row['totret'] * 100:.2f}"
            cagret = "" if row["cagret"] is None else f"{row['cagret'] * 100:.2f}"
            cagrel = "" if row["cagrel"] is None else f"{row['cagrel'] * 100:.2f}"

            stocks.append(
                {
                    "StockCode": row["stockcode"],
                    "issueID": row["issueid"],
                    "typeShort": row["typeshort"],
                    "typeLong": row["typelong"],
                    "Name1": row["name1"],
                    "PersonID": row["personid"],
                    "FirstTradeDate": row["firsttradedate"],
                    "totRet": totret,
                    "CAGret": cagret,
                    "CAGrel": cagrel,
                }
            )
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        current_app.logger.error(
            f"Error in listed.asp: {type(ex).__name__}: {ex}", exc_info=True
        )
        stocks = []

    return render_template(
        "dbpub/listed.html", title=title, stocks=stocks, sort=sort_param, e=e, t=t, d=d
    )


@bp.route("/delisted.asp")
def delisted():
    """
    Port of dbpub/delisted.asp
    Shows delisted stocks with filtering by exchange and security type

    Query params:
    - e: exchange (m=Main Board, g=GEM, s=Secondary, r=REIT, c=CIS, a=All)
    - t: type (s=shares/units, r=rights, w=warrants, h=H-shares)
    - sort: sorting column

    Tables used: stocklistings, enigma.issue, enigma.organisations, sectypes, enigma.dlreasons
    """
    # Get query parameters
    sort_param = request.args.get("sort", "nameup")
    e = request.args.get("e", "a")
    t = request.args.get("t", "s")

    # Build title (same logic as listed.asp)
    exchange_titles = {
        "m": "Main Board primary-listed",
        "g": "Growth Enterprise Market",
        "s": "Secondary-listed",
        "r": "Real Estate Investment Trust",
        "c": "Collective Investment Scheme",
        "a": "Main Board, GEM and secondary",
    }

    type_suffixes = {
        "r": " rights",
        "w": " subscription warrants",
        "h": " H-shares",
        "s": " shares" if e not in ["r", "c"] else " units",
    }

    title = exchange_titles.get(e, exchange_titles["a"]) + type_suffixes.get(
        t, " shares"
    )

    # Build ORDER BY clause based on sort parameter
    order_by_map = {
        "namedn": "o.name1 DESC",
        "codeup": "sl.stockcode",
        "codedn": "sl.stockcode DESC",
        "typeup": "st.typeshort, o.name1",
        "typedn": "st.typeshort DESC, o.name1",
        "fdatedn": "sl.firsttradedate DESC, o.name1",
        "fdateup": "sl.firsttradedate, o.name1",
        "ldatedn": "sl.finaltradedate DESC, o.name1",
        "ldateup": "sl.finaltradedate, o.name1",
        "ddatedn": "sl.delistdate DESC, o.name1",
        "ddateup": "sl.delistdate, o.name1",
        "lifeup": "TradeLife, o.name1",
        "lifedn": "TradeLife DESC, o.name1",
        "rsnup": "dl.reason, o.name1",
        "rsndn": "dl.reason DESC, o.name1",
        "nameup": "o.name1, sl.stockcode",  # default
    }
    order_by = order_by_map.get(sort_param, order_by_map["nameup"])

    # Build exchange filter
    exchange_filters = {
        "m": "sl.stockexid = 1",
        "g": "sl.stockexid = 20",
        "s": "sl.stockexid = 22",
        "r": "sl.stockexid = 23",
        "c": "sl.stockexid = 38",
        "a": "sl.stockexid IN (1, 20, 22)",
    }
    exchange_filter = exchange_filters.get(e, exchange_filters["a"])

    # Build security type filter
    type_filters = {
        "r": "i.typeid = 2",
        "w": "i.typeid = 1",
        "h": "i.typeid = 6",
        "s": "i.typeid NOT IN (1, 2, 40, 41, 46)",
    }
    type_filter = type_filters.get(t, type_filters["s"])

    # Query for delisted stocks
    # TradeLife calculation: PostgreSQL date arithmetic instead of MySQL to_days()
    sql = f"""
        SELECT
            sl.stockcode,
            st.typeshort,
            st.typelong,
            sl.issueid,
            o.name1,
            o.personid,
            sl.firsttradedate,
            sl.finaltradedate,
            sl.delistdate,
            dl.reason,
            CASE
                WHEN sl.firsttradedate IS NULL OR sl.finaltradedate IS NULL THEN NULL
                ELSE ((sl.finaltradedate - sl.firsttradedate) + 1) / 365.2425
            END AS TradeLife
        FROM enigma.stocklistings sl
        JOIN enigma.issue i ON sl.issueid = i.id1
        JOIN enigma.organisations o ON i.issuer = o.personid
        JOIN enigma.sectypes st ON i.typeid = st.typeid
        LEFT JOIN enigma.dlreasons dl ON sl.reasonid = dl.reasonid
        WHERE sl.delistdate <= NOW()
          AND {exchange_filter}
          AND {type_filter}
        ORDER BY {order_by}
    """

    try:
        results = execute_query(sql)
        stocks = []
        for row in results:
            stocks.append(
                {
                    "StockCode": row["stockcode"],
                    "typeShort": row["typeshort"],
                    "typeLong": row["typelong"],
                    "issueID": row["issueid"],
                    "Name1": row["name1"],
                    "PersonID": row["personid"],
                    "FirstTradeDate": row["firsttradedate"],
                    "FinalTradeDate": row["finaltradedate"],
                    "DelistDate": row["delistdate"],
                    "Reason": row["reason"],
                    "TradeLife": row["tradelife"],
                }
            )
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        current_app.logger.error(
            f"Error in delisted.asp: {type(ex).__name__}: {ex}", exc_info=True
        )
        stocks = []

    return render_template(
        "dbpub/delisted.html", title=title, stocks=stocks, sort=sort_param, e=e, t=t
    )


@bp.route("/code.asp")
def code():
    """
    Port of dbpub/code.asp
    Shows securities (current and delisted) using a specific stock code

    Query params:
    - code: Stock code (will be padded to 5 digits like ASP: Right("0000"&code,5))

    Tables used: enigma.weblistings view
    """
    code_param = request.args.get("code", "1")
    # ASP: code=Right("0000"&Request("code"),5) - pad to 5 digits
    code_padded = code_param.zfill(5)

    # Query for delisted securities with this stock code
    # Note: HKEX recycles stock codes, so multiple companies may have used the same code
    # ASP SQL: SELECT * FROM WebListings WHERE stockCode=X AND DelistDate<Now() ORDER BY DeListDate
    # ASP does numeric comparison (no quotes), so "00009" matches "0009" in MySQL
    # PostgreSQL: Use LPAD to normalize comparison (some codes like "E16.SI" aren't numeric)
    sql = """
        SELECT *
        FROM enigma.weblistings
        WHERE LPAD(stockcode, 8, '0') = LPAD(%s, 8, '0')
          AND delistdate < CURRENT_DATE
        ORDER BY delistdate
    """

    try:
        results = execute_query(sql, (code_padded,))
        delisted_securities = []
        for row in results:
            delisted_securities.append(
                {
                    "org": row["org"],
                    "orgid": row["orgid"],
                    "sectype": row["sectype"],
                    "firsttradedate": row["firsttradedate"],
                    "finaltradedate": row["finaltradedate"],
                    "delistdate": row["delistdate"],
                    "reason": row["reason"],
                }
            )
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        current_app.logger.error(
            f"Error in code.asp: {type(ex).__name__}: {ex}", exc_info=True
        )
        delisted_securities = []

    return render_template(
        "dbpub/code.html", code=code_padded, delisted=delisted_securities
    )
