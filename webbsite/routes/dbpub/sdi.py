"""
Significant Dealer Information (SDI) routes
"""

from flask import Blueprint, render_template, request, abort, current_app, Response
from datetime import date, timedelta
import calendar
import io
import re
from webbsite.db import execute_query, get_db
from webbsite.asp_helpers import get_int, get_bool, get_str

bp = Blueprint("dbpub_sdi", __name__)


@bp.route("/sdilatest.asp")
def sdilatest():
    """Latest SDI disclosures - latest 200 director & CEO dealings"""
    from flask import current_app

    sort_param = request.args.get("sort", "relddn")

    # Map sort parameters to ORDER BY clauses
    sort_map = {
        "codeup": "stockCode, name, relDate DESC",
        "codedn": "stockCode DESC, name, relDate DESC",
        "nameup": "name, oName, relDate DESC",
        "namedn": "name DESC, oName, relDate DESC",
        "stokup": "oName, name, relDate DESC",
        "stokdn": "oName DESC, name, relDate DESC",
        "rsnup": "rsnSht, oName, name, relDate DESC",
        "rsndn": "rsnSht DESC, oName, name, relDate DESC",
        "lvalup": "value, oName, name",
        "lvaldn": "value DESC, oName, name",
        "reldup": "relDate, oName, name",
        "relddn": "relDate DESC, oName, name",
    }
    ob = sort_map.get(sort_param, "relDate DESC, oName, name")

    try:
        # Complex query to get latest 200 SDI filings
        sdi = execute_query(
            f"""
            SELECT t2.id, t2.filing, t2.relDate, t2.issueID,
                   (SELECT sl.stockCode FROM enigma.stockListings sl
                    WHERE sl.issueID = t2.issueID AND sl.toDate IS NULL
                    ORDER BY sl.fromDate DESC LIMIT 1) AS stockCode,
                   t2.posType, r.rsnSht, r.rsnLng, t2.dir,
                   t2.shsInv, t2.longShs1, t2.longShs2, t2.shortShs1, t2.shortShs2,
                   t2.price, t2.avCon, t2.currency,
                   t2.longStk2, t2.shortStk2, t2.lngStkChg, t2.shtStkChg,
                   COALESCE(org.name1, CONCAT(pp.name1,
                            CASE WHEN pp.name2 IS NOT NULL THEN ', ' || pp.name2 ELSE '' END)) AS name,
                   CASE WHEN org.name1 IS NULL THEN 'P' ELSE 'O' END AS pType,
                   p.personID AS holderID,
                   COALESCE(t2.price, t2.avCon) * t2.shsInv AS value,
                   CONCAT(o.name1, ':', st.typeShort) AS oName,
                   c3.settleDate
            FROM (
                SELECT s.id, s.curr, s.filing, s.relDate, s.issueID, s.dir,
                       s.longShs1, s.longShs2, s.shortShs1, s.shortShs2,
                       COALESCE(s.avPrice, s.hiPrice) AS price, s.avCon,
                       s.longStk2, s.shortStk2, s.shsInv,
                       s.longStk2 - s.longStk1 AS lngStkChg,
                       s.shortStk2 - COALESCE(s.shortStk1, 0) AS shtStkChg
                FROM enigma.sdi s
                WHERE s.serNoSuper IS NULL
                ORDER BY s.relDate DESC
                LIMIT 200
            ) AS t2
            JOIN enigma.persons p ON t2.dir = p.personID
            JOIN enigma.sdievent se ON t2.id = se.sdiID
            JOIN enigma.sdireason r ON se.reason = r.id
            JOIN enigma.issue i ON t2.issueID = i.ID1
            JOIN enigma.organisations o ON i.issuer = o.personID
            JOIN enigma.secTypes st ON i.typeID = st.typeID
            LEFT JOIN enigma.organisations org ON p.personID = org.personID
            LEFT JOIN enigma.people pp ON p.personID = pp.personID
            LEFT JOIN enigma.currencies c ON t2.curr = c.id
            LEFT JOIN ccass.calendar c3 ON t2.relDate = c3.tradeDate
            ORDER BY {ob}
        """
        )
    except Exception as e:
        current_app.logger.error(f"Error querying SDI latest: {e}")
        sdi = []

    return render_template("dbpub/sdilatest.html", sdi=sdi, sort=sort_param)


@bp.route("/sdiissue.asp")
def sdiissue():
    """SDI disclosures for a specific stock"""
    from flask import current_app

    issue_id = get_int("i", 0)
    stock_code = request.args.get("sc", "")
    sort_param = request.args.get("sort", "relddn")

    # Map sort parameters to ORDER BY clauses
    sort_map = {
        "nameup": "name, relDate DESC",
        "namedn": "name DESC, relDate DESC",
        "rsnup": "rsnSht, relDate DESC",
        "rsndn": "rsnSht DESC, relDate DESC",
        "pricup": "currency, price, relDate DESC",
        "pricdn": "currency DESC, price DESC, relDate DESC",
        "lvalup": "value, relDate DESC",
        "lvaldn": "value DESC, relDate DESC",
        "reldup": "relDate, posType",
        "relddn": "relDate DESC, posType",
    }
    ob = sort_map.get(sort_param, "relDate DESC, posType")

    # Get stock info and convert stock code to issueID if needed
    stock_name = ""
    org_id = 0
    if stock_code and not issue_id:
        try:
            result = execute_query(
                """
                SELECT i.ID1 AS issueID, o.name1, o.personID, st.typeShort
                FROM enigma.stockListings sl
                JOIN enigma.issue i ON sl.issueID = i.ID1
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                WHERE sl.stockCode = %s AND sl.toDate IS NULL
                ORDER BY sl.fromDate DESC LIMIT 1
            """,
                (stock_code,),
            )
            if result:
                issue_id = result[0]["issueid"]
                stock_name = f"{result[0]['name1']}:{result[0]['typeshort']}"
                org_id = result[0]["personid"]
        except Exception as e:
            current_app.logger.error(f"Error looking up stock code: {e}")

    # Get stock info if we have issueID
    if issue_id and not stock_name:
        try:
            result = execute_query(
                """
                SELECT o.name1, o.personID, st.typeShort
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                WHERE i.ID1 = %s
            """,
                (issue_id,),
            )
            if result:
                stock_name = f"{result[0]['name1']}:{result[0]['typeshort']}"
                org_id = result[0]["personid"]
        except Exception as e:
            current_app.logger.error(f"Error getting stock info: {e}")

    sdi = []
    if issue_id:
        try:
            # Query SDI for specific stock
            sdi = execute_query(
                f"""
                SELECT t1.id, t1.name, t1.posType, t1.rsnSht, t1.rsnLng,
                       t1.filing, t1.relDate, t1.shsInv,
                       t1.longShs1, t1.longShs2, t1.shortShs1, t1.shortShs2,
                       t1.price, t1.avCon, t1.currency,
                       t1.longStk2, t1.shortStk2, t1.lngStkChg, t1.shtStkChg,
                       t1.personID, c3.settleDate,
                       COALESCE(t1.price, t1.avCon) * t1.shsInv AS value
                FROM (
                    SELECT s.id, s.posType, r.rsnSht, r.rsnLng, s.filing, s.relDate,
                           s.shsInv, s.longShs1, s.longShs2, s.longStk2,
                           s.shortShs1, s.shortShs2, s.shortStk2,
                           COALESCE(s.avPrice, s.hiPrice) AS price, s.avCon, c.currency,
                           s.longStk2 - s.longStk1 AS lngStkChg,
                           s.shortStk2 - COALESCE(s.shortStk1, 0) AS shtStkChg,
                           COALESCE(o.name1, CONCAT(pp.name1,
                                    CASE WHEN pp.name2 IS NOT NULL THEN ', ' || pp.name2 ELSE '' END)) AS name,
                           p.personID
                    FROM enigma.sdi s
                    JOIN enigma.persons p ON s.dir = p.personID
                    JOIN enigma.sdievent se ON s.id = se.sdiID
                    JOIN enigma.sdireason r ON se.probReason = r.id
                    LEFT JOIN enigma.people pp ON p.personID = pp.personID
                    LEFT JOIN enigma.organisations o ON p.personID = o.personID
                    LEFT JOIN enigma.currencies c ON s.curr = c.id
                    WHERE s.serNoSuper IS NULL AND s.issueID = %s
                ) AS t1
                LEFT JOIN ccass.calendar c3 ON t1.relDate = c3.tradeDate
                ORDER BY {ob}
            """,
                (issue_id,),
            )
        except Exception as e:
            current_app.logger.error(f"Error querying SDI for stock: {e}")
            sdi = []

    return render_template(
        "dbpub/sdiissue.html",
        issue_id=issue_id,
        stock_name=stock_name,
        org_id=org_id,
        sdi=sdi,
        sort=sort_param,
    )


@bp.route("/sdidir.asp")
def sdidir():
    """SDI disclosures by a specific director - shows all stocks where person has filed"""
    from flask import current_app

    person_id = get_int("p", 0)
    sort_param = request.args.get("sort", "stkup")

    # Map sort parameters to ORDER BY clauses
    sort_map = {
        "stakdn": "longStk2 DESC, stock",
        "stakup": "longStk2, stock",
        "ldatup": "maxDate, stock",
        "ldatdn": "maxDate DESC, stock",
        "stkdn": "stock DESC",
        "stkup": "stock",
    }
    ob = sort_map.get(sort_param, "stock")

    # Get person name
    person_name = ""
    if person_id:
        try:
            result = execute_query(
                """
                SELECT COALESCE(o.name1, CONCAT(p.name1,
                                CASE WHEN p.name2 IS NOT NULL THEN ', ' || p.name2 ELSE '' END)) AS name
                FROM enigma.persons ps
                LEFT JOIN enigma.organisations o ON ps.personID = o.personID
                LEFT JOIN enigma.people p ON ps.personID = p.personID
                WHERE ps.personID = %s
            """,
                (person_id,),
            )
            if result:
                person_name = result[0]["name"]
        except Exception as e:
            current_app.logger.error(f"Error getting person name: {e}")

    sdi = []
    if person_id:
        try:
            # Query all stocks where person has filed SDI, showing latest position
            sdi = execute_query(
                f"""
                SELECT t1.issueID,
                       CONCAT(o.name1, ':', st.typeShort) AS stock,
                       t1.maxDate, s.longShs2, s.longStk2
                FROM (
                    SELECT issueID, MAX(relDate) AS maxDate
                    FROM enigma.sdi
                    WHERE dir = %s
                    GROUP BY issueID
                ) t1
                JOIN enigma.sdi s ON t1.issueID = s.issueID
                                  AND t1.maxDate = s.relDate
                                  AND s.dir = %s
                JOIN enigma.issue i ON s.issueID = i.ID1
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                JOIN enigma.organisations o ON i.issuer = o.personID
                ORDER BY {ob}
            """,
                (person_id, person_id),
            )
        except Exception as e:
            current_app.logger.error(f"Error querying SDI by director: {e}")
            sdi = []

    return render_template(
        "dbpub/sdidir.html",
        person_id=person_id,
        person_name=person_name,
        sdi=sdi,
        sort=sort_param,
    )


@bp.route("/sdidirco.asp")
def sdidirco():
    """SDI cross-reference: director and company - all dealings by person in stock"""
    from flask import current_app

    person_id = get_int("p", 0)
    issue_id = get_int("i", 0)
    sort_param = request.args.get("sort", "relddn")

    # Map sort parameters to ORDER BY clauses
    sort_map = {
        "rsnup": "rsnSht, relDate DESC",
        "rsndn": "rsnSht DESC, relDate DESC",
        "pricup": "currency, price, relDate DESC",
        "pricdn": "currency DESC, price DESC, relDate DESC",
        "lvalup": "value, relDate DESC",
        "lvaldn": "value DESC, relDate DESC",
        "reldup": "relDate, posType",
        "relddn": "relDate DESC, posType",
    }
    ob = sort_map.get(sort_param, "relDate DESC, posType")

    # Get person name and org status
    person_name = ""
    is_org = False
    if person_id:
        try:
            result = execute_query(
                """
                SELECT COALESCE(o.name1, CONCAT(p.name1,
                                CASE WHEN p.name2 IS NOT NULL THEN ', ' || p.name2 ELSE '' END)) AS name,
                       CASE WHEN o.name1 IS NOT NULL THEN TRUE ELSE FALSE END AS is_org
                FROM enigma.persons ps
                LEFT JOIN enigma.organisations o ON ps.personID = o.personID
                LEFT JOIN enigma.people p ON ps.personID = p.personID
                WHERE ps.personID = %s
            """,
                (person_id,),
            )
            if result:
                person_name = result[0]["name"]
                is_org = result[0]["is_org"]
        except Exception as e:
            current_app.logger.error(f"Error getting person name: {e}")

    # Get stock info
    stock_name = ""
    org_id = 0
    if issue_id:
        try:
            result = execute_query(
                """
                SELECT o.name1, o.personID, st.typeShort
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                WHERE i.ID1 = %s
            """,
                (issue_id,),
            )
            if result:
                stock_name = f"{result[0]['name1']}:{result[0]['typeshort']}"
                org_id = result[0]["personid"]
        except Exception as e:
            current_app.logger.error(f"Error getting stock info: {e}")

    sdi = []
    if person_id and issue_id:
        try:
            # Query all dealings by person in specific stock
            sdi = execute_query(
                f"""
                SELECT t1.id, t1.posType, t1.rsnSht, t1.rsnLng,
                       t1.filing, t1.relDate, t1.shsInv,
                       t1.longShs1, t1.longShs2, t1.shortShs1, t1.shortShs2,
                       t1.price, t1.avCon, t1.currency,
                       t1.longStk2, t1.shortStk2, t1.lngStkChg, t1.shtStkChg,
                       t1.capShort, t1.capLong, c3.settleDate,
                       COALESCE(t1.price, t1.avCon) * t1.shsInv AS value
                FROM (
                    SELECT s.id, s.posType, r.rsnSht, r.rsnLng, s.filing, s.relDate,
                           s.shsInv, s.longShs1, s.longShs2, s.shortShs1, s.shortShs2,
                           COALESCE(s.capAfter, s.capBefore) AS capID,
                           COALESCE(s.avPrice, s.hiPrice) AS price, s.avCon, c.currency,
                           s.longStk2, s.longStk2 - s.longStk1 AS lngStkChg,
                           s.shortStk2, s.shortStk2 - COALESCE(s.shortStk1, 0) AS shtStkChg,
                           cap.capShort, cap.capLong
                    FROM enigma.sdi s
                    JOIN enigma.sdievent se ON s.id = se.sdiID
                    JOIN enigma.sdireason r ON se.probReason = r.id
                    LEFT JOIN enigma.currencies c ON s.curr = c.id
                    LEFT JOIN enigma.capacity cap ON COALESCE(s.capAfter, s.capBefore) = cap.id
                    WHERE s.serNoSuper IS NULL
                      AND s.issueID = %s
                      AND s.dir = %s
                ) AS t1
                LEFT JOIN ccass.calendar c3 ON t1.relDate = c3.tradeDate
                ORDER BY {ob}
            """,
                (issue_id, person_id),
            )
        except Exception as e:
            current_app.logger.error(f"Error querying SDI for person+stock: {e}")
            sdi = []

    return render_template(
        "dbpub/sdidirco.html",
        person_id=person_id,
        person_name=person_name,
        is_org=is_org,
        issue_id=issue_id,
        stock_name=stock_name,
        org_id=org_id,
        sdi=sdi,
        sort=sort_param,
    )


@bp.route("/sdicap.asp")
def sdicap():
    """SDI filing details - full details of a single SDI filing"""
    from flask import current_app

    sdi_id = get_int("r", 0)

    # Initialize context variables
    person_name = ""
    is_org = False
    person_id = 0
    stock_name = ""
    org_id = 0
    issue_id = 0
    filing_data = None
    events = []
    capacities = []

    if sdi_id:
        try:
            # Get main filing data
            result = execute_query(
                """
                SELECT COALESCE(o.name1, CONCAT(pp.name1,
                                CASE WHEN pp.name2 IS NOT NULL THEN ', ' || pp.name2 ELSE '' END)) AS name,
                       CASE WHEN pp.name1 IS NULL THEN TRUE ELSE FALSE END AS isOrg,
                       s.dir, s.filing, s.serNo, s.issueID, s.relDate, s.awDate, s.signDate,
                       s.longShs1, s.longShs2, s.shortShs1, s.shortShs2,
                       s.longStk1, s.longStk2, s.shortStk1, s.shortStk2, s.shsOut,
                       s.avPrice, s.hiPrice, s.avCon, c1.currency, c2.settleDate,
                       q.high, q.low, q.vol, q.turn
                FROM enigma.sdi s
                JOIN enigma.persons p ON s.dir = p.personID
                LEFT JOIN enigma.organisations o ON p.personID = o.personID
                LEFT JOIN enigma.people pp ON p.personID = pp.personID
                LEFT JOIN enigma.currencies c1 ON s.curr = c1.id
                LEFT JOIN ccass.calendar c2 ON s.relDate = c2.tradeDate
                LEFT JOIN ccass.quotes q ON s.relDate = q.atDate AND s.issueID = q.issueID
                WHERE s.id = %s
            """,
                (sdi_id,),
            )

            if result and result[0]:
                filing_data = result[0]
                person_name = filing_data["name"]
                is_org = filing_data["isorg"]
                person_id = filing_data["dir"]
                issue_id = filing_data["issueid"]

                # Get stock info
                stock_result = execute_query(
                    """
                    SELECT o.name1, o.personID, st.typeShort
                    FROM enigma.issue i
                    JOIN enigma.organisations o ON i.issuer = o.personID
                    JOIN enigma.secTypes st ON i.typeID = st.typeID
                    WHERE i.ID1 = %s
                """,
                    (issue_id,),
                )
                if stock_result:
                    stock_name = (
                        f"{stock_result[0]['name1']}:{stock_result[0]['typeshort']}"
                    )
                    org_id = stock_result[0]["personid"]

                # Get event details (long and short events)
                events = execute_query(
                    """
                    SELECT se.shsInv, se.posType,
                           c1.capLong AS capBef, c2.capLong AS capAft,
                           r1.rsnLng AS rsnLng1, r2.rsnLng AS rsnLng2
                    FROM enigma.sdievent se
                    JOIN enigma.sdireason r1 ON se.reason = r1.id
                    JOIN enigma.sdireason r2 ON se.probReason = r2.id
                    LEFT JOIN enigma.capacity c1 ON se.capBefore = c1.id
                    LEFT JOIN enigma.capacity c2 ON se.capAfter = c2.id
                    WHERE se.sdiID = %s
                    ORDER BY se.posType
                """,
                    (sdi_id,),
                )

                # Get capacity breakdown after the event
                capacities = execute_query(
                    """
                    SELECT sc.capID, sc.posType, sc.shares, cap.capLong
                    FROM enigma.sdicap sc
                    JOIN enigma.capacity cap ON sc.capID = cap.id
                    WHERE sc.sdiID = %s
                    ORDER BY sc.capID, sc.posType
                """,
                    (sdi_id,),
                )

        except Exception as e:
            current_app.logger.error(f"Error querying SDI filing details: {e}")

    return render_template(
        "dbpub/sdicap.html",
        sdi_id=sdi_id,
        person_id=person_id,
        person_name=person_name,
        is_org=is_org,
        issue_id=issue_id,
        stock_name=stock_name,
        org_id=org_id,
        filing_data=filing_data,
        events=events,
        capacities=capacities,
    )


@bp.route("/sdiNotes.asp")
def sdi_notes():
    """SDI system notes and explanation"""
    return render_template("dbpub/sdi_notes.html")


# SFC (Securities and Futures Commission) routes
