"""
Search routes - Direct port from searchorgs.asp and searchpeople.asp
"""

from flask import Blueprint, render_template, request
from webbsite.db import execute_query
from webbsite.asp_helpers import rem_space, get_str, get_bool, apos, ts_words

bp = Blueprint("search", __name__)


@bp.route("/searchorgs.asp", methods=["GET", "POST"])
def search_orgs():
    """Search organizations - port of searchorgs.asp"""
    # Get parameters from POST (form submit) or GET (URL links)
    if request.method == "POST":
        n = rem_space(request.form.get("n", ""))
        st = request.form.get("st", "")
        sort = request.form.get("sort", "namup")
    else:
        n = rem_space(get_str("n", ""))
        st = get_str("st", "")  # l=left match, a=any match (full-text)
        sort = get_str("sort", "namup")

    # Determine sort order
    sort_options = {
        "domup": "A2,name1",
        "domdn": "A2 DESC,name1",
        "incup": "incDate,name1",
        "incdn": "incDate DESC,name1",
        "disup": "disDate,name1",
        "disdn": "disDate DESC,name1",
        "namup": "name1",
        "namdn": "name1 DESC",
    }
    ob = sort_options.get(sort, "name1,A2")
    if sort not in sort_options:
        sort = "namup"

    limit = 500
    current_results = []
    old_results = []

    if n:
        # Build WHERE clause based on search type. Full-text uses plainto_tsquery
        # (bound param), which parses arbitrary user text into an AND query and
        # can't be broken by tsquery operator/punctuation chars.
        if st == "a":
            match_clause = "to_tsvector('simple', name1) @@ plainto_tsquery('simple', %s)"
            org_params = (n,)
        else:
            # Left match (starts with) - use LOWER() + LIKE for case-insensitive with pattern index
            match_clause = f"LOWER(name1) LIKE LOWER('{apos(n)}%')"
            org_params = None

        # Search current names
        # Use CTE to force pattern index usage, then inline everListCo() logic
        sql = f"""
            WITH matched_orgs AS (
                SELECT o.personID, o.Name1, o.incDate, o.disDate, o.cName, o.domicile
                FROM enigma.organisations o
                WHERE {match_clause}
                LIMIT {limit * 2}
            )
            SELECT m.personID, m.Name1,
                   EXISTS(
                       SELECT 1 FROM enigma.issue i
                       JOIN enigma.stocklistings s ON i.ID1 = s.issueID
                       WHERE i.issuer = m.personID
                         AND i.typeID NOT IN (1, 2, 40, 41, 46)
                         AND s.stockexID IN (1, 20, 22, 23, 38)
                   ) as hklist,
                   m.incDate, m.disDate, m.cName, d.A2, d.friendly
            FROM matched_orgs m
            LEFT JOIN enigma.domiciles d ON m.domicile = d.ID
            ORDER BY {ob}
            LIMIT {limit}
        """
        current_results = execute_query(sql, org_params)

        # Search old names
        if st == "a":
            old_match_clause = "to_tsvector('simple', oldName) @@ plainto_tsquery('simple', %s)"
        else:
            old_match_clause = f"LOWER(oldName) LIKE LOWER('{apos(n)}%')"

        sql = f"""
            WITH matched_names AS (
                SELECT n.PersonID, n.oldName, n.oldcName
                FROM enigma.nameChanges n
                WHERE {old_match_clause}
                LIMIT {limit * 2}
            )
            SELECT m.PersonID, m.oldName as name1, m.oldcName,
                   EXISTS(
                       SELECT 1 FROM enigma.issue i
                       JOIN enigma.stocklistings s ON i.ID1 = s.issueID
                       WHERE i.issuer = o.personID
                         AND i.typeID NOT IN (1, 2, 40, 41, 46)
                         AND s.stockexID IN (1, 20, 22, 23, 38)
                   ) as hklist,
                   o.incDate, o.disDate, d.A2, d.friendly
            FROM matched_names m
            JOIN enigma.organisations o ON m.PersonID = o.personID
            LEFT JOIN enigma.domiciles d ON o.domicile = d.ID
            ORDER BY {ob}
            LIMIT {limit}
        """
        old_results = execute_query(sql, org_params)

    return render_template(
        "searchorgs.html",
        n=n,
        st=st,
        sort=sort,
        current_results=current_results,
        old_results=old_results,
        limit=limit,
    )


@bp.route("/searchpeople.asp", methods=["GET", "POST"])
def search_people():
    """Search people - port of searchpeople.asp"""
    from datetime import datetime

    # Get parameters
    if request.method == "POST":
        n1 = request.form.get("n1", "")[:90].strip()
        n2 = request.form.get("n2", "")[:63].strip()
        d = request.form.get("d") == "1"
        e = request.form.get("e") == "1"
    else:
        n1 = get_str("n1", "")[:90].strip()
        n2 = get_str("n2", "")[:63].strip()
        d = get_bool("d")
        e = get_bool("e")

    # Clean up names (remove hyphens, asterisks, extra spaces)
    n1 = n1.replace("-", " ").replace("*", "")
    n2 = n2.replace("-", " ").replace("*", "")
    n1 = rem_space(n1)
    n2 = rem_space(n2)

    now_year = datetime.now().year
    current_results = []
    alias_results = []

    if n1 or n2:
        # Build WHERE clauses for current names query
        if e:
            # Exact match mode
            where_current = "1=1"
            where_alias = "1=1"
            if n1:
                where_current += f" AND dn1 = '{apos(n1)}'"
                where_alias += f" AND a.dn1 = '{apos(n1)}'"
            if n2 == "":
                where_current += " AND dn2 IS NULL"
                where_alias += " AND a.dn2 IS NULL"
            else:
                where_current += f" AND dn2 = '{apos(n2)}'"
                where_alias += f" AND a.dn2 = '{apos(n2)}'"
        else:
            # Full-text search mode. User words are reduced to safe tsquery
            # lexemes (ts_words); the &/|/() operators below are ours, so the
            # assembled tsquery is always valid and is passed as a bound param.
            fname_words = ts_words(n1) if n1 else []
            forename_words = ts_words(n2) if n2 else []

            # Build family name search term
            fname = " & ".join(f'"{w}"' for w in fname_words)

            # Build given names search term (with multi-word logic)
            forename = ""
            if len(forename_words) == 1:
                forename = f'"{forename_words[0]}"'
            elif len(forename_words) > 1:
                # Build list of terms to avoid leading & operator
                forename_parts = [f'"{w}"' for w in forename_words[:-2]]
                # Last two words: search both separate and combined
                # e.g., "Xiao Ping" searches for (("Xiao" & "Ping") | "XiaoPing")
                forename_parts.append(
                    f'(("{forename_words[-2]}" & "{forename_words[-1]}") '
                    f'| "{forename_words[-2] + forename_words[-1]}")'
                )
                forename = " & ".join(forename_parts)

            # Collect tsquery values in placeholder order (shared by both the
            # current-names and alias queries, which mirror each other).
            ts_params = []
            if d:
                # Match family and given names separately
                where_current = "1=1"
                where_alias = "1=1"
                if fname:
                    where_current += " AND to_tsvector('simple', dn1) @@ to_tsquery('simple', %s)"
                    where_alias += " AND to_tsvector('simple', a.dn1) @@ to_tsquery('simple', %s)"
                    ts_params.append(fname)
                if forename:
                    where_current += " AND to_tsvector('simple', dn2) @@ to_tsquery('simple', %s)"
                    where_alias += " AND to_tsvector('simple', a.dn2) @@ to_tsquery('simple', %s)"
                    ts_params.append(forename)
            else:
                # Match across both fields
                combined = fname
                if forename:
                    combined = combined + " & " + forename if combined else forename
                if combined:
                    where_current = "to_tsvector('simple', COALESCE(dn1, '') || ' ' || COALESCE(dn2, '')) @@ to_tsquery('simple', %s)"
                    where_alias = "to_tsvector('simple', COALESCE(a.dn1, '') || ' ' || COALESCE(a.dn2, '')) @@ to_tsquery('simple', %s)"
                    ts_params.append(combined)
                else:
                    # User input sanitised to nothing -> no full-text match.
                    where_current = "1=0"
                    where_alias = "1=0"

        # In exact mode the where clauses carry no placeholders; pass None so
        # psycopg2 doesn't treat any literal % as a format spec.
        people_params = tuple(ts_params) or None if not e else None

        # Query current names
        sql = f"""
            SELECT personID, name1, name2, cName, YOB, MOB, DOB,
                   {now_year} - YOB AS est_age
            FROM enigma.people p
            WHERE {where_current}
            ORDER BY name1, name2
            LIMIT 500
        """
        current_results = execute_query(sql, people_params)

        # Format birth dates for display
        for row in current_results:
            yob = row.get("yob")
            mob = row.get("mob")
            dob = row.get("dob")
            if yob:
                if mob and dob:
                    row["birth_display"] = f"{yob:04d}-{mob:02d}-{dob:02d}"
                elif mob:
                    row["birth_display"] = f"{yob:04d}-{mob:02d}"
                else:
                    row["birth_display"] = str(yob)
            else:
                row["birth_display"] = ""

        # Query alias/former names
        sql = f"""
            SELECT p.personID, a.n1, a.n2, a.cn, p.YOB, p.MOB, p.DOB,
                   {now_year} - p.YOB AS est_age, a.alias
            FROM enigma.alias a
            JOIN enigma.people p ON a.personID = p.personID
            WHERE {where_alias}
            ORDER BY a.n1, a.n2
            LIMIT 500
        """
        alias_results = execute_query(sql, people_params)

        # Format birth dates for alias results
        for row in alias_results:
            yob = row.get("yob")
            mob = row.get("mob")
            dob = row.get("dob")
            if yob:
                if mob and dob:
                    row["birth_display"] = f"{yob:04d}-{mob:02d}-{dob:02d}"
                elif mob:
                    row["birth_display"] = f"{yob:04d}-{mob:02d}"
                else:
                    row["birth_display"] = str(yob)
            else:
                row["birth_display"] = ""

    return render_template(
        "searchpeople.html",
        n1=n1,
        n2=n2,
        d=d,
        e=e,
        now_year=now_year,
        current_results=current_results,
        alias_results=alias_results,
    )
