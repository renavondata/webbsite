"""
Search routes - Direct port from searchorgs.asp and searchpeople.asp
"""
from flask import Blueprint, render_template, request
from webbsite.db import execute_query
from webbsite.asp_helpers import rem_space, get_str, get_bool, apos

bp = Blueprint('search', __name__)


@bp.route('/searchorgs.asp', methods=['GET', 'POST'])
def search_orgs():
    """Search organizations - port of searchorgs.asp"""
    # Get parameters from POST (form submit) or GET (URL links)
    if request.method == 'POST':
        n = rem_space(request.form.get('n', ''))
        st = request.form.get('st', '')
        sort = request.form.get('sort', 'namup')
    else:
        n = rem_space(get_str('n', ''))
        st = get_str('st', '')  # l=left match, a=any match (full-text)
        sort = get_str('sort', 'namup')

    # Determine sort order
    sort_options = {
        'domup': 'A2,name1',
        'domdn': 'A2 DESC,name1',
        'incup': 'incDate,name1',
        'incdn': 'incDate DESC,name1',
        'disup': 'disDate,name1',
        'disdn': 'disDate DESC,name1',
        'namup': 'name1',
        'namdn': 'name1 DESC',
    }
    ob = sort_options.get(sort, 'name1,A2')
    if sort not in sort_options:
        sort = 'namup'

    limit = 500
    current_results = []
    old_results = []

    if n:
        # Build WHERE clause based on search type
        if st == 'a':
            # Full-text search - PostgreSQL syntax
            # Convert space-separated terms to term1 & term2 format for tsquery
            terms = ' & '.join(n.split())
            match_clause = f"to_tsvector('simple', name1) @@ to_tsquery('simple', '{apos(terms)}')"
        else:
            # Left match (starts with) - use LOWER() + LIKE for case-insensitive with pattern index
            match_clause = f"LOWER(name1) LIKE LOWER('{apos(n)}%')"

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
        current_results = execute_query(sql)

        # Search old names
        if st == 'a':
            old_match_clause = f"to_tsvector('simple', oldName) @@ to_tsquery('simple', '{apos(terms)}')"
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
        old_results = execute_query(sql)

    return render_template('searchorgs.html',
                         n=n,
                         st=st,
                         sort=sort,
                         current_results=current_results,
                         old_results=old_results,
                         limit=limit)


@bp.route('/searchpeople.asp', methods=['GET', 'POST'])
def search_people():
    """Search people - port of searchpeople.asp"""
    from datetime import datetime

    # Get parameters
    if request.method == 'POST':
        n1 = request.form.get('n1', '')[:90].strip()
        n2 = request.form.get('n2', '')[:63].strip()
        d = request.form.get('d') == '1'
        e = request.form.get('e') == '1'
    else:
        n1 = get_str('n1', '')[:90].strip()
        n2 = get_str('n2', '')[:63].strip()
        d = get_bool('d')
        e = get_bool('e')

    # Clean up names (remove hyphens, asterisks, extra spaces)
    n1 = n1.replace('-', ' ').replace('*', '')
    n2 = n2.replace('-', ' ').replace('*', '')
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
            if n2 == '':
                where_current += " AND dn2 IS NULL"
                where_alias += " AND a.dn2 IS NULL"
            else:
                where_current += f" AND dn2 = '{apos(n2)}'"
                where_alias += f" AND a.dn2 = '{apos(n2)}'"
        else:
            # Full-text search mode
            # Build family name search term
            fname = ''
            if n1:
                fname = ' & '.join(f'"{word}"' for word in n1.split())

            # Build given names search term (with multi-word logic)
            forename = ''
            if n2:
                words = n2.split()
                if len(words) == 1:
                    forename = f'"{words[0]}"'
                elif len(words) > 1:
                    # Build list of terms to avoid leading & operator
                    forename_parts = []
                    # Add all words except last two as required
                    for word in words[:-2]:
                        forename_parts.append(f'"{word}"')
                    # Last two words: search both separate and combined
                    # e.g., "Xiao Ping" searches for (("Xiao" & "Ping") | "XiaoPing")
                    forename_parts.append(f'(("{words[-2]}" & "{words[-1]}") | "{words[-2] + words[-1]}")')
                    forename = ' & '.join(forename_parts)

            if d:
                # Match family and given names separately
                where_current = "1=1"
                where_alias = "1=1"
                if n1:
                    where_current += f" AND to_tsvector('simple', dn1) @@ to_tsquery('simple', '{apos(fname)}')"
                    where_alias += f" AND to_tsvector('simple', a.dn1) @@ to_tsquery('simple', '{apos(fname)}')"
                if n2:
                    where_current += f" AND to_tsvector('simple', dn2) @@ to_tsquery('simple', '{apos(forename)}')"
                    where_alias += f" AND to_tsvector('simple', a.dn2) @@ to_tsquery('simple', '{apos(forename)}')"
            else:
                # Match across both fields
                combined = fname
                if forename:
                    combined = combined + ' & ' + forename if combined else forename
                where_current = f"to_tsvector('simple', COALESCE(dn1, '') || ' ' || COALESCE(dn2, '')) @@ to_tsquery('simple', '{apos(combined)}')"
                where_alias = f"to_tsvector('simple', COALESCE(a.dn1, '') || ' ' || COALESCE(a.dn2, '')) @@ to_tsquery('simple', '{apos(combined)}')"

        # Query current names
        sql = f"""
            SELECT personID, name1, name2, cName, YOB, MOB, DOB,
                   {now_year} - YOB AS est_age
            FROM enigma.people p
            WHERE {where_current}
            ORDER BY name1, name2
            LIMIT 500
        """
        current_results = execute_query(sql)

        # Format birth dates for display
        for row in current_results:
            yob = row.get('yob')
            mob = row.get('mob')
            dob = row.get('dob')
            if yob:
                if mob and dob:
                    row['birth_display'] = f"{yob:04d}-{mob:02d}-{dob:02d}"
                elif mob:
                    row['birth_display'] = f"{yob:04d}-{mob:02d}"
                else:
                    row['birth_display'] = str(yob)
            else:
                row['birth_display'] = ''

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
        alias_results = execute_query(sql)

        # Format birth dates for alias results
        for row in alias_results:
            yob = row.get('yob')
            mob = row.get('mob')
            dob = row.get('dob')
            if yob:
                if mob and dob:
                    row['birth_display'] = f"{yob:04d}-{mob:02d}-{dob:02d}"
                elif mob:
                    row['birth_display'] = f"{yob:04d}-{mob:02d}"
                else:
                    row['birth_display'] = str(yob)
            else:
                row['birth_display'] = ''

    return render_template('searchpeople.html',
                         n1=n1,
                         n2=n2,
                         d=d,
                         e=e,
                         now_year=now_year,
                         current_results=current_results,
                         alias_results=alias_results)
