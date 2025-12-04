"""
Corporate structure - officers, advisers, positions, holders
"""

from flask import Blueprint, render_template, request, abort, current_app, Response
from datetime import date, timedelta
import calendar
import io
import re
from webbsite.db import execute_query, get_db
from webbsite.asp_helpers import get_int, get_bool, get_str

bp = Blueprint("dbpub_corporate", __name__)


@bp.route("/advisers.asp")
def advisers():
    """
    Port of dbpub/advisers.asp
    Shows advisers (auditors, solicitors, etc.) for an organization

    Query params:
    - p: personID of organization
    - d: snapshot date
    - hide: Y=current only, N=show history
    - u: exclude unknown removal dates
    - sort: sorting column

    Tables used: enigma.adviserships, enigma.organisations, roles
    """
    person_id = request.args.get("p", type=int)
    d = request.args.get("d", str(date.today()))
    hide = request.args.get("hide", "N")  # ASP defaults to 'N' (show history)
    u = request.args.get("u", type=bool, default=False)
    sort_param = request.args.get("sort", "advup")

    if not person_id:
        return "PersonID required", 400

    # Get organization name (with Chinese name if available, like ASP fnameOrg function)
    try:
        org_result = execute_query(
            "SELECT name1, cname FROM enigma.organisations WHERE personid = %s",
            (person_id,),
        )
        if org_result:
            name1 = org_result[0]["name1"]
            cname = org_result[0].get("cname")
            # Concatenate English and Chinese names like ASP does
            org_name = name1 + (" " + cname if cname else "")
        else:
            org_name = "No such organisation"
            person_id = 0  # ASP sets personID to 0 for non-existent orgs
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        current_app.logger.error(f"Error getting org name for advisers.asp: {ex}")
        org_name = "No such organisation"
        person_id = 0

    # Build date filter for enigma.webadv view
    # Note: Simplified - not using accuracy columns for MVP
    date_filter = "(adddate IS NULL OR adddate <= %s)"
    params = [d]

    if hide == "Y":
        # Current only: remDate IS NULL OR remDate > snapshot_date OR remDate = '1000-01-01'
        date_filter += (
            " AND (remdate IS NULL OR remdate > %s OR remdate = '1000-01-01')"
        )
        params.append(d)

    if u:
        # Exclude unknown removal dates (1000-01-01 placeholder)
        date_filter += " AND (remdate IS NULL OR remdate != '1000-01-01')"

    # Determine sort order (using webadv view column names)
    sort_orders = {
        "advup": "adv, adddate, role",
        "advdn": "adv DESC, adddate, role",
        "rolup": "role, adv, adddate",
        "roldn": "role DESC, adv, adddate",
        "addup": "adddate, adv, role",
        "adddn": "adddate DESC, adv, role",
        "remup": "remdate, adv, adddate, role",
        "remdn": "remdate DESC, adv, adddate, role",
    }
    ob = sort_orders.get(sort_param, "adv, adddate, role")
    if sort_param not in sort_orders:
        sort_param = "advup"

    # Query regular advisers (continuing roles like auditors)
    # Use WebAdv view like ASP does - much simpler than manual joins
    regular_sql = f"""
        SELECT
            advid AS AdvID,
            adv AS AdvName,
            roleid,
            role,
            adddate,
            remdate
        FROM enigma.webadv
        WHERE NOT onetime
          AND orgid = %s
          AND {date_filter}
        ORDER BY {ob}
    """
    params_regular = [person_id] + params

    try:
        regular_results = execute_query(regular_sql, tuple(params_regular))
        regular_advisers = []
        for row in regular_results:
            regular_advisers.append(
                {
                    "AdvID": row["advid"],
                    "AdvName": row["advname"],
                    "roleID": row["roleid"],
                    "role": row["role"],
                    "addDate": row["adddate"],
                    "remDate": row["remdate"],
                }
            )
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        current_app.logger.error(
            f"Error in advisers.asp (regular): {type(ex).__name__}: {ex}", exc_info=True
        )
        regular_advisers = []

    # Query one-time advisers (transaction-specific like IFAs)
    # Use WebAdv view like ASP does
    onetime_sql = f"""
        SELECT
            advid AS AdvID,
            adv AS AdvName,
            roleid,
            role,
            adddate
        FROM enigma.webadv
        WHERE onetime = TRUE
          AND orgid = %s
          AND {date_filter}
        ORDER BY {ob}
    """
    # One-time advisers use same date filter as regular
    params_onetime = [person_id] + params

    try:
        onetime_results = execute_query(onetime_sql, tuple(params_onetime))
        onetime_advisers = []
        for row in onetime_results:
            onetime_advisers.append(
                {
                    "AdvID": row["advid"],
                    "AdvName": row["advname"],
                    "roleID": row["roleid"],
                    "role": row["role"],
                    "addDate": row["adddate"],
                }
            )
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        current_app.logger.error(
            f"Error in advisers.asp (one-time): {type(ex).__name__}: {ex}",
            exc_info=True,
        )
        onetime_advisers = []

    # Get today's date for the clear button
    today = date.today().strftime("%Y-%m-%d")

    return render_template(
        "dbpub/advisers.html",
        person_id=person_id,
        org_name=org_name,
        regular_advisers=regular_advisers,
        onetime_advisers=onetime_advisers,
        d=d,
        today=today,
        hide=hide,
        u=u,
        sort=sort_param,
    )


@bp.route("/officers.asp")
def officers():
    """
    Port of dbpub/officers.asp
    Shows directors and officers for an organization

    Query params:
    - p: personID of organization
    - d: snapshot date
    - hide: Y=current only, N=show history
    - u: exclude unknown resignation dates
    - sort: sorting column

    Tables used: enigma.directorships, people, enigma.positions, rank
    """
    person_id = request.args.get("p", type=int)
    d = request.args.get("d", str(date.today()))
    hide = request.args.get("hide", "N")  # ASP defaults to N (show history)
    u = request.args.get("u", type=bool, default=False)
    sort_param = request.args.get("sort", "namup")

    if not person_id:
        return "PersonID required", 400

    # Get organization name
    try:
        org_result = execute_query(
            "SELECT name1 FROM enigma.organisations WHERE personid = %s", (person_id,)
        )
        if org_result:
            org_name = org_result[0]["name1"]
        else:
            org_name = "No such organisation"
            person_id = 0  # ASP sets personID to 0 for non-existent orgs
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        current_app.logger.error(f"Error getting org name for officers.asp: {ex}")
        org_name = "No such organisation"
        person_id = 0

    # Build date filter for enigma.directorships (right-open interval logic)
    # Note: Using from_date/until columns based on enigma schema
    date_filter = "(d.apptdate IS NULL OR d.apptdate <= %s)"
    params = [d]

    if hide == "Y":
        # Current only: until IS NULL OR until > snapshot_date
        date_filter += " AND (d.resdate IS NULL OR d.resdate > %s)"
        params.append(d)

    if u:
        # Exclude unknown resignation dates (1000-01-01 placeholder)
        date_filter += " AND (d.resdate IS NULL OR d.resdate != '1000-01-01')"

    # Determine sort order
    sort_orders = {
        "namup": "PersonName, d.apptdate",
        "namdn": "PersonName DESC, d.apptdate",
        "appup": "d.apptdate, PersonName",
        "appdn": "d.apptdate DESC, PersonName",
        "resup": "d.resdate, PersonName",
        "resdn": "d.resdate DESC, PersonName",
        "posup": "pos.posShort, PersonName, d.apptdate",
        "posdn": "pos.posShort DESC, PersonName, d.apptdate",
    }
    ob = sort_orders.get(sort_param, "PersonName, d.apptdate")
    if sort_param not in sort_orders:
        sort_param = "namup"

    # Query enigma.directorships grouped by rank
    # Note: Simplified - using COALESCE to handle both people and enigma.organisations as directors
    sql = f"""
        SELECT
            r.rankID,
            r.RankText,
            d.director AS director,
            COALESCE(
                CASE
                    WHEN p.personID IS NOT NULL THEN
                        CASE
                            WHEN p.name2 IS NOT NULL THEN p.name1 || ', ' || p.name2
                            ELSE p.name1
                        END
                    ELSE o.name1
                END
            ) AS PersonName,
            pos.posShort,
            pos.posLong,
            p.sex,
            p.YOB,
            d.apptdate,
            d.resdate
        FROM enigma.directorships d
        JOIN enigma.positions pos ON d.positionid = pos.positionid
        JOIN rank r ON pos.rank = r.rankID
        LEFT JOIN enigma.people p ON d.director = p.personid
        LEFT JOIN enigma.organisations o ON d.director = o.personid
        WHERE d.company = %s
          AND {date_filter}
        ORDER BY r.rankID, {ob}
    """
    params = [person_id] + params

    try:
        results = execute_query(sql, tuple(params))

        # Group by rank
        officers_by_rank = {}
        for row in results:
            rank_id = row["rankid"]
            rank_text = row["ranktext"]

            if rank_id not in officers_by_rank:
                officers_by_rank[rank_id] = {"rankText": rank_text, "officers": []}

            officers_by_rank[rank_id]["officers"].append(
                {
                    "director": row["director"],
                    "PersonName": row["personname"],
                    "posShort": row["posshort"],
                    "posLong": row["poslong"],
                    "sex": row["sex"],
                    "YOB": row["yob"],
                    "from_date": row["apptdate"],
                    "until": row["resdate"],
                }
            )
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        current_app.logger.error(
            f"Error in officers.asp: {type(ex).__name__}: {ex}", exc_info=True
        )
        officers_by_rank = {}

    return render_template(
        "dbpub/officers.html",
        person_id=person_id,
        org_name=org_name,
        officers_by_rank=officers_by_rank,
        d=d,
        hide=hide,
        u=u,
        sort=sort_param,
        today=str(date.today()),
    )


@bp.route("/splits.asp")
def splits():
    """
    Port of dbpub/splits.asp
    Stock splits, consolidations, and bonus issues

    Query params:
    - e: exchange (m=Main Board, g=GEM, s=Secondary, r=REIT, c=CIS, a=All)
    - t: type (s=splits/consols, b=bonus, a=both)
    - sort: sorting column

    Tables used: enigma.events, enigma.issue, enigma.organisations, enigma.capchangetypes, sectypes, stocklistings
    """
    sort_param = request.args.get("sort", "exdtdn")
    e = request.args.get("e", "a")
    t = request.args.get("t", "a")

    # Sort order mapping
    sort_orders = {
        "stckup": "Name1, announced DESC",
        "stckdn": "Name1 DESC, announced DESC",
        "exdtdn": "exDate DESC, stockCode",
        "exdtup": "exDate, stockCode",
        "adjudn": "adjust DESC, announced DESC",
        "adjuup": "adjust, announced DESC",
        "codeup": "stockCode, exDate DESC",
        "codedn": "stockCode DESC, exDate DESC",
    }
    ob = sort_orders.get(sort_param, "exDate DESC, name1")
    if sort_param not in sort_orders:
        sort_param = "exdtdn"

    # Exchange filter mapping
    exchange_filters = {
        "m": ("=1", "Main Board primary-listed"),
        "g": ("=20", "Growth Enterprise Market"),
        "s": ("=22", "Secondary-listed"),
        "r": ("=23", "Real Estate Investment Trust"),
        "c": ("=38", "Collective Investment Scheme"),
        "a": (" IN (1,20,22)", "Main Board, GEM and secondary"),
    }
    e_str, title = exchange_filters.get(e, exchange_filters["a"])

    # Type filter mapping
    type_filters = {
        "s": ("=4", " splits and consolidations"),
        "b": ("=5", " bonus issues"),
        "a": (" IN(4,5)", " splits, consolidations and bonus issues"),
    }
    sql, type_suffix = type_filters.get(t, type_filters["a"])
    title += type_suffix

    # Query splits, consolidations, and bonus issues
    query = f"""
        SELECT e.eventid, ct.change, e.exdate, o.name1, st.typeshort,
               e.issueid, e.new, e.old, e.adjust, sl.stockcode
        FROM enigma.events e
        JOIN enigma.issue i ON e.issueid = i.id1
        JOIN enigma.organisations o ON i.issuer = o.personid
        JOIN enigma.capchangetypes ct ON e.eventtype = ct.capchangetype
        JOIN enigma.sectypes st ON i.typeid = st.typeid
        JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
        WHERE e.canceldate IS NULL
          AND sl.stockexid {e_str}
          AND (sl.firsttradedate IS NULL OR sl.firsttradedate <= e.exdate)
          AND (sl.delistdate IS NULL OR sl.delistdate > e.exdate)
          AND e.eventtype {sql}
        ORDER BY {ob}
    """

    try:
        results = execute_query(query)
        events_list = []
        for row in results:
            events_list.append(
                {
                    "eventID": row["eventid"],
                    "change": row["change"],
                    "exDate": row["exdate"],
                    "name1": row["name1"],
                    "typeShort": row["typeshort"],
                    "issueID": row["issueid"],
                    "new": row["new"],
                    "old": row["old"],
                    "adjust": row["adjust"],
                    "stockCode": row["stockcode"],
                }
            )
    except Exception as ex:
        current_app.logger.error(
            f"Error in splits.asp: {type(ex).__name__}: {ex}", exc_info=True
        )
        events_list = []

    return render_template(
        "dbpub/splits.html",
        title=title,
        events=events_list,
        sort=sort_param,
        e=e,
        t=t,
    )


@bp.route("/positions.asp")
def positions():
    """
    Port of dbpub/positions.asp
    Shows executive positions held by a person or organization across multiple companies

    Query params:
    - p: personID of person/organization
    - f: from date (start date filter)
    - t: to date (end date filter)
    - c: include new appointments after start date (boolean)
    - n: show old organization names (boolean)
    - hide: Y=current only, N=show history
    - sort: sorting parameter
    - y: years for CAGR calculation (default 1)

    Tables used: enigma.directorships, positions, organisations, rank, hklistedordsever
    """
    person_id = get_int("p", 0)
    if not person_id:
        return "PersonID required", 400

    # Get parameters
    from_date = request.args.get("f", "")
    to_date = request.args.get("t", "")
    c = get_bool("c")  # include new appointments
    n = get_bool("n")  # show old org names
    hide = request.args.get("hide", "N")  # ASP defaults to N (show history)
    sort_param = request.args.get("sort", "orgup")
    years = request.args.get("y", type=float, default=1.0)
    days = round(years * 365.25, 0)

    # Get person/org name
    try:
        # Try person first (positions is typically for people)
        person_result = execute_query(
            "SELECT name1, name2, cname FROM enigma.people WHERE personid = %s",
            (person_id,),
        )
        if person_result:
            # Format: "name1, name2 cname" for people
            person_name = person_result[0]["name1"]
            if person_result[0].get("name2"):
                person_name += ", " + person_result[0]["name2"]
            if person_result[0].get("cname"):
                person_name += " " + person_result[0]["cname"]
            is_org = False
        else:
            # Try organization
            org_result = execute_query(
                "SELECT name1, cname FROM enigma.organisations WHERE personid = %s",
                (person_id,),
            )
            if org_result:
                person_name = org_result[0]["name1"]
                if org_result[0].get("cname"):
                    person_name += " " + org_result[0]["cname"]
                is_org = True
            else:
                return "Person/Organization not found", 404
    except Exception as ex:
        current_app.logger.error(f"Error getting person/org name: {ex}")
        return "Error retrieving data", 500

    # Build ORDER BY clause based on sort parameter
    order_by_map = {
        "orgup": "name1, apptDate",
        "orgdn": "name1 DESC, apptDate",
        "posup": "posShort, name1",
        "posdn": "posShort DESC, name1",
        "appup": "apptDate, name1",
        "appdn": "apptDate DESC, name1",
        "resup": "resDate, name1",
        "resdn": "resDate DESC, name1",
        "totup": "totRet, name1",
        "totdn": "totRet DESC, name1",
        "cagretup": "CAGret, name1",
        "cagretdn": "CAGret DESC, name1",
        "cagrelup": "CAGrel, name1",
        "cagreldn": "CAGrel DESC, name1",
    }
    order_by = order_by_map.get(sort_param, "name1, apptDate")

    # Build date filter conditions
    hide_str = ""
    if from_date == "":
        if to_date == "":
            if hide == "Y":
                hide_str = " AND (resDate IS NULL OR resDate > CURRENT_DATE)"
        else:
            hide_str = f" AND (apptDate IS NULL OR apptDate < '{to_date}')"
            if hide == "Y":
                hide_str += f" AND (resDate IS NULL OR resDate > '{to_date}')"
    elif to_date == "":
        if not c:
            hide_str = f" AND (apptDate IS NULL OR apptDate <= '{from_date}')"
        if hide == "Y":
            hide_str += " AND (resDate IS NULL OR resDate > CURRENT_DATE)"
        else:
            hide_str += f" AND (resDate IS NULL OR resDate > '{from_date}')"
    else:
        if not c:
            hide_str = f" AND (apptDate IS NULL OR apptDate <= '{from_date}')"
        else:
            hide_str = f" AND (apptDate IS NULL OR apptDate <= '{to_date}')"
        if hide == "Y":
            hide_str += f" AND (resDate IS NULL OR resDate > '{to_date}')"

    # Get rank categories
    try:
        ranks = execute_query("SELECT rankID, RankText FROM enigma.rank ORDER BY rankID")
    except Exception as ex:
        current_app.logger.error(f"Error getting ranks: {ex}")
        ranks = []

    # Build results by rank
    rank_data = []
    any_returns = False

    for rank in ranks:
        rank_id = rank["rankid"]
        rank_text = rank["ranktext"]

        # Build query for this rank
        # Note: simplified version without full total return calculations
        # Full implementation would need totRet, CAGret, CAGrel functions
        sql = f"""
            SELECT
                company,
                {f"enigma.orgname(company, COALESCE(apptDate, resDate)) AS orgName," if n else ""}
                o.name1,
                apptDate,
                resDate,
                p.posShort,
                p.posLong,
                CASE WHEN i.issuer IS NOT NULL THEN 1 ELSE 0 END as is_listed
            FROM enigma.directorships d
            JOIN enigma.organisations o ON company = o.personid
            JOIN enigma.positions p ON d.positionid = p.positionid
            LEFT JOIN enigma.listedcoshkever i ON company = i.issuer
            WHERE rank = %s AND director = %s {hide_str}
            ORDER BY {order_by}
        """

        try:
            positions = execute_query(sql, (rank_id, person_id))

            if positions:
                # Check if any have returns (is_listed flag set)
                has_returns = any(pos.get("is_listed") == 1 for pos in positions)
                if has_returns:
                    any_returns = True

                rank_data.append({
                    "rank_text": rank_text,
                    "positions": positions,
                    "has_returns": has_returns
                })
        except Exception as ex:
            current_app.logger.error(f"Error getting positions for rank {rank_id}: {ex}")
            continue

    return render_template(
        "dbpub/positions.html",
        person_name=person_name,
        p=person_id,
        is_org=is_org,
        rank_data=rank_data,
        any_returns=any_returns,
        hide=hide,
        sort=sort_param,
        from_date=from_date,
        to_date=to_date,
        c=c,
        n=n,
    )


@bp.route("/holders.asp")
def holders():
    """
    Recursive ownership tree - shows who owns a company

    Query params:
    - p: personID of company
    - x: expand mode (n=direct, c=condensed, y=expanded)
    - s1: sort parameter

    Tables used: webholders3 view, issue, issuedshares
    """
    person_id = get_int("p", 0)
    expand = request.args.get("x", "n")
    sort_param = request.args.get("s1", "stakdn")

    if not person_id:
        return "PersonID required", 400

    # Get all qualifying issues for this person/company
    # Exclude warrants (1,2), rights (40,41), structured products (46)
    issues_data = execute_query(
        """
        SELECT i.id1 AS issueid,
               st.typelong,
               COALESCE(
                   (SELECT os.atdate
                    FROM enigma.issuedshares os
                    WHERE os.issueid = i.id1
                    ORDER BY os.atdate DESC
                    LIMIT 1), NULL) AS osdate,
               COALESCE(
                   (SELECT os.outstanding
                    FROM enigma.issuedshares os
                    WHERE os.issueid = i.id1
                    ORDER BY os.atdate DESC
                    LIMIT 1), NULL) AS outstanding
        FROM enigma.issue i
        JOIN enigma.sectypes st ON i.typeid = st.typeid
        WHERE i.issuer = %s
          AND i.typeid NOT IN (1, 2, 40, 41, 46)
        ORDER BY i.id1
    """,
        (person_id,),
    )

    if not issues_data:
        return render_template(
            "dbpub/holders.html", person_id=person_id, issues_data=[], expand=expand
        )

    # Sort order mapping
    sort_mappings = {
        "stakdn": "stakecomp DESC, name",
        "stakup": "stakecomp, name",
        "namedn": "name DESC",
        "nameup": "name",
        "datedn": "holdingdate DESC, name",
        "dateup": "holdingdate, name",
    }
    ob = sort_mappings.get(sort_param, "stakecomp DESC, name")

    # Process each issue
    issues_with_holders = []
    for issue_data in issues_data:
        issue_id = issue_data["issueid"]

        if expand == "n":
            # Direct mode - simple table
            holders = execute_query(
                f"""
                SELECT *,
                       CASE
                           WHEN shares IS NOT NULL AND shares > 0 THEN
                               shares / NULLIF(
                                   (SELECT outstanding
                                    FROM enigma.issuedshares
                                    WHERE issueid = %s
                                      AND atdate <= CURRENT_DATE
                                    ORDER BY atdate DESC
                                    LIMIT 1), 0)
                           ELSE stake
                       END AS stakecomp
                FROM enigma.webholders3
                WHERE issue = %s
                  AND (shares > 0 OR stake > 0 OR (shares IS NULL AND stake IS NULL))
                ORDER BY {ob}
            """,
                (issue_id, issue_id),
            )

            issues_with_holders.append(
                {"issue_data": issue_data, "holders": holders, "mode": "direct"}
            )
        else:
            # Expanded or condensed mode - recursive tree
            holders_tree = []
            seen_holders = {person_id: -1}  # Track to detect cross-holdings
            _build_holders_tree(
                issue_id, 0, 0, ob, holders_tree, seen_holders, expand == "c"
            )

            # For condensed mode, apply aggregation and sorting
            if expand == "c":
                _aggregate_condensed_holders(holders_tree)

                # Determine sort key and direction from sort_param
                sort_key_map = {
                    "stakdn": (lambda h: h.get("stakecomp") or 0, True),
                    "stakup": (lambda h: h.get("stakecomp") or 0, False),
                    "namedn": (lambda h: (h.get("name") or "").lower(), True),
                    "nameup": (lambda h: (h.get("name") or "").lower(), False),
                    "datedn": (lambda h: h.get("holdingdate") or "", True),
                    "dateup": (lambda h: h.get("holdingdate") or "", False),
                }
                sort_key_func, reverse = sort_key_map.get(
                    sort_param, (lambda h: h.get("stakecomp") or 0, True)
                )

                _sort_holders_tree(holders_tree, 0, 0, sort_key_func, reverse)

            issues_with_holders.append(
                {
                    "issue_data": issue_data,
                    "holders_tree": holders_tree,
                    "mode": "expanded" if expand == "y" else "condensed",
                }
            )

    return render_template(
        "dbpub/holders.html",
        person_id=person_id,
        issues_with_holders=issues_with_holders,
        expand=expand,
        sort_param=sort_param,
    )


def _build_holders_tree(
    issue_id, parent_idx, level, ob, tree, seen_holders, is_condensed
):
    """
    Recursive function to build ownership tree

    Args:
        issue_id: Issue whose holders to retrieve
        parent_idx: Index of parent node in tree
        level: Depth level in tree
        ob: ORDER BY clause
        tree: List to append results to
        seen_holders: Dict mapping personID -> first occurrence index (for cross-holding detection)
        is_condensed: If True, hide 100%-owned intermediates

    Algorithm mirrors the ASP holdersGen() subroutine:
    - Get all holders of this issue
    - For each holder that is an organization:
      - Check if already seen (cross-holding)
      - If not seen and not listed company, recursively get their issues and holders
      - Mark as visible if: stake != 100%, cross-holding, listed company, or multiple issues
    """
    # Get holders of this issue
    holders = execute_query(
        f"""
        SELECT *,
               CASE
                   WHEN shares IS NOT NULL AND shares > 0 THEN
                       shares / NULLIF(
                           (SELECT outstanding
                            FROM enigma.issuedshares
                            WHERE issueid = %s
                              AND atdate <= CURRENT_DATE
                            ORDER BY atdate DESC
                            LIMIT 1), 0)
                   ELSE stake
               END AS stakecomp
        FROM enigma.webholders3
        WHERE issue = %s
          AND (shares > 0 OR stake > 0 OR (shares IS NULL AND stake IS NULL))
        ORDER BY {ob}
    """,
        (issue_id, issue_id),
    )

    # If no holders, mark parent as visible
    if not holders:
        if parent_idx >= 0:
            tree[parent_idx]["visible"] = True
        return

    for holder in holders:
        holder_id = holder["personid"]
        stake = holder.get("stakecomp")
        current_idx = len(tree)

        # Add this holder to tree
        tree.append(
            {
                "holder": holder,
                "parent_idx": parent_idx,
                "level": level,
                "visible": False,
                "is_cross_holding": False,
                "first_occurrence_idx": None,
            }
        )

        # Mark parent visible if stake != 100%
        if parent_idx >= 0 and stake != 1.0:
            tree[parent_idx]["visible"] = True

        # Check if this is a person (always visible) or organization
        if holder["persontype"] == "P":
            tree[current_idx]["visible"] = True
        elif holder["persontype"] == "O":
            # Check for cross-holding
            if holder_id in seen_holders:
                # Cross-holding detected
                tree[current_idx]["is_cross_holding"] = True
                tree[current_idx]["first_occurrence_idx"] = seen_holders[holder_id]
                tree[current_idx]["visible"] = True
                # Also make the first occurrence visible
                if seen_holders[holder_id] >= 0:
                    tree[seen_holders[holder_id]]["visible"] = True
            else:
                # Not yet seen - add to tracker
                seen_holders[holder_id] = current_idx

                # Check if this is a listed company (orgType 21=public, 22=listed)
                if holder.get("orgtype") in (21, 22):
                    tree[current_idx]["visible"] = True
                else:
                    # Get issues owned by this holder organization
                    holder_issues = execute_query(
                        """
                        SELECT id1 FROM enigma.issue
                        WHERE issuer = %s
                          AND typeid NOT IN (1, 2, 40, 41, 46)
                    """,
                        (holder_id,),
                    )

                    if not holder_issues:
                        # No qualifying issues - make visible
                        tree[current_idx]["visible"] = True
                    else:
                        # Recursively process each issue
                        for i, holder_issue in enumerate(holder_issues):
                            _build_holders_tree(
                                holder_issue["id1"],
                                current_idx,
                                level + 1,
                                ob,
                                tree,
                                seen_holders,
                                is_condensed,
                            )
                            # If more than one issue, make this holder visible
                            if i > 0:
                                tree[current_idx]["visible"] = True


def _aggregate_condensed_holders(tree):
    """
    For condensed mode (x=c): Aggregate ownership chains and remove intermediate nodes.

    This function implements the ASP drawTable aggregation logic (lines 147-173):
    1. Attribute indirect holdings: For each visible holder, trace up to nearest visible parent
       and inherit their stake, level, issue info
    2. Aggregate duplicates: If same personID + issueID appear multiple times, sum stakes
       and mark duplicates invisible

    Args:
        tree: List of holder nodes built by _build_holders_tree()

    Modifies tree in place.
    """
    # Step 1: Attribute indirect holdings (ASP lines 150-163)
    # For each visible holder, find the nearest visible parent and inherit their attributes
    for idx, node in enumerate(tree):
        if not node["visible"]:
            continue

        # Trace up to find nearest visible parent
        parent_idx = node["parent_idx"]
        while parent_idx >= 0 and not tree[parent_idx]["visible"]:
            parent_idx = tree[parent_idx]["parent_idx"]

        # If we have a visible parent, inherit stake/issue/level from them
        if parent_idx >= 0:
            parent_holder = tree[parent_idx]["holder"]
            node["holder"]["stakecomp"] = parent_holder.get("stakecomp")
            node["holder"]["issue"] = parent_holder.get("issue")
            node["holder"]["typeshort"] = parent_holder.get("typeshort")
            # Level is one below the visible parent
            node["level"] = tree[parent_idx]["level"] + 1

    # Step 2: Aggregate duplicate holdings (ASP lines 165-173)
    # If same personID holds same issueID multiple times (via different paths),
    # aggregate their stakes and mark duplicates invisible
    for i in range(len(tree)):
        if not tree[i]["visible"]:
            continue

        holder_i = tree[i]["holder"]
        person_id_i = holder_i["personid"]
        issue_i = holder_i.get("issue")

        # Scan all previous holders
        for j in range(i):
            if not tree[j]["visible"]:
                continue

            holder_j = tree[j]["holder"]

            # Check if same person holding same issue
            if (holder_j["personid"] == person_id_i and
                holder_j.get("issue") == issue_i):
                # Aggregate: add stake from current to previous
                stake_i = holder_i.get("stakecomp", 0) or 0
                stake_j = holder_j.get("stakecomp", 0) or 0
                holder_j["stakecomp"] = stake_j + stake_i

                # Mark current as invisible (duplicate)
                tree[i]["visible"] = False
                break


def _sort_holders_tree(tree, start_idx, level, sort_key, reverse):
    """
    Recursively sort visible holders at each level of the ownership tree.

    This implements the ASP sortVisHold subroutine (lines 77-139).
    Uses bubble sort to maintain stability and preserve parent-child relationships.

    Args:
        tree: List of holder nodes
        start_idx: Index to start scanning from
        level: Current tree level to sort
        sort_key: Function to extract sort value from holder dict
        reverse: If True, sort descending; if False, ascending

    Modifies tree in place by reordering nodes at each level.
    """
    # Build list of visible items at this level
    items_at_level = []
    scan_idx = start_idx

    while scan_idx < len(tree):
        node = tree[scan_idx]

        # Stop if we've gone past this level
        if node["level"] < level:
            break

        # Collect visible items at exactly this level
        if node["level"] == level and node["visible"]:
            sort_value = sort_key(node["holder"])
            items_at_level.append((sort_value, scan_idx, node))

        scan_idx += 1

    # If fewer than 2 items, nothing to sort
    if len(items_at_level) < 2:
        # Still need to recursively sort children
        for _, idx, _ in items_at_level:
            _sort_holders_tree(tree, idx + 1, level + 1, sort_key, reverse)
        return

    # Bubble sort (matches ASP implementation for stability)
    changed = True
    while changed:
        changed = False
        for i in range(len(items_at_level) - 1):
            val1, idx1, node1 = items_at_level[i]
            val2, idx2, node2 = items_at_level[i + 1]

            # Compare based on sort direction
            should_swap = False
            if reverse:
                # Descending: swap if first < second
                should_swap = (val1 < val2)
            else:
                # Ascending: swap if first > second
                should_swap = (val1 > val2)

            if should_swap:
                items_at_level[i], items_at_level[i + 1] = items_at_level[i + 1], items_at_level[i]
                changed = True

    # Now rebuild tree section with sorted order
    # This is complex: we need to move entire subtrees, not just individual nodes

    # Build a mapping of old index -> new position
    sorted_indices = [idx for _, idx, _ in items_at_level]

    # Extract all nodes that belong to these subtrees
    subtrees = []
    for _, root_idx, _ in items_at_level:
        # Find all descendants of this node
        subtree_nodes = [tree[root_idx]]
        subtree_indices = [root_idx]

        # Scan for children at deeper levels
        scan_idx = root_idx + 1
        while scan_idx < len(tree) and tree[scan_idx]["level"] > level:
            subtree_nodes.append(tree[scan_idx])
            subtree_indices.append(scan_idx)
            scan_idx += 1

        subtrees.append((subtree_nodes, subtree_indices))

    # Now reconstruct this section of the tree in sorted order
    # Start writing at the position of the first node at this level
    write_idx = min(sorted_indices)
    for subtree_nodes, _ in subtrees:
        for node in subtree_nodes:
            tree[write_idx] = node
            write_idx += 1

    # Recursively sort children at next level
    # After reordering, need to find where each sorted parent is now
    current_idx = min(sorted_indices)
    for i, (_, original_idx, _) in enumerate(items_at_level):
        # Find where this subtree is now located
        subtree_length = len(subtrees[i][0])

        # Recursively sort this subtree's children
        _sort_holders_tree(tree, current_idx + 1, level + 1, sort_key, reverse)

        # Move to next subtree
        current_idx += subtree_length


@bp.route("/holdings.asp")
def holdings():
    """
    Shareholdings by a specific shareholder - recursive tree showing what they own

    Query params:
    - p: personID of shareholder
    - x: expand mode (y=expanded tree, n=simple table)
    - sort: sorting column

    Tables used: webholdings3 view (sholdings + issue + organisations + domiciles)
    """
    person_id = get_int("p", 0)
    expand = request.args.get("x", "n")
    sort_param = request.args.get("sort", "namup")

    if not person_id:
        return "PersonID required", 400

    # Sort order mapping
    sort_mappings = {
        "stakup": "stakecomp, name",
        "stakdn": "stakecomp DESC, name",
        "namedn": "name DESC",
        "namup": "name",
        "incdup": "incdate, name",
        "incddn": "incdate DESC, name",
        "domiup": "a2, name",
        "domidn": "a2 DESC, name",
    }
    ob = sort_mappings.get(sort_param, "name")

    if expand == "y":
        # Expanded mode - recursive tree
        holdings_tree = []
        org_tracker = {person_id: 0}  # Track organizations to detect cross-holdings
        _build_holdings_tree(person_id, 0, ob, holdings_tree, org_tracker)

        return render_template(
            "dbpub/holdings.html",
            person_id=person_id,
            holdings_tree=holdings_tree,
            expand=expand,
            sort_param=sort_param,
        )
    else:
        # Simple mode - flat table
        holdings_data = execute_query(
            f"""
            SELECT personid, issue, holdingdate, shares, stake, friendly, a2,
                   name, orgtype, sectype, typeshort, issuer,
                   CASE
                       WHEN shares IS NOT NULL THEN
                           shares / NULLIF(
                               (SELECT outstanding
                                FROM enigma.issuedshares
                                WHERE issueid = issue
                                  AND atdate <= CURRENT_DATE
                                ORDER BY atdate DESC
                                LIMIT 1), 0)
                       ELSE stake
                   END AS stakecomp,
                   incdate, incacc
            FROM enigma.webholdings3
            WHERE personid = %s
              AND (shares > 0 OR stake > 0 OR (shares IS NULL AND stake IS NULL))
            ORDER BY {ob}
        """,
            (person_id,),
        )

        return render_template(
            "dbpub/holdings.html",
            person_id=person_id,
            holdings_data=holdings_data,
            expand=expand,
            sort_param=sort_param,
        )


def _build_holdings_tree(person_id, level, ob, tree, org_tracker):
    """
    Recursive function to build holdings tree

    Args:
        person_id: Person/organization whose holdings to retrieve
        level: Depth level in tree (for indentation)
        ob: ORDER BY clause
        tree: List to append results to
        org_tracker: Dict mapping personID -> first occurrence index (for cross-holding detection)
    """
    holdings = execute_query(
        f"""
        SELECT *,
               CASE
                   WHEN shares IS NOT NULL THEN
                       shares / NULLIF(
                           (SELECT outstanding
                            FROM enigma.issuedshares
                            WHERE issueid = issue
                              AND atdate <= CURRENT_DATE
                            ORDER BY atdate DESC
                            LIMIT 1), 0)
                   ELSE stake
               END AS stakecomp
        FROM enigma.webholdings3
        WHERE personid = %s
          AND (shares > 0 OR stake > 0 OR (shares IS NULL AND stake IS NULL))
        ORDER BY {ob}
    """,
        (person_id,),
    )

    for holding in holdings:
        issuer_id = holding["issuer"]

        # Check if this issuer has been seen before (cross-holding)
        if issuer_id in org_tracker:
            # Cross-holding detected - add reference to previous occurrence
            tree.append(
                {
                    "level": level,
                    "holding": holding,
                    "is_cross_holding": True,
                    "first_occurrence_idx": org_tracker[issuer_id],
                }
            )
        else:
            # First time seeing this issuer - add to tracker and recurse
            org_tracker[issuer_id] = len(tree)
            tree.append(
                {
                    "level": level,
                    "holding": holding,
                    "is_cross_holding": False,
                    "first_occurrence_idx": None,
                }
            )

            # Recursively get holdings of this issuer
            _build_holdings_tree(issuer_id, level + 1, ob, tree, org_tracker)


# NOTE: /prices.asp is implemented in quotes.py blueprint, not here
# @bp.route('/prices.asp')
# def prices():
#     """
#     Price and total returns history for a stock
#     MOVED TO: quotes.py
#     """
#     pass


# pricesCSV.asp implemented below at line ~11684 (removed duplicate stub)
