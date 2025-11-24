"""
Hong Kong solicitor and law firm data
"""

from flask import Blueprint, render_template, request, abort, current_app, Response
from datetime import date, timedelta
import calendar
import io
import re
from webbsite.db import execute_query, get_db
from webbsite.asp_helpers import get_int, get_bool, get_str

bp = Blueprint("dbpub_solicitors", __name__)


@bp.route("/HKsols.asp")
def hk_sols():
    """
    HK solicitors in law firms - port of HKsols.asp
    Lists all current HK solicitors associated with HK law firms

    Query params:
    - p: role filter (1=Partner, 2=Consultant, 3=Solicitor, 5=Proprietor, 0=All)
    - sort: sorting column

    Tables used: enigma.lsposts, enigma.lsppl, enigma.lsorgs, enigma.lsroles, enigma.organisations, enigma.people
    """
    from flask import current_app

    p = get_int("p", 0)
    sort_param = request.args.get("sort", "admup")

    # Get role title
    role_sql = ""
    if p > 0:
        role_sql = f" AND ps.post = {p}"

    # Build sort order
    sort_map = {
        "humup": "pName,oName",
        "humdn": "pName DESC,oName",
        "orgup": "oName,LStxt,pName",
        "orgdn": "oName,admHK,pName",
        "admdn": "admHK DESC,pName",
        "admup": "admHK,pName,oName",
        "ageup": "age,pName,oName",
        "agedn": "age DESC,pName,oName",
        "rolup": "LStxt,pName,oName",
        "roldn": "LStxt DESC,oName,pName",
    }
    ob = sort_map.get(sort_param, "admHK,pName,oName")

    # Query solicitors
    solicitors = []
    try:
        solicitors = execute_query(
            f"""
            SELECT
                CONCAT(EXTRACT(YEAR FROM p.admHK), '-',
                       LPAD(EXTRACT(MONTH FROM p.admHK), 2, '0')) AS admHK,
                o.personid AS orgID, o.name1 AS oName,
                ppl.personid AS pID,
                CONCAT(COALESCE(ppl.name1,''),
                       CASE WHEN ppl.name2 IS NOT NULL THEN CONCAT(', ', ppl.name2) ELSE '' END,
                       CASE WHEN ppl.cName IS NOT NULL THEN CONCAT(' ', ppl.cName) ELSE '' END) AS pName,
                lr.LStxt,
                EXTRACT(YEAR FROM CURRENT_DATE) - ppl.YOB AS age
            FROM enigma.lsposts ps
            JOIN enigma.lsppl lp ON ps.lsppl = lp.lsid
            JOIN enigma.lsorgs lo ON ps.lsorg = lo.lsid
            JOIN enigma.lsroles lr ON ps.post = lr.id
            JOIN enigma.organisations o ON lo.personid = o.personid
            JOIN enigma.people ppl ON lp.personid = ppl.personid
            JOIN enigma.lsppl p ON lp.lsid = p.lsid
            WHERE NOT ps.dead {role_sql}
            ORDER BY {ob}
        """
        )
    except Exception as ex:
        current_app.logger.error(f"Error querying HK sols: {ex}")

    return render_template(
        "dbpub/hk_sols.html", p=p, solicitors=solicitors, sort=sort_param
    )


@bp.route("/HKsolfirms.asp")
def hk_sol_firms():
    """
    HK law firms - port of HKsolfirms.asp
    Lists all current HK law firms with solicitor counts by role

    Query params:
    - d: snapshot date (defaults to today)
    - sort: sorting column

    Tables used: enigma.lsposts, enigma.lsorgs, enigma.organisations
    """
    from flask import current_app

    d = request.args.get("d", str(date.today()))
    sort_param = request.args.get("sort", "totdn")

    # Build sort order
    sort_map = {
        "orgup": "name1",
        "orgdn": "name1 DESC",
        "partup": "partner,tot,name1",
        "partdn": "partner DESC,tot DESC,name1",
        "solup": "sol,tot,name1",
        "soldn": "sol DESC,tot DESC,name1",
        "conup": "con,tot,name1",
        "condn": "con DESC,tot DESC,name1",
        "propup": "prop,tot,name1",
        "propdn": "prop DESC,tot DESC,name1",
        "totup": "tot,name1",
        "totdn": "tot DESC,name1",
    }
    ob = sort_map.get(sort_param, "tot DESC,name1")

    # Query law firms
    firms = []
    totals = {"partner": 0, "con": 0, "sol": 0, "prop": 0, "tot": 0}
    try:
        firms = execute_query(
            f"""
            SELECT lo.personid, o.name1,
                   COUNT(lp.lsppl) AS tot,
                   SUM(CASE WHEN lp.post = 1 THEN 1 ELSE 0 END) AS partner,
                   SUM(CASE WHEN lp.post = 2 THEN 1 ELSE 0 END) AS con,
                   SUM(CASE WHEN lp.post = 3 THEN 1 ELSE 0 END) AS sol,
                   SUM(CASE WHEN lp.post = 5 THEN 1 ELSE 0 END) AS prop
            FROM enigma.lsposts lp
            JOIN enigma.lsorgs lo ON lp.lsorg = lo.lsid
            JOIN enigma.organisations o ON lo.personid = o.personid
            WHERE lp.firstSeen < %s::date + INTERVAL '1 day'
              AND (NOT lp.dead OR lp.lastSeen >= %s)
            GROUP BY lo.personid, o.name1
            ORDER BY {ob}
        """,
            (d, d),
        )

        # Calculate totals
        result = execute_query(
            """
            SELECT COUNT(lsppl) AS tot,
                   SUM(CASE WHEN post = 1 THEN 1 ELSE 0 END) AS partner,
                   SUM(CASE WHEN post = 2 THEN 1 ELSE 0 END) AS con,
                   SUM(CASE WHEN post = 3 THEN 1 ELSE 0 END) AS sol,
                   SUM(CASE WHEN post = 5 THEN 1 ELSE 0 END) AS prop
            FROM enigma.lsposts lp
            WHERE lp.firstSeen < %s::date + INTERVAL '1 day'
              AND (NOT lp.dead OR lp.lastSeen >= %s)
              AND lp.post <> 4
        """,
            (d, d),
        )
        if result:
            totals = result[0]

    except Exception as ex:
        current_app.logger.error(f"Error querying HK sol firms: {ex}")

    return render_template(
        "dbpub/hk_sol_firms.html", firms=firms, totals=totals, d=d, sort=sort_param
    )


@bp.route("/HKsolsmoves.asp")
def hk_sols_moves():
    """
    HK solicitors job moves - port of HKsolsmoves.asp
    Shows recent moves in HK law firms (last 30 days)

    Query params:
    - sort: sorting column

    Tables used: enigma.directorships, enigma.lsppl, enigma.lsorgs, enigma.organisations, enigma.people, enigma.positions, enigma.lsroles
    """
    from flask import current_app

    sort_param = request.args.get("sort", "orgup")

    # Build sort order
    sort_map = {
        "orgup": "oName,pName,LSrole DESC",
        "orgdn": "oName DESC,pName,LSrole DESC",
        "solup": "pName,oName,LSrole DESC",
        "soldn": "pName DESC,oName,LSrole DESC",
        "datdn": "relDate DESC,pName,oName",
        "datup": "relDate,pName,oName",
    }
    ob = sort_map.get(sort_param, "oName,pName,LSrole DESC")

    # Query recent moves
    moves = []
    try:
        moves = execute_query(
            f"""
            SELECT DISTINCT
                d.company AS orgID, d.director AS pID,
                CONCAT(COALESCE(p.name1,''),
                       CASE WHEN p.name2 IS NOT NULL THEN CONCAT(', ', p.name2) ELSE '' END,
                       CASE WHEN p.cName IS NOT NULL THEN CONCAT(' ', p.cName) ELSE '' END) AS pName,
                o.name1 AS oName,
                enigma.MSdateAcc(d.apptDate, d.apptAcc) AS appt,
                enigma.MSdateAcc(d.resDate, d.resAcc) AS res,
                lr.LStxt,
                COALESCE(d.resDate, d.apptDate) AS relDate
            FROM enigma.directorships d
            JOIN enigma.lsppl lp ON d.director = lp.personid
            JOIN enigma.lsorgs lo ON d.company = lo.personid
            JOIN enigma.organisations o ON d.company = o.personid
            JOIN enigma.people p ON d.director = p.personid
            JOIN enigma.positions pn ON d.positionid = pn.positionid
            JOIN enigma.lsroles lr ON pn.lsrole = lr.id
            WHERE d.resDate >= CURRENT_DATE - INTERVAL '30 days'
               OR d.apptDate >= CURRENT_DATE - INTERVAL '30 days'
            ORDER BY {ob}
        """
        )
    except Exception as ex:
        current_app.logger.error(f"Error querying HK sols moves: {ex}")

    return render_template("dbpub/hk_sols_moves.html", moves=moves, sort=sort_param)


@bp.route("/HKsolemps.asp")
def hk_sol_emps():
    """
    Non-law firm employers with HK solicitors - port of HKsolemps.asp
    Lists employers of HK solicitors that are not law firms

    Query params:
    - sort: sorting column

    Tables used: enigma.lsjobs, enigma.lsemps, enigma.organisations
    """
    from flask import current_app

    sort_param = request.args.get("sort", "cntdn")

    # Build sort order
    sort_map = {
        "orgup": "name1",
        "orgdn": "name1 DESC",
        "cntup": "cnt,name1",
        "cntdn": "cnt DESC,name1",
    }
    ob = sort_map.get(sort_param, "cnt DESC,name1")

    # Query employers
    employers = []
    total = 0
    try:
        employers = execute_query(
            f"""
            SELECT o.name1, o.personid, COUNT(*) AS cnt
            FROM enigma.lsjobs j
            JOIN enigma.lsemps e ON j.empid = e.id
            JOIN enigma.organisations o ON e.personid = o.personid
            WHERE NOT j.dead
            GROUP BY e.personid, o.name1, o.personid
            ORDER BY {ob}
        """
        )

        # Calculate total
        for emp in employers:
            total += emp["cnt"]

    except Exception as ex:
        current_app.logger.error(f"Error querying HK sol emps: {ex}")

    return render_template(
        "dbpub/hk_sol_emps.html", employers=employers, total=total, sort=sort_param
    )


# Website URLs
