"""
Share buyback data and analysis
"""

from flask import Blueprint, render_template, request, abort, current_app, Response
from datetime import date, timedelta
import calendar
import io
import re
from webbsite.db import execute_query, get_db
from webbsite.asp_helpers import get_int, get_bool, get_str

bp = Blueprint("dbpub_buybacks", __name__)


@bp.route("/buybacks.asp")
def buybacks():
    """Share buyback transactions for a specific stock"""
    from flask import current_app
    from datetime import date
    from webbsite.asp_helpers import get_int, get_bool

    issue_id = get_int("i", 0)
    stock_code = request.args.get("sc", "").strip()
    # Zero-pad stock code to 4 digits for database lookup (matches stored format)
    if stock_code and stock_code.isdigit():
        stock_code = stock_code.zfill(4)
    freq = request.args.get("f", "d")  # d=daily, m=monthly, y=yearly
    unadj = get_bool("u")  # Show unadjusted for splits
    show_method = get_bool("e")  # Show exchange method
    sort_param = request.args.get("sort", "datedn")

    # Validate frequency
    if freq not in ["d", "m", "y"]:
        freq = "d"

    # Get stock info from stock code if provided
    # Note: Stock code takes precedence over issue_id parameter (ASP behavior)
    stock_name = ""
    org_id = 0
    if stock_code:
        try:
            result = execute_query(
                """
                SELECT i.ID1 AS issueid, o.name1, o.personid, st.typeshort,
                       COALESCE(c.currency, 'HKD') AS currency
                FROM enigma.stockListings sl
                JOIN enigma.issue i ON sl.issueid = i.ID1
                JOIN enigma.organisations o ON i.issuer = o.personid
                JOIN enigma.sectypes st ON i.typeID = st.typeID
                LEFT JOIN enigma.currencies c ON i.SEHKcurr = c.id
                WHERE sl.stockCode = %s
                  AND sl.stockExID IN (1, 20, 22, 23, 38, 71)
                ORDER BY sl.firstTradeDate DESC NULLS LAST
                LIMIT 1
            """,
                (stock_code,),
            )
            if result:
                issue_id = result[0]["issueid"]
                # Format: "Name1: TypeShort Currency"
                stock_name = f"{result[0]['name1']}: {result[0]['typeshort']}"
                if result[0]["currency"]:
                    stock_name += f" {result[0]['currency']}"
                org_id = result[0]["personid"]
        except Exception as e:
            current_app.logger.error(f"Error looking up stock code: {e}")

    # Get stock info if we have issueID but no stock name yet
    if issue_id and not stock_name:
        try:
            result = execute_query(
                """
                SELECT o.name1, o.personid, st.typeshort,
                       COALESCE(c.currency, 'HKD') AS currency
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personid
                JOIN enigma.sectypes st ON i.typeID = st.typeID
                LEFT JOIN enigma.currencies c ON i.SEHKcurr = c.id
                WHERE i.ID1 = %s
            """,
                (issue_id,),
            )
            if result:
                # Format: "Name1: TypeShort Currency"
                stock_name = f"{result[0]['name1']}: {result[0]['typeshort']}"
                if result[0]["currency"]:
                    stock_name += f" {result[0]['currency']}"
                org_id = result[0]["personid"]
        except Exception as e:
            current_app.logger.error(f"Error getting stock info: {e}")

    # Get navigation flags and stock listings data for navbar and HKlistings table
    nav_flags = {}
    listings_data = []
    sec_type = None
    stock_ex_id = None
    delist_date = None

    if org_id:
        try:
            # orgBar navigation flags
            nav_flags["has_directorships"] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.directorships WHERE Company = %s) AS exists",
                (org_id,),
            )[0]["exists"]
            nav_flags["has_pay"] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.documents WHERE docTypeID = 0 AND pay AND orgid = %s) AS exists",
                (org_id,),
            )[0]["exists"]
            nav_flags["has_advisers"] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.adviserships WHERE Company = %s) AS exists",
                (org_id,),
            )[0]["exists"]
            nav_flags["has_adviserships"] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.adviserships WHERE Adviser = %s) AS exists",
                (org_id,),
            )[0]["exists"]
            nav_flags["has_sfc_licenses"] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.olicrec WHERE orgid = %s) AS exists",
                (org_id,),
            )[0]["exists"]
            nav_flags["has_documents"] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.documents WHERE orgid = %s) AS exists",
                (org_id,),
            )[0]["exists"]
            nav_flags["has_ess"] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.ess WHERE orgid = %s) AS exists",
                (org_id,),
            )[0]["exists"]
            nav_flags["has_stories"] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.personstories WHERE personid = %s) AS exists",
                (org_id,),
            )[0]["exists"]
            # 9643=HKEX, regulated by SFC
            nav_flags["has_lir_team"] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.lirorgteam WHERE orgid = %s) AS exists",
                (org_id,),
            )[0]["exists"] or (org_id == 9643)

            # Get CCASS participant ID if exists
            part_result = execute_query(
                "SELECT partID FROM ccass.participants WHERE personid = %s LIMIT 1",
                (org_id,),
            )
            nav_flags["ccass_part_id"] = (
                part_result[0]["partid"] if part_result else None
            )

        except Exception as e:
            current_app.logger.error(f"Error getting orgBar navigation flags: {e}")

    if issue_id:
        try:
            # Get security type and stock exchange info for stockBar
            sec_info = execute_query(
                """
                SELECT i.typeID, sl.stockExID, sl.delistDate
                FROM enigma.issue i
                LEFT JOIN enigma.stockListings sl ON i.ID1 = sl.issueid
                WHERE i.ID1 = %s AND sl.stockExID IN (1, 20, 22, 23, 38, 71)
                ORDER BY sl.delistDate LIMIT 1
            """,
                (issue_id,),
            )
            if sec_info:
                sec_type = sec_info[0]["typeid"]
                stock_ex_id = sec_info[0]["stockexid"]
                delist_date = sec_info[0]["delistdate"]

            # stockBar navigation flags
            nav_flags["has_outstanding"] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.issuedshares WHERE issueid = %s) AS exists",
                (issue_id,),
            )[0]["exists"]
            nav_flags["has_short"] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.sfcshort WHERE issueid = %s) AS exists",
                (issue_id,),
            )[0]["exists"]
            nav_flags["has_sdi"] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.sdi WHERE issueid = %s) AS exists",
                (issue_id,),
            )[0]["exists"]

            # Determine if CCASS data is available
            # No CCASS for rights (typeID=2), convertible bonds (40) or notes (41)
            # Only available after 2007-06-26 for delisted stocks
            from datetime import date as dt

            ccass_cutoff = dt(2007, 6, 26)
            nav_flags["ccass_on"] = sec_type not in [2, 40, 41] and (
                delist_date is None or delist_date >= ccass_cutoff
            )

            # Get stock listings for HKlistings table
            listings_data = execute_query(
                """
                SELECT l.shortName AS exchange_name,
                       sl.stockCode,
                       sl.firstTradeDate, sl.finalTradeDate, sl.delistDate,
                       sl.stockId
                FROM enigma.stockListings sl
                JOIN enigma.listings l ON sl.stockExID = l.stockExID
                WHERE sl.issueid = %s
                  AND sl.stockExID IN (1, 20, 22, 23, 38, 71)
                ORDER BY sl.firstTradeDate
            """,
                (issue_id,),
            )

            # Format stock codes to 5 digits with leading zeros
            for listing in listings_data:
                if listing["stockcode"]:
                    listing["stockcode_formatted"] = str(listing["stockcode"]).zfill(5)
                else:
                    listing["stockcode_formatted"] = ""

        except Exception as e:
            current_app.logger.error(
                f"Error getting stockBar navigation flags or listings: {e}"
            )

    # Build ORDER BY based on frequency and sort
    if freq == "d":
        date_fields = "effDate"
        date_dn = "effDate DESC"
    elif freq == "m":
        date_fields = "y, m"
        date_dn = "y DESC, m DESC"
    else:  # yearly
        date_fields = "y"
        date_dn = "y DESC"

    sort_map = {
        "dateup": date_fields,
        "datedn": date_dn,
        "shrsup": f"shares, {date_fields}",
        "shrsdn": f"shares DESC, {date_dn}",
        "valuup": f"currency, value, {date_fields}",
        "valudn": f"currency, value DESC, {date_dn}",
        "currup": f"currency, {date_dn}",
        "currdn": f"currency DESC, {date_fields}",
        "pricup": f"currency, price, {date_dn}",
        "pricdn": f"currency, price DESC, {date_dn}",
        "stkdn": f"stake DESC, {date_dn}",
        "stkup": f"stake, {date_fields}",
    }
    ob = sort_map.get(sort_param, date_dn)

    buybacks_data = []
    totals = []
    initial_os = None
    initial_osd = None
    if issue_id:
        try:
            # Always use webbuybacks - the u parameter only affects outstanding shares adjustment, not buyback shares
            table = "enigma.webbuybacks"

            if freq == "d":
                # Daily data - no aggregation needed, views already have daily granularity
                select_fields = (
                    "effDate, SUM(shares) AS shares, SUM(value) AS value, currency"
                )
                group_by = "effDate, currency"
                if show_method:
                    select_fields = "effDate, SUM(shares) AS shares, SUM(value) AS value, currency, exchName"
                    group_by = "effDate, currency, exchName"
            elif freq == "m":
                # Monthly data
                select_fields = "EXTRACT(YEAR FROM effDate)::INTEGER AS y, EXTRACT(MONTH FROM effDate)::INTEGER AS m, SUM(shares) AS shares, SUM(value) AS value, currency"
                group_by = (
                    "EXTRACT(YEAR FROM effDate), EXTRACT(MONTH FROM effDate), currency"
                )
                if show_method:
                    select_fields += ", exchName"
                    group_by += ", exchName"
            else:  # yearly
                select_fields = "EXTRACT(YEAR FROM effDate)::INTEGER AS y, SUM(shares) AS shares, SUM(value) AS value, currency"
                group_by = "EXTRACT(YEAR FROM effDate), currency"
                if show_method:
                    select_fields += ", exchName"
                    group_by += ", exchName"

            # Build split adjustment divisor based on unadj parameter
            # When unadj=False, divide outstanding shares by enigma.splitadj to match ASP behavior
            # splitadj returns adjustments AFTER the date, so it shows unadjusted shares by default
            denom = "1" if unadj else f"enigma.splitadj({issue_id}, os.atDate)"
            # For initial_os query, use atDate directly (not os.atDate) since no LATERAL join
            denom_initial = "1" if unadj else f"enigma.splitadj({issue_id}, atDate)"

            # Build date condition for LATERAL join based on frequency
            # This must be built at Python level, not as SQL CASE, because column names differ by frequency
            if freq == "d":
                date_condition = "bb.effDate"
            elif freq == "m":
                date_condition = "MAKE_DATE(bb.y, bb.m, 1)"
            else:  # yearly
                date_condition = "MAKE_DATE(bb.y, 1, 1)"

            # Get buybacks with outstanding shares calculation
            buybacks_data = execute_query(
                f"""
                SELECT bb.*, os.outstanding, os.atDate AS osd,
                       (os.outstanding / {denom}) AS os,
                       CASE WHEN os.outstanding > 0
                            THEN bb.shares * 100.0 / (os.outstanding / {denom})
                            ELSE NULL END AS stake,
                       CASE WHEN bb.shares > 0
                            THEN bb.value / bb.shares
                            ELSE NULL END AS price,
                       c.settleDate
                FROM (
                    SELECT {select_fields}
                    FROM {table}
                    WHERE issueid = %s
                    GROUP BY {group_by}
                ) bb
                LEFT JOIN LATERAL (
                    SELECT outstanding, atDate
                    FROM enigma.issuedshares
                    WHERE issueid = %s
                      AND atDate <= {date_condition}
                    ORDER BY atDate DESC
                    LIMIT 1
                ) os ON TRUE
                LEFT JOIN ccass.calendar c ON bb.effDate = c.tradeDate
                ORDER BY {ob}
            """,
                (issue_id, issue_id),
            )

            # Get totals by currency
            totals = execute_query(
                f"""
                SELECT SUM(shares)::DOUBLE PRECISION AS shares, SUM(value)::DOUBLE PRECISION AS value,
                       currency,
                       CASE WHEN SUM(shares) > 0
                            THEN (SUM(value) / SUM(shares))::DOUBLE PRECISION
                            ELSE NULL END AS price
                FROM {table}
                WHERE issueid = %s
                GROUP BY currency
            """,
                (issue_id,),
            )

            # Get initial outstanding shares for totals calculation
            # This is the outstanding shares at the date before the first buyback
            initial_os_result = execute_query(
                f"""
                SELECT (outstanding / {denom_initial})::DOUBLE PRECISION AS os, atDate AS osd
                FROM enigma.issuedshares
                WHERE issueid = %s
                  AND atDate <= (SELECT MIN(effDate) FROM enigma.webbuybacks WHERE issueid = %s)
                ORDER BY atDate DESC
                LIMIT 1
            """,
                (issue_id, issue_id),
            )

            initial_os = initial_os_result[0]["os"] if initial_os_result else None
            initial_osd = initial_os_result[0]["osd"] if initial_os_result else None

        except Exception as e:
            current_app.logger.error(f"Error querying buybacks: {e}")
            buybacks_data = []
            totals = []
            initial_os = None
            initial_osd = None

    return render_template(
        "dbpub/buybacks.html",
        issue_id=issue_id,
        stock_name=stock_name,
        org_id=org_id,
        buybacks=buybacks_data,
        totals=totals,
        initial_os=initial_os,
        initial_osd=initial_osd,
        freq=freq,
        unadj=unadj,
        show_method=show_method,
        sort=sort_param,
        now=date.today(),
        current_year=date.today().year,
        nav_flags=nav_flags,
        listings_data=listings_data,
        sec_type=sec_type,
        stock_ex_id=stock_ex_id,
        delist_date=delist_date,
    )


@bp.route("/buybacksum.asp")
def buybacksum():
    """Buyback summary - all stocks on a given date/period"""
    from flask import current_app
    from datetime import date

    # Get parameters
    unadj = get_bool("u")  # Show unadjusted for splits
    sort_param = request.args.get("sort", "valdn")

    # Get max date from database
    max_date = date.today()
    try:
        result = execute_query("SELECT MAX(effDate) AS maxdate FROM enigma.WebBuybacks")
        if result and result[0]["maxdate"]:
            max_date = result[0]["maxdate"]
    except Exception as e:
        current_app.logger.error(f"Error getting max buyback date: {e}")

    # Parse date parameters with validation
    y = get_int("y", max_date.year)
    m = get_int("m", max_date.month)
    d = get_int("d", max_date.day if m > 0 else 0)

    # Validate year range
    y = max(1991, min(y, date.today().year))

    # Validate month range
    if y == 1991 and m > 0:
        m = max(11, m)
    if y == date.today().year:
        m = min(m, date.today().month)
    m = max(0, min(m, 12))

    # Validate day range
    if m > 0:
        max_day = calendar.monthrange(y, m)[1]
        if y == 1991 and m == 11:
            d = max(d, 27) if d > 0 else 0
        d = max(0, min(d, max_day))
    else:
        d = 0

    # Calculate start and end dates for query
    if m == 0:
        # Yearly: whole year
        dstart = date(y, 1, 1)
        dend = date(y, 12, 31)
        freq = "y"
    elif d == 0:
        # Monthly: whole month
        dstart = date(y, m, 1)
        dend = date(y, m, calendar.monthrange(y, m)[1])
        freq = "m"
    else:
        # Daily: single day
        dstart = date(y, m, d)
        dend = date(y, m, d)
        freq = "d"

    # Sort mapping
    sort_map = {
        "namup": "name",
        "namdn": "name DESC",
        "codup": "stockCode",
        "coddn": "stockCode DESC",
        "valup": "value, name",
        "valdn": "value DESC, name",
        "curup": "currency, value DESC",
        "curdn": "currency, value",
        "stkdn": "stake DESC, name",
        "stkup": "stake, name",
    }
    ob = sort_map.get(sort_param, "value DESC, name")

    summaries = []
    try:
        table = "enigma.WebBuyBacks" if unadj else "enigma.buybacksAdj"

        # Query all buybacks in the period
        summaries = execute_query(
            f"""
            SELECT b.issueid, sl.stockCode, CONCAT(o.name1, ':', st.typeShort) AS name,
                   b.currency, b.shares, b.value,
                   os.outstanding, os.osd,
                   CASE WHEN os.outstanding > 0
                        THEN b.shares * 100.0 / os.outstanding
                        ELSE NULL END AS stake,
                   CASE WHEN b.shares > 0
                        THEN b.value / b.shares
                        ELSE NULL END AS price
            FROM (
                SELECT issueid, currency, SUM(shares) AS shares, SUM(value) AS value
                FROM {table}
                WHERE effDate BETWEEN %s AND %s
                GROUP BY issueID, currency
            ) b
            JOIN enigma.issue i ON b.issueid = i.ID1
            JOIN enigma.organisations o ON i.issuer = o.personid
            JOIN enigma.secTypes st ON i.typeID = st.typeID
            LEFT JOIN LATERAL (
                SELECT outstanding, atDate AS osd
                FROM enigma.issuedshares
                WHERE issueid = b.issueid AND atDate <= %s
                ORDER BY atDate DESC
                LIMIT 1
            ) os ON TRUE
            LEFT JOIN LATERAL (
                SELECT stockCode
                FROM enigma.stockListings
                WHERE issueid = b.issueid AND delistdate IS NULL
                ORDER BY firsttradedate DESC
                LIMIT 1
            ) sl ON TRUE
            ORDER BY {ob}
        """,
            (dstart, dend, dstart),
        )

    except Exception as e:
        current_app.logger.error(f"Error querying buyback summary: {e}")
        summaries = []

    return render_template(
        "dbpub/buybacksum.html",
        summaries=summaries,
        year=y,
        month=m,
        day=d,
        unadj=unadj,
        sort=sort_param,
        freq=freq,
        max_date=max_date,
    )


@bp.route("/buybackstime.asp")
def buybacks_time():
    """Buybacks lookback view - last N days"""
    from flask import current_app
    from datetime import date, timedelta

    # Get lookback period parameter (in days)
    hist = get_int("hist", 10)
    sort_param = request.args.get("sort", "valdn")

    # Get max buyback date
    max_date = date.today()
    try:
        result = execute_query("SELECT MAX(effDate) AS maxdate FROM enigma.WebBuybacks")
        if result and result[0]["maxdate"]:
            max_date = result[0]["maxdate"]
    except Exception as e:
        current_app.logger.error(f"Error getting max buyback date: {e}")

    # Calculate lookback start date
    lookback_start = max_date - timedelta(days=hist)

    # Sort mapping
    sort_map = {
        "namup": "name",
        "namdn": "name DESC",
        "valup": "sumValue, name",
        "valdn": "sumValue DESC, name",
        "curup": "currency, sumValue DESC",
        "curdn": "currency, sumValue",
    }
    ob = sort_map.get(sort_param, "sumValue DESC, name")

    time_series = []
    try:
        # Query buybacks since lookback date
        time_series = execute_query(
            f"""
            SELECT b.issueid, CONCAT(o.name1, ':', st.typeShort) AS name,
                   b.currency, SUM(b.value) AS sumValue
            FROM enigma.WebBuyBacks b
            JOIN enigma.issue i ON b.issueid = i.ID1
            JOIN enigma.organisations o ON i.issuer = o.personid
            JOIN enigma.secTypes st ON i.typeID = st.typeID
            WHERE b.effDate >= %s
            GROUP BY b.issueID, o.name1, st.typeShort, b.currency
            ORDER BY {ob}
        """,
            (lookback_start,),
        )

    except Exception as e:
        current_app.logger.error(f"Error querying buybacks time series: {e}")
        time_series = []

    return render_template(
        "dbpub/buybackstime.html",
        time_series=time_series,
        hist=hist,
        lookback_start=lookback_start,
        max_date=max_date,
        sort=sort_param,
    )


# Short selling routes
