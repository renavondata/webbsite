"""
Hong Kong transport and vehicle data
"""

from flask import Blueprint, render_template, request, abort, current_app, Response
from datetime import date, timedelta
import calendar
import io
import re
from webbsite.db import execute_query, get_db
from webbsite.asp_helpers import get_int, get_bool, get_str

bp = Blueprint("dbpub_transport", __name__)


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
    from webbsite.asp_helpers import get_int, get_str
    from webbsite.db import execute_query
    from flask import render_template, request

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


# ESS (Employee Stock Scheme) top holdings


@bp.route("/tuntraff.asp")
def tuntraff():
    """Tunnel and bridge traffic statistics (simplified)"""
    y = get_int("y", 0)
    tunid = get_int("tunid", 0)

    # Build WHERE clause
    where_parts = []
    if y > 0:
        where_parts.append(f"EXTRACT(YEAR FROM d) = {y}")
    if tunid > 0:
        where_parts.append(f"tt.tunid = {tunid}")
    where = " AND ".join(where_parts) if where_parts else "1=1"

    # Aggregate traffic by tunnel
    data = execute_query(
        f"""
        SELECT t.name,
               SUM(tt.defcnt) AS default_count,
               SUM(tt.altcnt) AS alternate_count,
               SUM(tt.defcnt + tt.altcnt) AS total_count
        FROM enigma.tuntraff tt
        JOIN enigma.tunnels t ON tt.tunid = t.id
        WHERE {where}
        GROUP BY t.name
        ORDER BY SUM(tt.defcnt + tt.altcnt) DESC
    """
    )

    # Get tunnel list for dropdown
    tunnels = execute_query("SELECT id, name FROM enigma.tunnels ORDER BY name")

    return render_template(
        "dbpub/tuntraff.html", y=y, tunid=tunid, data=data, tunnels=tunnels
    )


@bp.route("/veFR.asp")
def vefr():
    """Vehicle first registrations - simplified version showing totals by brand"""
    y = get_int("y", 0)
    m = get_int("m", 0)
    vc = get_int("vc", 1)  # vehicle class

    # Get date range
    date_range = execute_query(
        "SELECT MIN(d) AS mind, MAX(d) AS maxd FROM enigma.vehiclefr"
    )
    mind = date_range[0]["mind"] if date_range else None
    maxd = date_range[0]["maxd"] if date_range else None

    # Build WHERE clause
    where_parts = [f"vc = {vc}"]
    if y > 0:
        where_parts.append(f"EXTRACT(YEAR FROM d) = {y}")
    if m > 0:
        where_parts.append(f"EXTRACT(MONTH FROM d) = {m}")
    where_clause = " AND ".join(where_parts)

    # Simplified query: totals by brand (skip pivot table for now)
    data = execute_query(
        f"""
        SELECT vm.make, SUM(vf.freg) AS total
        FROM enigma.vehiclefr vf
        JOIN enigma.vehiclemakes vm ON vf.makeid = vm.id
        WHERE {where_clause}
        GROUP BY vm.make
        ORDER BY total DESC
        LIMIT 100
    """
    )

    # Get vehicle classes for dropdown
    classes = execute_query(
        "SELECT id, des FROM enigma.vehicleclass WHERE id IN (1,2,27,28,29) ORDER BY id"
    )

    return render_template(
        "dbpub/vefr.html",
        data=data,
        y=y,
        m=m,
        vc=vc,
        mind=mind,
        maxd=maxd,
        classes=classes,
    )


@bp.route("/veFRtype.asp")
def vefrtype():
    """Vehicle first registrations by type - simplified"""
    y = get_int("y", 0)

    # Basic aggregation by vehicle class
    where = f"EXTRACT(YEAR FROM d) = {y}" if y > 0 else "1=1"
    data = execute_query(
        f"""
        SELECT vc.des, SUM(vf.freg) AS total
        FROM enigma.vehiclefr vf
        JOIN enigma.vehicleclass vc ON vf.vc = vc.id
        WHERE {where}
        GROUP BY vc.des
        ORDER BY total DESC
    """
    )

    return render_template("dbpub/vefrtype.html", y=y, data=data)


@bp.route("/veFRtypehist.asp")
def vefrtypehist():
    """Vehicle first registrations by type - historical trend (simplified)"""
    vc = get_int("vc", 0)

    # Historical trend by year for specific vehicle class or all
    where = f"vc = {vc}" if vc > 0 else "1=1"
    data = execute_query(
        f"""
        SELECT EXTRACT(YEAR FROM d) AS year, SUM(freg) AS total
        FROM enigma.vehiclefr
        WHERE {where}
        GROUP BY EXTRACT(YEAR FROM d)
        ORDER BY year DESC
        LIMIT 25
    """
    )

    # Get vehicle class name if specified
    vcname = ""
    if vc > 0:
        vcdata = execute_query(f"SELECT des FROM enigma.vehicleclass WHERE id = {vc}")
        vcname = vcdata[0]["des"] if vcdata else ""

    return render_template("dbpub/vefrtypehist.html", vc=vc, vcname=vcname, data=data)


@bp.route("/veJourneyhist.asp")
def vejourneyhist():
    """Vehicle journey history (simplified)"""
    vc = get_int("vc", 0)

    # Historical journey statistics by year
    where = f"vc = {vc}" if vc > 0 else "1=1"
    data = execute_query(
        f"""
        SELECT EXTRACT(YEAR FROM d) AS year,
               SUM(j) AS total_journeys,
               SUM(km) AS total_km
        FROM enigma.tdjourneys
        WHERE {where}
        GROUP BY EXTRACT(YEAR FROM d)
        ORDER BY year DESC
        LIMIT 25
    """
    )

    # Get vehicle class name if specified
    vcname = ""
    if vc > 0:
        vcdata = execute_query(f"SELECT des FROM enigma.vehicleclass WHERE id = {vc}")
        vcname = vcdata[0]["des"] if vcdata else ""

    return render_template("dbpub/vejourneyhist.html", vc=vc, vcname=vcname, data=data)


@bp.route("/veJourneys.asp")
def vejourneys():
    """Vehicle journeys summary (simplified)"""
    y = get_int("y", 0)

    # Journey statistics by vehicle class
    where = f"EXTRACT(YEAR FROM d) = {y}" if y > 0 else "1=1"
    data = execute_query(
        f"""
        SELECT vc.des AS vehicle_class,
               SUM(tj.j) AS total_journeys,
               SUM(tj.km) AS total_km
        FROM enigma.tdjourneys tj
        JOIN enigma.vehicleclass vc ON tj.vc = vc.id
        WHERE {where}
        GROUP BY vc.des
        ORDER BY SUM(tj.j) DESC
    """
    )

    return render_template("dbpub/vejourneys.html", y=y, data=data)


@bp.route("/vebrandhist.asp")
def vebrandhist():
    """Vehicle brand registration history (simplified)"""
    makeid = get_int("makeid", 0)

    # Historical trend by year for specific brand or all
    where = f"makeid = {makeid}" if makeid > 0 else "1=1"
    data = execute_query(
        f"""
        SELECT EXTRACT(YEAR FROM d) AS year, SUM(freg) AS total
        FROM enigma.vehiclefr
        WHERE {where}
        GROUP BY EXTRACT(YEAR FROM d)
        ORDER BY year DESC
        LIMIT 25
    """
    )

    # Get brand name if specified
    brandname = ""
    if makeid > 0:
        branddata = execute_query(
            f"SELECT make FROM enigma.vehiclemakes WHERE id = {makeid}"
        )
        brandname = branddata[0]["make"] if branddata else ""

    return render_template(
        "dbpub/vebrandhist.html", makeid=makeid, brandname=brandname, data=data
    )


@bp.route("/vedet.asp")
def vedet():
    """Vehicle details - simplified to show brand totals"""
    brand = get_int("brand", 0)
    y = get_int("y", 0)

    where_parts = []
    if brand > 0:
        where_parts.append(f"makeid = {brand}")
    if y > 0:
        where_parts.append(f"EXTRACT(YEAR FROM d) = {y}")
    where = " AND ".join(where_parts) if where_parts else "1=1"

    data = execute_query(
        f"""
        SELECT vm.make, COUNT(*) AS cnt, SUM(freg) AS total
        FROM enigma.vehiclefr vf
        JOIN enigma.vehiclemakes vm ON vf.makeid = vm.id
        WHERE {where}
        GROUP BY vm.make
        ORDER BY total DESC
        LIMIT 50
    """
    )

    return render_template("dbpub/vedet.html", brand=brand, y=y, data=data)


@bp.route("/veengine.asp")
def veengine():
    """Vehicle engine types summary - simplified"""
    y = get_int("y", 0)

    where = f"EXTRACT(YEAR FROM d) = {y}" if y > 0 else "1=1"
    data = execute_query(
        f"""
        SELECT es.id, es.des, SUM(ve.fr) AS total_fr, SUM(ve.totreg) AS total_reg
        FROM enigma.veengine ve
        JOIN enigma.enginesize es ON ve.engid = es.id
        WHERE {where}
        GROUP BY es.id, es.des
        ORDER BY es.id
    """
    )

    return render_template("dbpub/veengine.html", y=y, data=data)


@bp.route("/vefuel.asp")
def vefuel():
    """Vehicle fuel types summary - simplified"""
    y = get_int("y", 0)

    where = f"EXTRACT(YEAR FROM d) = {y}" if y > 0 else "1=1"
    data = execute_query(
        f"""
        SELECT ft.friendly AS fuel, SUM(v.freg) AS total
        FROM enigma.vehiclefr v
        JOIN enigma.fueltype ft ON v.fuelid = ft.id
        WHERE {where}
        GROUP BY ft.friendly, ft.id
        ORDER BY ft.id DESC
    """
    )

    return render_template("dbpub/vefuel.html", y=y, data=data)


@bp.route("/vefuelhist.asp")
def vefuelhist():
    """Vehicle fuel types - historical trend (simplified)"""
    fuelid = get_int("fuelid", 0)

    # Historical trend by year for specific fuel type or all
    where = f"fuelid = {fuelid}" if fuelid > 0 else "1=1"
    data = execute_query(
        f"""
        SELECT EXTRACT(YEAR FROM d) AS year, SUM(freg) AS total
        FROM enigma.vehiclefr
        WHERE {where}
        GROUP BY EXTRACT(YEAR FROM d)
        ORDER BY year DESC
        LIMIT 25
    """
    )

    # Get fuel type name if specified
    fuelname = ""
    if fuelid > 0:
        fueldata = execute_query(
            f"SELECT friendly FROM enigma.fueltype WHERE id = {fuelid}"
        )
        fuelname = fueldata[0]["friendly"] if fueldata else ""

    return render_template(
        "dbpub/vefuelhist.html", fuelid=fuelid, fuelname=fuelname, data=data
    )
