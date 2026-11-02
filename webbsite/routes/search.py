"""
Search routes - Direct port from searchorgs.asp and searchpeople.asp
"""

import logging

from flask import Blueprint, render_template, request

from webbsite.db import DatabaseError, QueryTimeoutError, execute_query
from webbsite.asp_helpers import rem_space, get_str, get_bool, ts_words, escape_like

bp = Blueprint("search", __name__)
logger = logging.getLogger(__name__)


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
            # Left match (starts with) - LOWER() + LIKE hits the pattern index.
            # Bound, with % and _ escaped: apos() only doubles quotes, so a
            # user-supplied % used to turn this into a leading-wildcard scan.
            match_clause = "LOWER(name1) LIKE LOWER(%s) ESCAPE '\\'"
            org_params = (escape_like(n) + "%",)

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
            old_match_clause = "LOWER(oldName) LIKE LOWER(%s) ESCAPE '\\'"

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


def search_groups(fname_words, forename_words):
    """(mandatory words, alternative branches) of the tsquery search_people builds.

    Every family-name word is required. Given names are required too, except
    that the last two are matched as ("a" & "b") | "ab" -- two branches, either
    of which may match. Pure: the shape mirrors the tsquery assembly below.
    """
    if len(forename_words) <= 1:
        return list(fname_words) + list(forename_words), None
    a, b = forename_words[-2:]
    return list(fname_words) + list(forename_words[:-2]), ([a, b], [a + b])


def pick_drivers(lexemes, mandatory, branches):
    """Lexemes whose people_search rows include every person the tsquery matches.

    lexemes: word -> [(lexeme, people count)], from to_tsvector('simple', word)
    and enigma.people_tokfreq. One word can yield several lexemes (a_b is the
    phrase 'a' <-> 'b'), all of them required; a word with none (only
    underscores) drops out of the tsquery, so it constrains nothing.

    Two covers are valid: every match contains every mandatory lexeme, so the
    rarest one alone; and every match contains one branch's lexemes, so the
    rarest of each branch together. The cheaper (fewer rows) wins: "chan tai
    man" reads tai + taiman, not all of chan. A required lexeme nobody has, or
    branches nobody can satisfy, means nothing can match: [] (no query). Pure.
    """
    def rarest(words):
        found = [ln for w in words for ln in lexemes.get(w, [])]
        return min(found, key=lambda ln: (ln[1], ln[0])) if found else None

    must = rarest(mandatory)
    if must is not None and must[1] == 0:
        return []
    if branches:
        tops = [rarest(b) for b in branches]
        # A branch with no lexemes means both have none (ab is a + b): the OR
        # dropped out of the tsquery and constrains nothing.
        if all(t is not None for t in tops):
            live = [t for t in tops if t[1] > 0]
            if not live:
                return []
            if must is None or sum(t[1] for t in live) < must[1]:
                return [t[0] for t in live]
    return [must[0]] if must is not None else []


# A given name such as "jayne" is ~35k rows on ~31k heap pages of enigma.people:
# cold, that is random I/O past the 8 s default (WEBBSITE-3C). The token table
# reads far less, but two common words that rarely coincide still scan the
# rarer one's whole run, so both paths keep the heavy-query budget.
PEOPLE_SEARCH_TIMEOUT_S = 25


def _search_people_tokens(where, params, fname_words, forename_words, now_year):
    """The first 500 people the full-text WHERE clause matches, by name, read
    from enigma.people_search (database/derived/people_search.sql) instead of
    enigma.people. None when that table is not ready (missing, or empty after a
    restore until webbsite-db-build refills it): the caller falls back.

    people_search holds one row per (lexeme, person) in (token, name1, name2,
    personid) order, so "people with lexeme X, by name, first 500" reads a few
    contiguous pages however common X is -- where the GIN query on people had to
    fetch and sort all of X's matches (628k for "john") first (WEBBSITE-3C).
    The page's own WHERE clause still filters each driver's rows, so the result
    is exactly the old query's.
    """
    ready = execute_query(
        "SELECT to_regclass('enigma.people_search') IS NOT NULL"
        " AND to_regclass('enigma.people_tokfreq') IS NOT NULL AS ok")
    if not ready or not ready[0]["ok"]:
        return None
    mandatory, branches = search_groups(fname_words, forename_words)
    words = sorted({w for w in mandatory + [w for b in branches or () for w in b]})
    rows = execute_query(
        "SELECT w.word, l.lex, COALESCE(f.n, 0) AS n,"
        "       (SELECT EXISTS (SELECT 1 FROM enigma.people_tokfreq)) AS ready"
        " FROM unnest(CAST(%s AS text[])) AS w(word)"
        " CROSS JOIN LATERAL unnest(tsvector_to_array(to_tsvector('simple', w.word))) AS l(lex)"
        " LEFT JOIN enigma.people_tokfreq f ON f.token = l.lex",
        (words,))
    if rows and not rows[0]["ready"]:
        return None
    lexemes = {}
    for r in rows:
        lexemes.setdefault(r["word"], []).append((r["lex"], r["n"]))
    drivers = pick_drivers(lexemes, mandatory, branches)
    if not drivers:
        return []
    branch = (f"(SELECT personid, name1, name2, cname, yob, mob, dob"
              f" FROM enigma.people_search WHERE token = %s AND {where}"
              f" ORDER BY name1, name2, personid LIMIT 500)")
    sql = (f"SELECT personID, name1, name2, cName, YOB, MOB, DOB, {int(now_year)} - YOB AS est_age"
           f" FROM ({' UNION '.join([branch] * len(drivers))}) s"
           f" ORDER BY name1, name2, personid LIMIT 500")
    bound = tuple(v for drv in drivers for v in (drv, *params))
    return execute_query(sql, bound, timeout_s=PEOPLE_SEARCH_TIMEOUT_S)


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
    fulltext_words = None  # (family-name words, given-name words) in full-text mode

    if n1 or n2:
        # Bound values in placeholder order, shared by the current-names and
        # alias queries, which mirror each other.
        params = []
        # Build WHERE clauses for current names query
        if e:
            # Exact match mode
            where_current = "1=1"
            where_alias = "1=1"
            if n1:
                where_current += " AND dn1 = %s"
                where_alias += " AND a.dn1 = %s"
                params.append(n1)
            if n2 == "":
                where_current += " AND dn2 IS NULL"
                where_alias += " AND a.dn2 IS NULL"
            else:
                where_current += " AND dn2 = %s"
                where_alias += " AND a.dn2 = %s"
                params.append(n2)
        else:
            # Full-text search mode. User words are reduced to safe tsquery
            # lexemes (ts_words); the &/|/() operators below are ours, so the
            # assembled tsquery is always valid and is passed as a bound param.
            fname_words = ts_words(n1) if n1 else []
            forename_words = ts_words(n2) if n2 else []
            fulltext_words = (fname_words, forename_words)

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

            if d:
                # Match family and given names separately
                where_current = "1=1"
                where_alias = "1=1"
                if fname:
                    where_current += " AND to_tsvector('simple', dn1) @@ to_tsquery('simple', %s)"
                    where_alias += " AND to_tsvector('simple', a.dn1) @@ to_tsquery('simple', %s)"
                    params.append(fname)
                if forename:
                    where_current += " AND to_tsvector('simple', dn2) @@ to_tsquery('simple', %s)"
                    where_alias += " AND to_tsvector('simple', a.dn2) @@ to_tsquery('simple', %s)"
                    params.append(forename)
                if not fname and not forename:
                    # Input sanitised to nothing: no match, as in combined mode
                    # below. "1=1" here listed the first 500 of all 14.5M
                    # people, by a full sort that hit the statement timeout.
                    where_current = "1=0"
                    where_alias = "1=0"
            else:
                # Match across both fields
                combined = fname
                if forename:
                    combined = combined + " & " + forename if combined else forename
                if combined:
                    where_current = "to_tsvector('simple', COALESCE(dn1, '') || ' ' || COALESCE(dn2, '')) @@ to_tsquery('simple', %s)"
                    where_alias = "to_tsvector('simple', COALESCE(a.dn1, '') || ' ' || COALESCE(a.dn2, '')) @@ to_tsquery('simple', %s)"
                    params.append(combined)
                else:
                    # User input sanitised to nothing -> no full-text match.
                    where_current = "1=0"
                    where_alias = "1=0"

        people_params = tuple(params) or None

        # Query current names: from the name-ordered token table when it is
        # ready, else (a fresh restore, until it is rebuilt) from people itself.
        current_results = None
        if fulltext_words is not None and where_current != "1=0":
            try:
                current_results = _search_people_tokens(
                    where_current, params, *fulltext_words, now_year)
            except QueryTimeoutError:
                raise  # the GIN path would only spend another budget timing out
            except DatabaseError:
                # The table is an optimisation: a problem with it (a swap's
                # race, a permissions slip) must not take search down.
                logger.exception("people_search failed; falling back to enigma.people")
        if current_results is None:
            sql = f"""
                SELECT personID, name1, name2, cName, YOB, MOB, DOB,
                       {now_year} - YOB AS est_age
                FROM enigma.people p
                WHERE {where_current}
                ORDER BY name1, name2
                LIMIT 500
            """
            current_results = execute_query(sql, people_params, timeout_s=PEOPLE_SEARCH_TIMEOUT_S)

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
        alias_results = execute_query(sql, people_params, timeout_s=PEOPLE_SEARCH_TIMEOUT_S)

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
