"""
Company incorporations, dissolutions, and registrations
"""

from flask import Blueprint, render_template, request, abort, current_app, Response
from datetime import date, timedelta
import calendar
import io
import re
from webbsite.db import execute_query, get_db
from webbsite.asp_helpers import get_int, get_bool, get_str

bp = Blueprint("dbpub_incorporations", __name__)


def _format_date_ymd(y, m, d):
    """Format year/month/day into ISO date or partial date string (like ASP dateYMD)"""
    result = str(y)
    if m > 0:
        result += f"-{m:02d}"
        if d > 0:
            result += f"-{d:02d}"
    return result


@bp.route("/domicile.asp")
def domicile():
    """
    Distribution of listed companies by domicile

    Query params:
    - e: exchange (m=Main Board, g=GEM, a=All)
    - sort: sorting column

    Shows count and percentage of listed companies by jurisdiction
    """
    e = request.args.get("e", "a")
    sort_param = request.args.get("sort", "cntdn")

    # Exchange filter
    exchange_filters = {
        "g": ("20", "GEM"),
        "m": ("1", "Main Board"),
        "a": ("1, 20", "Main Board and GEM"),
    }
    ex_str, title_suffix = exchange_filters.get(e, ("1, 20", "Main Board and GEM"))

    # Sort order mapping
    sort_mappings = {
        "cntup": "cnt",
        "cntdn": "cnt DESC",
        "domup": "domname",
        "domdn": "domname DESC",
    }
    ob = sort_mappings.get(sort_param, "cnt DESC")

    # Get total count for percentage calculation
    total = execute_query(
        f"""
        SELECT COUNT(*) AS total
        FROM enigma.listedcoshk
        WHERE stockexid IN ({ex_str})
    """
    )[0]["total"]

    # Query domiciles with company counts
    domiciles_data = execute_query(
        f"""
        SELECT d.id,
               d.fullname AS domname,
               COUNT(l.issuer) AS cnt
        FROM enigma.listedcoshk l
        JOIN enigma.organisations o ON l.issuer = o.personid
        JOIN enigma.domiciles d ON o.domicile = d.id
        WHERE l.stockexid IN ({ex_str})
        GROUP BY d.id, d.fullname
        ORDER BY {ob}
    """
    )

    # Add percentage to each row
    for row in domiciles_data:
        row["pct"] = (row["cnt"] * 100.0 / total) if total > 0 else 0

    return render_template(
        "dbpub/domicile.html",
        domiciles_data=domiciles_data,
        e=e,
        sort_param=sort_param,
        title=f"Domicile of HK {title_suffix} listed companies",
        total=total,
    )


@bp.route("/domicilecos.asp")
def domicilecos():
    """
    Companies from a specific domicile

    Query params:
    - dom: domicile ID
    - e: exchange (m=Main Board, g=GEM, a=All)
    - sort: sorting column

    Shows list of listed companies from specified jurisdiction
    """
    dom = get_int("dom", 1)
    e = request.args.get("e", "a")
    sort_param = request.args.get("sort", "nameup")

    # Exchange filter
    exchange_filters = {
        "g": ("20", "GEM"),
        "m": ("1", "Main Board"),
        "a": ("1, 20", "HK"),
    }
    ex_str, title_prefix = exchange_filters.get(e, ("1, 20", "HK"))

    # Get domicile name
    domicile_result = execute_query(
        """
        SELECT friendly FROM enigma.domiciles WHERE id = %s
    """,
        (dom,),
    )

    if not domicile_result:
        return "Domicile not found", 404

    dom_name = domicile_result[0]["friendly"]

    # Sort order mapping
    sort_mappings = {
        "namedn": "name DESC",
        "nameup": "name",
        "incdup": "incdate, name",
        "incddn": "incdate DESC, name",
        "scup": "sc",
        "scdn": "sc DESC",
    }
    ob = sort_mappings.get(sort_param, "name")

    # Get all domiciles for dropdown
    all_domiciles = execute_query(
        """
        SELECT DISTINCT o.domicile, d.friendly
        FROM enigma.stocklistings sl
        JOIN enigma.issue i ON sl.issueid = i.id1
        JOIN enigma.organisations o ON i.issuer = o.personid
        JOIN enigma.domiciles d ON o.domicile = d.id
        WHERE sl.stockexid IN (1, 20)
          AND i.typeid IN (0, 6, 7, 10, 42)
          AND (sl.firsttradedate IS NULL OR sl.firsttradedate <= CURRENT_DATE)
          AND (sl.delistdate IS NULL OR sl.delistdate > CURRENT_DATE)
        ORDER BY d.friendly
    """
    )

    # Get companies from this domicile
    companies_data = execute_query(
        f"""
        SELECT o.name1 AS name,
               o.personid,
               o.incdate,
               COALESCE(
                   (SELECT sl2.stockcode
                    FROM enigma.stocklistings sl2
                    JOIN enigma.issue i2 ON sl2.issueid = i2.id1
                    WHERE i2.issuer = o.personid
                      AND (sl2.firsttradedate IS NULL OR sl2.firsttradedate <= CURRENT_DATE)
                      AND (sl2.delistdate IS NULL OR sl2.delistdate > CURRENT_DATE)
                    ORDER BY sl2.stockcode
                    LIMIT 1), '') AS sc
        FROM enigma.listedcoshk l
        JOIN enigma.organisations o ON l.issuer = o.personid
        WHERE l.stockexid IN ({ex_str})
          AND o.domicile = %s
        ORDER BY {ob}
    """,
        (dom,),
    )

    return render_template(
        "dbpub/domicilecos.html",
        companies_data=companies_data,
        all_domiciles=all_domiciles,
        dom=dom,
        dom_name=dom_name,
        e=e,
        sort_param=sort_param,
        title=f"{title_prefix}-listed companies domiciled in {dom_name}",
    )


@bp.route("/domicilechange.asp")
def domicile_change():
    """
    Companies that have changed domicile

    Shows companies redomiciled by continuation or scheme of arrangement
    """
    sort_param = request.args.get("sort", "datedn")

    # Sort order mapping
    sort_mappings = {
        "newup": "newdom, datechanged DESC",
        "newdn": "newdom DESC, datechanged DESC",
        "oldup": "olddom, datechanged DESC",
        "olddn": "olddom DESC, datechanged DESC",
        "dateup": "datechanged, name1",
        "datedn": "datechanged DESC, name1",
        "namup": "name1, datechanged DESC",
        "namdn": "name1 DESC, datechanged DESC",
    }
    ob = sort_mappings.get(sort_param, "datechanged DESC, name1")

    # Query domicile changes with old and new domiciles
    changes_data = execute_query(
        f"""
        SELECT dc.orgid,
               o.name1,
               dc.datechanged,
               dc.dateacc,
               d1.friendly AS olddom,
               d2.friendly AS newdom
        FROM enigma.domchanges dc
        JOIN enigma.organisations o ON dc.orgid = o.personid
        JOIN enigma.domiciles d1 ON dc.olddom = d1.id
        JOIN enigma.domiciles d2 ON o.domicile = d2.id
        ORDER BY {ob}
    """
    )

    return render_template(
        "dbpub/domicile_change.html", changes_data=changes_data, sort_param=sort_param
    )


# Name changes


@bp.route("/incHKannual.asp")
def inc_hk_annual():
    """
    HK companies incorporated and dissolved per year
    Query params: t (orgtype filter)
    Shows chart and table of incorporations/dissolutions
    """
    from datetime import date
    from webbsite.asp_helpers import get_int

    t = get_int("t", 0)
    title = "HK companies"

    # Build type filter
    if t > 0:
        # Get type name
        type_sql = "SELECT typename FROM enigma.orgtypes WHERE orgtype = %s"
        try:
            type_result = execute_query(type_sql, (t,))
            if type_result:
                type_name = type_result[0]["typename"]
                title += f": {type_name}"
                ot_filter = f"AND o.orgtype = {t}"
            else:
                ot_filter = ""
        except:
            ot_filter = ""
    else:
        ot_filter = ""

    # Query incorporations and dissolutions by year
    sql = f"""
        WITH RECURSIVE years AS (
            SELECT 1865 as y
            UNION ALL
            SELECT y + 1
            FROM years
            WHERE y < EXTRACT(YEAR FROM CURRENT_DATE)
        )
        SELECT
            y.y as year,
            COALESCE(inc.cnt, 0) as incorporated,
            COALESCE(dis.cnt, 0) as dissolved
        FROM years y
        LEFT JOIN (
            SELECT EXTRACT(YEAR FROM incdate) as y, COUNT(*) as cnt
            FROM enigma.organisations o
            WHERE domicile = 1
              AND incid ~ '^[0-9]'
              {ot_filter}
            GROUP BY EXTRACT(YEAR FROM incdate)
        ) inc ON y.y = inc.y
        LEFT JOIN (
            SELECT EXTRACT(YEAR FROM disdate) as y, COUNT(*) as cnt
            FROM enigma.organisations o
            WHERE domicile = 1
              AND incid ~ '^[0-9]'
              {ot_filter}
            GROUP BY EXTRACT(YEAR FROM disdate)
        ) dis ON y.y = dis.y
        ORDER BY y.y
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        current_app.logger.error(f"Error in incHKannual.asp: {ex}", exc_info=True)
        results = []

    return render_template("dbpub/inchkannual.html", years=results, t=t, title=title)


# Oldest HK companies


@bp.route("/oldestHKcos.asp")
def oldest_hk_cos():
    """
    The oldest HK-incorporated companies
    Query params: a (alive only), t (orgtype filter), sort
    """
    from webbsite.asp_helpers import get_int, get_bool, get_str

    a = get_bool("a")  # Alive only
    t = get_int("t", 0)  # Orgtype filter
    sort_param = get_str("sort", "incup")

    limit = 5000
    title = f"The oldest {limit}"

    # Build alive filter
    if a:
        alive_filter = "AND disdate IS NULL"
        title += " surviving"
    else:
        alive_filter = ""

    title += " HK-incorporated companies"

    # Build sort
    order_by_map = {
        "namup": "name",
        "namdn": "name DESC",
        "regup": "incid",
        "regdn": "incid DESC",
        "incup": "incdate, name",
        "incdn": "incdate DESC, name",
        "disdn": "disdate DESC, name",
        "disup": "disdate, name",
        "typup": "typename, name",
        "typdn": "typename DESC, name",
    }
    order_by = order_by_map.get(sort_param, order_by_map["incup"])

    # Build type filter
    if t > 0:
        type_sql = "SELECT typename FROM enigma.orgtypes WHERE orgtype = %s"
        try:
            type_result = execute_query(type_sql, (t,))
            if type_result:
                type_name = type_result[0]["typename"]
                title += f", {type_name}"
                ot_filter = f"AND o.orgtype = {t}"
            else:
                ot_filter = ""
        except:
            ot_filter = ""
    else:
        ot_filter = ""

    # Query oldest companies
    sql = f"""
        SELECT
            personid,
            name1 as name,
            cname,
            incdate,
            disdate,
            typename,
            incid
        FROM enigma.organisations o
        JOIN enigma.orgtypes ot ON o.orgtype = ot.orgtype
        WHERE domicile = 1
          AND incid ~ '^[0-9]'
          {alive_filter}
          {ot_filter}
        ORDER BY incdate
        LIMIT {limit}
    """

    # Re-sort based on user selection
    final_sql = f"""
        SELECT * FROM ({sql}) AS oldest
        ORDER BY {order_by}
    """

    try:
        results = execute_query(final_sql)
    except Exception as ex:
        current_app.logger.error(f"Error in oldestHKcos.asp: {ex}", exc_info=True)
        results = []

    return render_template(
        "dbpub/oldest_hk_cos.html",
        companies=results,
        a=a,
        t=t,
        sort=sort_param,
        title=title,
    )


# Directors per person distribution


@bp.route("/incHKcaltype.asp")
def inchkcaltype():
    """HK companies incorporated by calendar date and type"""
    from webbsite.asp_helpers import get_int, get_str
    from webbsite.db import execute_query
    from datetime import date
    from flask import render_template

    # Get parameters
    y = get_int("y", date.today().year)
    m = get_int("m", 0)  # 0 = any month
    d = get_int("d", 0)  # 0 = any day
    t = get_int("t", 0)  # 0 = any type
    sort_param = get_str("sort", "namup")

    # Validate year range
    if y < 1865:
        y = 1865
    elif y > date.today().year:
        y = date.today().year

    # Build order by clause
    order_by_map = {
        "namup": "o.name1",
        "namdn": "o.name1 DESC",
        "regup": "o.incid",
        "regdn": "o.incid DESC",
        "incup": "o.incdate, o.name1",
        "incdn": "o.incdate DESC, o.name1",
        "disup": "o.disdate, o.name1",
        "disdn": "o.disdate DESC, o.name1",
        "typup": "ot.typename, o.name1",
        "typdn": "ot.typename DESC, o.name1",
    }
    order_by = order_by_map.get(sort_param, "o.name1")

    # Build date range
    if m > 0:
        # Specific month or day
        month_start = date(y, m, 1)
        if d > 0:
            # Specific day
            month_end = date(y, m, d)
        else:
            # End of month
            if m == 12:
                month_end = date(y, 12, 31)
            else:
                month_end = date(y, m + 1, 1)
                from datetime import timedelta

                month_end = month_end - timedelta(days=1)
    else:
        # Entire year
        month_start = date(y, 1, 1)
        month_end = date(y, 12, 31)

    # Build query
    if t == 0:
        # All types
        sql = f"""
            SELECT o.personid, o.name1, o.cname, o.incid, o.incdate, o.disdate,
                   o.orgtype, ot.typename
            FROM enigma.organisations o
            JOIN enigma.orgtypes ot ON o.orgtype = ot.orgtype
            WHERE o.domicile = 1
              AND o.incid ~ '^[0-9]'
              AND o.incdate >= %s
              AND o.incdate <= %s
            ORDER BY {order_by}
            LIMIT 5000
        """
        params = (month_start, month_end)
    else:
        # Specific type
        sql = f"""
            SELECT o.personid, o.name1, o.cname, o.incid, o.incdate, o.disdate
            FROM enigma.organisations o
            WHERE o.domicile = 1
              AND o.incid ~ '^[0-9]'
              AND o.incdate >= %s
              AND o.incdate <= %s
              AND o.orgtype = %s
            ORDER BY {order_by}
            LIMIT 5000
        """
        params = (month_start, month_end, t)

    try:
        results = execute_query(sql, params)
        # Get type name if filtering by type
        typename = None
        if t > 0:
            type_sql = "SELECT typename FROM enigma.orgtypes WHERE orgtype = %s"
            type_result = execute_query(type_sql, (t,))
            if type_result:
                typename = type_result[0]["typename"]

        # Get org types for dropdown
        types_sql = """
            SELECT orgtype, typename
            FROM enigma.orgtypes
            WHERE orgtype IN (1,2,9,15,19,21,22,23,26,28,35,42,43)
            ORDER BY typename
        """
        orgtypes_list = execute_query(types_sql)
    except Exception as ex:
        current_app.logger.error(f"Error in incHKcaltype.asp: {ex}", exc_info=True)
        results = []
        typename = None
        orgtypes_list = []

    return render_template(
        "dbpub/inchkcaltype.html",
        companies=results,
        y=y,
        m=m,
        d=d,
        t=t,
        typename=typename,
        orgtypes=orgtypes_list,
        sort=sort_param,
        count=len(results),
        current_year=date.today().year,
    )


# HK Companies dissolved by year/month/day, type, and method


@bp.route("/disHKcaltype.asp")
def dishkcaltype():
    """HK companies dissolved by calendar date, type, and dissolution method"""
    from webbsite.asp_helpers import get_int, get_str
    from webbsite.db import execute_query
    from datetime import date
    from flask import render_template

    # Get parameters
    y = get_int("y", date.today().year)
    m = get_int("m", 0)  # 0 = any month
    d = get_int("d", 0)  # 0 = any day
    t = get_int("t", 0)  # 0 = any type
    w = get_int("w", 0)  # 0 = any dissolution method
    sort_param = get_str("sort", "namup")

    # Validate year range
    if y < 1917:
        y = 1917
    elif y > date.today().year:
        y = date.today().year

    # Build order by clause
    order_by_map = {
        "namup": "o.name1",
        "namdn": "o.name1 DESC",
        "modup": "dm.dismodetxt, o.name1",
        "moddn": "dm.dismodetxt DESC, o.name1",
        "typup": "ot.typename, o.name1",
        "typdn": "ot.typename DESC, o.name1",
        "incup": "o.incdate, o.name1",
        "incdn": "o.incdate DESC, o.name1",
        "disup": "o.disdate, o.name1",
        "disdn": "o.disdate DESC, o.name1",
    }
    order_by = order_by_map.get(sort_param, "o.name1")

    # Build date range
    if m > 0:
        month_start = date(y, m, 1)
        if d > 0:
            month_end = date(y, m, d)
        else:
            if m == 12:
                month_end = date(y, 12, 31)
            else:
                month_end = date(y, m + 1, 1)
                from datetime import timedelta

                month_end = month_end - timedelta(days=1)
    else:
        month_start = date(y, 1, 1)
        month_end = date(y, 12, 31)

    # Build query based on type and method filters
    if t == 0 and w == 0:
        # All types and methods
        sql = f"""
            SELECT o.personid, o.name1, o.cname, o.incid, o.incdate, o.disdate,
                   o.orgtype, ot.typename, dm.dismodetxt
            FROM enigma.organisations o
            JOIN enigma.orgtypes ot ON o.orgtype = ot.orgtype
            JOIN enigma.dismodes dm ON o.dismode = dm.id
            WHERE o.domicile = 1
              AND o.incid ~ '^[0-9]'
              AND o.disdate >= %s
              AND o.disdate <= %s
            ORDER BY {order_by}
            LIMIT 5000
        """
        params = (month_start, month_end)
    elif t > 0 and w == 0:
        # Specific type, all methods
        sql = f"""
            SELECT o.personid, o.name1, o.cname, o.incid, o.incdate, o.disdate,
                   dm.dismodetxt
            FROM enigma.organisations o
            JOIN enigma.dismodes dm ON o.dismode = dm.id
            WHERE o.domicile = 1
              AND o.incid ~ '^[0-9]'
              AND o.disdate >= %s
              AND o.disdate <= %s
              AND o.orgtype = %s
            ORDER BY {order_by}
            LIMIT 5000
        """
        params = (month_start, month_end, t)
    elif t == 0 and w > 0:
        # All types, specific method
        sql = f"""
            SELECT o.personid, o.name1, o.cname, o.incid, o.incdate, o.disdate,
                   o.orgtype, ot.typename
            FROM enigma.organisations o
            JOIN enigma.orgtypes ot ON o.orgtype = ot.orgtype
            WHERE o.domicile = 1
              AND o.incid ~ '^[0-9]'
              AND o.disdate >= %s
              AND o.disdate <= %s
              AND o.dismode = %s
            ORDER BY {order_by}
            LIMIT 5000
        """
        params = (month_start, month_end, w)
    else:
        # Specific type and method
        sql = f"""
            SELECT o.personid, o.name1, o.cname, o.incid, o.incdate, o.disdate
            FROM enigma.organisations o
            WHERE o.domicile = 1
              AND o.incid ~ '^[0-9]'
              AND o.disdate >= %s
              AND o.disdate <= %s
              AND o.orgtype = %s
              AND o.dismode = %s
            ORDER BY {order_by}
            LIMIT 5000
        """
        params = (month_start, month_end, t, w)

    try:
        results = execute_query(sql, params)

        # Get type/method names for title
        typename = None
        methodname = None
        if t > 0:
            type_sql = "SELECT typename FROM enigma.orgtypes WHERE orgtype = %s"
            type_result = execute_query(type_sql, (t,))
            if type_result:
                typename = type_result[0]["typename"]
        if w > 0:
            method_sql = "SELECT dismodetxt FROM enigma.dismodes WHERE id = %s"
            method_result = execute_query(method_sql, (w,))
            if method_result:
                methodname = method_result[0]["dismodetxt"]

        # Get org types for dropdown
        types_sql = """
            SELECT orgtype, typename
            FROM enigma.orgtypes
            WHERE orgtype IN (1,2,9,15,19,21,22,23,26,28,35,42,43)
            ORDER BY typename
        """
        orgtypes_list = execute_query(types_sql)

        # Get dissolution methods for dropdown
        methods_sql = """
            SELECT id, dismodetxt
            FROM enigma.dismodes
            WHERE id IN (1,2,3,4,5,8,9,10,18)
            ORDER BY dismodetxt
        """
        dismodes_list = execute_query(methods_sql)
    except Exception as ex:
        current_app.logger.error(f"Error in disHKcaltype.asp: {ex}", exc_info=True)
        results = []
        typename = None
        methodname = None
        orgtypes_list = []
        dismodes_list = []

    return render_template(
        "dbpub/dishkcaltype.html",
        companies=results,
        y=y,
        m=m,
        d=d,
        t=t,
        w=w,
        typename=typename,
        methodname=methodname,
        enigma_orgtypes=orgtypes_list,
        enigma_dismodes=dismodes_list,
        sort=sort_param,
        count=len(results),
        current_year=date.today().year,
    )


# Auditor changes for listed companies


@bp.route("/incHKmonth.asp")
def inchkmonth():
    """Monthly HK company incorporations and dissolutions"""
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from datetime import date
    from flask import render_template

    t = get_int("t", -1)  # -1 = all types

    # Get type name if filtering
    typename = None
    if t > 0:
        type_sql = "SELECT typename FROM enigma.orgtypes WHERE orgtype = %s"
        type_result = execute_query(type_sql, (t,))
        if type_result:
            typename = type_result[0]["typename"]

    # Build query for monthly data since 1985
    start_date = "1985-01-01"
    end_date = date.today().replace(day=1).isoformat()

    # This query generates monthly data points
    sql = (
        """
        WITH RECURSIVE dates AS (
            SELECT DATE '1985-01-01' AS d
            UNION ALL
            SELECT (d + INTERVAL '1 month')::date
            FROM dates
            WHERE d + INTERVAL '1 month' <= CAST(%s AS date)
        )
        SELECT
            TO_CHAR(d, 'YYYY-MM-DD') AS d,
            COALESCE(inc.cnt, 0) AS incorporated,
            COALESCE(dis.cnt, 0) AS dissolved
        FROM dates
        LEFT JOIN (
            SELECT DATE_TRUNC('month', incdate)::date AS mstart, COUNT(*) AS cnt
            FROM enigma.organisations
            WHERE domicile = 1
              AND incid ~ '^[0-9]'
              AND incdate >= '1985-01-01'
              AND incdate <= CAST(%s AS date)
    """
        + ("AND orgtype = %s" if t > 0 else "")
        + """
            GROUP BY mstart
        ) inc ON dates.d = inc.mstart
        LEFT JOIN (
            SELECT DATE_TRUNC('month', disdate)::date AS mstart, COUNT(*) AS cnt
            FROM enigma.organisations
            WHERE domicile = 1
              AND incid ~ '^[0-9]'
              AND disdate >= '1985-01-01'
              AND disdate <= CAST(%s AS date)
    """
        + ("AND orgtype = %s" if t > 0 else "")
        + """
            GROUP BY mstart
        ) dis ON dates.d = dis.mstart
        ORDER BY d
    """
    )

    try:
        if t > 0:
            params = (end_date, end_date, t, end_date, t)
        else:
            params = (end_date, end_date, end_date)

        results = execute_query(sql, params)

        # Get initial totals before start date
        if t > 0:
            init_sql = """
                SELECT
                    COUNT(*) FILTER (WHERE incdate < '1985-01-01') AS inc_total,
                    COUNT(*) FILTER (WHERE disdate < '1985-01-01') AS dis_total
                FROM enigma.organisations
                WHERE domicile = 1
                  AND incid ~ '^[0-9]'
                  AND orgtype = %s
            """
            init_result = execute_query(init_sql, (t,))
        else:
            init_sql = """
                SELECT
                    COUNT(*) FILTER (WHERE incdate < '1985-01-01') AS inc_total,
                    COUNT(*) FILTER (WHERE disdate < '1985-01-01') AS dis_total
                FROM enigma.organisations
                WHERE domicile = 1
                  AND incid ~ '^[0-9]'
            """
            init_result = execute_query(init_sql)

        inc_total = init_result[0]["inc_total"] if init_result else 0
        dis_total = init_result[0]["dis_total"] if init_result else 0

        # Get org types for dropdown
        types_sql = """
            SELECT orgtype, typename
            FROM enigma.orgtypes
            WHERE orgtype IN (1,19,21,26,28)
            ORDER BY typename
        """
        orgtypes_list = execute_query(types_sql)

    except Exception as ex:
        current_app.logger.error(f"Error in incHKmonth.asp: {ex}", exc_info=True)
        results = []
        inc_total = 0
        dis_total = 0
        orgtypes_list = []

    return render_template(
        "dbpub/inchkmonth.html",
        months=results,
        t=t,
        typename=typename,
        orgtypes=orgtypes_list,
        inc_total=inc_total,
        dis_total=dis_total,
    )


# HK company survival rates


@bp.route("/incHKsurvive.asp")
def inchksurvive():
    """Survival of HK companies at a given date"""
    from webbsite.asp_helpers import get_int, get_str
    from webbsite.db import execute_query
    from datetime import date
    from flask import render_template

    # Get parameters
    d_str = get_str("d", date.today().isoformat())
    t = get_int("t", -1)  # -1 = all types

    try:
        snapshot_date = date.fromisoformat(d_str)
    except ValueError:
        snapshot_date = date.today()

    # Get type name if filtering
    typename = None
    if t > 0:
        type_sql = "SELECT typename FROM enigma.orgtypes WHERE orgtype = %s"
        type_result = execute_query(type_sql, (t,))
        if type_result:
            typename = type_result[0]["typename"]

    # Query survival rates by year of incorporation
    sql = (
        """
        WITH RECURSIVE years AS (
            SELECT 1865 AS y
            UNION ALL
            SELECT y + 1
            FROM years
            WHERE y + 1 <= EXTRACT(YEAR FROM CAST(%s AS date))
        )
        SELECT
            y,
            COALESCE(t.cnt, 0) AS incorporated,
            COALESCE(t.survive, 0) AS surviving
        FROM years
        LEFT JOIN (
            SELECT
                EXTRACT(YEAR FROM incdate) AS incyear,
                COUNT(*) AS cnt,
                COUNT(*) FILTER (WHERE disdate IS NULL OR disdate > CAST(%s AS date)) AS survive
            FROM enigma.organisations
            WHERE domicile = 1
              AND incid ~ '^[0-9]'
              AND incdate <= CAST(%s AS date)
    """
        + ("AND orgtype = %s" if t > 0 else "")
        + """
            GROUP BY incyear
        ) t ON y = t.incyear
        ORDER BY y
    """
    )

    try:
        if t > 0:
            params = (snapshot_date, snapshot_date, snapshot_date, t)
        else:
            params = (snapshot_date, snapshot_date, snapshot_date)

        results = execute_query(sql, params)

        # Get org types for dropdown
        types_sql = """
            SELECT orgtype, typename
            FROM enigma.orgtypes
            WHERE orgtype IN (1,19,21,26,28)
            ORDER BY typename
        """
        orgtypes_list = execute_query(types_sql)

    except Exception as ex:
        current_app.logger.error(f"Error in incHKsurvive.asp: {ex}", exc_info=True)
        results = []
        orgtypes_list = []

    return render_template(
        "dbpub/inchksurvive.html",
        years=results,
        d=snapshot_date.isoformat(),
        t=t,
        typename=typename,
        orgtypes=orgtypes_list,
    )


# Annual HK company registrations


@bp.route("/regHKannual.asp")
def reghkannual():
    """Non-HK companies registered in HK - annual registrations and dissolutions/departures.
    Replicates the ASP page which queries the freg table for foreign company registrations
    (regID starting with 'F' followed by digits) hosted in HK (hostDom=1)."""
    from webbsite.db import execute_query
    from flask import render_template

    sql = """
        WITH RECURSIVE dates(d) AS (
            SELECT DATE '1946-01-01'
            UNION ALL
            SELECT (d + INTERVAL '1 year')::date
            FROM dates
            WHERE d + INTERVAL '1 year' <= (EXTRACT(YEAR FROM CURRENT_DATE)::text || '-01-01')::date
        )
        SELECT
            EXTRACT(YEAR FROM d)::int AS year,
            COALESCE(regcnt, 0) AS reg,
            COALESCE(cescnt, 0) AS ces
        FROM dates
        LEFT JOIN (
            SELECT COUNT(*) AS regcnt, EXTRACT(YEAR FROM regdate)::int AS y
            FROM enigma.organisations
            JOIN enigma.freg ON personid = orgid
            WHERE hostdom = 1 AND regid ~ '^F[0-9]'
            GROUP BY y
        ) reg ON EXTRACT(YEAR FROM d)::int = reg.y
        LEFT JOIN (
            SELECT COUNT(*) AS cescnt,
                   EXTRACT(YEAR FROM LEAST(
                       COALESCE(cesdate, disdate),
                       COALESCE(disdate, cesdate)
                   ))::int AS y
            FROM enigma.organisations
            JOIN enigma.freg ON personid = orgid
            WHERE hostdom = 1 AND regid ~ '^F[0-9]'
            GROUP BY y
        ) ces ON EXTRACT(YEAR FROM d)::int = ces.y
        ORDER BY d
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        current_app.logger.error(f"Error in regHKannual.asp: {ex}", exc_info=True)
        results = []

    return render_template("dbpub/reghkannual.html", years=results)


# Foreign company annual registrations


@bp.route("/incFcal.asp")
def incfcal():
    """Foreign companies registered in HK by year - from freg table"""
    current_year = date.today().year

    y = get_int("y", 0)
    m = 0 if y == 0 else get_int("m", 0)
    d = 0 if m == 0 else get_int("d", 0)
    dom = get_int("dom", 0)
    sort_param = get_str("sort", "namup")

    # ASP logic: if both dom and y are 0, default to current year
    if dom == 0 and y == 0:
        y = current_year

    # Clamp y to valid range
    if y != 0 and (y < 1946 or y > current_year):
        y = current_year

    # Build ORDER BY
    sort_map = {
        "namdn": "name DESC",
        "renup": "regid",
        "rendn": "regid DESC",
        "regup": "regdate, name",
        "regdn": "regdate DESC, name",
        "cesdn": "cesdate DESC, name",
        "cesup": "cesdate, name",
        "disdn": "disdate DESC, name",
        "disup": "disdate, name",
        "domup": "friendly, name",
        "domdn": "friendly DESC, name",
    }
    ob = sort_map.get(sort_param, "name")
    if sort_param not in sort_map:
        sort_param = "namup"

    # Build date range
    if y > 0:
        start_m = m if m > 0 else 1
        start_d = d if d > 0 else 1
        end_m = m if m > 0 else 12
        end_d = d if d > 0 else calendar.monthrange(y, end_m)[1]
        date_from = f"{y:04d}-{start_m:02d}-{start_d:02d}"
        date_to = f"{y:04d}-{end_m:02d}-{end_d:02d}"

    # Build SQL matching ASP: freg table with hostDom=1
    conditions = ["f.hostdom = 1"]
    params = []

    if y > 0:
        conditions.append("f.regdate BETWEEN %s AND %s")
        params.extend([date_from, date_to])

    if dom > 0:
        conditions.append("o.domicile = %s")
        params.append(dom)

    where_clause = " AND ".join(conditions)

    sql = f"""
        SELECT o.personid, o.name1 AS name, f.regdate, o.disdate, f.cesdate,
               d.friendly, f.regid
        FROM enigma.organisations o
        JOIN enigma.freg f ON o.personid = f.orgid
        LEFT JOIN enigma.domiciles d ON o.domicile = d.id
        WHERE {where_clause}
        ORDER BY {ob}
        LIMIT 2000
    """

    try:
        results = execute_query(sql, tuple(params))
    except Exception as ex:
        current_app.logger.error(f"Error in incFcal.asp: {ex}", exc_info=True)
        results = []

    # Build title
    date_str = _format_date_ymd(y, m, d)
    if y > 0:
        prefix = "on " if d > 0 else "in "
        title = f"Foreign companies registered in HK {prefix}{date_str}"
    else:
        title = "Foreign companies registered in HK"

    # Domicile list for dropdown
    try:
        dom_list = execute_query(
            """SELECT DISTINCT o.domicile, d.friendly
               FROM enigma.organisations o
               JOIN enigma.freg f ON o.personid = f.orgid
               JOIN enigma.domiciles d ON o.domicile = d.id
               WHERE f.hostdom = 1
               ORDER BY d.friendly"""
        )
    except Exception:
        dom_list = []

    return render_template("dbpub/incfcal.html",
                           companies=results, y=y, m=m, d=d, dom=dom,
                           sort=sort_param, title=title,
                           current_year=current_year, dom_list=dom_list)


# Foreign company dissolutions


@bp.route("/disFcal.asp")
def disfcal():
    """Foreign companies departed/dissolved in HK by year - uses LEAST(disDate, cesDate) as relDate"""
    current_year = date.today().year

    y = get_int("y", current_year)
    m = get_int("m", 0)
    d = 0 if m == 0 else get_int("d", 0)
    sort_param = get_str("sort", "namup")

    # Clamp y to valid range
    if y < 1946 or y > current_year:
        y = current_year

    # Build ORDER BY (ASP disFcal uses regup/regdn for regDate, not regID)
    sort_map = {
        "namdn": "name DESC",
        "regup": "regdate, name",
        "regdn": "regdate DESC, name",
        "cesdn": "cesdate DESC, name",
        "cesup": "cesdate, name",
        "disdn": "disdate DESC, name",
        "disup": "disdate, name",
        "domup": "friendly, name",
        "domdn": "friendly DESC, name",
    }
    ob = sort_map.get(sort_param, "name")
    if sort_param not in sort_map:
        sort_param = "namup"

    # Build date range
    start_m = m if m > 0 else 1
    start_d = d if d > 0 else 1
    end_m = m if m > 0 else 12
    end_d = d if d > 0 else calendar.monthrange(y, end_m)[1]
    date_from = f"{y:04d}-{start_m:02d}-{start_d:02d}"
    date_to = f"{y:04d}-{end_m:02d}-{end_d:02d}"

    # ASP uses LEAST(IFNULL(disDate,cesDate),IFNULL(cesDate,disDate)) as relDate
    # PostgreSQL equivalent: LEAST(COALESCE(disdate,cesdate), COALESCE(cesdate,disdate))
    sql = f"""
        SELECT personid, name, regdate, disdate, cesdate, reldate, friendly, regid
        FROM (
            SELECT o.personid, o.name1 AS name, f.regdate, o.disdate, f.cesdate,
                   LEAST(COALESCE(o.disdate, f.cesdate), COALESCE(f.cesdate, o.disdate)) AS reldate,
                   d.friendly, f.regid
            FROM enigma.organisations o
            JOIN enigma.freg f ON o.personid = f.orgid
            LEFT JOIN enigma.domiciles d ON o.domicile = d.id
            WHERE f.hostdom = 1
        ) t1
        WHERE reldate BETWEEN %s AND %s
        ORDER BY {ob}
        LIMIT 2000
    """

    try:
        results = execute_query(sql, (date_from, date_to))
    except Exception as ex:
        current_app.logger.error(f"Error in disFcal.asp: {ex}", exc_info=True)
        results = []

    # Build title
    date_str = _format_date_ymd(y, m, d)
    prefix = "on " if d > 0 else "in "
    title = f"Non-HK companies departed/dissolved HK {prefix}{date_str}"

    return render_template("dbpub/disfcal.html",
                           companies=results, y=y, m=m, d=d,
                           sort=sort_param, title=title,
                           current_year=current_year)


# HK company domicile and registration


@bp.route("/domregHK.asp")
def domreghk():
    """Domicile of HK-registered foreign companies.
    Matches ASP: queries freg table with hostDom=1 and regID starting with F followed by digit.
    Shows overseas companies registered with a place of business in HK that are not dissolved.
    """
    from webbsite.db import execute_query
    from webbsite.asp_helpers import get_str
    from flask import render_template

    sort_param = get_str("sort", "cntdn")
    order_by_map = {
        "cntup": "domcnt, d.friendly",
        "domup": "d.friendly",
        "domdn": "d.friendly DESC",
        "cntdn": "domcnt DESC, d.friendly",
    }
    order_by = order_by_map.get(sort_param, order_by_map["cntdn"])
    if sort_param not in order_by_map:
        sort_param = "cntdn"

    # Total count for percentage calculation
    total_row = execute_query("""
        SELECT COUNT(o.domicile) AS total
        FROM enigma.organisations o
        JOIN enigma.freg f ON o.personid = f.orgid
        WHERE o.disdate IS NULL
          AND f.cesdate IS NULL
          AND f.hostdom = 1
          AND f.regid ~ '^F[0-9]'
    """)
    total = total_row[0]["total"] if total_row else 0

    sql = f"""
        SELECT o.domicile, d.friendly, COUNT(*) AS domcnt
        FROM enigma.organisations o
        JOIN enigma.freg f ON o.personid = f.orgid
        LEFT JOIN enigma.domiciles d ON o.domicile = d.id
        WHERE f.hostdom = 1
          AND f.regid ~ '^F[0-9]'
          AND o.disdate IS NULL
          AND f.cesdate IS NULL
        GROUP BY o.domicile, d.friendly
        ORDER BY {order_by}
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        current_app.logger.error(f"Error in domregHK.asp: {ex}", exc_info=True)
        results = []

    return render_template(
        "dbpub/domreghk.html",
        domiciles=results,
        total=total,
        sort=sort_param,
        title="Domicile of HK-registered foreign companies",
    )


# UK company incorporations by calendar type


@bp.route("/incUKcaltype.asp")
def incukcaltype():
    """UK companies incorporated by year, month, day, type and domicile"""
    from webbsite.asp_helpers import get_int, get_str
    from webbsite.db import execute_query
    from datetime import date
    from flask import render_template

    # UK domicile codes: 116=England & Wales, 112=Scotland, 311=Northern Ireland
    UK_DOMICILES = [
        {"id": 116, "name": "England & Wales"},
        {"id": 311, "name": "Northern Ireland"},
        {"id": 112, "name": "Scotland"},
    ]

    # Get parameters
    y = get_int("y", date.today().year)
    m = get_int("m", 0)
    d = get_int("d", 0)
    t = get_int("t", 0)
    dom = get_int("dom", 116)  # default: England & Wales
    sort_param = get_str("sort", "namup")

    # Validate year range
    if y < 1663:
        y = 1663
    elif y > date.today().year:
        y = date.today().year

    # Build order by clause
    order_by_map = {
        "namup": "o.name1",
        "namdn": "o.name1 DESC",
        "regup": "o.incid",
        "regdn": "o.incid DESC",
        "incup": "o.incdate, o.name1",
        "incdn": "o.incdate DESC, o.name1",
        "disup": "o.disdate, o.name1",
        "disdn": "o.disdate DESC, o.name1",
        "typup": "ot.typename, o.name1",
        "typdn": "ot.typename DESC, o.name1",
    }
    order_by = order_by_map.get(sort_param, "o.name1")

    # Build date range
    if m > 0:
        month_start = date(y, m, 1)
        if d > 0:
            month_end = date(y, m, d)
        else:
            if m == 12:
                month_end = date(y, 12, 31)
            else:
                month_end = date(y, m + 1, 1)
                from datetime import timedelta
                month_end = month_end - timedelta(days=1)
    else:
        month_start = date(y, 1, 1)
        month_end = date(y, 12, 31)

    # Build query based on type filter
    if t == 0:
        sql = f"""
            SELECT o.personid, o.name1, o.incid, o.incdate, o.disdate,
                   o.orgtype, ot.typename
            FROM enigma.organisations o
            JOIN enigma.orgtypes ot ON o.orgtype = ot.orgtype
            WHERE o.domicile = %s
              AND o.incdate >= %s
              AND o.incdate <= %s
            ORDER BY {order_by}
            LIMIT 5000
        """
        params = (dom, month_start, month_end)
    else:
        sql = f"""
            SELECT o.personid, o.name1, o.incid, o.incdate, o.disdate
            FROM enigma.organisations o
            WHERE o.domicile = %s
              AND o.incdate >= %s
              AND o.incdate <= %s
              AND o.orgtype = %s
            ORDER BY {order_by}
            LIMIT 5000
        """
        params = (dom, month_start, month_end, t)

    try:
        results = execute_query(sql, params)

        typename = None
        if t > 0:
            type_sql = "SELECT typename FROM enigma.orgtypes WHERE orgtype = %s"
            type_result = execute_query(type_sql, (t,))
            if type_result:
                typename = type_result[0]["typename"]

        # UK-specific org types
        types_sql = """
            SELECT orgtype, typename
            FROM enigma.orgtypes
            WHERE orgtype IN (7,9,19,20,21,23,25,26,35,37,38,41)
            ORDER BY typename
        """
        orgtypes_list = execute_query(types_sql)
    except Exception as ex:
        current_app.logger.error(f"Error in incUKcaltype.asp: {ex}", exc_info=True)
        results = []
        typename = None
        orgtypes_list = []

    dom_name = next((dd["name"] for dd in UK_DOMICILES if dd["id"] == dom), "England & Wales")

    return render_template(
        "dbpub/incukcaltype.html",
        companies=results,
        y=y,
        m=m,
        d=d,
        t=t,
        dom=dom,
        dom_name=dom_name,
        typename=typename,
        orgtypes=orgtypes_list,
        uk_domiciles=UK_DOMICILES,
        sort=sort_param,
        count=len(results),
        current_year=date.today().year,
    )


# HK solicitors list
