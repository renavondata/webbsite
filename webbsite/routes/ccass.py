"""
CCASS routes - Webb-site CCASS Analysis System
Direct port from ccass/*.asp files
"""

from flask import Blueprint, render_template, request
from datetime import datetime
from webbsite.db import execute_query
from webbsite.asp_helpers import get_int, get_str, get_bool, ms_date

bp = Blueprint("ccass", __name__)


@bp.route("/bigchanges.asp")
def bigchanges():
    """Top CCASS changes - port of bigchanges.asp"""
    sort_param = request.args.get("sort", "chgdn")
    etf = get_bool("etf")  # Whether to include unit ETFs, default no
    d = request.args.get("d", "")  # Date parameter

    # SQL WHERE clause for ETF filtering
    sqletf = "" if etf else " AND o.orgType<>4"

    # Get latest CCASS date if none specified
    if not d:
        try:
            result = execute_query(
                "SELECT val FROM enigma.log WHERE name = 'CCASSdateDone'"
            )
            if result and result[0]["val"]:
                d = result[0]["val"]
            else:
                d = "2025-10-17"  # Fallback if log entry doesn't exist
        except Exception as ex:
            from flask import current_app

            current_app.logger.warning(f"Could not get CCASSdateDone from log: {ex}")
            d = "2025-10-17"  # Fallback date

    # Get max settlement date <= requested date
    try:
        result = execute_query(
            """
            SELECT MAX(settleDate) as max_date
            FROM ccass.calendar
            WHERE settleDate <= %s
        """,
            (d,),
        )
        if result and result[0]['max_date']:
            d = ms_date(result[0]['max_date'])
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app

        current_app.logger.error(f"Error getting settlement date for bigchanges: {ex}")
        # Use provided date if query fails

    # Determine sort order
    sort_orders = {
        "nameup": "name1, stkchg DESC",
        "namedn": "name1 DESC, stkchg",
        "partup": "partName, stkchg DESC",
        "partdn": "partName DESC, stkchg",
        "chgdn": "stkchg DESC, name1, partName",
        "chgup": "stkchg, name1, partName",
        "scup": "stockCode, stkchg DESC",
        "scdn": "stockCode DESC, stkchg",
    }
    ob = sort_orders.get(sort_param, "stkchg DESC")
    if sort_param not in sort_orders:
        sort_param = "chgdn"

    # Query bigchanges
    try:
        changes = execute_query(
            f"""
            SELECT b.issueID, b.partID, stkchg, prevDate,
                   o.name1, p.partName,
                   (SELECT stockCode
                    FROM enigma.stocklistings
                    WHERE issueID=b.issueID AND delistdate IS NULL
                    ORDER BY firsttradedate DESC LIMIT 1) AS stockCode,
                   s.typeShort
            FROM ccass.bigchanges b
            JOIN enigma.issue i ON b.issueID=i.id1
            JOIN enigma.organisations o ON i.issuer=o.personID
            JOIN ccass.participants p ON b.partID=p.partID
            JOIN enigma.secTypes s ON i.typeID=s.typeID
            WHERE b.atDate=%s{sqletf}
            ORDER BY {ob}
        """,
            (d,),
        )
    except Exception as e:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app

        current_app.logger.error(f"Error in bigchanges query: {e}")
        changes = []

    return render_template(
        "ccass/bigchanges.html", changes=changes, d=d, etf=etf, sort=sort_param
    )


@bp.route("/cconc.asp")
def cconc():
    """
    CCASS concentration analysis - port of cconc.asp
    Shows concentration of holdings in top 5, top 10 participants

    Query params:
    - d: date (default: latest CCASS date)
    - etf: include ETFs (default: false)
    - sort: sorting column

    Tables used: ccass.dailylog, issue, organisations, issuedshares, sectypes
    """
    sort_param = request.args.get("sort", "cp5dn")
    etf = get_bool("etf")  # Whether to include unit ETFs, default no
    d = request.args.get("d", "")

    # SQL WHERE clause for ETF filtering
    sqletf = "" if etf else " AND o.orgType<>4"

    # Get latest CCASS date if none specified
    if not d:
        try:
            result = execute_query(
                "SELECT val FROM enigma.log WHERE name = 'CCASSdateDone'"
            )
            if result and result[0]["val"]:
                d = result[0]["val"]
            else:
                d = "2025-10-17"  # Fallback if log entry doesn't exist
        except Exception as ex:
            from flask import current_app

            current_app.logger.warning(f"Could not get CCASSdateDone from log: {ex}")
            d = "2025-10-17"  # Fallback date

    # Determine sort order
    sort_orders = {
        "nameup": "Name1",
        "namedn": "Name1 DESC",
        "cp5up": "cp5",
        "cp5dn": "cp5 DESC",
        "cp10up": "cp10",
        "cp10dn": "cp10 DESC",
        "cp10ipdn": "cp10ip DESC",
        "cp10ipup": "cp10ip",
        "stakdn": "stake DESC",
        "stakup": "stake",
        "scup": "stockCode",
        "scdn": "stockCode DESC",
    }
    ob = sort_orders.get(sort_param, "cp5 DESC")
    if sort_param not in sort_orders:
        sort_param = "cp5dn"

    # Query concentration data from dailylog
    # Note: Need to join with issuedshares to get outstanding shares as of snapshot date
    try:
        concentrations = execute_query(
            f"""
            SELECT
                d.issueID,
                o.name1,
                st.typeShort,
                CAST(d.c5 AS NUMERIC) / NULLIF(d.CIPhldg + d.intermedhldg, 0) AS cp5,
                CAST(d.c10 AS NUMERIC) / NULLIF(d.CIPhldg + d.intermedhldg, 0) AS cp10,
                (SELECT stockCode
                 FROM enigma.stocklistings
                 WHERE issueid = d.issueID AND delistdate IS NULL
                 ORDER BY FirstTradeDate DESC LIMIT 1) AS stockCode,
                CAST(d.c10 + d.NCIPhldg AS NUMERIC) / NULLIF(d.CIPhldg + d.IntermedHldg + d.NCIPHldg, 0) AS cp10ip,
                CAST(d.CIPhldg + d.IntermedHldg + d.NCIPHldg AS NUMERIC) / NULLIF(iss.outstanding, 0) AS stake
            FROM ccass.dailylog d
            JOIN enigma.issue i ON d.issueID = i.id1
            JOIN enigma.organisations o ON i.issuer = o.personID
            JOIN enigma.secTypes st ON i.typeID = st.typeID
            JOIN (
                SELECT issueID, MAX(atDate) AS maxDate
                FROM enigma.issuedshares
                WHERE atDate <= %s
                GROUP BY issueID
            ) t3 ON d.issueID = t3.issueID
            JOIN enigma.issuedshares iss ON t3.issueID = iss.issueID AND t3.maxDate = iss.atDate
            WHERE d.atDate = %s{sqletf}
              AND d.c5 > 0
              AND d.CIPhldg + d.intermedhldg > 0
            ORDER BY {ob}
        """,
            (d, d),
        )
    except Exception as ex:
        from flask import current_app

        current_app.logger.error(f"Error in cconc query: {ex}")
        concentrations = []

    title = f"CCASS concentration on {d}"

    return render_template(
        "ccass/cconc.html",
        concentrations=concentrations,
        title=title,
        d=d,
        etf=etf,
        sort=sort_param,
    )


@bp.route("/ipstakes.asp")
def ipstakes():
    """
    CCASS Investor Participant stakes - port of ipstakes.asp

    Query params:
    - d: date (default: latest CCASS date)
    - sort: sorting column

    Tables used: ccass.dailylog, ccass.quotes, issue, organisations, issuedshares, sectypes
    """
    sort_param = request.args.get("sort", "ipsdn")
    d = request.args.get("d", "")

    # Get latest CCASS date if not specified
    if not d:
        try:
            result = execute_query("SELECT MAX(atDate) as max_date FROM ccass.dailylog")
            if result and result[0]['max_date']:
                d = ms_date(result[0]['max_date'])
            else:
                d = "2025-10-17"  # Fallback
        except Exception as ex:
            from flask import current_app

            current_app.logger.error(f"Error getting latest CCASS date: {ex}")
            d = "2025-10-17"

    # Get max settlement date <= requested date
    try:
        result = execute_query(
            """
            SELECT MAX(settleDate) as max_date
            FROM ccass.calendar
            WHERE settleDate <= %s
        """,
            (d,),
        )
        if result and result[0]['max_date']:
            d = ms_date(result[0]['max_date'])
    except Exception as ex:
        from flask import current_app

        current_app.logger.error(f"Error getting settlement date: {ex}")

    # Sort order mapping
    sort_orders = {
        "nipcup": "NCIPcnt, stockName",
        "nipcdn": "NCIPcnt DESC, stockName",
        "cipcup": "CIPcnt, stockName",
        "cipcdn": "CIPcnt DESC, stockName",
        "ipcup": "IPcnt, stockName",
        "ipcdn": "IPcnt DESC, stockName",
        "nipsup": "NCIPstake, stockName",
        "nipsdn": "NCIPstake DESC, stockName",
        "cipsup": "CIPstake, stockName",
        "cipsdn": "CIPstake DESC, stockName",
        "ipsup": "IPstake",
        "ipsdn": "IPstake DESC",
        "nameup": "stockName",
        "namedn": "stockName DESC",
        "codeup": "stockCode",
        "codedn": "stockCode DESC",
        "vlndn": "vln DESC, stockName",
        "vlnup": "vln, stockName",
    }
    ob = sort_orders.get(sort_param, "IPstake DESC, stockName")
    if sort_param not in sort_orders:
        sort_param = "ipsdn"

    # Query IP stakes
    try:
        stakes_result = execute_query(
            f"""
            SELECT o.Name1 || ':' || st.typeshort AS stockName,
                   i.id1 AS issueID,
                   (SELECT stockCode FROM enigma.stocklistings
                    WHERE issueid = i.id1 AND delistdate IS NULL
                    ORDER BY FirstTradeDate DESC LIMIT 1) AS stockCode,
                   dl.NCIPcnt,
                   dl.CIPcnt,
                   dl.NCIPcnt + dl.CIPcnt AS IPcnt,
                   dl.NCIPhldg / s.outstanding AS NCIPstake,
                   dl.CIPhldg / s.outstanding AS CIPstake,
                   (dl.NCIPhldg + dl.CIPhldg) / s.outstanding AS IPstake,
                   CASE WHEN q.susp THEN
                       (SELECT closing FROM ccass.quotes
                        WHERE atDate <= %s AND issueid = dl.issueID AND closing <> 0
                        ORDER BY atDate DESC LIMIT 1)
                   ELSE q.closing
                   END * (dl.NCIPhldg + dl.CIPhldg) / 1000000 AS vln
            FROM ccass.dailylog dl
            JOIN enigma.issue i ON i.id1 = dl.issueID
            JOIN ccass.quotes q ON q.issueID = dl.issueID AND q.atDate = dl.atDate
            JOIN enigma.organisations o ON i.issuer = o.personid
            JOIN enigma.issuedshares s ON s.issueID = dl.issueID
            JOIN enigma.secTypes st ON st.typeID = i.typeID
            JOIN (SELECT issueID, MAX(atDate) AS MaxIssueDate
                  FROM enigma.issuedshares
                  WHERE atDate <= %s
                  GROUP BY issueID) t4 ON s.issueID = t4.issueID AND s.atDate = t4.MaxIssueDate
            WHERE dl.atDate = %s
            ORDER BY {ob}
        """,
            (d, d, d),
        )

        stakes = []
        for row in stakes_result:
            stakes.append(
                {
                    "stockName": row["stockname"],
                    "issueID": row["issueid"],
                    "stockCode": row["stockcode"],
                    "NCIPcnt": row["ncipcnt"],
                    "CIPcnt": row["cipcnt"],
                    "IPcnt": row["ipcnt"],
                    "NCIPstake": row["ncipstake"],
                    "CIPstake": row["cipstake"],
                    "IPstake": row["ipstake"],
                    "vln": row["vln"],
                }
            )
    except Exception as ex:
        from flask import current_app

        current_app.logger.error(f"Error in ipstakes query: {ex}", exc_info=True)
        stakes = []

    return render_template("ccass/ipstakes.html", stakes=stakes, d=d, sort=sort_param)


@bp.route("/cparticipants.asp")
def cparticipants():
    """
    CCASS participants list - port of cparticipants.asp
    Simple table of all CCASS participants who have had holdings

    Query params:
    - sort: sorting column (nameup/namedn, ccidup/cciddn)

    Tables used: ccass.participants
    """
    sort_param = request.args.get("sort", "nameup")

    # Determine sort order
    sort_orders = {
        "nameup": "partName",
        "namedn": "partName DESC",
        "ccidup": "CCASSID, partName",
        "cciddn": "CCASSID DESC, partName DESC",
    }
    ob = sort_orders.get(sort_param, "partName")
    if sort_param not in sort_orders:
        sort_param = "nameup"

    # Query CCASS participants who have had holdings
    try:
        result = execute_query(
            f"""
            SELECT CCASSID, partName, partID
            FROM ccass.participants
            WHERE hadHoldings = TRUE
            ORDER BY {ob}
        """
        )

        participants = []
        for row in result:
            participants.append(
                {
                    "CCASSID": row["ccassid"],
                    "partName": row["partname"],
                    "partID": row["partid"],
                }
            )
    except Exception as ex:
        from flask import current_app

        current_app.logger.error(f"Error in cparticipants query: {ex}", exc_info=True)
        participants = []

    return render_template(
        "ccass/cparticipants.html", participants=participants, sort=sort_param
    )


@bp.route("/cholder.asp")
def cholder():
    """
    Holdings by participant - port of cholder.asp
    Shows all stocks held by a specific CCASS participant

    Query params:
    - part: partID (e.g., 1323=Shanghai-HK connect, 1456=Shenzhen-HK connect)
    - d: date
    - z: show zero holdings (default: false)
    - sort: sorting column

    Tables used: ccass.parthold, participants, issue, organisations, stocklistings
    """
    from flask import current_app

    part = get_int("part", 0)
    d = request.args.get("d", "")
    z = get_bool("z")  # Show zero/former holdings
    sort_param = request.args.get("sort", "stakdn")

    # Get latest CCASS date if none specified
    if not d:
        try:
            result = execute_query(
                "SELECT value FROM enigma.log WHERE key='CCASSdateDone'"
            )
            if result and result[0]["value"]:
                d = result[0]["value"]
            else:
                d = "2025-10-17"  # Fallback
        except:
            d = "2025-10-17"

    # Get max settlement date <= requested date
    try:
        result = execute_query(
            """
            SELECT MAX(settleDate)
            FROM ccass.calendar
            WHERE settleDate <= %s
        """,
            (d,),
        )
        if result and result[0]["max"]:
            d = ms_date(result[0]["max"])
    except Exception as ex:
        current_app.logger.error(f"Error getting settlement date for cholder: {ex}")

    # Get participant details
    participant_name = "No participant selected"
    participant_ccassid = None
    person_id = None
    is_org = False

    if part > 0:
        try:
            result = execute_query(
                """
                SELECT partName, personID, CCASSID
                FROM ccass.participants
                WHERE partID = %s
            """,
                (part,),
            )
            if result:
                participant_name = result[0]["partname"]
                person_id = result[0]["personid"]
                participant_ccassid = result[0]["ccassid"]
                # Check if organization (simplified - could query organisations table)
                is_org = person_id is not None
        except Exception as ex:
            current_app.logger.error(f"Error getting participant: {ex}")
            participant_name = "Unknown participant"

    # Determine sort order
    sort_orders = {
        "nameup": "name1, stake DESC",
        "namedn": "name1 DESC, stake DESC",
        "partup": "partName, stake DESC",
        "partdn": "partName DESC, stake DESC",
        "chgdn": "stake DESC, name1",
        "chgup": "stake, name1",
        "stakdn": "stake DESC, name1",
        "stakup": "stake, name1",
        "codeup": "lastCode, stake DESC",
        "codedn": "lastCode DESC, stake DESC",
        "holdup": "holding, name1",
        "holddn": "holding DESC, name1",
        "valndn": "valn DESC, name1",
        "valnup": "valn, name1",
        "datedn": "atDate DESC, name1",
        "dateup": "atDate, name1",
    }
    ob = sort_orders.get(sort_param, "stake DESC, name1")
    if sort_param not in sort_orders:
        sort_param = "stakdn"

    # Build WHERE clause for zero holdings filter
    holding_filter = "" if z else "AND ph.holding <> 0"

    # Query holdings
    holdings = []
    if part > 0:
        try:
            sql = f"""
                SELECT ph.issueID, ph.holding, ph.atDate,
                       o.name1, o.personID,
                       st.typeShort,
                       (SELECT sl.stockCode
                        FROM enigma.stocklistings sl
                        WHERE sl.issueID = ph.issueID
                          AND sl.delistdate IS NULL
                        ORDER BY sl.firsttradedate DESC
                        LIMIT 1) AS lastCode,
                       CASE WHEN ph.holding > 0 AND os.shares > 0
                            THEN ph.holding / os.shares
                            ELSE 0
                       END AS stake,
                       CASE WHEN q.closing > 0
                            THEN ph.holding * q.closing
                            ELSE 0
                       END AS valn,
                       CASE WHEN q.susp OR sl2."2ndCtr"
                            THEN TRUE
                            ELSE FALSE
                       END AS susp
                FROM ccass.parthold ph
                JOIN enigma.issue i ON ph.issueID = i.id1
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                LEFT JOIN enigma.issuedshares os ON ph.issueID = os.issueID
                    AND ph.atDate = os.atDate
                LEFT JOIN ccass.quotes q ON ph.issueID = q.issueID
                    AND ph.atDate = q.atDate
                LEFT JOIN enigma.stocklistings sl2 ON ph.issueID = sl2.issueID
                    AND ph.atDate >= sl2.firsttradedate
                    AND (sl2.delistdate IS NULL OR ph.atDate < sl2.delistdate)
                WHERE ph.partID = %s
                  AND ph.atDate = %s
                  {holding_filter}
                ORDER BY {ob}
            """
            results = execute_query(sql, (part, d))

            for row in results:
                holdings.append(
                    {
                        "issueID": row["issueid"],
                        "holding": row["holding"],
                        "atDate": row["atdate"],
                        "name1": row["name1"],
                        "personID": row["personid"],
                        "typeShort": row["typeshort"],
                        "lastCode": row["lastcode"],
                        "stake": row["stake"],
                        "valn": row["valn"],
                        "susp": row["susp"],
                    }
                )
        except Exception as ex:
            current_app.logger.error(
                f"Error querying holdings for participant {part}: {ex}"
            )
            holdings = []

    return render_template(
        "ccass/cholder.html",
        part=part,
        participant_name=participant_name,
        participant_ccassid=participant_ccassid,
        person_id=person_id,
        is_org=is_org,
        holdings=holdings,
        d=d,
        z=z,
        sort=sort_param,
    )


@bp.route("/choldings.asp")
def choldings():
    """
    Holdings for a specific issue - port of choldings.asp
    Shows all CCASS participants holding a specific stock

    Query params:
    - i: issueID
    - sc: stock code (alternative to issueID)
    - d: date
    - z: show zero holdings (default: false)
    - sort: sorting column

    Tables used: ccass.holdings, participants, issue, dailylog, issuedshares
    """
    issue_id = get_int("i", 0)
    stock_code = get_str("sc", "")
    d = request.args.get("d", "")
    z = get_bool("z")  # Show zero/former holdings
    sort_param = request.args.get("sort", "holddn")

    if not d:
        d = "2025-10-17"  # Placeholder

    # Determine sort order
    sort_orders = {
        "nameup": "partName",
        "namedn": "partName DESC",
        "ccidup": "CCASSID, partName",
        "cciddn": "CCASSID DESC, partName",
        "holdup": "holding, partName",
        "holddn": "holding DESC, partName",
    }
    ob = sort_orders.get(sort_param, "holding DESC, partName")
    if sort_param not in sort_orders:
        sort_param = "holddn"

    # Look up stock name and personID
    stock_name = "No stock specified"
    person_id = 0
    if issue_id > 0:
        try:
            result = execute_query(
                """
                SELECT o.name1 || ':' || st.typeShort AS stockName, o.personID
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                WHERE i.id1 = %s
            """,
                (issue_id,),
            )
            if result:
                stock_name = result[0]["stockname"]
                person_id = result[0]["personid"]
        except Exception as ex:
            from flask import current_app

            current_app.logger.error(f"Error looking up stock: {ex}")
            stock_name = f"Stock {issue_id}"

    # Get latest CCASS date for this issue
    if issue_id > 0 and d:
        try:
            result = execute_query(
                """
                SELECT MAX(atDate) AS maxDate
                FROM ccass.dailylog
                WHERE issueid = %s AND atDate <= %s
            """,
                (issue_id, d),
            )
            if result and result[0]["maxdate"]:
                d = ms_date(result[0]["maxdate"])
        except Exception as ex:
            from flask import current_app

            current_app.logger.error(f"Error getting CCASS date: {ex}")

    # Query summary data from dailylog
    summary = {}
    if issue_id > 0 and d:
        try:
            result = execute_query(
                """
                SELECT NCIPhldg, NCIPcnt, BrokHldg, CustHldg, CIPHldg, intermedHldg
                FROM ccass.dailylog
                WHERE issueid = %s AND atDate <= %s
                ORDER BY atDate DESC
                LIMIT 1
            """,
                (issue_id, d),
            )
            if result:
                summary = {
                    "NCIPhldg": (
                        float(result[0]["nciphldg"]) if result[0]["nciphldg"] else 0
                    ),
                    "NCIPcnt": (
                        float(result[0]["ncipcnt"]) if result[0]["ncipcnt"] else 0
                    ),
                    "BrokHldg": (
                        float(result[0]["brokhldg"]) if result[0]["brokhldg"] else 0
                    ),
                    "CustHldg": (
                        float(result[0]["custhldg"]) if result[0]["custhldg"] else 0
                    ),
                    "CIPHldg": (
                        float(result[0]["ciphldg"]) if result[0]["ciphldg"] else 0
                    ),
                    "intermedHldg": (
                        float(result[0]["intermedhldg"])
                        if result[0]["intermedhldg"]
                        else 0
                    ),
                }
        except Exception as ex:
            from flask import current_app

            current_app.logger.error(f"Error getting summary data: {ex}")

    # Get issued shares as of date
    issued = 0
    if issue_id > 0 and d:
        try:
            result = execute_query(
                """
                SELECT outstanding
                FROM enigma.issuedshares
                WHERE issueid = %s AND atDate <= %s
                ORDER BY atDate DESC
                LIMIT 1
            """,
                (issue_id, d),
            )
            if result and result[0]["outstanding"]:
                issued = float(result[0]["outstanding"])
        except Exception as ex:
            from flask import current_app

            current_app.logger.error(f"Error getting issued shares: {ex}")

    # Query detailed holdings (latest for each participant)
    holdings = []
    if issue_id > 0 and d:
        # Build WHERE clause for zero holdings filter
        zero_filter = "" if z else " AND h.holding <> 0"

        try:
            holdings_result = execute_query(
                f"""
                SELECT h.partID, h.holding, h.atDate, p.partName, p.CCASSID
                FROM ccass.holdings h
                JOIN (
                    SELECT partID AS MDpartID, MAX(atDate) AS maxDate
                    FROM ccass.holdings
                    WHERE issueid = %s AND atDate <= %s
                    GROUP BY MDpartID
                ) AS t2 ON h.partID = t2.MDpartID AND h.atDate = t2.maxDate
                JOIN ccass.participants p ON p.partID = h.partID
                WHERE h.issueID = %s{zero_filter}
                ORDER BY {ob}
            """,
                (issue_id, d, issue_id),
            )

            for row in holdings_result:
                holdings.append(
                    {
                        "partID": row["partid"],
                        "holding": float(row["holding"]) if row["holding"] else 0,
                        "atDate": row["atdate"],
                        "partName": row["partname"],
                        "CCASSID": row["ccassid"],
                    }
                )
        except Exception as ex:
            from flask import current_app

            current_app.logger.error(f"Error in choldings query: {ex}", exc_info=True)

    return render_template(
        "ccass/choldings.html",
        issue_id=issue_id,
        stock_name=stock_name,
        person_id=person_id,
        holdings=holdings,
        summary=summary,
        issued=issued,
        d=d,
        z=z,
        sort=sort_param,
    )


@bp.route("/bigchangesissue.asp")
def bigchangesissue():
    """
    Big changes in CCASS holders for a specific stock

    Query params:
    - i: issueID
    - sc: stock code (alternative to issueID)
    - sort: sorting column

    Tables used: ccass.bigchanges, ccass.participants
    """
    issue_id = request.args.get("i", type=int, default=0)
    stock_code = request.args.get("sc", "")
    sort_param = request.args.get("sort", "datedn")

    # Sort order mapping
    sort_orders = {
        "datedn": "atDate DESC, stkchg DESC",
        "dateup": "atDate, stkchg",
        "partup": "partName, atDate DESC",
        "partdn": "partName DESC, atDate",
        "chgdn": "abs(stkchg) DESC, partName",
        "chgup": "abs(stkchg), partName",
    }
    ob = sort_orders.get(sort_param, "atDate DESC, stkchg DESC")
    if sort_param not in sort_orders:
        sort_param = "datedn"

    # If stock_code provided, look up issueID from stocklistings
    if stock_code and not issue_id:
        try:
            result = execute_query(
                """
                SELECT issueID FROM enigma.stocklistings
                WHERE stockCode = %s AND delistdate IS NULL
                ORDER BY FirstTradeDate DESC LIMIT 1
            """,
                (stock_code.zfill(5),),
            )
            if result:
                issue_id = result[0]["issueid"]
        except Exception as ex:
            from flask import current_app

            current_app.logger.error(f"Error looking up stock code: {ex}")

    # Look up stock name from organisations table
    stock_name = "No stock specified"
    person_id = 0
    if issue_id > 0:
        try:
            result = execute_query(
                """
                SELECT o.Name1, o.personID
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                WHERE i.id1 = %s
            """,
                (issue_id,),
            )
            if result:
                stock_name = result[0]["name1"]
                person_id = result[0]["personid"]
        except Exception as ex:
            from flask import current_app

            current_app.logger.error(f"Error looking up stock name: {ex}")
            stock_name = f"Stock {issue_id}"

    # Query bigchanges for this issue
    try:
        changes_result = execute_query(
            f"""
            SELECT b.partID, b.stkchg, b.atDate, b.prevDate, p.partName
            FROM ccass.bigchanges b
            JOIN ccass.participants p ON b.partID = p.partID
            WHERE b.issueID = %s
            ORDER BY {ob}
        """,
            (issue_id,),
        )

        changes = []
        for row in changes_result:
            changes.append(
                {
                    "partID": row["partid"],
                    "stkchg": row["stkchg"],
                    "atDate": row["atdate"],
                    "prevDate": row["prevdate"],
                    "partName": row["partname"],
                }
            )
    except Exception as ex:
        from flask import current_app

        current_app.logger.error(f"Error in bigchangesissue query: {ex}", exc_info=True)
        changes = []

    return render_template(
        "ccass/bigchangesissue.html",
        issue_id=issue_id,
        stock_name=stock_name,
        person_id=person_id,
        changes=changes,
        sort=sort_param,
    )


@bp.route("/bigchangespart.asp")
def bigchangespart():
    """
    Big changes for a specific CCASS participant

    Query params:
    - part: partID of participant
    - sort: sorting column

    Tables used: ccass.bigchanges, ccass.participants, issue, organisations
    """
    part_id = request.args.get("part", type=int, default=0)
    sort_param = request.args.get("sort", "datedn")

    # Sort order mapping
    sort_orders = {
        "datedn": "atDate DESC, stkchg DESC",
        "dateup": "atDate, stkchg",
        "stckup": "name1, atDate DESC",
        "stckdn": "name1 DESC, atDate",
        "chgdn": "abs(stkchg) DESC, name1",
        "chgup": "abs(stkchg), name1",
    }
    ob = sort_orders.get(sort_param, "atDate DESC, stkchg DESC")
    if sort_param not in sort_orders:
        sort_param = "datedn"

    # Look up participant name and person
    part_name = "No participant specified"
    person_id = 0
    if part_id > 0:
        try:
            result = execute_query(
                """
                SELECT partName, personID
                FROM ccass.participants
                WHERE partID = %s
            """,
                (part_id,),
            )
            if result:
                part_name = result[0]["partname"]
                person_id = result[0]["personid"] if result[0]["personid"] else 0
        except Exception as ex:
            from flask import current_app

            current_app.logger.error(f"Error looking up participant: {ex}")
            part_name = f"Participant {part_id}"

    # Query bigchanges for this participant (excluding ETFs, abs(stkchg) >= 5%)
    try:
        changes_result = execute_query(
            f"""
            SELECT b.issueID, b.stkchg, b.atDate, b.prevDate,
                   o.name1 || ':' || st.typeShort AS issueName,
                   (SELECT stockCode FROM enigma.stocklistings
                    WHERE issueid = b.issueID
                      AND (delistdate IS NULL OR delistdate > b.atDate)
                      AND (FirstTradeDate IS NULL OR FirstTradeDate <= b.atDate)
                    ORDER BY FirstTradeDate DESC LIMIT 1) AS stockCode
            FROM ccass.bigchanges b
            JOIN enigma.issue i ON b.issueID = i.id1
            JOIN enigma.organisations o ON i.issuer = o.personID
            JOIN enigma.secTypes st ON i.typeID = st.typeID
            WHERE b.partID = %s
              AND o.orgType <> 4
              AND ABS(b.stkchg) >= 0.05
            ORDER BY {ob}
        """,
            (part_id,),
        )

        changes = []
        for row in changes_result:
            changes.append(
                {
                    "issueID": row["issueid"],
                    "stkchg": row["stkchg"],
                    "atDate": row["atdate"],
                    "prevDate": row["prevdate"],
                    "issueName": row["issuename"],
                    "stockCode": row["stockcode"],
                }
            )
    except Exception as ex:
        from flask import current_app

        current_app.logger.error(f"Error in bigchangespart query: {ex}", exc_info=True)
        changes = []

    return render_template(
        "ccass/bigchangespart.html",
        part_id=part_id,
        part_name=part_name,
        changes=changes,
        sort=sort_param,
    )


@bp.route("/chistory.asp")
def chistory():
    """
    CCASS holdings history with Highstock chart - port of chistory.asp

    Query params:
    - i: issueID
    - sc: stock code (alternative)
    - part: partID of participant
    - s: show mode (0=chart & table, 1=chart only, 2=table only)
    - a: adjust for splits (0/1)
    - p: use price on (0=trade date, 1=holding date)
    - o: include rows with no change (0/1)

    Tables used: ccass.holdings, ccass.quotes, ccass.participants, ccass.calendar
    """
    from flask import current_app, session
    import json
    from datetime import datetime

    issue_id = get_int("i", 0)
    stock_code = get_str("sc", "")
    part_id = get_int("part", 0)

    # Lookup stock if stock code provided
    if not issue_id and stock_code:
        try:
            result = execute_query(
                """
                SELECT issueID FROM enigma.stocklistings
                WHERE stockCode = %s AND delistdate IS NULL
                ORDER BY firsttradedate DESC LIMIT 1
            """,
                (stock_code,),
            )
            if result:
                issue_id = result[0]["issueid"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock code: {ex}")

    # Session-managed parameters
    if request.args.get("s") is not None:
        s = get_int("s", 0)
        session["showdata"] = s
    else:
        s = session.get("showdata", 0)

    if request.args.get("o") is not None:
        o = get_bool("o")
        session["nochange"] = o
    else:
        o = session.get("nochange", False)

    if request.args.get("a") is not None:
        a = get_bool("a")
        session["splitAdj"] = a
    else:
        a = session.get("splitAdj", True)  # Default to adjusted

    if request.args.get("p") is not None:
        p = get_bool("p")
        session["pHolding"] = p
    else:
        p = session.get("pHolding", False)  # Default to trade date

    # Get stock name and person
    stock_name = "No stock specified"
    person_id = 0
    last_hold_date = None
    if issue_id > 0:
        try:
            from webbsite.asp_helpers import issue_name_func

            stock_name, person_id = issue_name_func(issue_id)

            # Get last holding date for this participant
            last_date_result = execute_query(
                """
                SELECT MAX(atDate) AS d
                FROM ccass.holdings
                WHERE issueID = %s AND partID = %s
            """,
                (issue_id, part_id),
            )
            if last_date_result and last_date_result[0]["d"]:
                last_hold_date = last_date_result[0]["d"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock: {ex}")

    # Get participant name
    part_name = "No participant specified"
    if part_id > 0:
        try:
            part_result = execute_query(
                """
                SELECT partname FROM ccass.participants WHERE partID = %s
            """,
                (part_id,),
            )
            if part_result:
                part_name = part_result[0]["partname"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up participant: {ex}")

    # Build SQL query based on parameters
    history = []
    price_data = []
    holdings_data = []

    if issue_id > 0 and part_id > 0:
        try:
            # Four different SQL queries based on (a, p) combinations
            if not a:
                # Don't adjust for splits and bonus issues
                if p:
                    # Use prices on holding date
                    sql = """
                        SELECT q.atDate, closing, holding,
                               enigma.outstanding(%s, q.atDate) AS os,
                               tradeDate, 1 as adjBonus
                        FROM ccass.quotes q
                        JOIN ccass.calendar c ON q.atDate = c.settleDate
                        LEFT JOIN ccass.holdings h ON q.atDate = h.atDate
                                  AND h.partID = %s AND h.issueID = %s
                        WHERE q.issueID = %s AND NOT c.deferred
                          AND settleDate >= '2007-06-26'
                        ORDER BY atDate
                    """
                    params = (issue_id, part_id, issue_id, issue_id)
                else:
                    # Use prices on trading date
                    sql = """
                        SELECT settleDate AS atDate, closing,
                               (SELECT holding FROM ccass.holdings
                                WHERE atDate <= c.settleDate AND partID = %s AND issueID = %s
                                ORDER BY atDate DESC LIMIT 1) AS holding,
                               enigma.outstanding(%s, settleDate) AS os,
                               tradeDate, 1 as adjBonus
                        FROM ccass.quotes q
                        JOIN ccass.calendar c ON q.atDate = c.tradeDate
                        WHERE q.issueID = %s AND NOT c.deferred
                          AND settleDate >= '2007-06-26'
                        ORDER BY tradeDate
                    """
                    params = (part_id, issue_id, issue_id, issue_id)
            else:
                # Adjust for splits and bonus issues
                if p:
                    # Use prices on holding date
                    sql = """
                        SELECT atDate, closing * scripAdj as closing,
                               ROUND((holding / scripAdj / adjSplit)::numeric, 0) AS holding,
                               enigma.outstanding(%s, atDate) / scripAdj AS os,
                               tradeDate, adjBonus
                        FROM (
                            SELECT holding, q.atDate,
                                   enigma.splitAdj(%s, q.atDate) AS scripAdj,
                                   closing, tradeDate,
                                   COALESCE((SELECT adjust FROM enigma.events
                                             WHERE issueID = %s AND eventType = 4
                                               AND cancelDate IS NULL AND exDate = c.settleDate), 1) AS adjSplit,
                                   COALESCE((SELECT adjust FROM enigma.events
                                             WHERE issueID = %s AND eventType = 5
                                               AND cancelDate IS NULL AND exDate = c.settleDate), 1) AS adjBonus
                            FROM ccass.quotes q
                            JOIN ccass.calendar c ON q.atDate = c.settleDate
                            LEFT JOIN ccass.holdings h ON q.atDate = h.atDate
                                      AND h.partID = %s AND h.issueID = %s
                            WHERE q.issueID = %s AND NOT c.deferred
                              AND c.settleDate >= '2007-06-26'
                        ) AS t1
                        ORDER BY atDate
                    """
                    params = (
                        issue_id,
                        issue_id,
                        issue_id,
                        issue_id,
                        part_id,
                        issue_id,
                        issue_id,
                    )
                else:
                    # Use prices on trading date
                    sql = """
                        SELECT atDate, closing * priceAdj as closing,
                               ROUND((holding / holdAdj / adjSplit)::numeric, 0) AS holding,
                               enigma.outstanding(%s, atDate) / holdAdj AS os,
                               tradeDate, adjBonus
                        FROM (
                            SELECT (SELECT holding FROM ccass.holdings
                                    WHERE atDate <= c.settleDate AND partID = %s AND issueID = %s
                                    ORDER BY atDate DESC LIMIT 1) AS holding,
                                   c.settleDate AS atDate,
                                   enigma.splitAdj(%s, c.tradeDate) AS priceAdj,
                                   enigma.splitAdj(%s, c.settleDate) AS holdAdj,
                                   closing, tradeDate,
                                   COALESCE((SELECT adjust FROM enigma.events
                                             WHERE issueID = %s AND eventType = 4
                                               AND cancelDate IS NULL AND exDate = c.settleDate), 1) AS adjSplit,
                                   COALESCE((SELECT adjust FROM enigma.events
                                             WHERE issueID = %s AND eventType = 5
                                               AND cancelDate IS NULL AND exDate = c.settleDate), 1) AS adjBonus
                            FROM ccass.quotes q
                            JOIN ccass.calendar c ON q.atDate = c.tradeDate
                            WHERE q.issueID = %s AND NOT c.deferred
                              AND c.settleDate >= '2007-06-26'
                        ) AS t1
                        ORDER BY tradeDate
                    """
                    params = (
                        issue_id,
                        part_id,
                        issue_id,
                        issue_id,
                        issue_id,
                        issue_id,
                        issue_id,
                        issue_id,
                    )

            results = execute_query(sql, params)

            if results:
                # Convert to list for processing
                data = []
                for row in results:
                    data.append(
                        {
                            "atDate": row["atdate"],
                            "closing": float(row["closing"]) if row["closing"] else 0,
                            "holding": (
                                float(row["holding"])
                                if row["holding"] is not None
                                else None
                            ),
                            "os": float(row["os"]) if row["os"] else None,
                            "tradeDate": row["tradedate"],
                            "adjBonus": (
                                float(row["adjbonus"]) if row["adjbonus"] else 1
                            ),
                        }
                    )

                if data:
                    # Fill in blanks with previous price and holding
                    last_close = data[0]["closing"]
                    if data[0]["holding"] is None:
                        last_hold = 0
                        data[0]["holding"] = 0
                    else:
                        last_hold = data[0]["holding"]

                    for i in range(1, len(data)):
                        # Fill missing prices
                        if data[i]["closing"] == 0:
                            data[i]["closing"] = last_close
                        else:
                            last_close = data[i]["closing"]

                        # Fill missing holdings (adjust for bonus issue)
                        if data[i]["holding"] is None:
                            last_hold = last_hold * data[i]["adjBonus"]
                            data[i]["holding"] = last_hold
                        else:
                            last_hold = data[i]["holding"]

                    # Build JavaScript arrays for chart
                    price_js = []
                    holdings_js = []
                    for i, row in enumerate(data):
                        # Use holding date or trade date based on parameter p
                        date_for_chart = row["atDate"] if p else row["tradeDate"]
                        # Convert date to datetime if needed
                        if hasattr(date_for_chart, "timestamp"):
                            timestamp = int(date_for_chart.timestamp() * 1000)
                        else:
                            # date object - convert to datetime at midnight
                            dt = datetime.combine(date_for_chart, datetime.min.time())
                            timestamp = int(dt.timestamp() * 1000)

                        # Add price data
                        price_js.append([timestamp, round(row["closing"], 3)])

                        # Add holdings data (skip last point if using trade date)
                        if p or i < len(data) - 1:
                            holdings_js.append([timestamp, round(row["holding"], 0)])

                    price_data = price_js
                    holdings_data = holdings_js

                    # Build table data with changes
                    for i in range(len(data) - 1, -1, -1):  # Reverse order for display
                        row = data[i]
                        change = None
                        if i > 0:
                            change = row["holding"] - data[i - 1]["holding"]

                        # Filter based on 'o' parameter and last_hold_date
                        if (
                            o
                            or change is None
                            or change != 0
                            or (last_hold_date and row["atDate"] > last_hold_date)
                        ):
                            pct_outstanding = (
                                (row["holding"] / row["os"])
                                if row["os"] and row["os"] > 0
                                else None
                            )
                            value = (
                                row["holding"] * row["closing"]
                                if row["holding"] and row["closing"]
                                else None
                            )

                            history.append(
                                {
                                    "atDate": row["atDate"],
                                    "closing": row["closing"],
                                    "holding": row["holding"],
                                    "change": change,
                                    "pct_outstanding": pct_outstanding,
                                    "value": value,
                                    "tradeDate": row["tradeDate"],
                                }
                            )

        except Exception as ex:
            current_app.logger.error(
                f"Error querying holdings history: {ex}", exc_info=True
            )
            history = []

    # Get HK listings for navigation
    hk_listings = []
    current_stock_code = None
    if issue_id > 0:
        try:
            hk_listings = execute_query(
                """
                SELECT sl.*, l.shortname
                FROM enigma.stocklistings sl
                JOIN enigma.listings l ON sl.stockexid = l.stockexid
                WHERE sl.stockexid IN (1, 20, 22, 23, 38, 71) AND sl.issueid = %s
                ORDER BY sl.firsttradedate
            """,
                (issue_id,),
            )
        except Exception as e:
            current_app.logger.error(f"Error fetching HK listings: {e}")

        try:
            stock_code_result = execute_query(
                """
                SELECT stockcode
                FROM enigma.stocklistings
                WHERE issueid = %s AND delistdate IS NULL
                ORDER BY firsttradedate DESC
                LIMIT 1
            """,
                (issue_id,),
            )
            current_stock_code = (
                stock_code_result[0]["stockcode"] if stock_code_result else None
            )
        except Exception as e:
            current_app.logger.error(f"Error fetching stock code: {e}")

    return render_template(
        "ccass/chistory.html",
        issue_id=issue_id,
        stock_code=stock_code,
        stock_name=stock_name,
        person_id=person_id,
        part_id=part_id,
        part_name=part_name,
        price_data=price_data,
        holdings_data=holdings_data,
        table_data=history,
        s=s,
        a=a,
        p=p,
        o=o,
        hk_listings=hk_listings,
        current_stock_code=current_stock_code,
        last_hold_date=last_hold_date,
    )


@bp.route("/CCASSnotes.asp")
def ccass_notes():
    """CCASS system notes and explanations"""
    return render_template("ccass/ccass_notes.html")


@bp.route("/cconchist.asp")
def cconchist():
    """
    CCASS concentration history - port of cconchist.asp
    Shows concentration percentages (top 5, top 10 holders) over time

    Query params:
    - i: issueID
    - sc: stock code
    - sort: sorting column

    Tables used: ccass.dailylog, enigma.issuedshares
    """
    from flask import current_app

    issue_id = get_int("i", 0)
    stock_code = get_str("sc", "")
    sort_param = request.args.get("sort", "datedn")

    # Lookup stock if stock code provided
    if not issue_id and stock_code:
        try:
            result = execute_query(
                """
                SELECT issueID FROM enigma.stocklistings
                WHERE stockCode = %s AND delistdate IS NULL
                ORDER BY firsttradedate DESC LIMIT 1
            """,
                (stock_code,),
            )
            if result:
                issue_id = result[0]["issueid"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock code: {ex}")

    # Get stock name and person
    stock_name = "No stock specified"
    person_id = 0
    if issue_id > 0:
        try:
            result = execute_query(
                """
                SELECT o.name1, o.personID
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                WHERE i.id1 = %s
            """,
                (issue_id,),
            )
            if result:
                stock_name = result[0]["name1"]
                person_id = result[0]["personid"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock: {ex}")

    # Determine sort order
    sort_orders = {
        "cp5up": "cp5",
        "cp5dn": "cp5 DESC",
        "cp10up": "cp10",
        "cp10dn": "cp10 DESC",
        "cp10ipup": "cp10ip",
        "cp10ipdn": "cp10ip DESC",
        "dateup": "atDate",
        "datedn": "atDate DESC",
        "stakup": "stake",
        "stakdn": "stake DESC",
    }
    ob = sort_orders.get(sort_param, "atDate DESC")
    if sort_param not in sort_orders:
        sort_param = "datedn"

    # Query concentration history
    history = []
    if issue_id > 0:
        try:
            sql = f"""
                SELECT
                    d.atDate,
                    d.c5 / (d.CIPhldg + d.intermedHldg) AS cp5,
                    d.c10 / (d.CIPhldg + d.intermedHldg) AS cp10,
                    (d.c10 + d.NCIPhldg) / (d.CIPhldg + d.intermedHldg + d.NCIPhldg) AS cp10ip,
                    issue_dates.issuedate,
                    stakes.stake
                FROM ccass.dailylog d
                CROSS JOIN LATERAL (
                    SELECT MAX(i.atDate) AS issuedate
                    FROM enigma.issuedshares i
                    WHERE i.atDate <= d.atDate AND i.issueID = %s
                ) issue_dates
                LEFT JOIN LATERAL (
                    SELECT (d.CIPhldg + d.intermedHldg + d.NCIPhldg)::NUMERIC / outstanding AS stake
                    FROM enigma.issuedshares
                    WHERE atDate = issue_dates.issuedate AND issueid = %s
                ) stakes ON true
                WHERE d.issueID = %s
                  AND d.c5 > 0
                  AND d.CIPhldg + d.intermedHldg > 0
                ORDER BY {ob}
            """
            results = execute_query(sql, (issue_id, issue_id, issue_id))

            for row in results:
                history.append(
                    {
                        "atDate": row["atdate"],
                        "cp5": row["cp5"],
                        "cp10": row["cp10"],
                        "cp10ip": row["cp10ip"],
                        "stake": row["stake"],
                    }
                )
        except Exception as ex:
            current_app.logger.error(f"Error querying concentration history: {ex}")
            history = []

    return render_template(
        "ccass/cconchist.html",
        i=issue_id,  # Template expects 'i'
        issue_id=issue_id,
        stock_code=stock_code,
        stock_name=stock_name,
        person_id=person_id,
        p=person_id,  # Template might expect 'p' for person_id
        history=history,
        sort=sort_param,
    )


@bp.route("/ctothist.asp")
def ctothist():
    """
    CCASS total holdings history - port of ctothist.asp
    Shows total CIP+NCIP+Custodian holdings over time

    Query params:
    - i: issueID
    - sc: stock code
    - sort: dateup (chronological) or datedn (reverse chronological)
    - o: include rows with no change (0/1, stored in session)

    Tables used: ccass.dailylog, enigma.issuedshares, issue, organisations
    """
    from flask import current_app, session

    issue_id = get_int("i", 0)
    stock_code = get_str("sc", "")
    sort_param = request.args.get("sort", "datedn")

    # Get 'o' parameter from request or session (ASP uses Session variable)
    # Whether to show rows with no holding change
    if request.args.get("o") is not None:
        o = get_bool("o")
        session["nochange"] = o
    else:
        o = session.get(
            "nochange", False
        )  # Default to excluding unchanged rows (ASP line 15)

    # Lookup stock if stock code provided
    if not issue_id and stock_code:
        try:
            result = execute_query(
                """
                SELECT issueID FROM enigma.stocklistings
                WHERE stockCode = %s AND delistdate IS NULL
                ORDER BY firsttradedate DESC LIMIT 1
            """,
                (stock_code,),
            )
            if result:
                issue_id = result[0]["issueid"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock code: {ex}")

    # Get stock name and personID
    stock_name = "No stock specified"
    person_id = 0
    if issue_id > 0:
        try:
            result = execute_query(
                """
                SELECT o.name1 || ':' || st.typeShort AS stockName, o.personID
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                WHERE i.id1 = %s
            """,
                (issue_id,),
            )
            if result:
                stock_name = result[0]["stockname"]
                person_id = result[0]["personid"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock: {ex}")
            stock_name = f"Stock {issue_id}"

    # Determine sort order
    if sort_param == "dateup":
        ob = "atDate"
    else:
        ob = "atDate DESC"
        sort_param = "datedn"

    # Get HK listings for stock info table (for ccassholdbar macro)
    hk_listings = []
    current_stock_code = None
    at_date = None
    if issue_id > 0:
        try:
            hk_listings = execute_query(
                """
                SELECT sl.*, l.shortname
                FROM enigma.stocklistings sl
                JOIN enigma.listings l ON sl.stockexid = l.stockexid
                WHERE sl.stockexid IN (1, 20, 22, 23, 38, 71) AND sl.issueid = %s
                ORDER BY sl.firsttradedate
            """,
                (issue_id,),
            )
        except Exception as e:
            current_app.logger.error(f"Error fetching HK listings: {e}")
            hk_listings = []

        # Get current stock code for quote links
        try:
            stock_code_result = execute_query(
                """
                SELECT stockcode
                FROM enigma.stocklistings
                WHERE issueid = %s AND delistdate IS NULL
                ORDER BY firsttradedate DESC
                LIMIT 1
            """,
                (issue_id,),
            )
            current_stock_code = (
                stock_code_result[0]["stockcode"] if stock_code_result else None
            )
        except Exception as e:
            current_app.logger.error(f"Error fetching stock code: {e}")
            current_stock_code = None

        # Get latest CCASS date for navigation
        try:
            date_result = execute_query(
                """
                SELECT MAX(atDate) as maxDate
                FROM ccass.dailylog
                WHERE issueID = %s
            """,
                (issue_id,),
            )
            at_date = (
                date_result[0]["maxdate"]
                if date_result and date_result[0]["maxdate"]
                else None
            )
        except Exception as e:
            current_app.logger.error(f"Error fetching latest CCASS date: {e}")
            at_date = None

    # Query total holdings history
    history = []
    if issue_id > 0:
        try:
            sql = f"""
                SELECT
                    NCIPhldg + intermedHldg + CIPHldg AS holding,
                    NCIPcnt + intermedcnt + CIPcnt AS holders,
                    atDate,
                    (SELECT MAX(i.atDate)
                     FROM enigma.issuedshares i
                     WHERE i.atDate <= d.atDate AND i.issueID = %s) AS maxDate,
                    (SELECT outstanding
                     FROM enigma.issuedshares
                     WHERE issueid = %s AND atDate = (
                         SELECT MAX(i2.atDate)
                         FROM enigma.issuedshares i2
                         WHERE i2.atDate <= d.atDate AND i2.issueID = %s
                     )) AS shares
                FROM ccass.dailylog d
                WHERE issueid = %s
                ORDER BY {ob}
            """
            results = execute_query(sql, (issue_id, issue_id, issue_id, issue_id))

            # Convert to list for processing
            rows = []
            for row in results:
                rows.append(
                    {
                        "atDate": row["atdate"],
                        "holding": float(row["holding"]) if row["holding"] else 0,
                        "holders": int(row["holders"]) if row["holders"] else 0,
                        "shares": float(row["shares"]) if row["shares"] else None,
                        "maxDate": row["maxdate"],
                    }
                )

            # Calculate changes between consecutive rows
            # ASP logic differs based on sort order (see lines 81-91 of ctothist.asp)
            last_holding = 0
            for idx, row in enumerate(rows):
                if sort_param == "dateup":
                    # Chronological: compare to previous row
                    change = row["holding"] - last_holding
                    last_holding = row["holding"]
                    row["change"] = change if idx > 0 else None
                else:
                    # Reverse chronological: compare to next row
                    if idx < len(rows) - 1:
                        change = row["holding"] - rows[idx + 1]["holding"]
                        row["change"] = change
                    else:
                        row["change"] = None

            # Filter out unchanged rows if requested
            if not o:
                rows = [r for r in rows if r["change"] is None or r["change"] != 0]

            history = rows

        except Exception as ex:
            current_app.logger.error(
                f"Error querying total holdings history: {ex}", exc_info=True
            )
            history = []

    return render_template(
        "ccass/ctothist.html",
        issue_id=issue_id,
        stock_code=stock_code,
        stock_name=stock_name,
        person_id=person_id,
        history=history,
        sort=sort_param,
        o=o,
        hk_listings=hk_listings,
        current_stock_code=current_stock_code,
        at_date=at_date,
        now=datetime.now(),
    )


@bp.route("/custhist.asp")
def custhist():
    """
    Custodian (Custodian/Pledgee) holdings history - port of custhist.asp

    Query params:
    - i: issueID
    - sc: stock code
    - o: include rows with no change

    Tables used: ccass.dailylog
    """
    from flask import current_app

    issue_id = get_int("i", 0)
    stock_code = get_str("sc", "")
    o = get_bool("o")  # Include no-change rows

    # Lookup stock if stock code provided
    if not issue_id and stock_code:
        try:
            result = execute_query(
                """
                SELECT issueID FROM enigma.stocklistings
                WHERE stockCode = %s AND delistdate IS NULL
                ORDER BY firsttradedate DESC LIMIT 1
            """,
                (stock_code,),
            )
            if result:
                issue_id = result[0]["issueid"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock code: {ex}")

    # Get stock name
    stock_name = "No stock specified"
    person_id = 0
    if issue_id > 0:
        try:
            result = execute_query(
                """
                SELECT o.name1, o.personID
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                WHERE i.id1 = %s
            """,
                (issue_id,),
            )
            if result:
                stock_name = result[0]["name1"]
                person_id = result[0]["personid"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock: {ex}")

    # Query custodian holdings history
    history = []
    if issue_id > 0:
        try:
            sql = """
                SELECT
                    intermedHldg AS holding,
                    intermedcnt AS holders,
                    atDate,
                    (SELECT MAX(i.atDate)
                     FROM enigma.issuedshares i
                     WHERE i.atDate <= d.atDate AND i.issueID = %s) AS maxDate,
                    (SELECT outstanding
                     FROM enigma.issuedshares
                     WHERE issueid = %s AND atDate = maxDate) AS shares
                FROM ccass.dailylog d
                WHERE issueid = %s
                ORDER BY atDate DESC
            """
            results = execute_query(sql, (issue_id, issue_id, issue_id))

            prev_holding = None
            for row in results:
                holding = row["holding"]
                change = holding - prev_holding if prev_holding is not None else None

                if o or change is None or change != 0:
                    history.append(
                        {
                            "atDate": row["atdate"],
                            "holding": holding,
                            "change": change,
                            "holders": row["holders"],
                            "shares": row["shares"],
                            "stake": (
                                holding / row["shares"]
                                if row["shares"] and row["shares"] > 0
                                else None
                            ),
                        }
                    )

                prev_holding = holding

        except Exception as ex:
            current_app.logger.error(f"Error querying custodian holdings history: {ex}")
            history = []

    return render_template(
        "ccass/custhist.html",
        i=issue_id,  # Template expects 'i'
        issue_id=issue_id,
        stock_code=stock_code,
        stock_name=stock_name,
        person_id=person_id,
        p=person_id,  # Template might expect 'p' for person_id
        history=history,
        o=o,
    )


@bp.route("/ncipchg.asp")
def ncipchg():
    """
    Non-CIP (Non-Collateralised Investor Participant) holding changes
    Shows changes in unnamed investor participant holdings between two dates

    Query params:
    - d1: start date
    - d: end date (d2)
    - z: show unchanged holdings (default: false)
    - sort: sorting column

    Tables used: ccass.dailylog, ccass.quotes, enigma.issue, enigma.organisations
    """
    from flask import current_app

    d1 = request.args.get("d1", "")
    d2 = request.args.get("d", "")
    z = get_bool("z")  # Show unchanged holdings
    sort_param = request.args.get("sort", "valcdn")

    # Get latest CCASS date if none specified
    if not d2:
        try:
            result = execute_query(
                "SELECT value FROM enigma.log WHERE key='CCASSdateDone'"
            )
            if result and result[0]["value"]:
                d2 = result[0]["value"]
            else:
                d2 = "2025-10-17"
        except:
            d2 = "2025-10-17"

    # Default d1 to day before d2 if not specified
    if not d1:
        try:
            from datetime import datetime, timedelta

            d2_date = datetime.strptime(d2, "%Y-%m-%d")
            d1 = (d2_date - timedelta(days=1)).strftime("%Y-%m-%d")
        except:
            d1 = "2025-10-16"

    # Get max settlement dates
    try:
        result = execute_query(
            """
            SELECT MAX(settleDate) FROM ccass.calendar WHERE settleDate <= %s
        """,
            (d1,),
        )
        if result and result[0]["max"]:
            d1 = ms_date(result[0]["max"])
    except Exception as ex:
        current_app.logger.error(f"Error getting settlement date for d1: {ex}")

    # Determine sort order
    sort_orders = {
        "codeup": "stockCode, stockName",
        "codedn": "stockCode DESC, stockName",
        "nameup": "stockName",
        "namedn": "stockName DESC",
        "holddn": "holding DESC, stockName",
        "holdup": "holding, stockName",
        "chngdn": "hldchg DESC, stockName",
        "chngup": "hldchg, stockName",
        "stakdn": "stake DESC, stockName",
        "stakup": "stake, stockName",
        "stkcdn": "stkchg DESC, stockName",
        "stkcup": "stkchg, stockName",
        "valcdn": "valchg DESC, stockName",
        "valcup": "valchg, stockName",
        "hchgdn": "cntchg DESC, stkchg DESC, stockName",
        "hchgup": "cntchg, stkchg, stockName",
    }
    ob = sort_orders.get(sort_param, "valchg DESC, stockName")
    if sort_param not in sort_orders:
        sort_param = "valcdn"

    # Build WHERE clause for unchanged holdings filter
    change_filter = "" if z else "AND hldchg <> 0"

    # Query NCIP changes
    changes = []
    try:
        # Get NCIP holdings at both dates and calculate changes
        sql = f"""
            WITH ncip1 AS (
                SELECT issueID, NCIPhldg AS holding, NCIPcnt AS holders
                FROM ccass.dailylog
                WHERE atDate = %s
            ),
            ncip2 AS (
                SELECT issueID, NCIPhldg AS holding, NCIPcnt AS holders
                FROM ccass.dailylog
                WHERE atDate = %s
            )
            SELECT
                COALESCE(n2.issueID, n1.issueID) AS issueID,
                COALESCE(n2.holding, 0) AS holding,
                COALESCE(n2.holding, 0) - COALESCE(n1.holding, 0) AS hldchg,
                COALESCE(n2.holders, 0) - COALESCE(n1.holders, 0) AS cntchg,
                CASE WHEN os.shares > 0
                     THEN COALESCE(n2.holding, 0)::NUMERIC / os.shares
                     ELSE 0
                END AS stake,
                CASE WHEN os.shares > 0
                     THEN (COALESCE(n2.holding, 0) - COALESCE(n1.holding, 0))::NUMERIC / os.shares
                     ELSE 0
                END AS stkchg,
                (COALESCE(n2.holding, 0) - COALESCE(n1.holding, 0)) * COALESCE(q.closing, 0) AS valchg,
                (SELECT sl.stockCode
                 FROM enigma.stocklistings sl
                 WHERE sl.issueID = COALESCE(n2.issueID, n1.issueID)
                   AND sl.delistdate IS NULL
                 ORDER BY sl.firsttradedate DESC
                 LIMIT 1) AS stockCode,
                o.name1 || ':' || st.typeShort AS stockName,
                CASE WHEN q.susp OR sl2."2ndCtr"
                     THEN TRUE
                     ELSE FALSE
                END AS susp
            FROM ncip1 n1
            FULL OUTER JOIN ncip2 n2 ON n1.issueID = n2.issueID
            JOIN enigma.issue i ON COALESCE(n2.issueID, n1.issueID) = i.id1
            JOIN enigma.organisations o ON i.issuer = o.personID
            JOIN enigma.secTypes st ON i.typeID = st.typeID
            LEFT JOIN enigma.issuedshares os ON COALESCE(n2.issueID, n1.issueID) = os.issueID
                AND os.atDate = %s
            LEFT JOIN ccass.quotes q ON COALESCE(n2.issueID, n1.issueID) = q.issueID
                AND q.atDate = %s
            LEFT JOIN enigma.stocklistings sl2 ON COALESCE(n2.issueID, n1.issueID) = sl2.issueID
                AND %s >= sl2.firsttradedate
                AND (sl2.delistdate IS NULL OR %s < sl2.delistdate)
            WHERE COALESCE(n2.holding, 0) <> 0 OR COALESCE(n1.holding, 0) <> 0
              {change_filter}
            ORDER BY {ob}
        """
        results = execute_query(sql, (d1, d2, d2, d2, d2, d2))

        for row in results:
            changes.append(
                {
                    "issueID": row["issueid"],
                    "stockCode": row["stockcode"],
                    "stockName": row["stockname"],
                    "holding": row["holding"],
                    "hldchg": row["hldchg"],
                    "cntchg": row["cntchg"],
                    "stake": row["stake"],
                    "stkchg": row["stkchg"],
                    "valchg": row["valchg"],
                    "susp": row["susp"],
                }
            )
    except Exception as ex:
        current_app.logger.error(f"Error querying NCIP changes: {ex}")
        changes = []

    return render_template(
        "ccass/ncipchg.html",
        title="Non-CIP holding changes",
        d1=d1,
        d2=d2,
        z=z,
        sort=sort_param,
        changes=changes,
    )


@bp.route("/nciphist.asp")
def nciphist():
    """
    Non-CIP (unnamed investor participant) holdings history for a stock - port of nciphist.asp
    Shows holdings with Highstock chart and data table

    Query params:
    - i: issueID
    - sc: stock code (alternative to i)
    - s: show mode (0=chart+table, 1=chart only, 2=table only) - stored in session
    - a: adjust for splits/bonuses (0/1) - stored in session
    - p: use price on holding date (1) vs trade date (0) - stored in session
    - o: include rows with no holding change (0/1) - stored in session

    Tables used: ccass.quotes, ccass.calendar, ccass.dailylog, enigma.events
    """
    from flask import current_app, session
    import json

    issue_id = get_int("i", 0)
    stock_code = get_str("sc", "")

    # Lookup stock if stock code provided
    if not issue_id and stock_code:
        try:
            result = execute_query(
                """
                SELECT issueID FROM enigma.stocklistings
                WHERE stockCode = %s AND delistdate IS NULL
                ORDER BY firsttradedate DESC LIMIT 1
            """,
                (stock_code,),
            )
            if result:
                issue_id = result[0]["issueid"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock code: {ex}")

    # Session-managed parameters
    # s: show mode (0=chart+table, 1=chart only, 2=table only)
    if request.args.get("s") is not None:
        s = get_int("s", 0)
        session["showdata"] = s
    else:
        s = session.get("showdata", 0)

    # o: include rows with no holding change
    if request.args.get("o") is not None:
        o = get_bool("o")
        session["nochange"] = o
    else:
        o = session.get("nochange", False)

    # a: adjust for splits and bonuses
    if request.args.get("a") is not None:
        a = get_bool("a")
        session["splitAdj"] = a
    else:
        a = session.get("splitAdj", True)  # Default to adjusted

    # p: use price on holding date (True) vs trade date (False)
    if request.args.get("p") is not None:
        p = get_bool("p")
        session["pHolding"] = p
    else:
        p = session.get("pHolding", False)  # Default to trade date

    pword = "holding" if p else "trade"

    # Get stock name and person using helper function
    stock_name = "No stock specified"
    person_id = 0
    last_hold_date = None
    if issue_id > 0:
        try:
            from webbsite.asp_helpers import issue_name_func

            stock_name, person_id = issue_name_func(issue_id)

            # Get last holding date
            last_date_result = execute_query(
                """
                SELECT MAX(atDate) AS d
                FROM ccass.dailylog
                WHERE issueID = %s
            """,
                (issue_id,),
            )
            if last_date_result and last_date_result[0]["d"]:
                last_hold_date = last_date_result[0]["d"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock: {ex}")

    # Build SQL query based on parameters
    history = []
    price_js = "[]"
    holdings_js = "[]"

    if issue_id > 0:
        try:
            # Four different SQL queries based on (a, p) combinations
            if not a:
                # Don't adjust for splits and bonus issues
                if p:
                    # Use prices on holding date
                    sql = """
                        SELECT q.atDate, closing, NCIPhldg AS holding,
                               enigma.outstanding(%s, q.atDate) AS os,
                               tradeDate, 1 as adjBonus, NCIPcnt AS holders
                        FROM ccass.quotes q
                        JOIN ccass.calendar c ON q.atDate = c.settleDate
                        LEFT JOIN ccass.dailylog d ON q.atDate = d.atDate AND d.issueID = %s
                        WHERE q.issueID = %s AND NOT c.deferred
                          AND settleDate >= '2007-06-26'
                        ORDER BY atDate
                    """
                    params = (issue_id, issue_id, issue_id)
                else:
                    # Use prices on trading date
                    sql = """
                        SELECT settleDate AS atDate, closing, NCIPhldg AS holding,
                               enigma.outstanding(%s, settleDate) AS os,
                               tradeDate, 1 as adjBonus, NCIPcnt AS holders
                        FROM ccass.quotes q
                        JOIN ccass.calendar c ON q.atDate = c.tradeDate
                        LEFT JOIN ccass.dailylog d ON c.settleDate = d.atDate AND d.issueID = %s
                        WHERE q.issueID = %s AND NOT c.deferred
                          AND settleDate >= '2007-06-26'
                        ORDER BY tradeDate
                    """
                    params = (issue_id, issue_id, issue_id)
            else:
                # Adjust for splits and bonus issues
                if p:
                    # Use prices on holding date
                    sql = """
                        SELECT atDate, closing * scripAdj as closing,
                               ROUND((holding / scripAdj / adjSplit)::numeric, 0) AS holding,
                               enigma.outstanding(%s, atDate) / scripAdj AS os,
                               tradeDate, adjBonus, holders
                        FROM (
                            SELECT NCIPhldg AS holding, NCIPcnt AS holders, q.atDate,
                                   enigma.splitAdj(%s, q.atDate) AS scripAdj,
                                   closing, tradeDate,
                                   COALESCE((SELECT adjust FROM enigma.events
                                             WHERE issueID = %s AND eventType = 4
                                               AND cancelDate IS NULL AND exDate = c.settleDate), 1) AS adjSplit,
                                   COALESCE((SELECT adjust FROM enigma.events
                                             WHERE issueID = %s AND eventType = 5
                                               AND cancelDate IS NULL AND exDate = c.settleDate), 1) AS adjBonus
                            FROM ccass.quotes q
                            JOIN ccass.calendar c ON q.atDate = c.settleDate
                            LEFT JOIN ccass.dailylog d ON q.atDate = d.atDate AND d.issueID = %s
                            WHERE q.issueID = %s AND NOT c.deferred
                              AND c.settleDate >= '2007-06-26'
                        ) AS t1
                        ORDER BY atDate
                    """
                    params = (
                        issue_id,
                        issue_id,
                        issue_id,
                        issue_id,
                        issue_id,
                        issue_id,
                    )
                else:
                    # Use prices on trading date (S-2)
                    sql = """
                        SELECT atDate, closing * priceAdj as closing,
                               ROUND((holding / holdAdj / adjSplit)::numeric, 0) AS holding,
                               enigma.outstanding(%s, atDate) / holdAdj AS os,
                               tradeDate, adjBonus, holders
                        FROM (
                            SELECT NCIPhldg AS holding, NCIPcnt AS holders, c.settleDate AS atDate,
                                   enigma.splitAdj(%s, c.tradeDate) AS priceAdj,
                                   enigma.splitAdj(%s, c.settleDate) AS holdAdj,
                                   closing, tradeDate,
                                   COALESCE((SELECT adjust FROM enigma.events
                                             WHERE issueID = %s AND eventType = 4
                                               AND cancelDate IS NULL AND exDate = c.settleDate), 1) AS adjSplit,
                                   COALESCE((SELECT adjust FROM enigma.events
                                             WHERE issueID = %s AND eventType = 5
                                               AND cancelDate IS NULL AND exDate = c.settleDate), 1) AS adjBonus
                            FROM ccass.quotes q
                            JOIN ccass.calendar c ON q.atDate = c.tradeDate
                            LEFT JOIN ccass.dailylog d ON c.settleDate = d.atDate AND d.issueID = %s
                            WHERE q.issueID = %s AND NOT c.deferred
                              AND c.settleDate >= '2007-06-26'
                        ) AS t1
                        ORDER BY tradeDate
                    """
                    params = (
                        issue_id,
                        issue_id,
                        issue_id,
                        issue_id,
                        issue_id,
                        issue_id,
                        issue_id,
                    )

            results = execute_query(sql, params)

            if results:
                # Convert to list for processing
                data = []
                for row in results:
                    data.append(
                        {
                            "atDate": row["atdate"],
                            "closing": float(row["closing"]) if row["closing"] else 0,
                            "holding": (
                                float(row["holding"])
                                if row["holding"] is not None
                                else None
                            ),
                            "os": float(row["os"]) if row["os"] else None,
                            "tradeDate": row["tradedate"],
                            "adjBonus": (
                                float(row["adjbonus"]) if row["adjbonus"] else 1
                            ),
                            "holders": int(row["holders"]) if row["holders"] else None,
                        }
                    )

                if data:
                    # Fill in blanks with previous price and holding (ASP lines 124-140)
                    last_close = data[0]["closing"]
                    if data[0]["holding"] is None:
                        last_hold = 0
                        data[0]["holding"] = 0
                    else:
                        last_hold = data[0]["holding"]

                    for i in range(1, len(data)):
                        # Fill missing prices
                        if data[i]["closing"] == 0:
                            data[i]["closing"] = last_close
                        else:
                            last_close = data[i]["closing"]

                        # Fill missing holdings (adjust for bonus issue)
                        if data[i]["holding"] is None:
                            last_hold = last_hold * data[i]["adjBonus"]
                            data[i]["holding"] = last_hold
                        else:
                            last_hold = data[i]["holding"]

                    # Build JavaScript arrays for chart
                    price_data = []
                    holdings_data = []
                    for i, row in enumerate(data):
                        # Use holding date or trade date based on parameter p
                        date_for_chart = row["atDate"] if p else row["tradeDate"]
                        # Convert date to datetime if needed
                        if hasattr(date_for_chart, "timestamp"):
                            timestamp = int(date_for_chart.timestamp() * 1000)
                        else:
                            # date object - convert to datetime at midnight
                            dt = datetime.combine(date_for_chart, datetime.min.time())
                            timestamp = int(dt.timestamp() * 1000)

                        # Add price data
                        price_data.append([timestamp, round(row["closing"], 3)])

                        # Add holdings data (skip last point if using trade date)
                        if p or i < len(data) - 1:
                            holdings_data.append([timestamp, round(row["holding"], 0)])

                    price_js = json.dumps(price_data)
                    holdings_js = json.dumps(holdings_data)

                    # Build table data with changes
                    for i in range(len(data) - 1, -1, -1):  # Reverse order for display
                        row = data[i]
                        change = None
                        if i > 0:
                            change = row["holding"] - data[i - 1]["holding"]

                        # Filter based on 'o' parameter and last_hold_date
                        if (
                            o
                            or change is None
                            or change != 0
                            or (last_hold_date and row["atDate"] > last_hold_date)
                        ):
                            history.append(
                                {
                                    "atDate": row["atDate"],
                                    "closing": row["closing"],
                                    "holding": row["holding"],
                                    "change": change,
                                    "os": row["os"],
                                    "tradeDate": row["tradeDate"],
                                    "holders": row["holders"],
                                }
                            )

        except Exception as ex:
            current_app.logger.error(
                f"Error querying NCIP history: {ex}", exc_info=True
            )
            history = []

    # Get HK listings for navigation bar
    hk_listings = []
    current_stock_code = None
    at_date = last_hold_date
    if issue_id > 0:
        try:
            hk_listings = execute_query(
                """
                SELECT sl.*, l.shortname
                FROM enigma.stocklistings sl
                JOIN enigma.listings l ON sl.stockexid = l.stockexid
                WHERE sl.stockexid IN (1, 20, 22, 23, 38, 71) AND sl.issueid = %s
                ORDER BY sl.firsttradedate
            """,
                (issue_id,),
            )
        except Exception as e:
            current_app.logger.error(f"Error fetching HK listings: {e}")

        # Get current stock code
        try:
            stock_code_result = execute_query(
                """
                SELECT stockcode
                FROM enigma.stocklistings
                WHERE issueid = %s AND delistdate IS NULL
                ORDER BY firsttradedate DESC
                LIMIT 1
            """,
                (issue_id,),
            )
            current_stock_code = (
                stock_code_result[0]["stockcode"] if stock_code_result else None
            )
        except Exception as e:
            current_app.logger.error(f"Error fetching stock code: {e}")

    return render_template(
        "ccass/nciphist.html",
        issue_id=issue_id,
        stock_code=stock_code,
        stock_name=stock_name,
        person_id=person_id,
        history=history,
        s=s,
        a=a,
        p=p,
        o=o,
        pword=pword,
        price_js=price_js,
        holdings_js=holdings_js,
        last_hold_date=last_hold_date,
        hk_listings=hk_listings,
        current_stock_code=current_stock_code,
        at_date=at_date,
        now=datetime.now(),
    )


@bp.route("/portchg.asp")
def portchg():
    """
    Portfolio changes for a participant - simplified implementation

    Query params:
    - part: partID
    - d: date

    Tables used: ccass.parthold
    """
    from flask import current_app

    part_id = get_int("part", 0)
    d = request.args.get("d", "")

    # Get latest CCASS date if none specified
    if not d:
        try:
            result = execute_query(
                "SELECT value FROM enigma.log WHERE key='CCASSdateDone'"
            )
            if result and result[0]["value"]:
                d = result[0]["value"]
            else:
                d = "2025-10-17"
        except:
            d = "2025-10-17"

    # Get participant name
    participant_name = "No participant selected"
    if part_id > 0:
        try:
            result = execute_query(
                """
                SELECT partName FROM ccass.participants WHERE partID = %s
            """,
                (part_id,),
            )
            if result:
                participant_name = result[0]["partname"]
        except Exception as ex:
            current_app.logger.error(f"Error getting participant: {ex}")

    # Query portfolio changes (simplified - shows holdings on date)
    changes = []
    if part_id > 0:
        try:
            sql = """
                SELECT ph.issueID, ph.holding,
                       o.name1 || ':' || st.typeShort AS stockName,
                       (SELECT sl.stockCode
                        FROM enigma.stocklistings sl
                        WHERE sl.issueID = ph.issueID AND sl.delistdate IS NULL
                        ORDER BY sl.firsttradedate DESC LIMIT 1) AS stockCode
                FROM ccass.parthold ph
                JOIN enigma.issue i ON ph.issueID = i.id1
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                WHERE ph.partID = %s AND ph.atDate = %s
                  AND ph.holding > 0
                ORDER BY ph.holding DESC
            """
            results = execute_query(sql, (part_id, d))

            for row in results:
                changes.append(
                    {
                        "issueID": row["issueid"],
                        "stockCode": row["stockcode"],
                        "stockName": row["stockname"],
                        "holding": row["holding"],
                    }
                )
        except Exception as ex:
            current_app.logger.error(f"Error querying portfolio: {ex}")
            changes = []

    sort_param = request.args.get("sort", "valcdn")

    return render_template(
        "ccass/portchg.html",
        m="",  # Error message (empty if no error)
        name=participant_name,
        p=part_id,
        d=d,
        d1=d,  # Start date
        d2=d,  # End date
        sort=sort_param,
        z=False,  # Show unchanged holdings checkbox
        changes=changes,
    )


@bp.route("/reghist.asp")
def reghist():
    """
    Regional trading history (Connect schemes) - port of reghist.asp
    Shows Shanghai-HK and Shenzhen-HK Connect holdings over time

    Query params:
    - i: issueID
    - sc: stock code

    Tables used: ccass.parthold
    """
    from flask import current_app

    issue_id = get_int("i", 0)
    stock_code = get_str("sc", "")

    # Shanghai-HK Connect partID = 1323
    # Shenzhen-HK Connect partID = 1456

    # Lookup stock if stock code provided
    if not issue_id and stock_code:
        try:
            result = execute_query(
                """
                SELECT issueID FROM enigma.stocklistings
                WHERE stockCode = %s AND delistdate IS NULL
                ORDER BY firsttradedate DESC LIMIT 1
            """,
                (stock_code,),
            )
            if result:
                issue_id = result[0]["issueid"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock code: {ex}")

    # Get stock name
    stock_name = "No stock specified"
    person_id = 0
    if issue_id > 0:
        try:
            result = execute_query(
                """
                SELECT o.name1, o.personID
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                WHERE i.id1 = %s
            """,
                (issue_id,),
            )
            if result:
                stock_name = result[0]["name1"]
                person_id = result[0]["personid"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock: {ex}")

    # Query Connect holdings history
    history = []
    if issue_id > 0:
        try:
            sql = """
                SELECT
                    ph.atDate,
                    SUM(CASE WHEN ph.partID = 1323 THEN ph.holding ELSE 0 END) AS shanghai_holding,
                    SUM(CASE WHEN ph.partID = 1456 THEN ph.holding ELSE 0 END) AS shenzhen_holding
                FROM ccass.parthold ph
                WHERE ph.issueID = %s
                  AND ph.partID IN (1323, 1456)
                GROUP BY ph.atDate
                ORDER BY ph.atDate DESC
            """
            results = execute_query(sql, (issue_id,))

            for row in results:
                history.append(
                    {
                        "atDate": row["atdate"],
                        "shanghai_holding": row["shanghai_holding"],
                        "shenzhen_holding": row["shenzhen_holding"],
                    }
                )
        except Exception as ex:
            current_app.logger.error(f"Error querying Connect holdings: {ex}")
            history = []

    return render_template(
        "ccass/reghist.html",
        i=issue_id,  # Template expects 'i'
        issue_id=issue_id,
        stock_code=stock_code,
        stock_name=stock_name,
        person_id=person_id,
        p=person_id,  # Template might expect 'p' for person_id
        history=history,
    )


@bp.route("/brokhist.asp")
def brokhist():
    """
    Broker holdings history - port of brokhist.asp
    Shows broker participant holdings over time

    Query params:
    - i: issueID
    - sc: stock code
    - sort: dateup or datedn (default: datedn)

    Tables used: ccass.dailylog, enigma.issuedshares
    """
    from flask import current_app

    issue_id = get_int("i", 0)
    stock_code = get_str("sc", "")
    sort = get_str("sort", "datedn")

    # Lookup stock if stock code provided
    if not issue_id and stock_code:
        try:
            result = execute_query(
                """
                SELECT issueID FROM enigma.stocklistings
                WHERE stockCode = %s AND delistdate IS NULL
                ORDER BY firsttradedate DESC LIMIT 1
            """,
                (stock_code,),
            )
            if result:
                issue_id = result[0]["issueid"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock code: {ex}")

    # Get stock name
    stock_name = "No stock specified"
    person_id = 0
    if issue_id > 0:
        try:
            result = execute_query(
                """
                SELECT o.name1, o.personID
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                WHERE i.id1 = %s
            """,
                (issue_id,),
            )
            if result:
                stock_name = result[0]["name1"]
                person_id = result[0]["personid"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock: {ex}")

    # Query broker holdings history with issued shares
    history = []
    if issue_id > 0:
        try:
            # Determine sort order
            order_by = "atDate" if sort == "dateup" else "atDate DESC"

            # Query matches ASP logic:
            # SELECT BrokHldg AS holding, atDate,
            #   (SELECT Max(atDate) FROM issuedshares WHERE atDate<=d.atDate AND issueID=i) AS maxDate,
            #   (SELECT outstanding FROM issuedshares WHERE issueID=i AND atDate=maxDate) AS shares
            # FROM ccass.dailylog d WHERE issueID=i ORDER BY atDate DESC
            sql = f"""
                SELECT
                    d.BrokHldg AS holding,
                    d.atDate,
                    (SELECT MAX(i.atDate)
                     FROM enigma.issuedshares i
                     WHERE i.atDate <= d.atDate AND i.issueID = %s) AS max_date,
                    (SELECT i2.outstanding
                     FROM enigma.issuedshares i2
                     WHERE i2.issueID = %s
                     AND i2.atDate = (SELECT MAX(i3.atDate)
                                      FROM enigma.issuedshares i3
                                      WHERE i3.atDate <= d.atDate AND i3.issueID = %s)) AS shares
                FROM ccass.dailylog d
                WHERE d.issueID = %s
                ORDER BY {order_by}
            """
            results = execute_query(sql, (issue_id, issue_id, issue_id, issue_id))

            # Calculate changes between holdings (matches ASP loop logic)
            last_holding = None
            for idx, row in enumerate(results):
                holding = float(row["holding"]) if row["holding"] is not None else 0

                if sort == "dateup":
                    # When sorting ascending, change is current minus previous
                    change = (
                        (holding - last_holding) if last_holding is not None else None
                    )
                    last_holding = holding
                else:
                    # When sorting descending, look ahead to next row
                    if idx + 1 < len(results):
                        next_holding = (
                            float(results[idx + 1]["holding"])
                            if results[idx + 1]["holding"] is not None
                            else 0
                        )
                        change = holding - next_holding
                    else:
                        change = None

                history.append(
                    {
                        "at_date": row["atdate"],
                        "holding": holding,
                        "change": change,
                        "shares": (
                            float(row["shares"]) if row["shares"] is not None else None
                        ),
                        "max_date": row["max_date"],
                    }
                )
        except Exception as ex:
            current_app.logger.error(f"Error querying broker holdings: {ex}")
            history = []

    return render_template(
        "ccass/brokhist.html",
        issue_id=issue_id,
        stock_code=stock_code,
        stock_name=stock_name,
        person_id=person_id,
        sort=sort,
        history=history,
    )


@bp.route("/chldchg.asp")
def chldchg():
    """CCASS holding changes - port of chldchg.asp
    Shows ownership changes for a stock between two dates"""
    from flask import current_app
    from datetime import date, timedelta

    # Get parameters
    issue_id = get_int("i", 0)
    stock_code = get_str("sc", "")
    sort_param = request.args.get("sort", "chngdn")
    d2_param = request.args.get("d", "")  # End date
    d1_param = request.args.get("d1", "")  # Start date

    # Lookup stock if stock code provided
    if not issue_id and stock_code:
        try:
            result = execute_query(
                """
                SELECT issueID FROM enigma.stocklistings
                WHERE stockCode = %s AND delistdate IS NULL
                ORDER BY firsttradedate DESC LIMIT 1
            """,
                (stock_code,),
            )
            if result:
                issue_id = result[0]["issueid"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock code: {ex}")

    # Get stock name and person_id
    stock_name = "No stock specified"
    person_id = 0
    if issue_id > 0:
        try:
            result = execute_query(
                """
                SELECT o.name1, o.personID
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                WHERE i.id1 = %s
            """,
                (issue_id,),
            )
            if result:
                stock_name = result[0]["name1"]
                person_id = result[0]["personid"]
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock: {ex}")

    if issue_id == 0:
        return render_template("ccass/chldchg.html", issue_id=0, stock_name=stock_name)

    # Determine sort order
    sort_orders = {
        "nameup": "partName",
        "namedn": "partName DESC",
        "ccidup": "CCASSID, partName",
        "cciddn": "CCASSID DESC, partName DESC",
        "holdup": "holding, partName",
        "holddn": "holding DESC, partName",
        "lastdn": "lastDate DESC, partName",
        "lastup": "lastDate, partName",
        "chngup": "hldchg, partName",
        "chngdn": "hldchg DESC, partName",
    }
    order_by = sort_orders.get(sort_param, "hldchg DESC, partName")
    if sort_param not in sort_orders:
        sort_param = "chngdn"

    # Get date range constraints - CCASS history starts 2007-06-27
    try:
        # Constrain d2 to actual history - get max date <= requested date
        if d2_param:
            result = execute_query(
                """
                SELECT MAX(atDate) as maxDate
                FROM ccass.dailylog
                WHERE issueID = %s AND atDate <= %s
            """,
                (issue_id, d2_param),
            )
            d2 = result[0]["maxdate"] if result and result[0]["maxdate"] else None
        else:
            # Default to yesterday
            result = execute_query(
                """
                SELECT MAX(atDate) as maxDate
                FROM ccass.dailylog
                WHERE issueID = %s AND atDate <= %s
            """,
                (issue_id, date.today() - timedelta(days=1)),
            )
            d2 = result[0]["maxdate"] if result and result[0]["maxdate"] else None

        # If still no date, try minimum date
        if not d2:
            result = execute_query(
                """
                SELECT MIN(atDate) as minDate
                FROM ccass.dailylog
                WHERE issueID = %s
            """,
                (issue_id,),
            )
            d2 = result[0]["mindate"] if result and result[0]["mindate"] else None

        # Check if we have any CCASS records
        if not d2:
            return render_template(
                "ccass/chldchg.html",
                issue_id=issue_id,
                stock_code=stock_code,
                stock_name=stock_name,
                person_id=person_id,
                no_records=True,
            )

        # Get d1 (start date) - default to d2 - 1 day
        if d1_param:
            d1_date = (
                datetime.strptime(d1_param, "%Y-%m-%d").date()
                if isinstance(d1_param, str)
                else d1_param
            )
            if d1_date >= d2:
                d1_date = d2 - timedelta(days=1)
        else:
            d1_date = d2 - timedelta(days=1)

        # Constrain d1 to actual history
        result = execute_query(
            """
            SELECT MAX(atDate) as maxDate
            FROM ccass.dailylog
            WHERE issueID = %s AND atDate <= %s
        """,
            (issue_id, d1_date),
        )
        d1 = result[0]["maxdate"] if result and result[0]["maxdate"] else None

        # If no d1 found, use minimum date
        if not d1:
            result = execute_query(
                """
                SELECT MIN(atDate) as minDate
                FROM ccass.dailylog
                WHERE issueID = %s
            """,
                (issue_id,),
            )
            d1 = (
                result[0]["mindate"]
                if result and result[0]["mindate"]
                else d2 - timedelta(days=1)
            )

    except Exception as e:
        current_app.logger.error(f"Error getting date range for chldchg: {e}")
        return render_template(
            "ccass/chldchg.html",
            issue_id=issue_id,
            stock_code=stock_code,
            stock_name=stock_name,
            person_id=person_id,
            error=str(e),
        )

    # Get holding changes data - convert hldchgext2 stored procedure to inline SQL
    try:
        # Get split adjustment factor for d2 (if split occurred on that exact date)
        sa_result = execute_query(
            """
            SELECT COALESCE(
                (SELECT adjust FROM enigma.events
                 WHERE issueID = %s AND eventType = 4 AND exDate = %s
                   AND cancelDate IS NULL),
                1.0) AS sa
        """,
            (issue_id, d2),
        )
        sa = float(sa_result[0]["sa"]) if sa_result else 1.0

        # Main holdings change query - port of hldchgext2 stored procedure
        holdings_changes = execute_query(
            f"""
            WITH
            -- Get latest holdings at d2 for each participant
            latest_holdings AS (
                SELECT partID, MAX(atDate) as lastDate
                FROM ccass.holdings
                WHERE issueID = %s AND atDate <= %s AND atDate > %s
                GROUP BY partID
            ),
            -- Get previous holdings at d1 for each participant
            prev_holdings AS (
                SELECT partID, MAX(atDate) as prevDate
                FROM ccass.holdings
                WHERE issueID = %s AND atDate <= %s
                GROUP BY partID
            ),
            -- Get actual holding values with adjustments
            current_data AS (
                SELECT
                    lh.partID,
                    lh.lastDate,
                    h.holding /
                        COALESCE((
                            SELECT EXP(SUM(LN(adjust)))
                            FROM enigma.events
                            WHERE issueID = %s AND cancelDate IS NULL
                              AND eventType IN (4, 5)
                              AND exDate > lh.lastDate AND exDate <= %s
                        ), 1.0) AS holding
                FROM latest_holdings lh
                JOIN ccass.holdings h ON h.issueID = %s AND h.partID = lh.partID
                                      AND h.atDate = lh.lastDate
            ),
            prev_data AS (
                SELECT
                    ph.partID,
                    ph.prevDate,
                    CASE WHEN h.holding IS NULL OR h.holding = 0 THEN 0
                         ELSE h.holding /
                            COALESCE((
                                SELECT EXP(SUM(LN(adjust)))
                                FROM enigma.events
                                WHERE issueID = %s AND cancelDate IS NULL
                                  AND eventType IN (4, 5)
                                  AND exDate > ph.prevDate AND exDate <= %s
                            ), 1.0) /
                            COALESCE(e.adjust, 1.0)
                    END AS prevhldg
                FROM prev_holdings ph
                JOIN ccass.holdings h ON h.issueID = %s AND h.partID = ph.partID
                                      AND h.atDate = ph.prevDate
                LEFT JOIN enigma.events e ON e.issueID = %s
                                          AND ph.prevDate = e.exDate
                                          AND e.cancelDate IS NULL
                                          AND e.eventType = 4
            )
            SELECT
                cd.partID,
                cd.holding / %s AS holding,
                COALESCE(pd.prevhldg, 0) AS prevhldg,
                ROUND((cd.holding / %s - COALESCE(pd.prevhldg, 0))::numeric, 0) AS hldchg,
                p.CCASSID,
                p.partName,
                cd.lastDate
            FROM current_data cd
            LEFT JOIN prev_data pd ON cd.partID = pd.partID
            JOIN ccass.participants p ON p.partID = cd.partID
            WHERE ROUND((cd.holding / %s - COALESCE(pd.prevhldg, 0))::numeric, 0) <> 0
            ORDER BY {order_by}
        """,
            (
                issue_id,
                d2,
                d1,  # latest_holdings CTE
                issue_id,
                d1,  # prev_holdings CTE
                issue_id,
                d2,  # current_data adjustments
                issue_id,  # current_data holdings join
                issue_id,
                d2,  # prev_data adjustments
                issue_id,  # prev_data holdings join
                issue_id,  # prev_data events join
                sa,
                sa,
                sa,
            ),
        )  # Final SELECT divisions and WHERE clause

    except Exception as e:
        current_app.logger.error(f"Error querying holdings changes: {e}")
        holdings_changes = []

    # Get outstanding shares and split adjustments
    try:
        # Get outstanding shares at d2
        os_result = execute_query(
            """
            SELECT atDate, outstanding
            FROM enigma.issuedshares
            WHERE issueID = %s AND atDate <= %s
            ORDER BY atDate DESC
            LIMIT 1
        """,
            (issue_id, d2),
        )
        issued = (
            float(os_result[0]["outstanding"])
            if os_result and os_result[0]["outstanding"]
            else 0
        )
        issued_date = os_result[0]["atdate"] if os_result else None

        # Get cumulative adjustment factor for splits/bonus between d1 and d2
        adj_result = execute_query(
            """
            SELECT COALESCE(
                (SELECT EXP(SUM(LN(adjust)))
                 FROM enigma.events
                 WHERE issueID = %s AND exDate > %s AND exDate <= %s
                   AND cancelDate IS NULL AND eventType IN (4, 5)),
                1.0) AS adj
        """,
            (issue_id, d1, d2),
        )
        adj = float(adj_result[0]["adj"]) if adj_result else 1.0

        # Get old outstanding shares (at d1, adjusted to d2 basis)
        old_os_result = execute_query(
            """
            SELECT enigma.outstanding(%s, %s) AS os
        """,
            (issue_id, d1),
        )
        old_issued = (
            float(old_os_result[0]["os"])
            if old_os_result and old_os_result[0]["os"]
            else 0
        )
        if old_issued:
            old_issued = old_issued / adj

        issued_chg = issued - old_issued if old_issued else 0
        issued_pc = issued_chg / old_issued if old_issued > 0 else 0

    except Exception as e:
        current_app.logger.error(f"Error calculating outstanding shares: {e}")
        issued = 0
        issued_date = None
        adj = 1.0
        old_issued = 0
        issued_chg = 0
        issued_pc = 0
        sa = 1.0

    # Calculate summary rows from dailylog
    try:
        # Get dailylog data for d2
        daily2 = execute_query(
            """
            SELECT NCIPhldg, intermedHldg, CIPhldg, intermedCnt, CIPcnt, NCIPcnt
            FROM ccass.dailylog
            WHERE issueID = %s AND atDate = %s
        """,
            (issue_id, d2),
        )
        if daily2:
            ncip_hldg = (
                round(float(daily2[0]["nciphldg"]) / sa, 0)
                if daily2[0]["nciphldg"]
                else 0
            )
            intermed_hldg = (
                round(float(daily2[0]["intermedhldg"]) / sa, 0)
                if daily2[0]["intermedhldg"]
                else 0
            )
            cip_hldg = (
                round(float(daily2[0]["ciphldg"]) / sa, 0)
                if daily2[0]["ciphldg"]
                else 0
            )
            intermed_cnt = daily2[0]["intermedcnt"] if daily2[0]["intermedcnt"] else 0
            cip_cnt = daily2[0]["cipcnt"] if daily2[0]["cipcnt"] else 0
            ncip_cnt = daily2[0]["ncipcnt"] if daily2[0]["ncipcnt"] else 0
        else:
            ncip_hldg = intermed_hldg = cip_hldg = 0
            intermed_cnt = cip_cnt = ncip_cnt = 0

        # Get dailylog data for d1
        daily1 = execute_query(
            """
            SELECT NCIPhldg
            FROM ccass.dailylog
            WHERE issueID = %s AND atDate = %s
        """,
            (issue_id, d1),
        )
        if daily1:
            ncip_chg = ncip_hldg - (
                float(daily1[0]["nciphldg"]) / adj if daily1[0]["nciphldg"] else 0
            )
        else:
            ncip_chg = ncip_hldg

        # Calculate summary totals
        sum_hold = sum(float(row["holding"]) for row in holdings_changes)
        sum_hldchg = sum(float(row["hldchg"]) for row in holdings_changes)

        nam_hldg = intermed_hldg + cip_hldg
        unch_hldg = nam_hldg - sum_hold
        ctot = ncip_hldg + cip_hldg + intermed_hldg
        non_ccass = issued - ncip_hldg - intermed_hldg - cip_hldg
        non_ccass_chg = issued_chg - ncip_chg - sum_hldchg

    except Exception as e:
        current_app.logger.error(f"Error calculating summary rows: {e}")
        sum_hold = sum_hldchg = 0
        ncip_hldg = intermed_hldg = cip_hldg = 0
        intermed_cnt = cip_cnt = ncip_cnt = 0
        ncip_chg = nam_hldg = unch_hldg = ctot = non_ccass = non_ccass_chg = 0

    # Get trading volume/turnover for settlement date range
    try:
        # Get trade date range from calendar
        trade_dates = execute_query(
            """
            SELECT MIN(tradeDate) as t1, MAX(tradeDate) as t2
            FROM ccass.calendar
            WHERE settleDate > %s AND settleDate <= %s
        """,
            (d1, d2),
        )
        if trade_dates and trade_dates[0]["t1"]:
            t1 = trade_dates[0]["t1"]
            t2 = trade_dates[0]["t2"]

            # Get volume and turnover
            vol_result = execute_query(
                """
                SELECT SUM(vol) AS vol, SUM(turn) AS turn
                FROM ccass.quotes
                WHERE atDate >= %s AND atDate <= %s AND issueID = %s
            """,
                (t1, t2, issue_id),
            )
            if vol_result and vol_result[0]["vol"] is not None:
                vol = float(vol_result[0]["vol"])
                turn = float(vol_result[0]["turn"]) if vol_result[0]["turn"] else 0
            else:
                vol = turn = None
                t1 = t2 = None
        else:
            vol = turn = None
            t1 = t2 = None
    except Exception as e:
        current_app.logger.error(f"Error getting trading volume: {e}")
        vol = turn = None
        t1 = t2 = None

    # Get HK stock listings for navigation bar
    try:
        hk_listings = execute_query(
            """
            SELECT sl.*, l.shortname, sl.stockcode, sl.firsttradedate,
                   sl.finaltradedate, sl.delistdate, sl.stockid
            FROM enigma.stocklistings sl
            JOIN enigma.listings l ON sl.stockexid = l.stockexid
            WHERE sl.stockexid IN (1, 20, 22, 23, 38, 71) AND sl.issueid = %s
            ORDER BY sl.firsttradedate
        """,
            (issue_id,),
        )
    except Exception as e:
        current_app.logger.error(f"Error fetching HK listings: {e}")
        hk_listings = []

    # Get current stock code for HKEX quote link
    try:
        stock_code_result = execute_query(
            """
            SELECT stockcode
            FROM enigma.stocklistings
            WHERE issueid = %s AND delistdate IS NULL
            ORDER BY firsttradedate DESC
            LIMIT 1
        """,
            (issue_id,),
        )
        current_stock_code = (
            stock_code_result[0]["stockcode"] if stock_code_result else None
        )
    except Exception as e:
        current_app.logger.error(f"Error fetching stock code: {e}")
        current_stock_code = None

    return render_template(
        "ccass/chldchg.html",
        issue_id=issue_id,
        stock_code=stock_code,
        stock_name=stock_name,
        person_id=person_id,
        sort=sort_param,
        d1=d1,
        d2=d2,
        holdings_changes=holdings_changes,
        adj=adj,
        issued=issued,
        issued_date=issued_date,
        old_issued=old_issued,
        issued_chg=issued_chg,
        issued_pc=issued_pc,
        sum_hold=sum_hold,
        sum_hldchg=sum_hldchg,
        nam_hldg=nam_hldg,
        unch_hldg=unch_hldg,
        ncip_hldg=ncip_hldg,
        ncip_chg=ncip_chg,
        ctot=ctot,
        non_ccass=non_ccass,
        non_ccass_chg=non_ccass_chg,
        intermed_cnt=intermed_cnt,
        cip_cnt=cip_cnt,
        ncip_cnt=ncip_cnt,
        vol=vol,
        turn=turn,
        t1=t1,
        t2=t2,
        hk_listings=hk_listings,
        current_stock_code=current_stock_code,
        now=datetime.now(),
    )
