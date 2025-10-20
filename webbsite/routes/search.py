"""
Search routes - Direct port from searchorgs.asp and searchpeople.asp
"""
from flask import Blueprint, render_template, request
from webbsite.db import execute_query
from webbsite.asp_helpers import rem_space, get_str, apos

bp = Blueprint('search', __name__)


@bp.route('/searchorgs.asp', methods=['GET', 'POST'])
def search_orgs():
    """Search organizations - port of searchorgs.asp"""
    # Get parameters from POST (form submit) or GET (URL links)
    if request.method == 'POST':
        n = rem_space(request.form.get('n', ''))
        st = request.form.get('st', 'l')
        sort = request.form.get('sort', 'namup')
    else:
        n = rem_space(get_str('n', ''))
        st = get_str('st', 'l')  # l=left match, a=any match (full-text)
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
            # Left match (starts with)
            match_clause = f"name1 LIKE '{apos(n)}%'"

        # Search current names
        sql = f"""
            SELECT personID, Name1, everListCo(personID) as hklist, incDate, disDate, cName, A2, friendly
            FROM organisations o
            LEFT JOIN domiciles d ON o.domicile = d.ID
            WHERE {match_clause}
            ORDER BY {ob}
            LIMIT {limit}
        """
        current_results = execute_query(sql)

        # Search old names
        if st == 'a':
            old_match_clause = f"to_tsvector('simple', oldName) @@ to_tsquery('simple', '{apos(terms)}')"
        else:
            old_match_clause = f"oldName LIKE '{apos(n)}%'"

        sql = f"""
            SELECT n.PersonID, oldName as name1, oldcName, everListCo(o.personID) as hklist,
                   incDate, disDate, A2, friendly
            FROM nameChanges n
            JOIN organisations o ON n.PersonID = o.personID
            LEFT JOIN domiciles d ON o.domicile = d.ID
            WHERE {old_match_clause}
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
    # Get parameters from POST (form submit) or GET (URL links)
    if request.method == 'POST':
        n = rem_space(request.form.get('n', ''))
        st = request.form.get('st', 'l')
        sort = request.form.get('sort', 'namup')
    else:
        n = rem_space(get_str('n', ''))
        st = get_str('st', 'l')  # l=left match, a=any match (full-text)
        sort = get_str('sort', 'namup')

    # Determine sort order
    sort_options = {
        'namup': 'name1,name2',
        'namdn': 'name1 DESC,name2 DESC',
    }
    ob = sort_options.get(sort, 'name1,name2')
    if sort not in sort_options:
        sort = 'namup'

    limit = 500
    results = []

    if n:
        # Build WHERE clause based on search type
        if st == 'a':
            # Full-text search - PostgreSQL syntax
            terms = ' & '.join(n.split())
            match_clause = f"(to_tsvector('simple', name1) @@ to_tsquery('simple', '{apos(terms)}') OR to_tsvector('simple', name2) @@ to_tsquery('simple', '{apos(terms)}'))"
        else:
            # Left match (starts with)
            match_clause = f"(name1 LIKE '{apos(n)}%' OR name2 LIKE '{apos(n)}%')"

        # Search people
        sql = f"""
            SELECT personID, name1, name2, cName, birthDate, deathDate
            FROM people p
            WHERE {match_clause}
            ORDER BY {ob}
            LIMIT {limit}
        """
        results = execute_query(sql)

    return render_template('searchpeople.html',
                         n=n,
                         st=st,
                         sort=sort,
                         results=results,
                         limit=limit)
