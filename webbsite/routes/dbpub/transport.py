"""
Hong Kong transport and vehicle data
Full implementations matching original ASP pages
"""

from flask import Blueprint, render_template, request, abort, current_app, Response
from datetime import date, timedelta
import calendar
import io
import re
from webbsite.db import execute_query, get_db
from webbsite.asp_helpers import get_int, get_bool, get_str, ms_date, format_number, iif

bp = Blueprint("dbpub_transport", __name__)


def col_sum(rows, col_index):
    """Sum a column from a list of tuples/lists"""
    return sum(row[col_index] or 0 for row in rows)


def arr_sum(arr):
    """Sum all elements in an array"""
    return sum(x or 0 for x in arr)


@bp.route("/vax.asp")
def vax():
    """
    Hong Kong COVID-19 Vaccination statistics

    Query params:
    - s: Sex filter (m=male, f=female, blank=all)
    - t: Vaccine type (1=inactivated/SinoVac, 2=mRNA/BioNTech, 0=all)
    - c: Cohort ID (age group, 0=all)
    - v: Dose number (0=all doses, 1-10=specific dose)

    Tables: enigma.vax, enigma.vaxcohorts
    """
    # Get parameters
    s = get_str("s", "")  # sex: m, f, or blank
    if s not in ("m", "f"):
        s = ""

    t = get_int("t", 0)  # vaccine type: 1=sino, 2=bion, 0=all
    if t not in (0, 1, 2):
        t = 0

    c = get_int("c", 0)  # cohort (age group)
    v = get_int("v", 1)  # dose number

    # Determine max doses available
    doses_result = execute_query(
        "SELECT SUM(bion10 + sino10) AS has10, SUM(bion9 + sino9) AS has9 FROM enigma.vax"
    )
    if doses_result and doses_result[0]["has10"] and doses_result[0]["has10"] > 0:
        max_doses = 10
    elif doses_result and doses_result[0]["has9"] and doses_result[0]["has9"] > 0:
        max_doses = 9
    else:
        max_doses = 8

    if v < 0 or v > max_doses:
        v = 1

    # Get latest provisional date
    prov_date_result = execute_query(
        "SELECT MAX(d) AS maxd FROM enigma.vax WHERE NOT prov"
    )
    prov_date = prov_date_result[0]["maxd"] if prov_date_result and prov_date_result[0]["maxd"] else None

    # Get age cohorts with population data
    pop_col = f"{s}popn" if s else "mpopn + fpopn"
    cohorts = execute_query(
        f"""
        SELECT 0 AS ID, 'All' AS txt, 0 AS minAge,
               ({pop_col}) AS popn
        FROM (SELECT SUM(mpopn) AS mpopn, SUM(fpopn) AS fpopn FROM enigma.vaxcohorts) t
        UNION
        SELECT ID, txt, minAge, {pop_col} AS popn
        FROM enigma.vaxcohorts
        ORDER BY minAge
        """
    )

    # Validate cohort
    if c < 0 or c >= len(cohorts):
        c = 0

    # Build WHERE clause for sex filter
    where_clauses = []
    sex_label = ""
    if s == "m":
        where_clauses.append("male = TRUE")
        sex_label = " male"
    elif s == "f":
        where_clauses.append("male = FALSE")
        sex_label = " female"

    # Add cohort filter if specified
    cohort_label = ""
    if c > 0:
        where_clauses.append(f"cohort = {cohorts[c]['id']}")
        cohort_label = f" aged {cohorts[c]['txt']}"

    where_sql = " AND ".join(where_clauses) if where_clauses else "1=1"

    # Build title
    dose_label = f" dose {v}" if v > 0 else " all doses"
    title = f"Hong Kong COVID-19 Vaccinations{sex_label}{dose_label}{cohort_label}"

    # Get vaccination data
    if v == 0:
        # All doses - sum across all dose columns
        sino_cols = " + ".join([f"sino{i}" for i in range(1, max_doses + 1)])
        bion_cols = " + ".join([f"bion{i}" for i in range(1, max_doses + 1)])
        sql = f"""
            SELECT d,
                   SUM({sino_cols}) AS sino,
                   SUM({bion_cols}) AS bion
            FROM enigma.vax
            WHERE {where_sql}
            GROUP BY d
            ORDER BY d
        """
    else:
        # Specific dose
        sql = f"""
            SELECT d,
                   SUM(sino{v}) AS sino,
                   SUM(bion{v}) AS bion
            FROM enigma.vax
            WHERE {where_sql}
            GROUP BY d
            ORDER BY d
        """

    vax_data = execute_query(sql)

    # Calculate cumulative percentages if we have population
    popn = cohorts[c]["popn"] if c < len(cohorts) else 0
    cumulative_data = []
    cum_total = 0
    for row in vax_data:
        cum_total += (row["sino"] or 0) + (row["bion"] or 0)
        pct = (100.0 * cum_total / popn) if popn > 0 else 0
        cumulative_data.append({
            "d": row["d"],
            "sino": row["sino"],
            "bion": row["bion"],
            "cumulative": cum_total,
            "pct": round(pct, 2)
        })

    return render_template(
        "dbpub/vax.html",
        title=title,
        cohorts=cohorts,
        data=cumulative_data,
        selected_s=s,
        selected_t=t,
        selected_c=c,
        selected_v=v,
        max_doses=max_doses,
        prov_date=prov_date,
        popn=popn
    )


@bp.route("/tuntraff.asp")
def tuntraff():
    """Tunnel and bridge traffic statistics - full implementation matching ASP"""
    # Get parameters
    t = get_int("t", 1)  # tunnel ID
    tsql = " IN(1,2,3)" if t == 26 else f"={t}"

    # Get tunnel info
    tunnel_info = execute_query(f"SELECT * FROM enigma.tunnels WHERE ID={t}")
    if not tunnel_info:
        return render_template("dbpub/tuntraff.html", title="Tunnel not found", data=[], tunnels=[])

    t_name = tunnel_info[0]["name"]
    notes = tunnel_info[0].get("notes", "")
    opdate = ms_date(tunnel_info[0].get("opened"))

    # Vehicle class handling
    vc = get_int("vc", 0)
    vsql = ""
    if vc == 0:
        vcdes = "All vehicles"
    else:
        # Check if this vehicle class exists for this tunnel
        exists = execute_query(
            f"SELECT EXISTS(SELECT * FROM enigma.tuntraff WHERE tunID{tsql} AND vc={vc}) as e"
        )
        if exists and exists[0]["e"]:
            vcdata = execute_query(f"SELECT des FROM enigma.vehicleclass WHERE ID={vc}")
            vcdes = vcdata[0]["des"] if vcdata else "Unknown"
            vsql = f" AND vc={vc}"
        else:
            # Get first available vehicle class for this tunnel
            first_vc = execute_query(
                f"SELECT DISTINCT ID, des FROM enigma.vehicleclass "
                f"JOIN enigma.tuntraff ON vc=ID WHERE tunID{tsql} ORDER BY des LIMIT 1"
            )
            if first_vc:
                vc = first_vc[0]["id"]
                vcdes = first_vc[0]["des"]
                vsql = f" AND vc={vc}"
            else:
                vcdes = "All vehicles"

    # Frequency: 1=monthly 2=yearly
    f = get_int("f", 1)
    ftxt = "Month" if f == 1 else "Year"

    # Get tunnel compass directions
    dir_info = execute_query(
        f"SELECT defdir, altdir FROM enigma.tunnels t "
        f"JOIN enigma.tundir d ON tundirID=d.ID WHERE t.ID={t}"
    )
    defdir = dir_info[0]["defdir"] if dir_info else ""
    altdir = dir_info[0]["altdir"] if dir_info else ""

    # Sorting
    sort = get_str("sort", "datdn")
    sort_map = {
        "defup": "defcnt",
        "defdn": "defcnt DESC",
        "altup": "altcnt",
        "altdn": "altcnt DESC",
        "defaup": "defa",
        "defadn": "defa DESC",
        "altaup": "alta",
        "altadn": "alta DESC",
        "datup": "d",
        "datdn": "d DESC"
    }
    ob = sort_map.get(sort, "d DESC")
    if sort not in sort_map:
        sort = "datdn"

    # Build title
    title = f"Traffic: {t_name}: {vcdes} by {ftxt.lower()}"

    # Build SQL query
    if f == 1:
        # Monthly - use day of month for average
        sql = f"""
            SELECT MAX(d) as d, SUM(defcnt) as defc, SUM(altcnt) as altc,
                   SUM(defcnt)::float / EXTRACT(DAY FROM MAX(d)) as defa,
                   SUM(altcnt)::float / EXTRACT(DAY FROM MAX(d)) as alta
            FROM enigma.tuntraff
            WHERE tunID{tsql}{vsql}
            GROUP BY d
            ORDER BY {ob}
        """
    else:
        # Yearly - use day of year for average
        sql = f"""
            SELECT MAX(d) as d, SUM(defcnt) as defc, SUM(altcnt) as altc,
                   SUM(defcnt)::float / EXTRACT(DOY FROM MAX(d)) as defa,
                   SUM(altcnt)::float / EXTRACT(DOY FROM MAX(d)) as alta
            FROM enigma.tuntraff
            WHERE tunID{tsql}{vsql}
            GROUP BY EXTRACT(YEAR FROM d)
            ORDER BY {ob}
        """

    data = execute_query(sql)

    # Get tunnel list for dropdown
    tunnels = execute_query("SELECT id, name FROM enigma.tunnels ORDER BY name")

    # Get vehicle classes for this tunnel
    vehicle_classes = execute_query(
        f"SELECT DISTINCT ID, des FROM enigma.tuntraff t "
        f"JOIN enigma.vehicleclass v ON t.vc=v.ID WHERE tunID{tsql} ORDER BY des"
    )

    return render_template(
        "dbpub/tuntraff.html",
        title=title,
        t=t,
        vc=vc,
        f=f,
        ftxt=ftxt,
        sort=sort,
        defdir=defdir,
        altdir=altdir,
        data=data,
        tunnels=tunnels,
        vehicle_classes=vehicle_classes,
        opdate=opdate,
        notes=notes
    )


@bp.route("/veFR.asp")
def vefr():
    """Vehicle first registrations - full implementation with pivot table by brand and fuel/body"""
    # b is the breakdown: 1=Fuel, 2=Body
    b = get_int("b", 1)
    btxt = "Fuel" if b == 1 else "Body"
    btxt_col = "fuelID" if b == 1 else "bodyID"
    btxt_table = "fueltype" if b == 1 else "bodytype"
    btxt_name = "friendly" if b == 1 else "des"

    # Get date range
    date_range = execute_query("SELECT MIN(d) AS mind, MAX(d) AS maxd FROM enigma.vehiclefr")
    mind = date_range[0]["mind"] if date_range else None
    maxd = date_range[0]["maxd"] if date_range else None

    if not mind or not maxd:
        return render_template("dbpub/vefr.html", title="No data available", data=[], cats=[], classes=[])

    mind_year = mind.year
    maxd_year = maxd.year
    mind_month = mind.month
    maxd_month = maxd.month

    # Year/month selection
    y = get_int("y", maxd_year)
    if y != 0:
        y = max(min(y, maxd_year), mind_year)
    if y == 0:
        m = 0
    else:
        m = max(min(get_int("m", 0), 12), 0)
    if y == mind_year and m > 0 and m < mind_month:
        m = mind_month
    if y == maxd_year and m > maxd_month:
        m = maxd_month

    msql = ""
    if y > 0:
        msql = f" AND EXTRACT(YEAR FROM d)={y}"
    if m > 0:
        msql += f" AND EXTRACT(MONTH FROM d)={m}"

    f = 2 if m == 0 else 1  # frequency for history link

    # Vehicle class
    vc = get_int("vc", 1)
    if vc not in (1, 2, 27, 28, 29):
        vc = 1
    vcdes = execute_query(f"SELECT des FROM enigma.vehicleclass WHERE ID={vc}")
    vcdes = vcdes[0]["des"] if vcdes else ""

    # Get categories (fuel types or body types) with totals
    if b == 1:
        cats = execute_query(
            f"SELECT f.ID, f.friendly as name, COALESCE(SUM(freg), 0) as total "
            f"FROM enigma.fueltype f "
            f"LEFT JOIN enigma.vehiclefr v ON f.ID=v.fuelID AND vc={vc}{msql} "
            f"WHERE EXISTS(SELECT 1 FROM enigma.vehiclefr WHERE fuelID=f.ID AND vc={vc}{msql}) "
            f"GROUP BY f.ID ORDER BY f.ID"
        )
    else:
        cats = execute_query(
            f"SELECT f.ID, f.des as name, COALESCE(SUM(freg), 0) as total "
            f"FROM enigma.bodytype f "
            f"LEFT JOIN enigma.vehiclefr v ON f.ID=v.bodyID AND vc={vc}{msql} "
            f"WHERE EXISTS(SELECT 1 FROM enigma.vehiclefr WHERE bodyID=f.ID AND vc={vc}{msql}) "
            f"GROUP BY f.ID ORDER BY f.ID"
        )

    if not cats:
        return render_template("dbpub/vefr.html", title="No data available", data=[], cats=[], classes=[])

    total = sum(c["total"] or 0 for c in cats)
    cnt = len(cats)

    # Sorting
    sort = get_str("sort", "totdn")
    ob = "n DESC, make"
    for x, cat in enumerate(cats):
        if sort == f"f{x}dn":
            ob = f"f{x} DESC, make"
        elif sort == f"f{x}up":
            ob = f"f{x}, make"
    if sort == "makup":
        ob = "make, n"
    elif sort == "makdn":
        ob = "make DESC, n"
    elif sort == "totup":
        ob = "n, make"
    elif sort in ("", "totdn"):
        ob = "n DESC, make"

    # Build dynamic SQL with pivot columns
    pivot_cols = ", ".join([
        f"SUM(freg * CASE WHEN {btxt_col}={cat['id']} THEN 1 ELSE 0 END) as f{x}"
        for x, cat in enumerate(cats)
    ])

    sql = f"""
        SELECT {pivot_cols}, SUM(freg) as n, makeID, make
        FROM enigma.vehiclefr
        JOIN enigma.vehiclemakes vm ON makeID=vm.ID
        WHERE vc={vc}{msql}
        GROUP BY makeID, make
        ORDER BY {ob}
    """
    data = execute_query(sql)

    # Build title
    title = f"HK first registration: {vcdes} by brand and {btxt.lower()} "
    if y == 0:
        title += f"from {ms_date(mind)[:7]}"
    else:
        title += f"in {y}"
    if m > 0:
        title += f"-{m:02d}"
    elif y == mind_year:
        title += f"-{mind_month:02d} to {mind_year}-12"
    if y == 0 or (y == maxd_year and m == 0):
        title += f" up to {ms_date(maxd)[:7]}"

    # Get vehicle classes for dropdown
    classes = execute_query(
        "SELECT id, des FROM enigma.vehicleclass WHERE id IN(1,2,27,28,29) ORDER BY id"
    )

    return render_template(
        "dbpub/vefr.html",
        title=title,
        data=data,
        cats=cats,
        total=total,
        y=y,
        m=m,
        b=b,
        btxt=btxt,
        f=f,
        vc=vc,
        sort=sort,
        mind=mind,
        maxd=maxd,
        classes=classes
    )


@bp.route("/veFRtype.asp")
def vefrtype():
    """Vehicle first registrations by type - full implementation with simple/detailed views"""
    maxd = execute_query("SELECT MAX(d) AS maxd FROM enigma.vehiclefr")
    maxd = maxd[0]["maxd"] if maxd else None
    if not maxd:
        return render_template("dbpub/vefrtype.html", title="No data available", data=[])

    maxd_year = maxd.year
    maxd_month = maxd.month

    y = get_int("y", maxd_year)
    if y != 0:
        y = max(min(y, maxd_year), 2013)
    if y == 0:
        m = 0
    else:
        m = max(min(get_int("m", 0), 12), 0)
    if y == maxd_year and m > maxd_month:
        m = maxd_month

    msql = ""
    if y > 0:
        msql = f" AND EXTRACT(YEAR FROM d)={y}"
    if m > 0:
        msql += f" AND EXTRACT(MONTH FROM d)={m}"

    # Find month for total licensed and registered
    if y == 0:
        ytot = maxd_year
    else:
        ytot = y
    if m == 0:
        mtot = maxd_month if ytot == maxd_year else 12
    else:
        mtot = m

    # Sorting
    sort = get_str("sort", "desup")
    sort_map = {
        "licup": "totLic, des",
        "licdn": "totLic DESC, des",
        "regup": "totReg, des",
        "regdn": "totReg DESC, des",
        "FRup": "FR, des",
        "FRdn": "FR DESC, des",
        "desdn": "des DESC, FR",
        "desup": "des"
    }
    ob = sort_map.get(sort, "des")
    if sort not in sort_map:
        sort = "desup"

    # Build title
    title = "HK registration and licensing "
    if y == 0:
        title += "from 2013-01 "
    else:
        title += f"in {y}"
    if m > 0:
        title += f"-{m:02d}"
    if y == 0 or (y == maxd_year and m == 0):
        title += f" up to {maxd_year}-{maxd_month:02d}"

    # Get total FR
    total = execute_query(f"SELECT SUM(FR) as t FROM enigma.tdreglic WHERE 1=1{msql}")
    total = total[0]["t"] if total else 0

    # Get sum of licensed and registered at specific month
    sums = execute_query(
        f"SELECT SUM(totLic) as sumLic, SUM(totReg) as sumReg FROM enigma.tdreglic "
        f"WHERE totReg > 0 AND EXTRACT(YEAR FROM d)={ytot} AND EXTRACT(MONTH FROM d)={mtot}"
    )
    sum_lic = sums[0]["sumlic"] if sums else 0
    sum_reg = sums[0]["sumreg"] if sums else 0

    simple = get_bool("simple")
    if simple:
        sql = f"""
            SELECT vc1.parent as ID, vc2.des, SUM(FR) as FR, t.totLic, t.totReg
            FROM enigma.tdreglic td
            JOIN enigma.vehicleclass vc1 ON td.vc=vc1.ID
            JOIN (
                SELECT parent, SUM(totLic) as totLic, SUM(totReg) as totReg
                FROM enigma.tdreglic
                JOIN enigma.vehicleclass vc ON vc=ID
                WHERE EXTRACT(YEAR FROM d)={ytot} AND EXTRACT(MONTH FROM d)={mtot}
                GROUP BY vc.parent
            ) t ON vc1.parent=t.parent
            JOIN enigma.vehicleclass vc2 ON vc1.parent=vc2.ID
            WHERE t.totReg > 0{msql}
            GROUP BY vc1.parent, vc2.des, t.totLic, t.totReg
            ORDER BY {ob}
        """
    else:
        sql = f"""
            SELECT td.vc as ID, vc.des, SUM(FR) as FR, t.totLic, t.totReg
            FROM enigma.tdreglic td
            JOIN enigma.vehicleclass vc ON td.vc=vc.ID
            JOIN (
                SELECT vc, totLic, totReg FROM enigma.tdreglic
                WHERE EXTRACT(YEAR FROM d)={ytot} AND EXTRACT(MONTH FROM d)={mtot}
            ) t ON td.vc=t.vc
            WHERE t.totReg > 0{msql}
            GROUP BY td.vc, vc.des, t.totLic, t.totReg
            ORDER BY {ob}
        """

    data = execute_query(sql)

    # Get bus operators if detailed view
    operators = []
    if not simple:
        operators = execute_query(
            """
            SELECT DISTINCT orgID, tdabbrev,
                   COALESCE(name1, '') || COALESCE(' ' || cName, '') as n
            FROM enigma.tdreglic t
            JOIN enigma.vehicleclass v ON t.vc=v.ID
            JOIN enigma.ptoperators p ON v.operator=p.ID
            JOIN enigma.organisations o ON p.orgID=o.personID
            WHERE operator IS NOT NULL AND totReg > 0
            ORDER BY tdabbrev
            """
        )

    return render_template(
        "dbpub/vefrtype.html",
        title=title,
        data=data,
        y=y,
        m=m,
        simple=simple,
        sort=sort,
        total=total,
        sum_lic=sum_lic,
        sum_reg=sum_reg,
        maxd=maxd,
        operators=operators
    )


@bp.route("/veFRtypehist.asp")
def vefrtypehist():
    """Vehicle first registrations by type - historical trend"""
    vc = max(get_int("vc", 1), 1)

    f = get_int("f", 1)  # frequency 1=monthly 2=yearly
    ftxt = "Month" if f == 1 else "Year"

    simple = get_bool("simple")

    # Adjust vc based on simple/detailed mode
    if simple:
        # Use parent category
        parent = execute_query(f"SELECT parent FROM enigma.vehicleclass WHERE ID={vc}")
        if parent and parent[0]["parent"] and vc > 12:
            vc = parent[0]["parent"]
    else:
        # Use first child if needed
        if vc < 13:
            first_child = execute_query(
                f"SELECT DISTINCT ID FROM enigma.vehicleclass "
                f"JOIN enigma.tdreglic ON vc=ID WHERE parent={vc} ORDER BY des LIMIT 1"
            )
            if first_child:
                vc = first_child[0]["id"]

    vcdes = execute_query(f"SELECT des FROM enigma.vehicleclass WHERE ID={vc}")
    vcdes = vcdes[0]["des"] if vcdes else ""

    # Get operator info for detailed view
    op = 0
    op_name = ""
    if not simple:
        op_info = execute_query(
            f"""
            SELECT orgID, COALESCE(name1, '') || COALESCE(' ' || cName, '') as n
            FROM enigma.vehicleclass v
            JOIN enigma.ptoperators p ON operator=p.ID
            JOIN enigma.organisations o ON p.orgID=o.personID
            WHERE v.ID={vc}
            """
        )
        if op_info:
            op = op_info[0]["orgid"]
            op_name = op_info[0]["n"]

    # Sorting
    sort = get_str("sort", "datdn")
    sort_map = {
        "licup": "totLic",
        "licdn": "totLic DESC",
        "regup": "totReg",
        "regdn": "totReg DESC",
        "FRup": "FR",
        "FRdn": "FR DESC",
        "datup": "d",
        "datdn": "d DESC"
    }
    ob = sort_map.get(sort, "d DESC")

    title = f"HK registration and licensing: {vcdes} by {ftxt.lower()}"

    # Build SQL
    if simple:
        total = execute_query(
            f"SELECT SUM(FR) as t FROM enigma.tdreglic "
            f"JOIN enigma.vehicleclass ON vc=ID WHERE parent={vc}"
        )
        if f == 1:
            sql = f"""
                SELECT d, SUM(FR) as FR, SUM(totLic) as totLic, SUM(totReg) as totReg
                FROM enigma.tdreglic
                JOIN enigma.vehicleclass vc ON vc=ID
                WHERE parent={vc}
                GROUP BY d
                ORDER BY {ob}
            """
        else:
            sql = f"""
                SELECT MAX(d) as d, SUM(td.FR) as FR, SUM(td.totLic) as totLic, SUM(td.totReg) as totReg
                FROM enigma.tdreglic td
                JOIN enigma.vehicleclass vc ON td.vc=vc.ID
                WHERE parent={vc}
                GROUP BY EXTRACT(YEAR FROM d)
                ORDER BY {ob}
            """
    else:
        total = execute_query(f"SELECT SUM(FR) as t FROM enigma.tdreglic WHERE vc={vc}")
        if f == 1:
            sql = f"""
                SELECT d, FR, totLic, totReg FROM enigma.tdreglic WHERE vc={vc}
                ORDER BY {ob}
            """
        else:
            sql = f"""
                SELECT MAX(d) as d, SUM(FR) as FR, totLic, totReg
                FROM enigma.tdreglic
                WHERE vc={vc}
                GROUP BY EXTRACT(YEAR FROM d), totLic, totReg
                ORDER BY {ob}
            """

    data = execute_query(sql)
    total = total[0]["t"] if total else 0

    # Get vehicle classes for dropdown
    if simple:
        classes = execute_query(
            "SELECT ID, des FROM enigma.vehicleclass WHERE ID<13 AND ID<>8 ORDER BY des"
        )
    else:
        classes = execute_query(
            "SELECT DISTINCT ID, des FROM enigma.tdreglic "
            "JOIN enigma.vehicleclass ON vc=ID WHERE totReg>0 ORDER BY des"
        )

    return render_template(
        "dbpub/vefrtypehist.html",
        title=title,
        vc=vc,
        f=f,
        ftxt=ftxt,
        simple=simple,
        sort=sort,
        data=data,
        total=total,
        classes=classes,
        op=op,
        op_name=op_name
    )


@bp.route("/veJourneyhist.asp")
def vejourneyhist():
    """Vehicle journey history - full implementation with charts"""
    vc = max(get_int("vc", 80), 1)

    maxd = execute_query("SELECT MAX(d) AS maxd FROM enigma.tdjourneys")
    maxd = maxd[0]["maxd"] if maxd else None

    f = get_int("f", 1)  # frequency 1=monthly 2=yearly
    ftxt = "Month" if f == 1 else "Year"

    simple = get_bool("simple")

    # Adjust vc based on simple/detailed mode
    if simple:
        parent = execute_query(f"SELECT jparent FROM enigma.vehicleclass WHERE jparent<>ID AND ID={vc}")
        if parent and parent[0]["jparent"]:
            vc = parent[0]["jparent"]
    else:
        first_child = execute_query(
            f"SELECT ID FROM enigma.vehicleclass WHERE jparent={vc} ORDER BY des LIMIT 1"
        )
        if first_child:
            vc = first_child[0]["id"]

    vcdes = execute_query(f"SELECT des FROM enigma.vehicleclass WHERE ID={vc}")
    vcdes = vcdes[0]["des"] if vcdes else ""

    # Get operator info
    op = 0
    op_name = ""
    if not simple:
        op_info = execute_query(
            f"""
            SELECT orgID, COALESCE(name1, '') || COALESCE(' ' || cName, '') as n
            FROM enigma.vehicleclass v
            JOIN enigma.ptoperators p ON operator=p.ID
            JOIN enigma.organisations o ON p.orgID=o.personID
            WHERE v.ID={vc}
            """
        )
        if op_info:
            op = op_info[0]["orgid"]
            op_name = op_info[0]["n"]

    title = f"HK passenger journeys: {vcdes} by {ftxt.lower()}"

    # Build SQL with complex calculations
    if simple:
        sql = f"""
            SELECT t.d, SUM(j) as j,
                   ROUND(SUM(j)::numeric / SUM(EXTRACT(DAY FROM t.d))) as pd,
                   ROUND(AVG(totLic)) as totLic, ROUND(AVG(paxcap)) as paxcap, SUM(km) as km,
                   COALESCE(SUM(km)::numeric / NULLIF(AVG(totLic), 0) / NULLIF(SUM(EXTRACT(DAY FROM t.d)), 0), 0) as kcd,
                   COALESCE(SUM(j)::numeric / NULLIF(AVG(totLic), 0) / NULLIF(SUM(EXTRACT(DAY FROM t.d)), 0), 0) as jcd
            FROM (
                SELECT t.d, SUM(j) as j, SUM(paxcap) as paxcap, SUM(km) as km, SUM(totLic) as totLic
                FROM enigma.tdjourneys t
                JOIN enigma.vehicleclass v ON t.vc=v.ID
                JOIN enigma.tdreglic r ON t.d=r.d AND t.vc=r.vc
                WHERE jparent={vc}
                GROUP BY t.d
            ) t
            GROUP BY {"t.d" if f == 1 else "EXTRACT(YEAR FROM t.d)"}
            ORDER BY d DESC
        """
    else:
        group_by = "t.d" if f == 1 else "EXTRACT(YEAR FROM t.d)"
        sql = f"""
            SELECT {"t.d" if f == 1 else "MAX(t.d)"} as d,
                   SUM(j) as j,
                   ROUND(SUM(j)::numeric / SUM(EXTRACT(DAY FROM t.d))) as pd,
                   ROUND(AVG(totLic)) as totLic, ROUND(AVG(paxcap)) as paxcap, SUM(km) as km,
                   COALESCE(SUM(km)::numeric / NULLIF(AVG(totLic), 0) / NULLIF(SUM(EXTRACT(DAY FROM t.d)), 0), 0) as kcd,
                   COALESCE(SUM(j)::numeric / NULLIF(AVG(totLic), 0) / NULLIF(SUM(EXTRACT(DAY FROM t.d)), 0), 0) as jcd
            FROM enigma.tdjourneys t
            JOIN enigma.tdreglic r ON t.d=r.d AND t.vc=r.vc
            WHERE t.vc={vc}
            GROUP BY {group_by}
            ORDER BY d DESC
        """

    data = execute_query(sql)

    # Get vehicle classes for dropdown
    if simple:
        classes = execute_query(
            "SELECT ID, des FROM enigma.vehicleclass "
            "WHERE ID IN(SELECT DISTINCT jParent FROM enigma.vehicleclass) ORDER BY des"
        )
    else:
        classes = execute_query(
            "SELECT ID, des FROM enigma.vehicleclass WHERE jParent IS NOT NULL ORDER BY des"
        )

    return render_template(
        "dbpub/vejourneyhist.html",
        title=title,
        vc=vc,
        f=f,
        ftxt=ftxt,
        simple=simple,
        data=data,
        classes=classes,
        op=op,
        op_name=op_name,
        maxd=maxd
    )


@bp.route("/veJourneys.asp")
def vejourneys():
    """Vehicle journeys summary - full implementation"""
    maxd = execute_query("SELECT MAX(d) AS maxd FROM enigma.tdjourneys")
    maxd = maxd[0]["maxd"] if maxd else None
    if not maxd:
        return render_template("dbpub/vejourneys.html", title="No data", data=[])

    maxd_year = maxd.year
    maxd_month = maxd.month

    y = get_int("y", maxd_year)
    if y != 0:
        y = max(min(y, maxd_year), 2013)
    if y == 0:
        m = 0
    else:
        m = max(min(get_int("m", 0), 12), 0)
    if y == maxd_year and m > maxd_month:
        m = maxd_month

    msql = ""
    if y > 0:
        msql = f" AND EXTRACT(YEAR FROM t.d)={y}"
    if m > 0:
        msql += f" AND EXTRACT(MONTH FROM t.d)={m}"

    # Find month for total licensed/registered
    if y == 0:
        ytot = maxd_year
    else:
        ytot = y
    if m == 0:
        mtot = maxd_month if ytot == maxd_year else 12
    else:
        mtot = m

    # Sorting
    sort = get_str("sort", "jdn")
    sort_map = {
        "capdn": "paxcap DESC, des",
        "capup": "paxcap, des",
        "jup": "j, des",
        "jdn": "j DESC, des",
        "jcddn": "jcd DESC, des",
        "jcdup": "jcd, des",
        "licdn": "totLic DESC, des",
        "licup": "totLic, des",
        "desdn": "des DESC, j",
        "desup": "des, j",
        "kcddn": "kcd DESC, des",
        "kcdup": "kcd, des",
        "kmdn": "km DESC, des",
        "kmup": "km, des"
    }
    ob = sort_map.get(sort, "j DESC, des")

    # Build title
    title = "HK passenger journeys "
    if y == 0:
        title += "from 2013-01 "
    else:
        title += f"in {y}"
    if m > 0:
        title += f"-{m:02d}"
    if y == 0 or (y == maxd_year and m == 0):
        title += f" up to {maxd_year}-{maxd_month:02d}"

    total = execute_query(f"SELECT SUM(j) as t FROM enigma.tdjourneys t WHERE 1=1{msql}")
    total = total[0]["t"] if total else 0

    # Get sums
    sums = execute_query(
        f"SELECT SUM(totLic) as sumLic, SUM(totReg) as sumReg FROM enigma.tdreglic "
        f"WHERE EXTRACT(YEAR FROM d)={ytot} AND EXTRACT(MONTH FROM d)={mtot}"
    )
    sum_lic = sums[0]["sumlic"] if sums else 0
    sum_reg = sums[0]["sumreg"] if sums else 0

    simple = get_bool("simple")

    if simple:
        sql = f"""
            SELECT v.ID, des, SUM(j) as j,
                   ROUND(SUM(j)::numeric / SUM(EXTRACT(DAY FROM t.d))) as pd,
                   ROUND(AVG(totLic)) as totLic, ROUND(AVG(paxcap)) as paxcap, SUM(km) as km,
                   COALESCE(SUM(km)::numeric / NULLIF(AVG(totLic), 0) / NULLIF(SUM(EXTRACT(DAY FROM t.d)), 0), 0) as kcd,
                   COALESCE(SUM(j)::numeric / NULLIF(AVG(totLic), 0) / NULLIF(SUM(EXTRACT(DAY FROM t.d)), 0), 0) as jcd
            FROM (
                SELECT t.d, jparent, SUM(j) as j, SUM(paxcap) as paxcap, SUM(km) as km, SUM(totLic) as totLic
                FROM enigma.tdjourneys t
                JOIN enigma.vehicleclass v ON t.vc=v.ID
                JOIN enigma.tdreglic r ON t.d=r.d AND t.vc=r.vc
                GROUP BY t.d, jparent
            ) t
            JOIN enigma.vehicleclass v ON t.jparent=v.ID
            WHERE 1=1{msql}
            GROUP BY v.ID, des
            ORDER BY {ob}
        """
    else:
        sql = f"""
            SELECT v.ID, des, SUM(j) as j,
                   ROUND(SUM(j)::numeric / SUM(EXTRACT(DAY FROM t.d))) as pd,
                   ROUND(AVG(totLic)) as totLic, ROUND(AVG(paxcap)) as paxcap, SUM(km) as km,
                   COALESCE(SUM(km)::numeric / NULLIF(AVG(totLic), 0) / NULLIF(SUM(EXTRACT(DAY FROM t.d)), 0), 0) as kcd,
                   COALESCE(SUM(j)::numeric / NULLIF(AVG(totLic), 0) / NULLIF(SUM(EXTRACT(DAY FROM t.d)), 0), 0) as jcd
            FROM enigma.tdjourneys t
            JOIN enigma.vehicleclass v ON t.vc=v.ID
            JOIN enigma.tdreglic r ON t.d=r.d AND t.vc=r.vc
            WHERE 1=1{msql}
            GROUP BY v.ID, des
            ORDER BY {ob}
        """

    data = execute_query(sql)

    # Get operators for detailed view
    operators = []
    if not simple:
        operators = execute_query(
            """
            SELECT DISTINCT orgID, tdabbrev,
                   COALESCE(name1, '') || COALESCE(' ' || cName, '') as n
            FROM enigma.tdjourneys t
            JOIN enigma.vehicleclass v ON t.vc=v.ID
            JOIN enigma.ptoperators p ON v.operator=p.ID
            JOIN enigma.organisations o ON p.orgID=o.personID
            WHERE operator IS NOT NULL
            ORDER BY tdabbrev
            """
        )

    return render_template(
        "dbpub/vejourneys.html",
        title=title,
        y=y,
        m=m,
        simple=simple,
        sort=sort,
        data=data,
        total=total,
        sum_lic=sum_lic,
        sum_reg=sum_reg,
        maxd=maxd,
        operators=operators
    )


@bp.route("/vebrandhist.asp")
def vebrandhist():
    """Vehicle brand registration history - full implementation"""
    b = get_int("b", 1)  # breakdown 1=fuel 2=body
    f = get_int("f", 1)  # frequency 1=monthly 2=yearly
    btxt = "Fuel" if b == 1 else "Body"
    ftxt = "Month" if f == 1 else "Year"
    btxt_col = "fuelID" if b == 1 else "bodyID"

    makeid = get_int("brand", 0)
    vc = max(get_int("vc", 1), 1)
    vsql = f" vc={vc}"

    maxd = execute_query("SELECT MAX(d) AS maxd FROM enigma.vehiclefr")
    maxd = maxd[0]["maxd"] if maxd else None

    vcdes = execute_query(f"SELECT des FROM enigma.vehicleclass WHERE ID={vc}")
    vcdes = vcdes[0]["des"] if vcdes else ""

    make = ""
    if makeid > 0:
        # Check if this brand exists for this vehicle class
        exists = execute_query(
            f"SELECT EXISTS(SELECT * FROM enigma.vehiclefr WHERE makeID={makeid} AND vc={vc}) as e"
        )
        if exists and exists[0]["e"]:
            make_data = execute_query(f"SELECT make FROM enigma.vehiclemakes WHERE ID={makeid}")
            make = make_data[0]["make"] if make_data else ""
        else:
            # Get first brand alphabetically
            first_make = execute_query(
                f"SELECT DISTINCT ID, make FROM enigma.vehiclemakes "
                f"JOIN enigma.vehiclefr ON makeID=ID AND vc={vc} ORDER BY make LIMIT 1"
            )
            if first_make:
                makeid = first_make[0]["id"]
                make = first_make[0]["make"]
        vsql += f" AND makeID={makeid}"

    # Get categories (fuel or body types)
    if b == 1:
        cats = execute_query(
            f"SELECT ID, friendly as name, COALESCE(SUM(freg), 0) as total "
            f"FROM enigma.fueltype f "
            f"JOIN enigma.vehiclefr v ON f.ID=v.fuelID "
            f"WHERE {vsql} GROUP BY f.ID ORDER BY f.ID"
        )
    else:
        cats = execute_query(
            f"SELECT ID, des as name, COALESCE(SUM(freg), 0) as total "
            f"FROM enigma.bodytype f "
            f"JOIN enigma.vehiclefr v ON f.ID=v.bodyID "
            f"WHERE {vsql} GROUP BY f.ID ORDER BY f.ID"
        )

    if not cats:
        return render_template("dbpub/vebrandhist.html", title="No data", data=[], cats=[])

    total = sum(c["total"] or 0 for c in cats)
    cnt = len(cats)

    # Sorting
    sort = get_str("sort", "datdn")
    ob = "d DESC"
    for x, cat in enumerate(cats):
        if sort == f"f{x}dn":
            ob = f"f{x} DESC, d DESC"
        elif sort == f"f{x}up":
            ob = f"f{x}, d DESC"
        elif sort == f"fs{x}dn":
            ob = f"fs{x} DESC, d DESC"
        elif sort == f"fs{x}up":
            ob = f"fs{x}, d DESC"
    if sort == "totup":
        ob = "n, d DESC"
    elif sort == "totdn":
        ob = "n DESC, d DESC"
    elif sort == "datup":
        ob = "d"

    # Build dynamic SQL
    pivot_cols = ", ".join([
        f"SUM(freg * CASE WHEN {btxt_col}={cat['id']} THEN 1 ELSE 0 END) as f{x}, "
        f"SUM(freg * CASE WHEN {btxt_col}={cat['id']} THEN 1 ELSE 0 END)::numeric / NULLIF(SUM(freg), 0) as fs{x}"
        for x, cat in enumerate(cats)
    ])

    group_by = "d" if f == 1 else "EXTRACT(YEAR FROM d)"
    sql = f"""
        SELECT {"MAX(d)" if f == 2 else "d"} as d, {pivot_cols}, SUM(freg) as n
        FROM enigma.vehiclefr
        WHERE {vsql}
        GROUP BY {group_by}
        ORDER BY {ob}
    """
    data = execute_query(sql)

    title = f"HK first registration: {vcdes}: {make} by {ftxt.lower()} and {btxt.lower()}"

    # Get vehicle classes for dropdown
    classes = execute_query(
        "SELECT ID, des FROM enigma.vehicleclass WHERE ID IN(1,2,27,28,29) ORDER BY ID"
    )

    # Get brands for dropdown
    brands = execute_query(
        f"SELECT DISTINCT ID, make FROM enigma.vehiclemakes "
        f"JOIN enigma.vehiclefr ON ID=makeID WHERE vc={vc} ORDER BY make"
    )

    return render_template(
        "dbpub/vebrandhist.html",
        title=title,
        makeid=makeid,
        make=make,
        vc=vc,
        b=b,
        btxt=btxt,
        f=f,
        ftxt=ftxt,
        sort=sort,
        data=data,
        cats=cats,
        total=total,
        maxd=maxd,
        classes=classes,
        brands=brands
    )


@bp.route("/vedet.asp")
def vedet():
    """Vehicle details - full implementation with body/fuel/status pivot"""
    f = get_int("f", 1)  # frequency 1=monthly 2=yearly
    makeid = get_int("brand", 0)
    vc = get_int("vc", 1)
    if vc not in (1, 2, 27, 28, 29):
        vc = 1
    vsql = f" vc={vc}"

    maxd = execute_query("SELECT MAX(d) AS maxd FROM enigma.vehiclefr")
    maxd = maxd[0]["maxd"] if maxd else None
    if not maxd:
        return render_template("dbpub/vedet.html", title="No data", data=[], fuels=[], bodies=[])

    maxd_year = maxd.year
    maxd_month = maxd.month

    y = get_int("y", maxd_year)
    if y != 0:
        y = max(min(y, maxd_year), 2016)
    if y == 0:
        m = 0
    else:
        m = max(min(get_int("m", 0), 12), 0)
    if y == 2016 and m > 0 and m < 5:
        m = 5
    if y == maxd_year and m > maxd_month:
        m = maxd_month

    if y > 0:
        vsql += f" AND EXTRACT(YEAR FROM d)={y}"
    if m > 0:
        vsql += f" AND EXTRACT(MONTH FROM d)={m}"

    vcdes = execute_query(f"SELECT des FROM enigma.vehicleclass WHERE ID={vc}")
    vcdes = vcdes[0]["des"] if vcdes else ""

    make = ""
    if makeid > 0:
        # Check if this brand exists for this vehicle class
        exists = execute_query(
            f"SELECT EXISTS(SELECT * FROM enigma.vehiclefr WHERE makeID={makeid} AND vc={vc}) as e"
        )
        if exists and exists[0]["e"]:
            make_data = execute_query(f"SELECT make FROM enigma.vehiclemakes WHERE ID={makeid}")
            make = make_data[0]["make"] if make_data else ""
        else:
            # Get first brand alphabetically
            first_make = execute_query(
                f"SELECT DISTINCT ID, make FROM enigma.vehiclemakes "
                f"JOIN enigma.vehiclefr ON makeID=ID AND vc={vc} ORDER BY make LIMIT 1"
            )
            if first_make:
                makeid = first_make[0]["id"]
                make = first_make[0]["make"]
        vsql += f" AND makeID={makeid}"

    # Check if data exists
    found = execute_query(f"SELECT EXISTS(SELECT * FROM enigma.vehiclefr WHERE {vsql}) as e")
    found = found[0]["e"] if found else False

    fuels = []
    bodies = []
    total = 0
    data = []
    summary_data = []

    if found:
        # Get fuel types with totals
        fuels = execute_query(
            f"SELECT f.ID, f.friendly as name, COALESCE(SUM(freg), 0) as total "
            f"FROM enigma.fueltype f "
            f"JOIN enigma.vehiclefr v ON f.ID=v.fuelID "
            f"WHERE {vsql} GROUP BY f.ID ORDER BY f.ID"
        )

        # Get body types with totals
        bodies = execute_query(
            f"SELECT b.ID, b.des as name, COALESCE(SUM(freg), 0) as total "
            f"FROM enigma.bodytype b "
            f"JOIN enigma.vehiclefr v ON b.ID=v.bodyID "
            f"WHERE {vsql} GROUP BY b.ID ORDER BY b.ID"
        )

        total = sum(f["total"] or 0 for f in fuels)

        # Get detailed data with body/status/fuel breakdown
        data = execute_query(
            f"""
            SELECT bt.bodyID, st.FRstatID, ft.fuelID, COALESCE(freg, 0) as freg, sdes
            FROM (SELECT DISTINCT fuelID FROM enigma.vehiclefr WHERE {vsql}) ft
            CROSS JOIN (SELECT DISTINCT bodyID FROM enigma.vehiclefr WHERE {vsql}) bt
            CROSS JOIN (SELECT DISTINCT FRstatID, des as sdes FROM enigma.vehiclefr
                       JOIN enigma.frstatus ON FRstatID=ID WHERE {vsql}) st
            LEFT JOIN (
                SELECT SUM(freg) as freg, bodyID, fuelID, FRstatID
                FROM enigma.vehiclefr WHERE {vsql}
                GROUP BY bodyID, fuelID, FRstatID
            ) vf ON ft.fuelID=vf.fuelID AND bt.bodyID=vf.bodyID AND st.FRstatID=vf.FRstatID
            WHERE EXISTS(SELECT * FROM enigma.vehiclefr WHERE {vsql} AND bodyID=bt.bodyID AND FRstatID=st.FRstatID)
            ORDER BY bt.bodyID, sdes, ft.fuelID
            """
        )

        # Get summary data (body x fuel)
        summary_data = execute_query(
            f"""
            SELECT bt.bodyID, ft.fuelID, COALESCE(freg, 0) as freg
            FROM (SELECT DISTINCT fuelID FROM enigma.vehiclefr WHERE {vsql}) ft
            CROSS JOIN (SELECT DISTINCT bodyID FROM enigma.vehiclefr WHERE {vsql}) bt
            LEFT JOIN (
                SELECT SUM(freg) as freg, bodyID, fuelID
                FROM enigma.vehiclefr WHERE {vsql}
                GROUP BY bodyID, fuelID
            ) vf ON bt.bodyID=vf.bodyID AND ft.fuelID=vf.fuelID
            ORDER BY bodyID, fuelID
            """
        )

    # Build title
    title = f"HK first registration: {vcdes}: {make} "
    if y == 0:
        title += "from 2016-05 "
    else:
        title += f"in {y}"
    if m > 0:
        title += f"-{m:02d}"
    elif y == 2016:
        title += "-05 to 2016-12"
    if y == 0 or (y == maxd_year and m == 0):
        title += f" up to {maxd_year}-{maxd_month:02d}"

    # Get vehicle classes for dropdown
    classes = execute_query(
        "SELECT ID, des FROM enigma.vehicleclass WHERE ID IN(1,2,27,28,29) ORDER BY ID"
    )

    # Get brands for dropdown
    brands = execute_query(
        f"SELECT DISTINCT ID, make FROM enigma.vehiclemakes "
        f"JOIN enigma.vehiclefr ON ID=makeID WHERE vc={vc} ORDER BY make"
    )

    return render_template(
        "dbpub/vedet.html",
        title=title,
        makeid=makeid,
        make=make,
        vc=vc,
        y=y,
        m=m,
        f=f,
        found=found,
        data=data,
        summary_data=summary_data,
        fuels=fuels,
        bodies=bodies,
        total=total,
        maxd=maxd,
        classes=classes,
        brands=brands
    )


@bp.route("/veengine.asp")
def veengine():
    """Vehicle engine types - full implementation"""
    f = get_int("f", 1)  # frequency 1=monthly 2=yearly
    ftxt = "Month" if f == 1 else "Year"

    maxd = execute_query("SELECT MAX(d) AS maxd FROM enigma.vehiclefuel")
    maxd = maxd[0]["maxd"] if maxd else None

    # Get engine sizes
    cats = execute_query("SELECT ID, des as name FROM enigma.enginesize WHERE ID > 1 ORDER BY ID")
    if not cats:
        return render_template("dbpub/veengine.html", title="No data", data=[], cats=[])

    cnt = len(cats)

    t = get_int("t", 0)  # 0=first registrations, 1=total registered
    if t == 0:
        ttxt = "first registrations"
        tcol = "FR"
    else:
        ttxt = "total registered"
        tcol = "totReg"

    # Sorting
    sort = get_str("sort", "datdn")
    ob = "d DESC"
    for x, cat in enumerate(cats):
        if sort == f"f{x}dn":
            ob = f"f{x} DESC"
        elif sort == f"f{x}up":
            ob = f"f{x}"
        elif sort == f"fs{x}dn":
            ob = f"fs{x} DESC"
        elif sort == f"fs{x}up":
            ob = f"fs{x}"
    if sort == "totdn":
        ob = "n DESC, d"
    elif sort == "totup":
        ob = "n, d"
    elif sort == "datup":
        ob = "d"

    # Build dynamic SQL
    pivot_cols = ", ".join([
        f"SUM({tcol} * CASE WHEN engID={cat['id']} THEN 1 ELSE 0 END) as f{x}, "
        f"SUM({tcol} * CASE WHEN engID={cat['id']} THEN 1 ELSE 0 END)::numeric * 100 / NULLIF(SUM({tcol}), 0) as fs{x}"
        for x, cat in enumerate(cats)
    ])

    if t == 0:
        # First registrations
        group_by = "EXTRACT(YEAR FROM d)" if f == 2 else "d"
        sql = f"""
            SELECT MAX(d) as d, SUM({tcol}) as n, {pivot_cols}
            FROM enigma.veengine
            GROUP BY {group_by}
            ORDER BY {ob}
        """
    else:
        # Total registered - filter to Dec or latest
        where = f"EXTRACT(MONTH FROM d)=12 OR d='{ms_date(maxd)}'" if f == 2 else "1=1"
        sql = f"""
            SELECT d, SUM({tcol}) as n, {pivot_cols}
            FROM enigma.veengine
            WHERE {where}
            GROUP BY d
            ORDER BY {ob}
        """

    data = execute_query(sql)

    title = f"HK Private Cars: {ttxt} by engine size and {ftxt.lower()}"

    return render_template(
        "dbpub/veengine.html",
        title=title,
        t=t,
        ttxt=ttxt,
        f=f,
        ftxt=ftxt,
        sort=sort,
        data=data,
        cats=cats
    )


@bp.route("/vefuel.asp")
def vefuel():
    """Vehicle fuel types - full implementation with simple/detailed views"""
    mind = execute_query("SELECT MIN(d) AS mind FROM enigma.vehiclefuel")
    mind = mind[0]["mind"] if mind else None
    maxd = execute_query("SELECT MAX(d) AS maxd FROM enigma.vehiclefuel")
    maxd = maxd[0]["maxd"] if maxd else None

    if not mind or not maxd:
        return render_template("dbpub/vefuel.html", title="No data", data=[], cats=[])

    mind_str = ms_date(mind)
    maxd_str = ms_date(maxd)
    mind_year = mind.year
    maxd_year = maxd.year
    maxd_month = maxd.month

    t = get_int("t", 0)  # 0=licensed, 1=registered
    tcol = "totLic" if t == 0 else "totReg"
    ttxt = "licensed" if t == 0 else "registered"

    y = get_int("y", maxd_year)
    y = max(min(y, maxd_year), mind_year)
    m = max(min(get_int("m", maxd_month), 12), 1)

    # Calculate actual date (end of month)
    import calendar
    last_day = calendar.monthrange(y, m)[1]
    from datetime import date as dt_date
    d = dt_date(y, m, last_day)
    if d > maxd:
        d = maxd
        m = d.month

    d_str = ms_date(d)

    # Get total
    total = execute_query(f"SELECT SUM({tcol}) as t FROM enigma.vehiclefuel WHERE d='{d_str}'")
    total = total[0]["t"] if total else 0

    # Get fuel categories with totals and shares
    cats = execute_query(
        f"""
        SELECT fuelID as id, friendly as name,
               SUM({tcol}) as total,
               SUM({tcol})::numeric * 100 / {total if total else 1} as share
        FROM enigma.vehiclefuel v
        JOIN enigma.fueltype f ON v.fuelID=f.ID
        WHERE d='{d_str}'
        GROUP BY fuelID, friendly
        ORDER BY fuelID
        """
    )

    if not cats:
        return render_template("dbpub/vefuel.html", title="No data", data=[], cats=[])

    cnt = len(cats)

    # Sorting
    sort = get_str("sort", "desup")
    ob = "des"
    for x, cat in enumerate(cats):
        if sort == f"f{x}dn":
            ob = f"f{x} DESC"
        elif sort == f"f{x}up":
            ob = f"f{x}"
        elif sort == f"fs{x}dn":
            ob = f"fs{x} DESC"
        elif sort == f"fs{x}up":
            ob = f"fs{x}"
    if sort == "desdn":
        ob = "des DESC"

    # Build dynamic SQL
    pivot_cols = ", ".join([
        f"SUM({tcol} * CASE WHEN fuelID={cat['id']} THEN 1 ELSE 0 END) as f{x}, "
        f"SUM({tcol} * CASE WHEN fuelID={cat['id']} THEN 1 ELSE 0 END)::numeric * 100 / NULLIF(SUM({tcol}), 0) as fs{x}"
        for x, cat in enumerate(cats)
    ])

    simple = get_bool("simple")
    if simple:
        sql = f"""
            SELECT v.parent as vc, v2.des, SUM({tcol}) as n, {pivot_cols}
            FROM enigma.vehiclefuel
            JOIN enigma.vehicleclass v ON vc=v.ID
            JOIN enigma.vehicleclass v2 ON v.parent=v2.ID
            WHERE d='{d_str}'
            GROUP BY v.parent, v2.des
            ORDER BY {ob}
        """
    else:
        sql = f"""
            SELECT vc, v.des, SUM({tcol}) as n, {pivot_cols}
            FROM enigma.vehiclefuel
            JOIN enigma.vehicleclass v ON vc=v.ID
            WHERE d='{d_str}'
            GROUP BY vc, v.des
            ORDER BY {ob}
        """

    data = execute_query(sql)

    title = f"HK {ttxt} vehicles by fuel at {d_str}"

    # Get operators for detailed view
    operators = []
    if not simple:
        operators = execute_query(
            """
            SELECT DISTINCT orgID, tdabbrev,
                   COALESCE(name1, '') || COALESCE(' ' || cName, '') as n
            FROM enigma.vehiclefuel f
            JOIN enigma.vehicleclass v ON f.vc=v.ID
            JOIN enigma.ptoperators p ON v.operator=p.ID
            JOIN enigma.organisations o ON p.orgID=o.personID
            ORDER BY tdabbrev
            """
        )

    return render_template(
        "dbpub/vefuel.html",
        title=title,
        y=y,
        m=m,
        t=t,
        ttxt=ttxt,
        simple=simple,
        sort=sort,
        data=data,
        cats=cats,
        total=total,
        mind=mind,
        maxd=maxd,
        operators=operators
    )


@bp.route("/vefuelhist.asp")
def vefuelhist():
    """Vehicle fuel types - historical trend"""
    maxd = execute_query("SELECT MAX(d) AS maxd FROM enigma.vehiclefuel")
    maxd = maxd[0]["maxd"] if maxd else None
    maxd_str = ms_date(maxd) if maxd else ""

    vc = max(get_int("vc", 1), 1)
    f = get_int("f", 1)  # frequency 1=monthly 2=yearly
    ftxt = "Month" if f == 1 else "Year"

    simple = get_bool("simple")

    # Adjust vc based on simple/detailed mode
    if simple:
        if vc > 12:
            parent = execute_query(f"SELECT parent FROM enigma.vehicleclass WHERE ID={vc}")
            if parent:
                vc = parent[0]["parent"]
    else:
        if vc < 13:
            first_child = execute_query(
                f"SELECT DISTINCT ID FROM enigma.vehicleclass "
                f"JOIN enigma.vehiclefuel ON vc=ID WHERE parent={vc} ORDER BY des LIMIT 1"
            )
            if first_child:
                vc = first_child[0]["id"]
        # Check for fuelparent
        fuelparent = execute_query(f"SELECT COALESCE(fuelparent, 0) as fp FROM enigma.vehicleclass WHERE ID={vc}")
        if fuelparent and fuelparent[0]["fp"] > 0:
            vc = fuelparent[0]["fp"]

    vcdes = execute_query(f"SELECT des FROM enigma.vehicleclass WHERE ID={vc}")
    vcdes = vcdes[0]["des"] if vcdes else ""

    # Get operator info
    op = 0
    op_name = ""
    if not simple:
        op_info = execute_query(
            f"""
            SELECT orgID, COALESCE(name1, '') || COALESCE(' ' || cName, '') as n
            FROM enigma.vehicleclass v
            JOIN enigma.ptoperators p ON operator=p.ID
            JOIN enigma.organisations o ON p.orgID=o.personID
            WHERE v.ID={vc}
            """
        )
        if op_info:
            op = op_info[0]["orgid"]
            op_name = op_info[0]["n"]

    t = get_int("t", 0)  # 0=licensed, 1=registered
    tcol = "totLic" if t == 0 else "totReg"
    ttxt = "licensed" if t == 0 else "registered"

    # Get fuel types for this vehicle class
    if simple:
        fuel_sql = f"""
            SELECT fuelID as id, friendly as name
            FROM enigma.vehiclefuel v
            JOIN enigma.vehicleclass vc ON v.vc=vc.ID
            JOIN enigma.fueltype f ON v.fuelID=f.ID
            WHERE parent={vc} AND {tcol} > 0
            GROUP BY fuelID, friendly
            ORDER BY fuelID
        """
    else:
        fuel_sql = f"""
            SELECT fuelID as id, friendly as name
            FROM enigma.vehiclefuel v
            JOIN enigma.fueltype f ON v.fuelID=f.ID
            WHERE vc={vc} AND {tcol} > 0
            GROUP BY fuelID, friendly
            ORDER BY fuelID
        """
    cats = execute_query(fuel_sql)

    if not cats:
        return render_template("dbpub/vefuelhist.html", title="No data", data=[], cats=[])

    cnt = len(cats)

    # Sorting
    sort = get_str("sort", "datdn")
    ob = "d DESC"
    for x, cat in enumerate(cats):
        if sort == f"f{x}dn":
            ob = f"f{x} DESC"
        elif sort == f"f{x}up":
            ob = f"f{x}"
        elif sort == f"fs{x}dn":
            ob = f"fs{x} DESC"
        elif sort == f"fs{x}up":
            ob = f"fs{x}"
    if sort == "totdn":
        ob = "n DESC, d"
    elif sort == "totup":
        ob = "n, d"
    elif sort == "datup":
        ob = "d"

    # Build dynamic SQL
    pivot_cols = ", ".join([
        f"SUM({tcol} * CASE WHEN fuelID={cat['id']} THEN 1 ELSE 0 END) as f{x}, "
        f"SUM({tcol} * CASE WHEN fuelID={cat['id']} THEN 1 ELSE 0 END)::numeric * 100 / NULLIF(SUM({tcol}), 0) as fs{x}"
        for x, cat in enumerate(cats)
    ])

    if simple:
        where = f"parent={vc}"
        join = "JOIN enigma.vehicleclass v ON f.vc=v.ID"
    else:
        where = f"vc={vc}"
        join = ""

    yearly_filter = f" AND (EXTRACT(MONTH FROM d)=12 OR d='{maxd_str}')" if f == 2 else ""
    sql = f"""
        SELECT d, SUM({tcol}) as n, {pivot_cols}
        FROM enigma.vehiclefuel f
        {join}
        WHERE {where}{yearly_filter}
        GROUP BY d
        ORDER BY {ob}
    """
    data = execute_query(sql)

    title = f"HK {ttxt} {vcdes} by fuel and {ftxt.lower()}"

    # Get vehicle classes for dropdown
    if simple:
        classes = execute_query(
            "SELECT ID, des FROM enigma.vehicleclass WHERE ID<13 AND ID<>8 ORDER BY des"
        )
    else:
        classes = execute_query(
            "SELECT DISTINCT ID, des FROM enigma.vehiclefuel "
            "JOIN enigma.vehicleclass ON vc=ID ORDER BY des"
        )

    return render_template(
        "dbpub/vefuelhist.html",
        title=title,
        vc=vc,
        f=f,
        ftxt=ftxt,
        t=t,
        ttxt=ttxt,
        simple=simple,
        sort=sort,
        data=data,
        cats=cats,
        classes=classes,
        op=op,
        op_name=op_name,
        maxd=maxd
    )
