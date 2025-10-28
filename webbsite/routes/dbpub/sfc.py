"""
Securities and Futures Commission (SFC) licensee data
"""
from flask import Blueprint, render_template, request, abort, current_app, Response
from datetime import date, timedelta
import calendar
import io
import re
from webbsite.db import execute_query, get_db
from webbsite.asp_helpers import get_int, get_bool, get_str

bp = Blueprint('dbpub_sfc', __name__)

@bp.route('/SFClicensees.asp')
def sfc_licensees():
    """
    SFC licensed persons at a firm - port of SFClicensees.asp
    Shows Responsible Officers (ROs) and Representatives (Reps) for a firm

    Query params:
    - p: personID (organization)
    - d: date (defaults to today)
    - a: activity type (0 = all activities)
    - hide: Y (current only) or N (history)
    - sort: sorting column

    Tables used: enigma.directorships (for all activities) or enigma.licrec (for specific activity)
    """
    from flask import current_app
    person_id = get_int('p', 0)
    d = request.args.get('d', str(date.today()))
    act = get_int('a', 0)
    hide = get_str('hide', 'Y')
    sort_param = request.args.get('sort', 'namup')

    # Get organization name
    org_name = "No organisation was specified"
    if person_id:
        try:
            result = execute_query("""
                SELECT name1 FROM enigma.organisations WHERE personID = %s
            """, (person_id,))
            if result:
                org_name = result[0]['name1']
        except Exception as ex:
            current_app.logger.error(f"Error getting org name: {ex}")

    # Determine which columns to use based on activity filter
    if act > 0:
        appt_var = "startDate"
        res_var = "endDate"
    else:
        appt_var = "apptDate"
        res_var = "resDate"

    # Build hide filter
    hide_str = f" AND (({appt_var} IS NULL) OR ({appt_var} <= %s))"
    params = [person_id, d]
    if hide == 'Y':
        hide_str += f" AND (({res_var} IS NULL) OR ({res_var} > %s))"
        params.append(d)

    # Build sort order
    sort_map = {
        'namup': f"name,{appt_var}",
        'namdn': f"name DESC,{appt_var}",
        'appup': f"{appt_var},name",
        'appdn': f"{appt_var} DESC,name",
        'resup': f"{res_var},name",
        'resdn': f"{res_var} DESC,name",
        'rolup': f"role,name,{appt_var}",
        'roldn': f"role DESC,name,{appt_var}",
        'agedn': f"YOB,name,{appt_var}",
        'ageup': f"YOB DESC,name,{appt_var}",
        'sexup': f"sex,name,{appt_var}",
        'sexdn': f"sex DESC,name,{appt_var}"
    }
    ob = sort_map.get(sort_param, f"name,{appt_var}")

    # Build SQL based on activity filter
    licensees = []
    try:
        if act > 0:
            # Use licrec table for specific activity
            sql = f"""
                SELECT p.YOB, p.sex,
                       CONCAT(COALESCE(p.name1,''),
                              CASE WHEN p.name2 IS NOT NULL THEN CONCAT(', ', p.name2) ELSE '' END,
                              CASE WHEN p.cName IS NOT NULL THEN CONCAT(' ', p.cName) ELSE '' END) AS name,
                       lr.staffID, lr.startDate, lr.endDate, lr.role, p.SFCID
                FROM enigma.licrec lr
                JOIN enigma.people p ON lr.staffID = p.personID
                WHERE lr.actType = %s AND lr.orgID = %s {hide_str}
                ORDER BY {ob}
            """
            params = [act] + params
        else:
            # Use directorships table for all activities
            sql = f"""
                SELECT p.YOB, p.sex,
                       CONCAT(COALESCE(p.name1,''),
                              CASE WHEN p.name2 IS NOT NULL THEN CONCAT(', ', p.name2) ELSE '' END,
                              CASE WHEN p.cName IS NOT NULL THEN CONCAT(' ', p.cName) ELSE '' END) AS name,
                       p.personID AS staffID, d.apptDate AS startDate, d.resDate AS endDate,
                       CASE WHEN d.positionID = 395 THEN 1 ELSE 0 END AS role,
                       p.SFCID
                FROM enigma.directorships d
                JOIN enigma.people p ON d.director = p.personID
                WHERE d.positionID IN (394, 395) AND d.company = %s {hide_str}
                ORDER BY {ob}
            """

        licensees = execute_query(sql, tuple(params))

        # Add role text
        for lic in licensees:
            lic['role_text'] = 'RO' if lic['role'] == 1 else 'Rep'

    except Exception as ex:
        current_app.logger.error(f"Error querying SFC licensees: {ex}")

    # Get activity name if specific activity selected
    act_name = "All activities"
    if act > 0:
        try:
            result = execute_query("""
                SELECT actName FROM enigma.activity WHERE ID = %s
            """, (act,))
            if result:
                act_name = result[0]['actname']
        except:
            pass

    return render_template('dbpub/sfc_licensees.html',
                         person_id=person_id, org_name=org_name,
                         licensees=licensees, d=d, act=act, act_name=act_name,
                         hide=hide, sort=sort_param)




@bp.route('/SFChistall.asp')
def sfc_hist_all():
    """
    SFC licensing history for all firms - port of SFChistall.asp
    Shows historic number of SFC licensees (ROs and Reps) for all firms combined

    Query params:
    - a: activity type (0 = all activities)

    Tables used: enigma.licrecsum
    """
    from flask import current_app
    act = get_int('a', 0)

    # Get activity name
    act_name = "All activities"
    if act > 0:
        try:
            result = execute_query("""
                SELECT actName FROM enigma.activity WHERE ID = %s
            """, (act,))
            if result:
                act_name = result[0]['actname']
        except:
            pass

    # Query historic licensee counts
    history = []
    try:
        history = execute_query("""
            SELECT d, RO, total - RO AS reps, total, (total - RO) / NULLIF(total, 0) AS rep_ratio
            FROM enigma.licrecsum
            WHERE actType = %s
            ORDER BY d DESC
        """, (act,))
    except Exception as ex:
        current_app.logger.error(f"Error querying SFC hist all: {ex}")

    return render_template('dbpub/sfc_hist_all.html',
                         act=act, act_name=act_name, history=history)




@bp.route('/SFChistfirm.asp')
def sfc_hist_firm():
    """
    SFC licensing history for a specific firm - port of SFChistfirm.asp
    Shows historic number of SFC licensees (ROs and Reps) for one firm

    Query params:
    - p: personID (organization)
    - a: activity type (0 = all activities)
    - f: frequency (m=monthly, y=yearly, defaults to yearly)

    Tables used: enigma.licrec
    """
    from flask import current_app
    from datetime import date as dt_date
    from calendar import monthrange

    person_id = get_int('p', 0)
    act = get_int('a', 0)
    freq = get_str('f', 'y')
    if freq not in ['m', 'y']:
        freq = 'y'

    # Get organization name
    org_name = "FIRM NOT FOUND"
    if person_id:
        try:
            result = execute_query("""
                SELECT name1 FROM enigma.organisations WHERE personID = %s
            """, (person_id,))
            if result:
                org_name = result[0]['name1']
        except:
            pass

    # Get activity name
    act_name = "All activities"
    if act > 0:
        try:
            result = execute_query("""
                SELECT actName FROM enigma.activity WHERE ID = %s
            """, (act,))
            if result:
                act_name = result[0]['actname']
        except:
            pass

    # Generate date array going back to 2003-03-31
    history = []
    if person_id and org_name != "FIRM NOT FOUND":
        today = dt_date.today()
        dates = []

        if freq == 'm':
            # Monthly snapshots
            year = today.year
            month = today.month
            while year >= 2003:
                last_month = 12 if year > 2003 else 3
                for m in range(month, 0, -1):
                    if year == 2003 and m < 3:
                        break
                    last_day = monthrange(year, m)[1]
                    snap_date = dt_date(year, m, last_day)
                    if snap_date > today:
                        snap_date = today
                    dates.append(snap_date)
                year -= 1
                month = 12
        else:
            # Yearly snapshots (December 31)
            year = today.year
            while year >= 2003:
                snap_date = dt_date(year, 12, 31) if year < today.year else today
                dates.append(snap_date)
                year -= 1
            # Add 2003-03-31
            dates.append(dt_date(2003, 3, 31))

        # Query licensee counts for each date
        for snap_date in dates:
            try:
                if act > 0:
                    result = execute_query("""
                        SELECT COUNT(DISTINCT staffID) AS total, COALESCE(SUM(CASE WHEN role = 1 THEN 1 ELSE 0 END), 0) AS ROs
                        FROM (SELECT DISTINCT staffID, role
                              FROM enigma.licrec
                              WHERE orgID = %s
                                AND actType = %s
                                AND (endDate IS NULL OR endDate > %s)
                                AND (startDate IS NULL OR startDate <= %s)
                        ) t
                    """, (person_id, act, snap_date, snap_date))
                else:
                    result = execute_query("""
                        SELECT COUNT(DISTINCT staffID) AS total, COALESCE(SUM(CASE WHEN role = 1 THEN 1 ELSE 0 END), 0) AS ROs
                        FROM (SELECT DISTINCT staffID, role
                              FROM enigma.licrec
                              WHERE orgID = %s
                                AND (endDate IS NULL OR endDate > %s)
                                AND (startDate IS NULL OR startDate <= %s)
                        ) t
                    """, (person_id, snap_date, snap_date))

                if result:
                    total = result[0]['total'] or 0
                    ros = result[0]['ros'] or 0
                    reps = total - ros
                    rep_ratio = reps / total if total > 0 else 0

                    # Only include if not leading zeros
                    if total > 0 or not history:
                        history.append({
                            'd': snap_date,
                            'ros': ros,
                            'reps': reps,
                            'total': total,
                            'rep_ratio': rep_ratio
                        })
            except Exception as ex:
                current_app.logger.error(f"Error querying SFC hist firm for {snap_date}: {ex}")

    return render_template('dbpub/sfc_hist_firm.html',
                         person_id=person_id, org_name=org_name,
                         act=act, act_name=act_name, freq=freq, history=history)




@bp.route('/SFCchanges.asp')
def sfc_changes():
    """
    Recent SFC licensing changes - port of SFCchanges.asp
    Shows appointments and cessations in SFC licensees over last 14 days

    Query params:
    - d: end date (defaults to today)
    - sort: sorting column

    Tables used: enigma.directorships (positionID 394=Rep, 395=RO)
    """
    from flask import current_app
    from datetime import timedelta

    d = request.args.get('d', str(date.today()))
    sort_param = request.args.get('sort', 'orgup')

    # Calculate start date (14 days before end date)
    try:
        end_date = date.fromisoformat(d)
        start_date = end_date - timedelta(days=14)
    except:
        end_date = date.today()
        start_date = end_date - timedelta(days=14)

    # Build sort order
    sort_map = {
        'pplup': "pplName,orgName,apptDate",
        'ppldn': "pplName DESC,orgName,apptDate",
        'orgup': "orgName,pplName,apptDate",
        'orgdn': "orgName DESC,pplName,apptDate",
        'datup': "relDate,orgName,pplName",
        'datdn': "relDate DESC,orgName,pplName"
    }
    ob = sort_map.get(sort_param, "orgName,pplName,apptDate")

    # Query changes
    changes = []
    try:
        changes = execute_query(f"""
            SELECT o.name1 AS orgName,
                   CONCAT(COALESCE(p.name1,''),
                          CASE WHEN p.name2 IS NOT NULL THEN CONCAT(', ', p.name2) ELSE '' END,
                          CASE WHEN p.cName IS NOT NULL THEN CONCAT(' ', p.cName) ELSE '' END) AS pplName,
                   d.company AS orgID, d.director AS pplID,
                   d.apptDate, d.resDate, d.positionID,
                   CASE WHEN d.resDate >= %s THEN '-' ELSE '+' END AS appCes,
                   CASE WHEN d.resDate >= %s THEN d.resDate ELSE d.apptDate END AS relDate
            FROM enigma.directorships d
            JOIN enigma.organisations o ON d.company = o.personID
            JOIN enigma.people p ON d.director = p.personID
            WHERE d.positionID IN (394, 395)
              AND ((d.apptDate >= %s AND d.apptDate <= %s)
                   OR (d.resDate >= %s AND d.resDate <= %s))
            ORDER BY {ob}
        """, (start_date, start_date, start_date, d, start_date, d))

        # Add role text
        for change in changes:
            change['posText'] = 'Rep' if change['positionid'] == 394 else 'RO'

    except Exception as ex:
        current_app.logger.error(f"Error querying SFC changes: {ex}")

    return render_template('dbpub/sfc_changes.html',
                         changes=changes, d=d, start_date=str(start_date),
                         sort=sort_param)




@bp.route('/SFClicount.asp')
def sfc_licount():
    """
    SFC licensee count league table - port of SFClicount.asp
    Shows SFC licensee counts per firm at two dates (start and end) with changes

    Query params:
    - da: end date (defaults to today)
    - db: start date (defaults to 1 year before end date)
    - a: activity type (0 = all activities)
    - sort: sorting column

    Tables used: enigma.licrec, enigma.olicrec, enigma.organisations
    """
    from flask import current_app
    from datetime import timedelta

    # Get dates
    da = request.args.get('da', str(date.today()))
    try:
        date_a = date.fromisoformat(da)
        default_db = date_a - timedelta(days=365)
    except:
        date_a = date.today()
        default_db = date_a - timedelta(days=365)

    db = request.args.get('db', str(max(date(2003, 4, 1), default_db)))

    # Ensure db <= da
    try:
        date_b = date.fromisoformat(db)
        if date_b > date_a:
            db, da = da, db
    except:
        pass

    act = get_int('a', 0)
    sort_param = request.args.get('sort', 'acntdn')

    # Get activity name
    act_name = "All activities"
    if act > 0:
        try:
            result = execute_query("""
                SELECT actName FROM enigma.activity WHERE ID = %s
            """, (act,))
            if result:
                act_name = result[0]['actname']
        except:
            pass

    # Build sort order
    sort_map = {
        'namup': "name", 'namdn': "name DESC",
        'arepup': "arep,name", 'arepdn': "arep DESC,name",
        'aroup': "aRO,name", 'arodn': "aRO DESC,name",
        'acntup': "acnt,name", 'acntdn': "acnt DESC,name",
        'brepup': "brep,name", 'brepdn': "brep DESC,name",
        'broup': "bRO,name", 'brodn': "bRO DESC,name",
        'bcntup': "bcnt,name", 'bcntdn': "bcnt DESC,name",
        'crepup': "crep,name", 'crepdn': "crep DESC,name",
        'croup': "cRO,name", 'crodn': "cRO DESC,name",
        'ccntup': "ccnt,name", 'ccntdn': "ccnt DESC,name",
        'aratup': "arat,name", 'aratdn': "arat DESC,name",
        'bratup': "brat,name", 'bratdn': "brat DESC,name",
        'sddn': "startDate DESC,name", 'sdup': "startDate,name",
        'eddn': "endDate DESC,name", 'edup': "endDate,name"
    }
    ob = sort_map.get(sort_param, "acnt DESC,name")

    # Query stats
    stats = []
    try:
        if act == 0:
            # All activities
            sql = f"""
                SELECT t.orgID, o.name1 AS name, t.startDate, t.endDate,
                       t.bRO, t.bcnt - t.bRO AS brep, t.bcnt,
                       t.aRO, t.acnt - t.aRO AS arep, t.acnt,
                       CASE WHEN t.acnt > 0 THEN 1 - t.aRO / NULLIF(t.acnt, 0) ELSE NULL END AS arat,
                       CASE WHEN t.bcnt > 0 THEN 1 - t.bRO / NULLIF(t.bcnt, 0) ELSE NULL END AS brat,
                       t.aRO - t.bRO AS cRO, t.acnt - t.aRO - t.bcnt + t.bRO AS crep, t.acnt - t.bcnt AS ccnt
                FROM (
                    SELECT COALESCE(a.cnt, 0) AS acnt, COALESCE(a.RO, 0) AS aRO,
                           COALESCE(b.cnt, 0) AS bcnt, COALESCE(b.RO, 0) AS bRO,
                           ol.orgID, ol.startDate, ol.endDate
                    FROM (
                        SELECT orgID, MIN(startDate) AS startDate,
                               CASE WHEN MAX(COALESCE(endDate, '9999-12-31')) = '9999-12-31'
                                    THEN NULL ELSE MAX(endDate) END AS endDate
                        FROM enigma.olicrec
                        WHERE (endDate IS NULL OR endDate > %s)
                          AND (startDate IS NULL OR startDate <= %s)
                        GROUP BY orgID
                    ) ol
                    LEFT JOIN (
                        SELECT orgID, COUNT(DISTINCT staffID) AS cnt, SUM(CASE WHEN role = 1 THEN 1 ELSE 0 END) AS RO
                        FROM (SELECT DISTINCT orgID, staffID, role
                              FROM enigma.licrec
                              WHERE (endDate IS NULL OR endDate > %s)
                                AND (startDate IS NULL OR startDate <= %s)
                        ) t
                        GROUP BY orgID
                    ) b ON ol.orgID = b.orgID
                    LEFT JOIN (
                        SELECT orgID, COUNT(DISTINCT staffID) AS cnt, SUM(CASE WHEN role = 1 THEN 1 ELSE 0 END) AS RO
                        FROM (SELECT DISTINCT orgID, staffID, role
                              FROM enigma.licrec
                              WHERE (endDate IS NULL OR endDate > %s)
                                AND (startDate IS NULL OR startDate <= %s)
                        ) t
                        GROUP BY orgID
                    ) a ON ol.orgID = a.orgID
                ) t
                JOIN enigma.organisations o ON o.personID = t.orgID
                WHERE t.acnt + t.bcnt > 0
                ORDER BY {ob}
            """
            stats = execute_query(sql, (db, da, db, db, da, da))
        else:
            # Specific activity
            sql = f"""
                SELECT t.orgID, o.name1 AS name, t.startDate, t.endDate,
                       t.bRO, t.brep, t.bcnt, t.aRO, t.arep, t.acnt,
                       t.arat, t.brat, t.acnt - t.bcnt AS ccnt,
                       t.aRO - t.bRO AS cRO, t.arep - t.brep AS crep
                FROM (
                    SELECT ol.orgID, ol.startDate, ol.endDate,
                           COALESCE(b.RO, 0) AS bRO, COALESCE(b.cnt - b.RO, 0) AS brep, COALESCE(b.cnt, 0) AS bcnt,
                           COALESCE(a.RO, 0) AS aRO, COALESCE(a.cnt - a.RO, 0) AS arep, COALESCE(a.cnt, 0) AS acnt,
                           CASE WHEN b.cnt > 0 THEN 1 - b.RO / NULLIF(b.cnt, 0) ELSE NULL END AS brat,
                           CASE WHEN a.cnt > 0 THEN 1 - a.RO / NULLIF(a.cnt, 0) ELSE NULL END AS arat
                    FROM enigma.olicrec ol
                    LEFT JOIN (
                        SELECT orgID, COUNT(DISTINCT staffID) AS cnt, SUM(CASE WHEN role = 1 THEN 1 ELSE 0 END) AS RO
                        FROM enigma.licrec
                        WHERE (endDate IS NULL OR endDate > %s)
                          AND (startDate IS NULL OR startDate <= %s)
                          AND actType = %s
                        GROUP BY orgID
                    ) b ON ol.orgID = b.orgID
                    LEFT JOIN (
                        SELECT orgID, COUNT(DISTINCT staffID) AS cnt, SUM(CASE WHEN role = 1 THEN 1 ELSE 0 END) AS RO
                        FROM enigma.licrec
                        WHERE (endDate IS NULL OR endDate > %s)
                          AND (startDate IS NULL OR startDate <= %s)
                          AND actType = %s
                        GROUP BY orgID
                    ) a ON ol.orgID = a.orgID
                    WHERE ol.actType = %s
                      AND (ol.endDate IS NULL OR ol.endDate > %s)
                      AND (ol.startDate IS NULL OR ol.startDate <= %s)
                ) t
                JOIN enigma.organisations o ON t.orgID = o.personID
                WHERE t.acnt + t.bcnt > 0
                ORDER BY {ob}
            """
            stats = execute_query(sql, (db, db, act, da, da, act, act, db, da))

    except Exception as ex:
        current_app.logger.error(f"Error querying SFC licount: {ex}")

    return render_template('dbpub/sfc_licount.html',
                         stats=stats, da=da, db=db, act=act, act_name=act_name,
                         sort=sort_param)


# Buybacks routes


@bp.route('/SFColicrec.asp')
def sfcolicrec():
    """
    SFC license records for an organization - Port of dbpub/sfcolicrec.asp
    Shows SFC regulated activity licenses across all activities

    Query params:
    - p: personID
    - sort: sorting column
    - h: hide history (Y/N)

    Tables: enigma.olicrec, enigma.activity, enigma.organisations
    """
    person_id = get_int('p', 0)
    sort_param = request.args.get('sort', 'actup')
    hide = request.args.get('h', 'N')

    if not person_id:
        return render_template('error.html', message="Missing organization ID"), 400

    # Get organization info
    org_info = execute_query("""
        SELECT name1, SFCID, SFCri
        FROM enigma.organisations
        WHERE personID = %s
    """, (person_id,))

    if not org_info:
        return render_template('error.html', message="Organization not found"), 404

    org_name = org_info[0]['name1']
    sfcid = org_info[0]['sfcid']
    is_ri = org_info[0]['sfcri']
    ptype = 'ri' if is_ri else 'corp'

    # Determine sort order
    sort_map = {
        'actup': 'actName, startDate',
        'actdn': 'actName DESC, startDate',
        'appup': 'startDate, endDate, actName',
        'appdn': 'startDate DESC, endDate DESC, actName',
        'resup': 'endDate, startDate, actName',
        'resdn': 'endDate DESC, startDate DESC, actName',
    }
    order_by = sort_map.get(sort_param, 'actName, startDate, endDate')

    # Build WHERE clause for hiding history
    hide_clause = ""
    if hide == 'Y':
        hide_clause = " AND (endDate IS NULL OR endDate > CURRENT_DATE)"

    # Query license records
    licenses = execute_query(f"""
        SELECT
            o.ri,
            o.actType,
            o.startDate,
            o.endDate,
            a.actName
        FROM enigma.olicrec o
        JOIN enigma.activity a ON o.actType = a.ID
        WHERE o.orgID = %s {hide_clause}
        ORDER BY {order_by}
    """, (person_id,))

    return render_template('dbpub/sfcolicrec.html',
                         person_id=person_id,
                         org_name=org_name,
                         sfcid=sfcid,
                         ptype=ptype,
                         licenses=licenses,
                         sort=sort_param,
                         hide=hide)




