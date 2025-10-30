"""
Market capitalization and returns data
"""

from flask import Blueprint, render_template, request, abort, current_app, Response
from datetime import date, timedelta
import calendar
import io
import re
from webbsite.db import execute_query, get_db
from webbsite.asp_helpers import get_int, get_bool, get_str

bp = Blueprint("dbpub_market_data", __name__)


@bp.route("/chart.asp")
def chart():
    """
    Economic data charts with Highstock
    Direct port from chart.asp

    Query params:
    - c: chart ID (default 1)
    - d: show per day (boolean, for quantity charts)

    Uses charts, chartitems, dataitems, charttypes tables
    """
    c = get_int("c", 1)
    daily = request.args.get("d", "").lower() in ("1", "true", "yes")

    # Get chart metadata
    sql = "SELECT * FROM enigma.charts WHERE id = %s"
    chart_result = execute_query(sql, (c,))

    if not chart_result:
        return render_template("dbpub/chart.html", error="Chart not found")

    chart_info = chart_result[0]
    chart_title = chart_info.get("title", "")
    quant = chart_info.get("quant", False)

    # Get chart items with data item details
    sql = """
        SELECT c.dataitem, d.ddes, d.note, d.units, d.dp,
               d.shortname, d.freq, ct.name as typename, c.negate
        FROM enigma.chartitems c
        JOIN enigma.dataitems d ON c.dataitem = d.id
        JOIN enigma.charttypes ct ON c.typeid = ct.id
        WHERE c.chartid = %s
    """
    items = execute_query(sql, (c,))

    if not items:
        # Get all available charts for dropdown even in error case
        charts_sql = "SELECT id, title FROM enigma.charts ORDER BY title"
        all_charts = execute_query(charts_sql)
        return render_template(
            "dbpub/chart.html",
            error="No chart items found",
            title=chart_title or "Economic Data Charts",
            c=c,
            all_charts=all_charts,
            quant=False,
            freq=1,
            daily=False,
        )

    # Get chart configuration from first item
    units = items[0].get("units", "")
    freq = items[0].get("freq", 1)

    # Determine date format for tooltip
    tipdate = "%Y" if freq == 3 else "%Y-%m"

    # Build title with frequency
    freq_sql = "SELECT fdes FROM enigma.freq WHERE id = %s"
    freq_result = execute_query(freq_sql, (freq,))
    freq_desc = freq_result[0].get("fdes", "").lower() if freq_result else ""

    denom = ""
    dpinc = 0
    if quant and freq < 3 and daily:
        # Per-day calculation for monthly/quarterly quantity data
        if freq == 1:
            denom = "/monthdays(d)"
        else:
            denom = "/quarterdays(d)"
        dpinc = 2

    full_title = f"{chart_title} {freq_desc}, {units}"
    if daily:
        full_title += " per day"

    # Get notes from all chart items
    note_sql = """
        SELECT STRING_AGG(d.note, ' ') as combined_note
        FROM enigma.chartitems c
        JOIN enigma.dataitems d ON c.dataitem = d.id
        WHERE c.chartid = %s
    """
    note_result = execute_query(note_sql, (c,))
    note = note_result[0].get("combined_note", "") if note_result else ""

    # Build data query for all items
    item_ids = [item.get("dataitem") for item in items]

    # Build SELECT for each data item with explicit column aliases
    select_parts = []
    for i, item in enumerate(items):
        item_id = item.get("dataitem")
        negate = item.get("negate", False)
        sign = "-" if negate else ""
        select_parts.append(
            f"{sign}SUM(CASE WHEN item = {item_id} THEN v ELSE 0 END){denom} AS item{i}"
        )

    data_sql = f"""
        SELECT d, {', '.join(select_parts)}
        FROM enigma.data
        WHERE item IN ({','.join(['%s'] * len(item_ids))})
        GROUP BY d
        ORDER BY d
    """

    data_points = execute_query(data_sql, item_ids)

    # Format data for Highcharts - one series per item
    series_data = [[] for _ in items]
    table_data = []

    for row in data_points:
        d = row.get("d")
        if d:
            # Convert date to JavaScript timestamp (milliseconds)
            if hasattr(d, "timestamp"):
                timestamp = int(d.timestamp() * 1000)
            else:
                from datetime import datetime

                try:
                    dt = datetime.fromisoformat(str(d))
                    timestamp = int(dt.timestamp() * 1000)
                except:
                    continue

            # Add data point to each series
            row_values = []
            for i, item in enumerate(items):
                # Access column by name (item0, item1, item2, ...)
                value = row.get(f"item{i}", None)
                if value is not None:
                    series_data[i].append([timestamp, float(value)])
                    row_values.append(value)
                else:
                    row_values.append(None)

            table_data.append({"date": d, "values": row_values})

    # Get data sources
    source_sql = """
        SELECT DISTINCT d.source, o.name1
        FROM enigma.chartitems c
        JOIN enigma.dataitems d ON c.dataitem = d.id
        JOIN enigma.organisations o ON d.source = o.personid
        WHERE c.chartid = %s
        ORDER BY o.name1
    """
    sources = execute_query(source_sql, (c,))

    # Get all available charts for dropdown
    charts_sql = "SELECT id, title FROM enigma.charts ORDER BY title"
    all_charts = execute_query(charts_sql)

    return render_template(
        "dbpub/chart.html",
        c=c,
        title=full_title,
        units=units,
        note=note,
        tipdate=tipdate,
        freq=freq,
        quant=quant,
        daily=daily,
        items=items,
        series_data=series_data,
        table_data=table_data,
        sources=sources,
        all_charts=all_charts,
        dpinc=dpinc,
    )


@bp.route("/alltotrets.asp")
def alltotrets():
    """
    Total returns for all stocks - port of alltotrets.asp

    Calculates total returns (price change + dividends) with adjustment for
    splits/consolidations over a specified period. Also computes CAGR
    (Compound Annual Growth Rate) for periods >= 180 days.

    Query params:
    - d1: start date (default: 1994-01-03)
    - d2: end date (default: max quotes date)
    - i: include IPOs after start date (default: False)
    - sort: sorting column (default: tretdn)

    Tables used: stocklistings, issue, organisations, sectypes, ccass.quotes, adjustments
    Functions used: delisted(), lastCode(), firstQuoteDate(), lastQuoteDate(), getAdjust()
    """
    from webbsite.asp_helpers import (
        get_bool,
        get_date_or_default,
        format_percent_sig,
        pcsig,
    )

    # Get max quote dates from log table
    max_dates = execute_query(
        """
        SELECT val FROM enigma.log
        WHERE name IN ('MBquotesDate', 'GEMquotesDate')
        ORDER BY val
        LIMIT 1
    """
    )
    max_date = max_dates[0]["val"] if max_dates else str(date.today())

    # Parse parameters with validation
    inc_ipo = get_bool("i")
    sort_param = request.args.get("sort", "tretdn")

    # Get dates with bounds checking (ASP logic: Max(Min(date, maxDate), minDate))
    d1_raw = get_date_or_default("d1", "1994-01-03")
    d2_raw = get_date_or_default("d2", max_date)

    # Apply bounds: max(min(input, max_date), '1994-01-03')
    d1 = max(min(d1_raw, max_date), "1994-01-03")
    d2 = max(min(d2_raw, max_date), "1994-01-03")

    # Swap if d1 > d2
    if d1 > d2:
        d1, d2 = d2, d1

    # Build ORDER BY clause based on sort parameter
    order_by_map = {
        "nameup": "t3.name1, t3.typeshort",
        "namedn": "t3.name1 DESC, t3.typeshort",
        "tretup": "t3.totret, t3.name1",
        "tretdn": "t3.totret DESC, t3.name1",
        "cagrup": "cagret, t3.name1",
        "cagrdn": "cagret DESC, t3.name1",
        "typeup": "t3.typeshort, t3.totret DESC",
        "typedn": "t3.typeshort DESC, t3.totret DESC",
        "frstup": "t3.buydate, t3.name1",
        "frstdn": "t3.buydate DESC, t3.name1",
        "lastup": "t3.selldate, t3.name1",
        "lastdn": "t3.selldate DESC, t3.name1",
        "codeup": "lastcode, t3.buydate DESC",
        "codedn": "lastcode DESC, t3.buydate DESC",
    }
    order_by = order_by_map.get(sort_param, "t3.totret DESC, t3.name1")

    # Determine the date filter for firstTradeDate based on inc_ipo
    # If inc_ipo=True, allow stocks listed up to d2
    # If inc_ipo=False, require stocks listed by d1
    first_trade_filter = d2 if inc_ipo else d1

    # Build the complete SQL query (inline version of allTotRets stored procedure)
    sql = f"""
        SELECT
            t3.name1,
            t3.typeshort,
            t3.issueid,
            enigma.delisted(t3.issueid, %s) AS delisted,
            enigma.lastcode(t3.issueid) AS lastcode,
            t3.buydate,
            t3.selldate,
            t3.totret,
            CASE
                WHEN (t3.selldate - t3.buydate) >= 180
                THEN POWER(t3.totret, 365.25 / (t3.selldate - t3.buydate))
                ELSE NULL
            END AS cagret
        FROM (
            SELECT
                t2.name1,
                t2.typeshort,
                t2.issueid,
                t2.buydate,
                t2.selldate,
                (
                    (SELECT closing FROM ccass.quotes WHERE issueid = t2.issueid AND atdate = t2.selldate) /
                    (SELECT closing FROM ccass.quotes WHERE issueid = t2.issueid AND atdate = t2.buydate) *
                    enigma.getadjust(t2.issueid, t2.buydate) /
                    enigma.getadjust(t2.issueid, t2.selldate)
                ) AS totret
            FROM (
                SELECT
                    o.name1,
                    st.typeshort,
                    t1.issueid,
                    enigma.firstquotedate(t1.issueid, %s) AS buydate,
                    enigma.lastquotedate(t1.issueid, %s) AS selldate
                FROM (
                    SELECT DISTINCT sl.issueid, i.issuer, i.typeid
                    FROM enigma.stocklistings sl
                    JOIN enigma.issue i ON sl.issueid = i.id1
                    WHERE sl.stockexid IN (1, 20, 23)
                      AND i.typeid IN (0, 6, 7, 8, 10)
                      AND (sl.firsttradedate IS NULL OR sl.firsttradedate <= %s)
                      AND (sl.delistdate IS NULL OR sl.delistdate > %s)
                ) AS t1
                JOIN enigma.organisations o ON t1.issuer = o.personid
                JOIN enigma.sectypes st ON t1.typeid = st.typeid
            ) AS t2
        ) AS t3
        WHERE t3.totret IS NOT NULL
        ORDER BY {order_by}
    """

    # Execute query with parameters
    # Parameters: d2 (for delisted check), d1 (buyDate), d2 (sellDate), first_trade_filter, d1
    results = execute_query(sql, (d2, d1, d2, first_trade_filter, d1))

    # Format results for display
    count = 0
    for row in results:
        count += 1
        row["row_num"] = count

        # Format total return with dynamic precision
        if row["totret"] is not None:
            # Subtract 1 to convert from multiplier to percentage
            totret_pct = row["totret"] - 1
            decimals = pcsig(totret_pct)
            row["totret_formatted"] = f"{totret_pct:.{decimals}%}"
        else:
            row["totret_formatted"] = "&nbsp;"

        # Format CAGR with dynamic precision
        if row["cagret"] is not None:
            cagr_pct = row["cagret"] - 1
            decimals = pcsig(cagr_pct)
            row["cagr_formatted"] = f"{cagr_pct:.{decimals}%}"
        else:
            row["cagr_formatted"] = ""

    # Build title
    title = f"Webb-site Total Returns up to {d2} of stocks listed at {d1}"
    if inc_ipo:
        title += " or after"

    # Build URL for sort links
    url_base = f"?d1={d1}&d2={d2}&i={int(inc_ipo)}"

    return render_template(
        "dbpub/alltotrets.html",
        title=title,
        results=results,
        count=count,
        d1=d1,
        d2=d2,
        inc_ipo=inc_ipo,
        sort=sort_param,
        url_base=url_base,
        max_date=max_date,
    )


@bp.route("/mcap.asp")
def mcap():
    """
    Market capitalization snapshot - current market values by exchange and type

    Query params:
    - e: exchange (m=Main Board, g=GEM, s=Secondary, a=All, r=REIT, c=CIS)
    - t: type (s=shares, w=warrants, h=H-shares)
    - sort: sorting column

    Tables used: issuedshares, quotes, stocklistings, hkexdata
    """
    from flask import current_app
    from datetime import date as dt

    e = request.args.get("e", "a")
    t = request.args.get("t", "s")
    sort_param = request.args.get("sort", "mcapdn")

    # Exchange filter mapping
    exchange_filters = {
        "m": ("= 1", "Main Board primary-listed"),
        "g": ("= 20", "Growth Enterprise Market"),
        "s": ("= 22", "Secondary-listed"),
        "r": ("= 23", "Real Estate Investment Trust"),
        "c": ("= 38", "Collective Investment Scheme"),
        "a": ("IN (1, 20, 22)", "Main Board, GEM and secondary"),
    }
    e_str, title = exchange_filters.get(
        e, ("IN (1, 20, 22)", "Main Board, GEM and secondary")
    )

    # Type filter mapping
    type_filters = {
        "w": ("= 1", " subscription warrants"),
        "h": ("= 6", " H-shares"),
        "s": (
            "NOT IN (1, 2, 5, 40, 41, 46)",
            " shares" if e not in ["r", "c"] else " units",
        ),
    }
    t_str, t_suffix = type_filters.get(t, ("NOT IN (1, 2, 5, 40, 41, 46)", " shares"))
    title = f"Market values of {title}{t_suffix}"

    # Sort mapping
    sort_map = {
        "namedn": "name DESC",
        "nameup": "name",
        "codeup": "stockCode",
        "codedn": "stockCode DESC",
        "typeup": "typeShort, name",
        "typedn": "typeShort DESC, name",
        "lotup": "lot, name",
        "lotdn": "lot DESC, name",
        "ltvup": "lotVal, name",
        "ltvdn": "lotVal DESC, name",
        "prcdn": "closing DESC, name",
        "prcup": "closing, name",
        "issdn": "outstanding DESC, name",
        "issup": "outstanding, name",
        "mcpup": "mcap, name",
        "mcapdn": "mcap DESC, name",
    }
    ob = sort_map.get(sort_param, "mcap DESC, name")

    # Currency codes
    currencies = ["HKD", "CNY", "USD"]
    market_caps = []

    try:
        for curr_idx in range(3):
            if curr_idx == 0:
                curr_filter = "(sl.SEHKcurr IS NULL OR sl.SEHKcurr = 0)"
            else:
                curr_filter = f"sl.SEHKcurr = {curr_idx}"

            # Query market caps for this currency
            curr_data = execute_query(
                f"""
                SELECT COALESCE(h.nomprice, 0) AS closing,
                       h.priceDate,
                       o.name1 AS name,
                       i.issuer,
                       sl.issueID,
                       st.typeShort,
                       COALESCE(h.boardlot, 0) AS lot,
                       LPAD(sl.stockCode::TEXT, 5, '0') AS stockCode,
                       COALESCE(os.outstanding, 0) AS outstanding,
                       COALESCE(h.nomprice * os.outstanding, 0) AS mcap,
                       COALESCE(h.nomprice * h.boardlot, 0) AS lotVal
                FROM enigma.stockListings sl
                JOIN enigma.issue i ON sl.issueID = i.ID1
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                LEFT JOIN enigma.hkexdata h ON sl.issueID = h.issueID
                LEFT JOIN LATERAL (
                    SELECT outstanding
                    FROM enigma.issuedshares
                    WHERE issueID = sl.issueID
                      AND atDate <= CURRENT_DATE
                    ORDER BY atDate DESC
                    LIMIT 1
                ) os ON TRUE
                WHERE (sl.FirstTradeDate IS NULL OR sl.FirstTradeDate <= CURRENT_DATE)
                  AND (sl.DelistDate IS NULL OR sl.DelistDate > CURRENT_DATE)
                  AND NOT sl.`2ndCtr`
                  AND sl.StockExID {e_str}
                  AND i.typeID {t_str}
                  AND {curr_filter}
                ORDER BY {ob}
            """
            )

            if curr_data:
                market_caps.append(
                    {"currency": currencies[curr_idx], "data": curr_data}
                )

    except Exception as ex:
        current_app.logger.error(f"Error querying market caps: {ex}")
        market_caps = []

    return render_template(
        "dbpub/mcap.html",
        market_caps=market_caps,
        title=title,
        e=e,
        t=t,
        sort=sort_param,
    )


@bp.route("/mcaphist.asp")
def mcaphist():
    """
    Market capitalization history - historical market values by exchange and type

    Query params:
    - d: date
    - e: exchange (m=Main Board, g=GEM, s=Secondary, a=All, r=REIT, c=CIS)
    - t: type (s=shares, w=warrants, h=H-shares)
    - p: exclude pending shares (bool)
    - sort: sorting column

    Tables used: issuedshares, quotes, stocklistings
    """
    from flask import current_app
    from datetime import date as dt

    d = request.args.get("d", str(dt.today()))
    e = request.args.get("e", "a")
    t = request.args.get("t", "s")
    exclude_pending = get_bool("p")
    sort_param = request.args.get("sort", "mcapdn")

    # Exchange filter mapping (same as mcap)
    exchange_filters = {
        "m": ("= 1", "Main Board primary-listed"),
        "g": ("= 20", "Growth Enterprise Market"),
        "s": ("= 22", "Secondary-listed"),
        "r": ("= 23", "Real Estate Investment Trust"),
        "c": ("= 38", "Collective Investment Scheme"),
        "a": ("IN (1, 20, 22)", "Main Board, GEM and secondary"),
    }
    e_str, title = exchange_filters.get(
        e, ("IN (1, 20, 22)", "Main Board, GEM and secondary")
    )

    # Type filter mapping
    type_filters = {
        "w": ("= 1", " subscription warrants"),
        "h": ("= 6", " H-shares"),
        "s": (
            "NOT IN (1, 2, 5, 40, 41, 46)",
            " shares" if e not in ["r", "c"] else " units",
        ),
    }
    t_str, t_suffix = type_filters.get(t, ("NOT IN (1, 2, 5, 40, 41, 46)", " shares"))
    title = f"Historic market values of {title}{t_suffix}"

    # Sort mapping (slightly different from mcap for historical data)
    if exclude_pending:
        mcap_field = "mcap"
        os_field = "os"
    else:
        mcap_field = "pendMcap"
        os_field = "totsh"

    sort_map = {
        "namedn": "name DESC",
        "nameup": "name",
        "codeup": "sc",
        "codedn": "sc DESC",
        "typeup": "typeShort, name",
        "typedn": "typeShort DESC, name",
        "datedn": "td DESC, name",
        "dateup": "td, name",
        "lotup": "lot, name",
        "lotdn": "lot DESC, name",
        "ltvup": "lotVal, name",
        "ltvdn": "lotVal DESC, name",
        "prcdn": "closing DESC, name",
        "prcup": "closing, name",
        "issdn": f"{os_field} DESC, name",
        "issup": f"{os_field}, name",
        "mcpup": f"{mcap_field}, name",
        "mcapdn": f"{mcap_field} DESC, name",
    }
    ob = sort_map.get(sort_param, f"{mcap_field} DESC, name")

    # Get list of distinct currencies used
    currencies_list = []
    market_caps = []

    try:
        # Get currencies in use on this date
        currencies_list = execute_query(
            f"""
            SELECT DISTINCT sl.SEHKcurr, c.currency
            FROM enigma.stockListings sl
            JOIN enigma.issue i ON sl.issueID = i.ID1
            JOIN enigma.currencies c ON sl.SEHKcurr = c.id
            WHERE (sl.FirstTradeDate IS NULL OR sl.FirstTradeDate <= %s)
              AND (sl.DelistDate IS NULL OR sl.DelistDate > %s)
              AND sl.StockExID {e_str}
              AND i.typeID {t_str}
              AND NOT sl.`2ndCtr`
            ORDER BY sl.SEHKcurr
        """,
            (d, d),
        )

        for curr_row in currencies_list:
            sehk_curr = curr_row["sehkcurr"]
            currency = curr_row["currency"]

            if sehk_curr == 0:
                curr_filter = "(sl.SEHKcurr = 0 OR sl.SEHKcurr IS NULL)"
            else:
                curr_filter = f"sl.SEHKcurr = {sehk_curr}"

            # Complex query for historical market caps
            curr_data = execute_query(
                f"""
                SELECT t2.sc, t2.i, t2.typeShort, t2.p, t2.closing, t2.td,
                       t2.os,
                       COALESCE(t2.closing * t2.os / 1000000.0, 0) AS mcap,
                       COALESCE(t2.os + t2.pendsh, 0) AS totsh,
                       COALESCE(t2.closing * (t2.os + t2.pendsh) / 1000000.0, 0) AS pendMcap,
                       o.name1 AS name,
                       COALESCE(t2.lot, 0) AS lot,
                       COALESCE(t2.closing * t2.lot, 0) AS lotVal
                FROM (
                    SELECT t1.sc, t1.i, t1.typeID, t1.p, t1.td,
                           COALESCE(os.outstanding, 0) AS os,
                           COALESCE(pend.pending, 0) AS pendsh,
                           COALESCE(bl.boardlot, 0) AS lot,
                           COALESCE(q.closing, 0) AS closing
                    FROM (
                        SELECT sl.stockCode AS sc,
                               sl.issueID AS i,
                               i.typeID,
                               i.issuer AS p,
                               COALESCE(
                                   (SELECT MAX(q2.atDate)
                                    FROM ccass.quotes q2
                                    WHERE q2.issueID = sl.issueID
                                      AND q2.atDate <= %s), %s) AS td
                        FROM enigma.stockListings sl
                        JOIN enigma.issue i ON sl.issueID = i.ID1
                        WHERE (sl.FirstTradeDate IS NULL OR sl.FirstTradeDate <= %s)
                          AND (sl.DelistDate IS NULL OR sl.DelistDate > %s)
                          AND NOT sl.`2ndCtr`
                          AND {curr_filter}
                          AND sl.StockExID {e_str}
                          AND i.typeID {t_str}
                    ) t1
                    LEFT JOIN LATERAL (
                        SELECT outstanding
                        FROM enigma.issuedshares
                        WHERE issueID = t1.i AND atDate <= t1.td
                        ORDER BY atDate DESC
                        LIMIT 1
                    ) os ON TRUE
                    LEFT JOIN LATERAL (
                        SELECT SUM(sharesPost - sharesPre) AS pending
                        FROM enigma.splitpends
                        WHERE issueID = t1.i AND effDate > t1.td
                    ) pend ON TRUE
                    LEFT JOIN LATERAL (
                        SELECT boardlot
                        FROM enigma.boardlotchanges
                        WHERE issueID = t1.i AND effDate <= t1.td
                        ORDER BY effDate DESC
                        LIMIT 1
                    ) bl ON TRUE
                    LEFT JOIN ccass.quotes q ON t1.i = q.issueID AND t1.td = q.atDate
                ) t2
                JOIN enigma.organisations o ON t2.p = o.personID
                JOIN enigma.secTypes st ON t2.typeID = st.typeID
                ORDER BY {ob}
            """,
                (d, d, d, d),
            )

            if curr_data:
                market_caps.append({"currency": currency, "data": curr_data})

    except Exception as ex:
        current_app.logger.error(f"Error querying historical market caps: {ex}")
        market_caps = []

    return render_template(
        "dbpub/mcaphist.html",
        market_caps=market_caps,
        title=title,
        d=d,
        e=e,
        t=t,
        exclude_pending=exclude_pending,
        sort=sort_param,
    )


# SDI (Significant Dealer Information) routes
