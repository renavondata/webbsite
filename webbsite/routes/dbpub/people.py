"""
People and organization lookup
"""
from flask import Blueprint, render_template, request, abort, current_app, Response
from datetime import date, timedelta
import calendar
import io
import re
from webbsite.db import execute_query, get_db
from webbsite.asp_helpers import get_int, get_bool, get_str

bp = Blueprint('dbpub_people', __name__)

@bp.route('/natperson.asp')
def natperson():
    """
    Port of dbpub/natperson.asp
    Shows detailed information about a natural person (individual)

    Query params:
    - p: personID of the person
    - m: max generations for family tree (0=unlimited)
    - s2: sort order for holdings
    - x: expand holdings

    Tables used: enigma.people, enigma.alias, enigma.lsppl, enigma.nationality,
                 enigma.ukchnats, enigma.domiciles, enigma.relatives, enigma.relationships
    """
    person_id = request.args.get('p', type=int)
    max_gen = request.args.get('m', type=int, default=0)
    sort2 = request.args.get('s2', '')
    expand = request.args.get('x', '')

    if not person_id:
        return render_template('dbpub/natperson.html',
                             person_name="No human was specified",
                             person_id=0,
                             error=True)

    # Get person details
    try:
        person_sql = """
            SELECT
                name1, name2, dn1, dn2, cname, sex,
                yob, mob, dob, yod, mond, dod,
                hkid, sfcid, hkidsource
            FROM enigma.people
            WHERE personid = %s
        """
        person_rows = execute_query(person_sql, (person_id,))

        if not person_rows:
            # Check if person was merged
            merged_sql = "SELECT newp FROM enigma.mergedpersons WHERE oldp = %s"
            merged_rows = execute_query(merged_sql, (person_id,))
            if merged_rows:
                from flask import redirect, url_for
                return redirect(url_for('dbpub.natperson', p=merged_rows[0]['newp']))

            return render_template('dbpub/natperson.html',
                                 person_name="No such human",
                                 person_id=0,
                                 error=True)

        person = dict(person_rows[0])

        # Format person name
        person_name = person['name1']
        if person['name2']:
            person_name += ', ' + person['name2']
        if person['cname']:
            person_name += ' ' + person['cname']

        # Calculate ages
        from datetime import date as dt_date
        today = dt_date.today()
        current_year = today.year

        # Format date of birth with hyperlinks (matching ASP lines 219-224)
        dob_str = _format_dob_with_links(person['yob'], person['mob'], person['dob'])

        # Format date of death
        dod_str = _format_partial_date(person['yod'], person['mond'], person['dod'])

        # Calculate current age (if alive)
        age_str = None
        if person['yob'] and not person['yod']:
            age_str = _calculate_age(person['yob'], person['mob'], person['dob'],
                                     today.year, today.month, today.day)

        # Calculate age at death
        death_age_str = None
        if person['yob'] and person['yod']:
            death_age_str = _calculate_age(person['yob'], person['mob'], person['dob'],
                                           person['yod'], person['mond'], person['dod'])

        # Get aliases
        aliases_sql = """
            SELECT n1, n2, cn, alias
            FROM enigma.alias
            WHERE personid = %s
            ORDER BY alias, n1, n2
        """
        aliases = [dict(row) for row in execute_query(aliases_sql, (person_id,))]

        # Get Law Society details (if solicitor)
        lsppl_sql = """
            SELECT lsid, dead, admhk
            FROM enigma.lsppl
            WHERE personid = %s
            ORDER BY lastseen DESC
            LIMIT 1
        """
        lsppl_rows = execute_query(lsppl_sql, (person_id,))
        lsppl = dict(lsppl_rows[0]) if lsppl_rows else None

        # Get nationality
        nationality_sql = """
            SELECT d.friendly, MAX(n.latest) as latest
            FROM enigma.nationality n
            JOIN enigma.ukchnats u ON n.ukchnat = u.id
            JOIN enigma.domiciles d ON u.domicile = d.id
            WHERE n.personid = %s
            GROUP BY d.friendly
            ORDER BY latest DESC
        """
        nationalities = [dict(row) for row in execute_query(nationality_sql, (person_id,))]

        # Get websites (matching websites.asp include)
        websites_sql = """
            SELECT url, dead
            FROM enigma.web
            WHERE personid = %s
            ORDER BY dead, url
        """
        websites_list = [dict(row) for row in execute_query(websites_sql, (person_id,))]

        # Get holdings (simplified - just top-level holdings for inline display)
        # For full recursive tree, user can click through to holdings.asp
        holdings_sql = """
            SELECT personid, issue, holdingdate, shares, stake, name, orgtype, typeshort, issuer,
                   CASE
                       WHEN shares IS NULL THEN stake
                       ELSE shares / enigma.outstanding(issue, CURRENT_DATE)
                   END AS stakecomp
            FROM enigma.webholdings3
            WHERE personid = %s
              AND (shares > 0 OR stake > 0 OR (shares IS NULL AND stake IS NULL))
            ORDER BY name
            LIMIT 20
        """
        holdings_list = [dict(row) for row in execute_query(holdings_sql, (person_id,))]

        # Check for humanBar navigation tabs (matching ASP humanBar function)
        has_positions = bool(execute_query(
            "SELECT 1 FROM enigma.directorships WHERE director = %s LIMIT 1",
            (person_id,)
        ))
        has_pay = bool(execute_query(
            "SELECT 1 FROM enigma.directorships d JOIN enigma.documents a ON d.company = a.orgid WHERE a.doctypeid = 0 AND d.director = %s LIMIT 1",
            (person_id,)
        ))
        has_sdi = bool(execute_query(
            "SELECT 1 FROM enigma.sdi WHERE dir = %s LIMIT 1",
            (person_id,)
        ))

        # Check for CCASS participant ID
        ccass_part_sql = "SELECT partid FROM ccass.participants WHERE personid = %s LIMIT 1"
        ccass_result = execute_query(ccass_part_sql, (person_id,))
        ccass_part_id = ccass_result[0]['partid'] if ccass_result else None

        has_stories = bool(execute_query(
            "SELECT 1 FROM enigma.personstories WHERE personid = %s LIMIT 1",
            (person_id,)
        ))

        # Get relatives data
        has_relatives_sql = "SELECT 1 FROM enigma.relatives WHERE rel1 = %s OR rel2 = %s LIMIT 1"
        has_relatives = bool(execute_query(has_relatives_sql, (person_id, person_id)))

        ascendants = []
        descendants = []
        nonlineal_relatives = []

        if has_relatives:
            # Build ascendants tree
            ascendants = _build_ascendants_tree(person_id, max_gen)

            # Build descendants tree
            descendants = _build_descendants_tree(person_id, max_gen)

            # Get non-lineal relatives (siblings, cousins, etc.)
            # Try to use webRels3 stored procedure, fallback to direct query
            try:
                nonlineal_sql = "SELECT * FROM enigma.webRels3(%s)"
                nonlineal_relatives = [dict(row) for row in execute_query(nonlineal_sql, (person_id,))]
            except:
                # Procedure doesn't exist, query directly
                # This finds siblings and other relatives where relid != 0 (0 = parent/child)
                nonlineal_sql = """
                    SELECT
                        CASE WHEN r.rel1 = %s THEN r.rel2 ELSE r.rel1 END as relid,
                        CASE
                            WHEN p.name2 IS NOT NULL THEN p.name1 || ', ' || p.name2
                            ELSE p.name1
                        END as relative,
                        rt.rellabel as rel,
                        p.yob, p.mob, p.dob,
                        p.yod, p.mond, p.dod
                    FROM enigma.relatives r
                    JOIN enigma.relationships rt ON r.relid = rt.id
                    JOIN enigma.people p ON (CASE WHEN r.rel1 = %s THEN r.rel2 ELSE r.rel1 END) = p.personid
                    WHERE (r.rel1 = %s OR r.rel2 = %s)
                      AND r.relid != 0
                    ORDER BY p.yob, p.mob, p.name1, p.name2
                """
                nonlineal_rows = execute_query(nonlineal_sql, (person_id, person_id, person_id, person_id))
                nonlineal_relatives = []
                for row in nonlineal_rows:
                    row_dict = dict(row)
                    row_dict['born'] = _format_partial_date(row['yob'], row['mob'], row['dob'])
                    row_dict['died'] = _format_partial_date(row['yod'], row['mond'], row['dod'])
                    nonlineal_relatives.append(row_dict)

    except Exception as ex:
        current_app.logger.error(f"Error in natperson.asp: {type(ex).__name__}: {ex}", exc_info=True)
        return render_template('dbpub/natperson.html',
                             person_name="Error loading person",
                             person_id=person_id,
                             error=True)

    return render_template('dbpub/natperson.html',
                         person_id=person_id,
                         person_name=person_name,
                         person=person,
                         dob_str=dob_str,
                         dod_str=dod_str,
                         age_str=age_str,
                         death_age_str=death_age_str,
                         current_year=current_year,
                         aliases=aliases,
                         lsppl=lsppl,
                         nationalities=nationalities,
                         websites_list=websites_list,
                         holdings_list=holdings_list,
                         has_positions=has_positions,
                         has_pay=has_pay,
                         has_sdi=has_sdi,
                         ccass_part_id=ccass_part_id,
                         has_stories=has_stories,
                         has_relatives=has_relatives,
                         ascendants=ascendants,
                         descendants=descendants,
                         nonlineal_relatives=nonlineal_relatives,
                         max_gen=max_gen,
                         sort2=sort2,
                         expand=expand)


def _format_partial_date(year, month, day):
    """Format a partial date (year, month, day) to string"""
    if not year:
        return ''

    parts = [str(year)]
    if month:
        parts.append(f"{month:02d}")
        if day:
            parts.append(f"{day:02d}")

    return '-'.join(parts)


def _format_dob_with_links(year, month, day):
    """
    Format date of birth with hyperlinks (matching ASP lines 219-224)
    Returns HTML string with links to bornyear.asp and bornday.asp
    """
    from markupsafe import Markup

    out_str = ''

    # Build month-day part first (if available)
    if month and day:
        out_str = f"-<a href='bornday.asp?m={month}&d={day}'>{month:02d}-{day:02d}</a>"
    elif month:
        out_str = f"-{month:02d}"

    # Build year part (if available)
    if year:
        out_str = f"<a href='bornyear.asp?y={year}&m={month if month else ''}'>{year}</a>" + out_str

    return Markup(out_str) if out_str else ''


def _calculate_age(yob, mob, dob, yod, mond, dod):
    """Calculate age between two dates (birth to death or birth to today)"""
    if not yob or not yod:
        return None

    diff_y = yod - yob

    if mob and mond:
        if dob and dod:
            # Full dates available
            # Adjust DOB for leap year deaths
            adjusted_dob = dob
            if mob == 2 and dob == 29 and (yod % 4 != 0):
                adjusted_dob = 28

            # Check if birthday has occurred this year
            if mond < mob or (mond == mob and dod < adjusted_dob):
                diff_y -= 1
                # Calculate days since last birthday
                from datetime import date as dt_date
                try:
                    last_bday = dt_date(yod - 1, mob, adjusted_dob)
                    death_date = dt_date(yod, mond, dod)
                    diff_d = (death_date - last_bday).days
                    return f"{diff_y} years {diff_d} days"
                except ValueError:
                    return f"{diff_y} years"
            else:
                # Calculate days since birthday this year
                from datetime import date as dt_date
                try:
                    this_bday = dt_date(yod, mob, adjusted_dob)
                    death_date = dt_date(yod, mond, dod)
                    diff_d = (death_date - this_bday).days
                    return f"{diff_y} years {diff_d} days"
                except ValueError:
                    return f"{diff_y} years"
        else:
            # Only months available
            diff_m = mond - mob
            if diff_m < 0:
                diff_y -= 1
                diff_m += 12
            return f"{diff_y} years {diff_m} months"
    else:
        # Only years available
        if (not mob and mond and mond < 7) or (not mond and mob and mob > 6):
            diff_y -= 1
        return f"{diff_y} years"


def _build_ascendants_tree(person_id, max_gen, level=0, seen=None):
    """Recursively build ascendants (parents, grandparents) tree"""
    if seen is None:
        seen = set()

    if person_id in seen:
        return []

    if max_gen > 0 and level >= max_gen:
        return []

    seen.add(person_id)

    # Get parents (rel2 is child, rel1 is parent when relid=0)
    sql = """
        SELECT
            r.rel1 as parent_id,
            CASE
                WHEN p.name2 IS NOT NULL THEN p.name1 || ', ' || p.name2
                ELSE p.name1
            END as name,
            p.sex,
            p.yob, p.mob, p.dob,
            p.yod, p.mond, p.dod
        FROM enigma.relatives r
        JOIN enigma.people p ON r.rel1 = p.personid
        WHERE r.relid = 0 AND r.rel2 = %s
        ORDER BY p.sex DESC, p.name1, p.name2
    """

    try:
        parents = execute_query(sql, (person_id,))
        result = []

        for parent in parents:
            parent_dict = dict(parent)
            parent_dict['born'] = _format_partial_date(parent['yob'], parent['mob'], parent['dob'])
            parent_dict['died'] = _format_partial_date(parent['yod'], parent['mond'], parent['dod'])
            parent_dict['level'] = level
            parent_dict['already_seen'] = parent['parent_id'] in seen

            # Recursively get ancestors
            if not parent_dict['already_seen']:
                parent_dict['ancestors'] = _build_ascendants_tree(
                    parent['parent_id'], max_gen, level + 1, seen
                )
            else:
                parent_dict['ancestors'] = []

            result.append(parent_dict)

        return result
    except Exception as ex:
        current_app.logger.error(f"Error building ascendants tree: {ex}")
        return []


def _build_descendants_tree(person_id, max_gen, level=0, seen=None):
    """Recursively build descendants (children, grandchildren) tree"""
    if seen is None:
        seen = set()

    if person_id in seen:
        return []

    if max_gen > 0 and level >= max_gen:
        return []

    seen.add(person_id)

    # Get children (rel1 is parent, rel2 is child when relid=0)
    sql = """
        SELECT
            r.rel2 as child_id,
            CASE
                WHEN p.name2 IS NOT NULL THEN p.name1 || ', ' || p.name2
                ELSE p.name1
            END as name,
            p.yob, p.mob, p.dob,
            p.yod, p.mond, p.dod
        FROM enigma.relatives r
        JOIN enigma.people p ON r.rel2 = p.personid
        WHERE r.relid = 0 AND r.rel1 = %s
        ORDER BY p.yob, p.mob, p.name1, p.name2
    """

    try:
        children = execute_query(sql, (person_id,))
        result = []

        for child in children:
            child_dict = dict(child)
            child_dict['born'] = _format_partial_date(child['yob'], child['mob'], child['dob'])
            child_dict['died'] = _format_partial_date(child['yod'], child['mond'], child['dod'])
            child_dict['level'] = level
            child_dict['already_seen'] = child['child_id'] in seen

            # Recursively get descendants
            if not child_dict['already_seen']:
                child_dict['descendants'] = _build_descendants_tree(
                    child['child_id'], max_gen, level + 1, seen
                )
            else:
                child_dict['descendants'] = []

            result.append(child_dict)

        return result
    except Exception as ex:
        current_app.logger.error(f"Error building descendants tree: {ex}")
        return []




