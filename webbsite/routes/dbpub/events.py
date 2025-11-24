"""
Corporate events and documents
"""

from flask import Blueprint, render_template, request, abort, current_app, Response
from datetime import date, timedelta
import calendar
import io
import re
from webbsite.db import execute_query, get_db
from webbsite.asp_helpers import get_int, get_bool, get_str

bp = Blueprint("dbpub_events", __name__)


@bp.route("/enigma.events.asp")
def enigma_events():
    """
    Corporate enigma.events for a stock - port of enigma.events.asp
    Shows dividends, splits, rights issues, etc.

    Query params:
    - i: issueid
    - sc: stock code (alternative)
    - sort: sorting column (annddn/anndup, evntup/evntdn, exdtdn/exdtup)

    Tables used: enigma.events, enigma.capchangetypes, enigma.currencies, enigma.issue, enigma.organisations
    """
    issue_id = get_int("i", 0)
    stock_code = get_str("sc", "")
    sort_param = request.args.get("sort", "annddn")

    # Look up issueid from stock code if provided
    if stock_code and not issue_id:
        try:
            result = execute_query(
                """
                SELECT issueid
                FROM stocklistings
                WHERE stockCode = %s AND delistdate IS NULL
                ORDER BY firsttradedate DESC
                LIMIT 1
            """,
                (stock_code,),
            )
            if result and len(result) > 0:
                issue_id = result[0][0]
        except Exception as ex:
            current_app.logger.error(
                f"Error looking up stock code for enigma.events: {ex}"
            )

    # Get stock/company name
    stock_name = ""
    person_id = 0
    if issue_id:
        try:
            result = execute_query(
                """
                SELECT o.name1, o.personid
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personid
                WHERE i.id1 = %s
            """,
                (issue_id,),
            )
            if result and len(result) > 0:
                stock_name = result[0][0]
                person_id = result[0][1]
        except Exception as ex:
            current_app.logger.error(
                f"Error getting stock name for enigma.events: {ex}"
            )
            stock_name = f"Issue {issue_id}"

    # Determine sort order
    sort_orders = {
        "anndup": "announced, exDate, yearEnd",
        "annddn": "announced DESC, exDate DESC, yearEnd DESC",
        "evntup": "Change, announced DESC, yearEnd DESC",
        "evntdn": "Change DESC, announced DESC, yearEnd DESC",
        "exdtdn": "exDate DESC, announced DESC, yearEnd DESC",
        "exdtup": "exDate, announced, yearEnd",
    }
    ob = sort_orders.get(sort_param, "announced DESC, exDate DESC, yearEnd DESC")
    if sort_param not in sort_orders:
        sort_param = "annddn"

    # Query enigma.events
    events_list = []
    if issue_id:
        try:
            events_list = execute_query(
                f"""
                SELECT
                    e.eventid,
                    e.announced,
                    e.yearend,
                    ct.change,
                    e.price,
                    e.priceHKD,
                    e.new,
                    e.old,
                    e.exdate,
                    e.distdate,
                    e.notes,
                    e.canceldate,
                    c.currency,
                    e.fxdate
                FROM enigma.events e
                JOIN enigma.capchangetypes ct ON e.eventtype = ct.capchangetype
                LEFT JOIN enigma.currencies c ON e.currid = c.id
                WHERE e.issueid = %s
                ORDER BY {{ob}}
            """.format(
                    ob=ob
                ),
                (issue_id,),
            )
        except Exception as ex:
            current_app.logger.error(f"Error querying enigma.events: {ex}")
            events_list = []

    return render_template(
        "dbpub/enigma.events.html",
        issue_id=issue_id,
        person_id=person_id,
        stock_name=stock_name,
        enigma_events=events_list,
        sort=sort_param,
    )


# Alias route for backward compatibility (original ASP used /events.asp)
@bp.route("/events.asp")
def events():
    """Alias for enigma_events - backward compatibility with ASP site"""
    return enigma_events()


@bp.route("/eventdets.asp")
def eventdets():
    """
    Corporate event details

    Query params:
    - e: eventID

    Shows full details of a specific corporate action event
    """
    event_id = get_int("e", 1)

    # Get issue info from event
    issue_result = execute_query(
        """
        SELECT COALESCE(issueid, 0) AS issueid
        FROM enigma.events
        WHERE eventid = %s
    """,
        (event_id,),
    )

    if not issue_result:
        return "Event not found", 404

    issue_id = issue_result[0]["issueid"]

    # Get event details with all related data
    event_data = execute_query(
        """
        SELECT e.*,
               cct.change,
               cu.currency,
               COALESCE(e.distdate, e.exdate) AS dist_or_ex
        FROM enigma.events e
        JOIN enigma.capchangetypes cct ON e.eventtype = cct.capchangetype
        LEFT JOIN enigma.currencies cu ON e.currid = cu.id
        WHERE e.eventid = %s
    """,
        (event_id,),
    )

    if not event_data:
        return "Event not found", 404

    event = event_data[0]

    # Get issue2 details if exists
    issue2_data = None
    if event.get("issue2"):
        issue2_data = execute_query(
            """
            SELECT i.issuer,
                   o.name1
            FROM enigma.issue i
            JOIN enigma.organisations o ON i.issuer = o.personid
            WHERE i.id1 = %s
        """,
            (event["issue2"],),
        )

    # Get afterEvent details if exists (for bonus/warrant issues)
    after_event_type = None
    if event.get("afterevent"):
        after_event_data = execute_query(
            """
            SELECT eventtype FROM enigma.events WHERE eventid = %s
        """,
            (event["afterevent"],),
        )
        if after_event_data:
            after_event_type = after_event_data[0]["eventtype"]

    return render_template(
        "dbpub/eventdets.html",
        event_id=event_id,
        issue_id=issue_id,
        event=event,
        issue2_data=issue2_data[0] if issue2_data else None,
        after_event_type=after_event_type,
    )


# Documents


@bp.route("/docs.asp")
def docs():
    """
    Financial reports and documents for an organization

    Query params:
    - p: personID (organization)
    - sort: sorting column

    Shows annual reports, interim reports, quarterly reports with filing dates and speeds
    """
    person_id = get_int("p", 0)
    sort_param = request.args.get("sort", "recdn")

    if not person_id:
        return "PersonID required", 400

    # Sort order mapping
    sort_mappings = {
        "typup": "doclong, reportdate DESC",
        "typdn": "doclong DESC, reportdate",
        "repdn": "reportdate DESC, recorddate DESC",
        "repup": "reportdate, recorddate",
        "recup": "recorddate",
        "recdn": "recorddate DESC",
        "spddn": "doclong, speed DESC, recorddate",
        "spdup": "doclong, speed, recorddate DESC",
    }
    ob = sort_mappings.get(sort_param, "recorddate DESC")

    # Query documents (docTypeID 0=annual, 1=interim, 6=quarterly)
    docs_data = execute_query(
        f"""
        SELECT d.recorddate,
               d.reportdate,
               EXTRACT(DAY FROM (d.reportdate - d.recorddate))::INTEGER AS speed,
               dt.doclong,
               COALESCE(r.url, '') AS url,
               r.repfiled,
               r.fsize
        FROM enigma.documents d
        JOIN enigma.doctypes dt ON d.doctypeid = dt.doctypeid
        LEFT JOIN enigma.repfilings r ON d.repid = r.id
        WHERE d.doctypeid IN (0, 1, 6)
          AND d.orgid = %s
        ORDER BY {ob}
    """,
        (person_id,),
    )

    # Process URLs for display
    for doc in docs_data:
        if doc.get("url"):
            url = doc["url"]
            # Fix HTTPS to HTTP (legacy ASP code did this)
            if url.startswith("https"):
                url = "http" + url[5:]
            # Add HKEX prefix if not a full URL
            elif not url.startswith("http"):
                url = "https://www.hkexnews.hk/listedco/listconews/" + url
            doc["url"] = url

    return render_template(
        "dbpub/docs.html",
        person_id=person_id,
        docs_data=docs_data,
        sort_param=sort_param,
    )


# Articles and content
