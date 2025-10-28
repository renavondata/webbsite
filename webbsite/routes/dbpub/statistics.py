"""
Statistical analysis and reporting routes
"""
from flask import Blueprint, render_template, request, abort, current_app, Response
from datetime import date, timedelta
import calendar
import io
import re
from webbsite.db import execute_query, get_db
from webbsite.asp_helpers import get_int, get_bool, get_str

bp = Blueprint('dbpub_statistics', __name__)

@bp.route('/enigma.orgdata.asp')
def enigma_orgdata():
    """
    Port of dbpub/enigma.orgdata.asp
    Company/organization data page - COMPLEX, HIGH PRIORITY

    Query params:
    - p: personID of organization

    This is one of the most important pages - shows comprehensive company data
    including directors, shareholdings, corporate enigma.events, financial reports, etc.

    Tables used: enigma.organisations, enigma.issue, stocklistings, enigma.directorships, and many more
    """
    person_id = request.args.get('p', type=int)

    if not person_id:
        return "PersonID required", 400

    # Simplified version for MVP - get basic organization info
    # Full version would include: shareholdings, full director history, foreign registrations, etc.

    # Get basic organization details
    org_sql = """
        SELECT
            o.personid,
            o.name1,
            o.cname,
            o.domicile,
            d.friendly AS domicilename,
            o.incdate,
            o.disdate,
            o.dismode,
            dm.dismodetxt,
            ot.typename,
            o.incid
        FROM enigma.organisations o
        LEFT JOIN enigma.domiciles d ON o.domicile = d.id
        LEFT JOIN enigma.dismodes dm ON o.dismode = dm.id
        LEFT JOIN enigma.orgtypes ot ON o.orgtype = ot.orgtype
        WHERE o.personid = %s
    """

    try:
        org_result = execute_query(org_sql, (person_id,))
        if not org_result or len(org_result) == 0:
            return "Organization not found", 404

        org_row = org_result[0]
        org_data = {
            'personID': org_row['personid'],
            'Name1': org_row['name1'],
            'cName': org_row['cname'],
            'domicile': org_row['domicile'],
            'domicileName': org_row['domicilename'],
            'incDate': org_row['incdate'],
            'disDate': org_row['disdate'],
            'disMode': org_row['dismode'],
            'disModeTxt': org_row['dismodetxt'],
            'typeName': org_row['typename'],
            'incID': org_row['incid']
        }
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        current_app.logger.error(f"Error in enigma.orgdata.asp (basic info): {type(ex).__name__}: {ex}", exc_info=True)
        return "Database error", 500

    # Get stock enigma.listings (if any)
    listings_sql = """
        SELECT
            sl.stockcode,
            sl.issueid,
            st.typeshort,
            sl.firsttradedate,
            sl.delistdate,
            l.longname as listingname
        FROM enigma.stocklistings sl
        JOIN enigma.issue i ON sl.issueid = i.id1
        JOIN enigma.sectypes st ON i.typeid = st.typeid
        JOIN enigma.listings l ON sl.stockexid = l.stockexid
        WHERE i.issuer = %s
        ORDER BY sl.delistdate DESC NULLS FIRST, sl.firsttradedate DESC
        LIMIT 10
    """

    try:
        listings_result = execute_query(listings_sql, (person_id,))
        listings_list = []
        for row in listings_result:
            listings_list.append({
                'StockCode': row['stockcode'],
                'issueID': row['issueid'],
                'typeShort': row['typeshort'],
                'FirstTradeDate': row['firsttradedate'],
                'DelistDate': row['delistdate'],
                'listingName': row['listingname']
            })
        org_data['enigma.listings'] = listings_list
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        current_app.logger.error(f"Error in enigma.orgdata.asp (enigma.listings): {type(ex).__name__}: {ex}", exc_info=True)
        org_data['enigma.listings'] = []

    # Get current directors (simplified - current only, not full history)
    # Using right-open interval: period includes "from" date, excludes "until" date
    directors_sql = """
        SELECT
            p.personID,
            p.name1,
            p.name2,
            pos.posshort,
            d.apptdate,
            d.resdate
        FROM enigma.directorships d
        JOIN enigma.people p ON d.director = p.personid
        JOIN enigma.positions pos ON d.positionid = pos.positionid
        WHERE d.company = %s
          AND (d.resdate IS NULL OR d.resdate > CURRENT_DATE)
        ORDER BY pos.rank DESC, d.apptdate DESC
        LIMIT 20
    """

    try:
        directors_result = execute_query(directors_sql, (person_id,))
        directors = []
        for row in directors_result:
            directors.append({
                'personID': row['personid'],
                'Name1': row['name1'],
                'Name2': row['name2'],
                'position': row['posshort'],
                'from_date': row['apptdate'],
                'until': row['resdate']
            })
        org_data['directors'] = directors
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        current_app.logger.error(f"Error in enigma.orgdata.asp (directors): {type(ex).__name__}: {ex}", exc_info=True)
        org_data['directors'] = []

    # Get recent enigma.events (limit 20)
    events_sql = """
        SELECT
            e.eventid,
            e.announced,
            e.exdate,
            ct.change,
            e.notes
        FROM enigma.events e
        JOIN enigma.capchangetypes ct ON e.eventtype = ct.capchangetype
        WHERE e.issueid IN (SELECT id1 FROM enigma.issue WHERE issuer = %s)
        ORDER BY e.announced DESC
        LIMIT 20
    """

    try:
        events_result = execute_query(events_sql, (person_id,))
        events_list = []
        for row in events_result:
            events_list.append({
                'eventID': row['eventid'],
                'eventDate': row['announced'],
                'exDate': row['exdate'],
                'capChange': row['change'],
                'details': row['notes']
            })
        org_data['enigma.events'] = events_list
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        current_app.logger.error(f"Error in enigma.orgdata.asp (enigma.events): {type(ex).__name__}: {ex}", exc_info=True)
        org_data['enigma.events'] = []

    return render_template('dbpub/orgdata.html', org=org_data)




@bp.route('/enigma.positions.asp')
def enigma_positions():
    """
    Director enigma.positions across all companies - port of enigma.positions.asp

    Query params:
    - p: personID of the person/director
    - sort: sorting column (orgup/orgdn, posup/posdn, appup/appdn, resup/resdn)
    - hide: Y=current only, N=show history

    Tables used: enigma.directorships, enigma.positions, enigma.organisations, rank

    Note: Simplified version for MVP - total returns calculations omitted
          (requires totRet, CAGret, CAGrel functions not yet ported)
    """
    person_id = get_int('p', 0)
    sort_param = request.args.get('sort', 'orgup')
    hide = request.args.get('hide', 'Y')

    if not person_id:
        return "PersonID required", 400

    # Determine sort order
    sort_orders = {
        'orgup': 'name1, from_date',
        'orgdn': 'name1 DESC, from_date',
        'posup': 'posShort, name1',
        'posdn': 'posShort DESC, name1',
        'appup': 'from_date, name1',
        'appdn': 'from_date DESC, name1',
        'resup': 'until, name1',
        'resdn': 'until DESC, name1'
    }
    ob = sort_orders.get(sort_param, 'name1, from_date')
    if sort_param not in sort_orders:
        sort_param = 'orgup'

    # Date filter for current vs history
    if hide == 'Y':
        date_filter = "(until IS NULL OR until > CURRENT_DATE)"
    else:
        date_filter = "TRUE"

    # Get person name
    try:
        person_result = execute_query("""
            SELECT
                CASE
                    WHEN p.personid IS NOT NULL THEN
                        CASE
                            WHEN p.name2 IS NOT NULL THEN p.name1 || ', ' || p.name2
                            ELSE p.name1
                        END
                    ELSE o.name1
                END AS personname,
                CASE WHEN p.personid IS NOT NULL THEN TRUE ELSE FALSE END AS isperson
            FROM enigma.people p
            FULL OUTER JOIN enigma.organisations o ON p.personid = o.personid
            WHERE COALESCE(p.personid, o.personid) = %s
        """, (person_id,))

        if person_result and len(person_result) > 0:
            person_name = person_result[0]['personname']
            is_person = person_result[0]['isperson']
        else:
            person_name = f"Person {person_id}"
            is_person = True
    except Exception as ex:
        current_app.logger.error(f"Error fetching person name for enigma.positions: {type(ex).__name__}: {ex}", exc_info=True)
        person_name = f"Person {person_id}"
        is_person = True

    # Query enigma.directorships grouped by rank
    # Note: Simplified - no total returns, no complex date range filtering
    try:
        # Get all ranks with enigma.positions
        ranks = execute_query("""
            SELECT DISTINCT r.rankid, r.ranktext
            FROM enigma.directorships d
            JOIN enigma.positions pos ON d.positionid = pos.positionid
            JOIN enigma.rank r ON pos.rank = r.rankid
            WHERE d.director = %s
              AND {date_filter}
            ORDER BY r.rankid
        """.format(date_filter=date_filter), (person_id,))

        # For each rank, get the enigma.directorships
        positions_by_rank = []
        for rank_row in ranks:
            rank_id = rank_row['rankid']
            rank_text = rank_row['ranktext']

            directorships_list = execute_query("""
                SELECT
                    d.company AS company,
                    o.name1,
                    i.id1 AS issueid,
                    d.apptdate AS apptdate,
                    d.resdate AS resdate,
                    pos.posshort,
                    pos.poslong
                FROM enigma.directorships d
                JOIN enigma.organisations o ON d.company = o.personid
                JOIN enigma.positions pos ON d.positionid = pos.positionid
                LEFT JOIN enigma.issue i ON d.company = i.issuer
                WHERE pos.rank = %s
                  AND d.director = %s
                  AND {{date_filter}}
                ORDER BY {{ob}}
            """.format(date_filter=date_filter, ob=ob), (rank_id, person_id))

            if directorships_list:
                positions_by_rank.append({
                    'rank_id': rank_id,
                    'rank_text': rank_text,
                    'enigma.directorships': directorships_list
                })
    except Exception as ex:
        current_app.logger.error(f"Error in enigma.positions query: {ex}")
        positions_by_rank = []

    return render_template('dbpub/positions.html',
                         person_id=person_id,
                         person_name=person_name,
                         is_person=is_person,
                         positions_by_rank=positions_by_rank,
                         sort=sort_param,
                         hide=hide)


# Alias route for positions.asp (backward compatibility with ASP URLs)


@bp.route('/websites.asp')
def websites():
    """
    Company websites listing

    Query params:
    - p: personID (organization)

    Shows all websites associated with an organization (active and archived)
    Tables used: enigma.web
    """
    person_id = get_int('p', 0)

    if not person_id:
        return "PersonID required", 400

    # Query websites for this organization
    websites_data = execute_query("""
        SELECT url, dead
        FROM enigma.web
        WHERE personid = %s
        ORDER BY dead, url
    """, (person_id,))

    return render_template('dbpub/websites.html',
                         person_id=person_id,
                         websites=websites_data)


# Matches (overlapping directors)


@bp.route('/matches.asp')
def matches():
    """
    Find common directors between two organizations

    Query params:
    - org1: first organization personID
    - org2: second organization personID
    - d: snapshot date (defaults to today)
    - sort: sorting column

    Shows people who hold positions in both organizations at a given date
    Tables used: enigma.directorships, enigma.people, enigma.positions
    """
    from datetime import date

    org1 = get_int('org1', 0)
    org2 = get_int('org2', 0)
    d = get_str('d', str(date.today()))
    sort_param = request.args.get('sort', 'name')

    if not org1 or not org2:
        return "Both organization IDs required", 400

    # Get organization names
    org1_result = execute_query("""
        SELECT name1 FROM enigma.organisations WHERE personid = %s
    """, (org1,))

    org2_result = execute_query("""
        SELECT name1 FROM enigma.organisations WHERE personid = %s
    """, (org2,))

    if not org1_result or not org2_result:
        return "Organizations not found", 404

    org1_name = org1_result[0]['name1']
    org2_name = org2_result[0]['name1']

    # Sort order mapping
    sort_mappings = {
        'app1': 'app1, app2, name',
        'app2': 'app2, app1, name',
        'pos1': 'pos1, name',
        'pos2': 'pos2, name',
        'name': 'name'
    }
    ob = sort_mappings.get(sort_param, 'name')

    # Query overlapping directors
    matches_data = execute_query(f"""
        SELECT
            d1.director AS personid,
            p.name1 || COALESCE(', ' || p.name2, '') || COALESCE(' ' || p.cname, '') AS name,
            pns1.posshort AS pos1,
            pns1.poslong AS pos1long,
            pns2.posshort AS pos2,
            pns2.poslong AS pos2long,
            TO_CHAR(d1.apptdate, 'YYYY-MM-DD') AS app1,
            TO_CHAR(d2.apptdate, 'YYYY-MM-DD') AS app2
        FROM enigma.directorships d1
        JOIN enigma.directorships d2 ON d1.director = d2.director
        JOIN enigma.people p ON d1.director = p.personid
        JOIN enigma.positions pns1 ON d1.positionid = pns1.positionid
        JOIN enigma.positions pns2 ON d2.positionid = pns2.positionid
        WHERE d1.company = %s
          AND d2.company = %s
          AND (d1.resdate IS NULL OR d1.resdate > %s::date)
          AND (d2.resdate IS NULL OR d2.resdate > %s::date)
          AND (d1.apptdate IS NULL OR d1.apptdate <= %s::date)
          AND (d2.apptdate IS NULL OR d2.apptdate <= %s::date)
        ORDER BY {ob}
    """, (org1, org2, d, d, d, d))

    return render_template('dbpub/matches.html',
                         org1=org1,
                         org2=org2,
                         org1_name=org1_name,
                         org2_name=org2_name,
                         d=d,
                         matches=matches_data,
                         sort_param=sort_param)


# Domiciles


@bp.route('/namechangeHK.asp')
def namechange_hk():
    """
    Recent name changes for HK-incorporated companies

    Shows name changes in the last 30 days for companies incorporated in Hong Kong
    """
    sort_param = request.args.get('sort', 'newup')

    # Sort order mapping
    sort_mappings = {
        'oldup': 'oldname',
        'olddn': 'oldname DESC',
        'newdn': 'name1 DESC',
        'newup': 'name1',
        'datup': 'datechanged, name1',
        'datdn': 'datechanged DESC, name1'
    }
    ob = sort_mappings.get(sort_param, 'name1')

    # Query name changes for HK companies in last 30 days
    # domicile=1 is Hong Kong
    changes_data = execute_query(f"""
        SELECT o.personid,
               nc.datechanged,
               nc.oldname,
               nc.oldcname,
               o.name1,
               o.cname
        FROM enigma.namechanges nc
        JOIN enigma.organisations o ON nc.personid = o.personid
        WHERE o.domicile = 1
          AND o.incid IS NOT NULL
          AND (nc.oldname IS NOT NULL OR nc.oldcname IS NOT NULL)
          AND ((nc.oldname <> o.name1 OR nc.oldname IS NULL)
               OR (nc.oldcname <> o.cname OR nc.oldcname IS NULL))
          AND nc.datechanged >= (CURRENT_DATE - INTERVAL '30 days')
        ORDER BY {ob}
    """)

    return render_template('dbpub/namechange_hk.html',
                         changes_data=changes_data,
                         sort_param=sort_param)




@bp.route('/namechangeHKlisted.asp')
def namechange_hk_listed():
    """
    Name changes for HK-listed companies

    Shows all name changes for companies ever listed in Hong Kong
    """
    sort_param = request.args.get('sort', 'datdn')

    # Sort order mapping
    sort_mappings = {
        'oldup': 'oldname, datechanged',
        'olddn': 'oldname DESC, datechanged DESC',
        'datup': 'datechanged, name1',
        'datdn': 'datechanged DESC, name1',
        'newup': 'name1, datechanged DESC',
        'newdn': 'name1 DESC, datechanged'
    }
    ob = sort_mappings.get(sort_param, 'datechanged DESC, name1')

    # Query name changes for listed companies
    changes_data = execute_query(f"""
        SELECT o.personid,
               nc.datechanged,
               nc.oldname,
               nc.oldcname,
               o.name1,
               o.cname
        FROM enigma.namechanges nc
        JOIN enigma.organisations o ON nc.personid = o.personid
        JOIN enigma.listedcoshkever l ON nc.personid = l.issuer
        WHERE (nc.oldname IS NOT NULL OR nc.oldcname IS NOT NULL)
          AND ((nc.oldname <> o.name1 OR nc.oldname IS NULL)
               OR (nc.oldcname <> o.cname OR nc.oldcname IS NULL))
        ORDER BY {ob}
    """)

    return render_template('dbpub/namechange_hk_listed.html',
                         changes_data=changes_data,
                         sort_param=sort_param)


# Directors stats


@bp.route('/DirsPerListcoHKdstn.asp')
def dirs_per_listco_hk():
    """
    Distribution of directors per HK-listed company - port of DirsPerListcoHKdstn.asp
    Shows how many companies have 1, 2, 3... directors on their boards

    Query params:
    - d: snapshot date (defaults to today)

    Tables used: enigma.directorships, enigma.issue, enigma.stocklistings, enigma.people, enigma.positions
    """
    from flask import current_app
    from webbsite.asp_helpers import get_str

    d = get_str('d', str(date.today()))
    try:
        snapshot_date = date.fromisoformat(d)
    except ValueError:
        snapshot_date = date.today()

    snap_year = snapshot_date.year

    # Query distribution of directors per company - matches HKdirsDistnCos stored procedure
    distribution = []
    total_cos = 0
    try:
        # First get the total count of listed companies at the snapshot date
        total_cos_result = execute_query("""
            SELECT COUNT(DISTINCT i.issuer) AS cnt
            FROM enigma.issue i
            JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
            WHERE sl.stockexid IN (1, 20)
              AND i.typeid NOT IN (1, 2, 40, 41, 46)
              AND (sl.firsttradedate IS NULL OR sl.firsttradedate <= %s)
              AND (sl.delistdate IS NULL OR sl.delistdate > %s)
        """, (snapshot_date, snapshot_date))
        total_cos = total_cos_result[0]['cnt'] if total_cos_result else 0

        # Get distribution of directors per company
        distribution = execute_query("""
            WITH listed_issuers AS (
                SELECT DISTINCT i.issuer
                FROM enigma.issue i
                JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
                WHERE sl.stockexid IN (1, 20)
                  AND i.typeid NOT IN (1, 2, 40, 41, 46)
                  AND (sl.firsttradedate IS NULL OR sl.firsttradedate <= %s)
                  AND (sl.delistdate IS NULL OR sl.delistdate > %s)
            ),
            company_director_counts AS (
                SELECT
                    li.issuer,
                    COUNT(DISTINCT d.director) AS numSeats,
                    SUM(CASE WHEN p.sex = 'F' THEN 1 ELSE 0 END) AS female,
                    AVG(p.yob) AS yob1
                FROM listed_issuers li
                JOIN enigma.directorships d ON li.issuer = d.company
                JOIN enigma.positions pos ON d.positionid = pos.positionid
                JOIN enigma.people p ON d.director = p.personid
                WHERE pos.rank = 1
                  AND (d.apptdate IS NULL OR d.apptdate <= %s)
                  AND (d.resdate IS NULL OR d.resdate > %s)
                GROUP BY li.issuer
            )
            SELECT
                numSeats,
                COUNT(issuer) AS numCos,
                SUM(female) AS femSeats,
                AVG(yob1) AS yob2
            FROM company_director_counts
            GROUP BY numSeats
            ORDER BY numSeats DESC
        """, (snapshot_date, snapshot_date, snapshot_date, snapshot_date))

    except Exception as ex:
        current_app.logger.error(f"Error querying dirs per listco distribution: {ex}", exc_info=True)

    return render_template('dbpub/dirs_per_listco_hk.html',
                         distribution=distribution,
                         d=snapshot_date.isoformat(),
                         snap_year=snap_year,
                         total_cos=total_cos)




@bp.route('/DirsHKDistnPeople.asp')
def dirs_hk_distn_people():
    """
    Distribution of people by number of HK-listed directorships
    Port of DirsHKDistnPeople.asp
    Query params: d (snapshot date)
    """
    from datetime import date
    from webbsite.asp_helpers import get_str, mobile

    # Get snapshot date with validation
    d_str = get_str('d', '')
    if d_str:
        try:
            d = date.fromisoformat(d_str)
            if d < date(1990, 1, 1):
                d = date(1990, 1, 1)
            elif d > date.today():
                d = date.today()
            d_str = d.isoformat()
        except ValueError:
            d = date.today()
            d_str = d.isoformat()
    else:
        d = date.today()
        d_str = d.isoformat()

    # Port of HKdirsDistnPpl stored procedure
    sql = """
        SELECT
            numSeats,
            COUNT(director) AS numPeople,
            SUM(CASE WHEN sex = 'F' THEN 1 ELSE 0 END) AS female
        FROM (
            SELECT
                director,
                COUNT(issuer) AS numSeats,
                sex
            FROM (
                SELECT DISTINCT issuer
                FROM enigma.issue
                JOIN enigma.stocklistings ON issue.id1 = stocklistings.issueid
                WHERE stockexid IN (1, 20)
                  AND typeid NOT IN (1, 2, 40, 41, 46)
                  AND (firsttradedate IS NULL OR firsttradedate <= %s)
                  AND (delistdate IS NULL OR delistdate > %s)
            ) AS t1
            JOIN enigma.directorships ON t1.issuer = directorships.company
            JOIN enigma.people ON directorships.director = people.personid
            JOIN enigma.positions ON directorships.positionid = positions.positionid
            WHERE positions.rank = 1
              AND (apptdate IS NULL OR apptdate <= %s)
              AND (resdate IS NULL OR resdate > %s)
            GROUP BY director, sex
        ) AS t3
        GROUP BY numSeats
        ORDER BY numSeats DESC
    """

    try:
        distribution = execute_query(sql, (d_str, d_str, d_str, d_str))

        # Calculate cumulative values and statistics
        cum_seats = 0
        cum_female_seats = 0
        cum_people = 0
        cum_female = 0

        for row in distribution:
            num_seats = row['numseats']
            num_people = row['numpeople']
            female = row['female']

            cum_seats += num_seats * num_people
            cum_female_seats += num_seats * female
            cum_people += num_people
            cum_female += female

            # Add cumulative values to row
            row['cum_seats'] = cum_seats
            row['cum_female_seats'] = cum_female_seats
            row['cum_people'] = cum_people
            row['cum_female'] = cum_female

        # Calculate statistics
        stats = {}
        if cum_people > 0:
            stats['avg_seats'] = cum_seats / cum_people
            stats['pct_female_dirs'] = (cum_female / cum_people) * 100
        else:
            stats['avg_seats'] = 0
            stats['pct_female_dirs'] = 0

        if cum_female > 0:
            stats['avg_female_seats'] = cum_female_seats / cum_female
        else:
            stats['avg_female_seats'] = 0

        if cum_seats > 0:
            stats['pct_female_seats'] = (cum_female_seats / cum_seats) * 100
        else:
            stats['pct_female_seats'] = 0

        return render_template('dbpub/dirs_hk_distn_people.html',
                             title=f"Distribution of HK-listed directorships per person at {d_str}",
                             distribution=distribution,
                             stats=stats,
                             d=d_str,
                             mobile_alert=mobile(3))
    except Exception as e:
        current_app.logger.error(f"Error in dirs_hk_distn_people: {e}")
        abort(500)




@bp.route('/DirsHKAgeDistn.asp')
def dirs_hk_age_distn():
    """
    Distribution of HK-listed directors by age
    Port of DirsHKAgeDistn.asp
    Query params: d (snapshot date), sort
    """
    from datetime import date
    from webbsite.asp_helpers import get_str, mobile, sl

    # Get snapshot date with validation
    d_str = get_str('d', '')
    if d_str:
        try:
            d = date.fromisoformat(d_str)
            if d < date(1990, 1, 1):
                d = date(1990, 1, 1)
            elif d > date.today():
                d = date.today()
            d_str = d.isoformat()
        except ValueError:
            d = date.today()
            d_str = d.isoformat()
    else:
        d = date.today()
        d_str = d.isoformat()

    year_now = d.year

    # Get sort parameter
    sort_param = get_str('sort', 'YOBup')
    order_by_map = {
        'YOBdn': 'YOB DESC',
        'YOBup': 'YOB'
    }
    order_by = order_by_map.get(sort_param, order_by_map['YOBup'])

    # Port of HKdirsAgeDistn stored procedure
    sql = f"""
        SELECT
            YOB,
            COUNT(director) AS dirs,
            SUM(numCos) AS seats,
            SUM(CASE WHEN sex = 'F' THEN 1 ELSE 0 END) AS female,
            SUM(CASE WHEN sex = 'F' THEN numCos ELSE 0 END) AS femSeats
        FROM (
            SELECT
                director,
                COUNT(company) AS numCos,
                YOB,
                sex
            FROM (
                SELECT DISTINCT issuer
                FROM enigma.issue
                JOIN enigma.stocklistings ON issue.id1 = stocklistings.issueid
                WHERE stockexid IN (1, 20)
                  AND typeid NOT IN (1, 2, 40, 41, 46)
                  AND (firsttradedate IS NULL OR firsttradedate <= %s)
                  AND (delistdate IS NULL OR delistdate > %s)
            ) AS t1
            JOIN enigma.directorships ON t1.issuer = directorships.company
            JOIN enigma.people ON directorships.director = people.personid
            JOIN enigma.positions ON directorships.positionid = positions.positionid
            WHERE positions.rank = 1
              AND (apptdate IS NULL OR apptdate <= %s)
              AND (resdate IS NULL OR resdate > %s)
            GROUP BY director, YOB, sex
        ) AS t3
        GROUP BY YOB
        ORDER BY {order_by}
    """

    try:
        distribution = execute_query(sql, (d_str, d_str, d_str, d_str))

        # Calculate cumulative values and age statistics
        cum_seats = 0
        cum_dirs = 0
        cum_female = 0
        cum_female_seats = 0
        total_age = 0
        female_age = 0
        unk_dirs = 0
        unk_female = 0

        for row in distribution:
            yob = row['yob']
            seats = int(row['seats'])
            dirs = int(row['dirs'])
            female = int(row['female'])
            fem_seats = int(row['femseats'])

            if yob is None:
                row['age'] = '?'
                unk_dirs = dirs
                unk_female = female
            else:
                age = year_now - yob
                row['age'] = age
                total_age += dirs * age
                female_age += female * age

            cum_seats += seats
            cum_dirs += dirs
            cum_female += female
            cum_female_seats += fem_seats

            # Add cumulative values to row
            row['cum_dirs'] = cum_dirs
            row['cum_seats'] = cum_seats
            row['cum_female'] = cum_female
            row['cum_female_seats'] = cum_female_seats

        # Calculate summary statistics
        stats = {
            'cum_dirs': cum_dirs,
            'cum_seats': cum_seats,
            'cum_female': cum_female,
            'cum_female_seats': cum_female_seats,
            'male_dirs': cum_dirs - cum_female,
            'male_seats': cum_seats - cum_female_seats,
        }

        if cum_dirs > 0:
            stats['avg_seats_all'] = cum_seats / cum_dirs
        else:
            stats['avg_seats_all'] = 0

        if cum_dirs - cum_female > 0:
            stats['avg_seats_male'] = stats['male_seats'] / stats['male_dirs']
        else:
            stats['avg_seats_male'] = 0

        if cum_female > 0:
            stats['avg_seats_female'] = cum_female_seats / cum_female
        else:
            stats['avg_seats_female'] = 0

        # Average age calculations (excluding unknowns)
        if cum_dirs - unk_dirs > 0:
            stats['avg_age_all'] = total_age / (cum_dirs - unk_dirs)
        else:
            stats['avg_age_all'] = 0

        if stats['male_dirs'] - unk_dirs + unk_female > 0:
            stats['avg_age_male'] = (total_age - female_age) / (stats['male_dirs'] - unk_dirs + unk_female)
        else:
            stats['avg_age_male'] = 0

        if cum_female - unk_female > 0:
            stats['avg_age_female'] = female_age / (cum_female - unk_female)
        else:
            stats['avg_age_female'] = 0

        # Build sort links
        base_url = f'/dbpub/DirsHKAgeDistn.asp?d={d_str}'
        sort_links = {
            'yob_age': sl(f'Year<br>of<br>birth', 'YOBup', 'YOBdn', sort_param, base_url)
        }

        return render_template('dbpub/dirs_hk_age_distn.html',
                             title="Distribution of HK-listed directors by age",
                             distribution=distribution,
                             stats=stats,
                             year_now=year_now,
                             d=d_str,
                             sort=sort_param,
                             sort_links=sort_links,
                             mobile_alert=mobile(3))
    except Exception as e:
        current_app.logger.error(f"Error in dirs_hk_age_distn: {e}")
        abort(500)




@bp.route('/HKdirsTypeSex.asp')
def hk_dirs_type_sex():
    """
    HK-listed directorships by type and gender
    Port of HKdirsTypeSex.asp
    Query params: d (snapshot date)
    """
    from datetime import date
    from webbsite.asp_helpers import get_str

    # Get snapshot date with validation
    d_str = get_str('d', '')
    if d_str:
        try:
            d = date.fromisoformat(d_str)
            if d < date(1990, 1, 1):
                d = date(1990, 1, 1)
            elif d > date.today():
                d = date.today()
            d_str = d.isoformat()
        except ValueError:
            d = date.today()
            d_str = d.isoformat()
    else:
        d = date.today()
        d_str = d.isoformat()

    # Port of HKdirsTypeSex stored procedure
    sql = """
        SELECT
            sex,
            SUM(dirs) AS seats,
            SUM(NED) AS NEDs,
            SUM(INED) AS INEDs
        FROM (
            SELECT
                COUNT(director) AS dirs,
                issuer,
                sex,
                SUM(CASE WHEN status = 2 THEN 1 ELSE 0 END) AS NED,
                SUM(CASE WHEN status = 3 THEN 1 ELSE 0 END) AS INED
            FROM (
                SELECT DISTINCT issuer
                FROM enigma.issue
                JOIN enigma.stocklistings ON issue.id1 = stocklistings.issueid
                WHERE stockexid IN (1, 20)
                  AND typeid NOT IN (1, 2, 40, 41, 46)
                  AND (firsttradedate IS NULL OR firsttradedate <= %s)
                  AND (delistdate IS NULL OR delistdate > %s)
            ) AS t1
            JOIN enigma.directorships ON t1.issuer = directorships.company
            JOIN enigma.people ON directorships.director = people.personid
            JOIN enigma.positions ON directorships.positionid = positions.positionid
            JOIN enigma.status ON positions.status = status.statusid
            WHERE positions.rank = 1
              AND (apptdate IS NULL OR apptdate <= %s)
              AND (resdate IS NULL OR resdate > %s)
            GROUP BY issuer, sex
        ) AS t3
        GROUP BY sex
        ORDER BY sex
    """

    try:
        results = execute_query(sql, (d_str, d_str, d_str, d_str))

        # Organize results by sex
        data = {'F': {}, 'M': {}, 'U': {}}
        for row in results:
            sex = row['sex'] if row['sex'] else 'U'
            data[sex] = {
                'seats': int(row['seats']),
                'neds': int(row['neds']),
                'ineds': int(row['ineds'])
            }

        # Fill in missing sex categories with zeros
        for sex in ['F', 'M', 'U']:
            if sex not in data or not data[sex]:
                data[sex] = {'seats': 0, 'neds': 0, 'ineds': 0}

        # Calculate EDs (Executive Directors)
        for sex in data:
            data[sex]['eds'] = data[sex]['seats'] - data[sex]['neds'] - data[sex]['ineds']

        # Calculate totals
        totals = {
            'seats': sum(d['seats'] for d in data.values()),
            'eds': sum(d['eds'] for d in data.values()),
            'neds': sum(d['neds'] for d in data.values()),
            'ineds': sum(d['ineds'] for d in data.values())
        }

        return render_template('dbpub/hk_dirs_type_sex.html',
                             title=f"HK-listed directorships by type and gender at {d_str}",
                             data=data,
                             totals=totals,
                             d=d_str)
    except Exception as e:
        current_app.logger.error(f"Error in hk_dirs_type_sex: {e}")
        abort(500)


# Pay stats


@bp.route('/pay.asp')
def pay():
    """
    Director remuneration details by company and year

    Query params:
    - p: organization personID
    - d: record date (financial year end)
    - sort: fee/sal/bon/ret/sha/tot/nam/pos

    Tables used: enigma.pay, enigma.people, enigma.directorships, enigma.documents
    """
    from datetime import date as dt

    person_id = get_int('p', 0)
    d = request.args.get('d', '')
    sort_param = request.args.get('sort', 'nam')

    # Get organization name
    org_name = ''
    if person_id:
        org_result = execute_query("""
            SELECT name1 FROM enigma.organisations WHERE personID = %s
        """, (person_id,))
        if org_result:
            org_name = org_result[0]['name1']

    # If no date provided or invalid, get latest pay record date
    found = False
    rep_url = ''
    if d and person_id:
        # Check if we have a pay record for this date
        doc_result = execute_query("""
            SELECT d.url, d.paypage
            FROM enigma.documents d
            JOIN enigma.repfilings r ON d.repid = r.id
            WHERE d.orgid = %s
              AND d.doctypeid = 0
              AND d.recorddate = %s
              AND d.pay
        """, (person_id, d))
        if doc_result:
            rep_url = f"https://www.hkexnews.hk/listedco/listconews/{doc_result[0]['url']}#page={doc_result[0]['paypage']}"
            found = True

    if not found or not d:
        # Get most recent pay record date
        date_result = execute_query("""
            SELECT MAX(recorddate) AS d
            FROM enigma.documents
            WHERE doctypeid = 0 AND pay AND orgid = %s
        """, (person_id,))
        if date_result and date_result[0]['d']:
            d = str(date_result[0]['d'])
            found = True

    # Build order by
    sort_map = {
        'fee': 'fees DESC, dirname',
        'sal': 'salary DESC, dirname',
        'bon': 'bonus DESC, dirname',
        'ret': 'retire DESC, dirname',
        'sha': 'share DESC, dirname',
        'tot': 'total DESC, dirname',
        'pos': 'posshort, dirname',
        'nam': 'dirname'
    }
    ob = sort_map.get(sort_param, 'dirname')

    # Query pay records
    pay_records = []
    if person_id and d and found:
        pay_records = execute_query(f"""
            SELECT
                pay.pplid,
                CONCAT_WS(' ', COALESCE(p.name1, ''), COALESCE(p.name2, '')) AS dirname,
                (SELECT pos.posshort
                 FROM enigma.directorships d
                 JOIN enigma.positions pos ON d.positionid = pos.positionid
                 WHERE d.director = pay.pplid
                   AND d.company = %s
                   AND pos.rank = pay.prank
                   AND (d.from IS NULL OR d.from <= pay.d)
                 ORDER BY d.from DESC
                 LIMIT 1) AS posshort,
                pay.fees,
                pay.salary,
                pay.bonus,
                pay.retire,
                pay.share,
                pay.total,
                pay.prank,
                c.currency
            FROM enigma.pay pay
            JOIN enigma.people p ON pay.pplid = p.personid
            JOIN enigma.currencies c ON pay.currid = c.id
            WHERE pay.orgid = %s
              AND pay.d = %s
            ORDER BY c.currency, pay.prank, {ob}
        """, (person_id, person_id, d))

    return render_template('dbpub/pay.html',
                         person_id=person_id,
                         org_name=org_name,
                         d=d,
                         sort=sort_param,
                         rep_url=rep_url,
                         found=found,
                         pay_records=pay_records)




@bp.route('/payleague.asp')
def payleague():
    """
    HK-listed directors pay league table
    Shows director pay aggregated across all companies
    Query params: y (year), c (currency), i (INED only), s (exclude share-based), sort
    """
    from webbsite.asp_helpers import get_int, get_bool, get_str

    # Constants
    MAX_YEAR = 2024
    LIMIT = 1000

    # Parameters
    year = get_int('y', MAX_YEAR)
    if year < 2005:
        year = 2005
    elif year > MAX_YEAR:
        year = MAX_YEAR

    currency = get_int('c', 0)  # 0 = HKD
    ined_only = get_bool('i')  # Only INED positions
    exclude_share = get_bool('s')  # Exclude share-based pay from total
    sort_param = get_str('sort', 'totdn')

    # Get available currencies
    curr_query = """
        SELECT DISTINCT curr1 as id, currency
        FROM enigma.currpair p
        JOIN enigma.currencies c ON p.curr1 = c.id
        UNION SELECT 18, 'MOP'
        UNION SELECT 0, 'HKD'
        ORDER BY currency
    """
    currencies = execute_query(curr_query)

    # Count companies with missing pay data
    todo_query = """
        SELECT COUNT(DISTINCT p.orgid)
        FROM enigma.pay p
        JOIN enigma.documents d ON p.orgid = d.orgid AND p.d = d.recorddate
        WHERE d.doctypeid = 0
          AND NOT d.pay
          AND EXTRACT(YEAR FROM p.d) = %s
    """
    todo_count = execute_query(todo_query, (year,))
    todo = todo_count[0]['count'] if todo_count else 0

    # Sort mapping
    sort_map = {
        'feedn': 'fee DESC, name',
        'feeup': 'fee, name',
        'saldn': 'sal DESC, name',
        'salup': 'sal, name',
        'bondn': 'bon DESC, name',
        'bonup': 'bon, name',
        'retdn': 'ret DESC, name',
        'retup': 'ret, name',
        'shadn': 'sha DESC, name',
        'shaup': 'sha, name',
        'totdn': 'tot DESC, name',
        'totup': 'tot, name',
        'cntdn': 'c DESC, name',
        'cntup': 'c, name'
    }
    order_by = sort_map.get(sort_param, 'tot DESC, name')

    # Total calculation - optionally exclude share-based
    total_calc = "total - COALESCE(share, 0)" if exclude_share else "total"

    # Build query
    if ined_only:
        # For INED only - need to check position status at time of pay record
        sql = f"""
            SELECT
                pplid,
                CONCAT(name1, COALESCE(', ' || name2, ''), COALESCE(' ' || cname, '')) as name,
                COALESCE(ROUND(SUM(f * fee)::numeric)::integer, 0) as fee,
                COALESCE(ROUND(SUM(f * sal)::numeric)::integer, 0) as sal,
                COALESCE(ROUND(SUM(f * bon)::numeric)::integer, 0) as bon,
                COALESCE(ROUND(SUM(f * ret)::numeric)::integer, 0) as ret,
                COALESCE(ROUND(SUM(f * sha)::numeric)::integer, 0) as sha,
                COALESCE(ROUND(SUM(f * tot)::numeric)::integer, 0) as tot,
                COUNT(*) as c
            FROM (
                SELECT
                    orgid, pplid, currid, p.d,
                    fees as fee, salary as sal, bonus as bon,
                    retire as ret, share as sha, {total_calc} as tot,
                    (
                        SELECT status
                        FROM enigma.directorships d
                        JOIN enigma.positions pn ON d.positionid = pn.positionid
                        WHERE d.director = p.pplid
                          AND d.company = p.orgid
                          AND pn.rank = 1
                          AND (d.apptdate IS NULL OR d.apptdate <= p.d)
                          AND (d.resdate IS NULL OR d.resdate > COALESCE(
                              (SELECT recorddate FROM enigma.documents
                               WHERE doctypeid = 0 AND orgid = p.orgid
                                 AND recorddate < p.d
                               ORDER BY recorddate DESC LIMIT 1),
                              p.d - INTERVAL '1 year'
                          ))
                        ORDER BY d.apptdate DESC LIMIT 1
                    ) as stat
                FROM enigma.pay p
                WHERE EXTRACT(YEAR FROM p.d) = %s AND p.prank = 1
            ) t
            JOIN enigma.documents d ON t.orgid = d.orgid
                AND d.doctypeid = 0
                AND t.d = d.recorddate
            JOIN enigma.payfx f ON t.d = f.d
                AND t.currid = f.repcurr
                AND f.dispcurr = %s
            JOIN enigma.people pl ON t.pplid = pl.personid
            WHERE stat = 3 AND d.pay
            GROUP BY pplid, name
            ORDER BY {order_by}
            LIMIT {LIMIT}
        """
        params = (year, currency)
    else:
        # All directors
        sql = f"""
            SELECT
                pplid,
                CONCAT(name1, COALESCE(', ' || name2, ''), COALESCE(' ' || cname, '')) as name,
                COALESCE(ROUND(SUM(f * fees)::numeric)::integer, 0) as fee,
                COALESCE(ROUND(SUM(f * salary)::numeric)::integer, 0) as sal,
                COALESCE(ROUND(SUM(f * bonus)::numeric)::integer, 0) as bon,
                COALESCE(ROUND(SUM(f * retire)::numeric)::integer, 0) as ret,
                COALESCE(ROUND(SUM(f * share)::numeric)::integer, 0) as sha,
                COALESCE(ROUND(SUM(f * {total_calc})::numeric)::integer, 0) as tot,
                COUNT(*) as c
            FROM enigma.pay p
            JOIN enigma.documents d ON p.orgid = d.orgid
                AND d.doctypeid = 0
                AND p.d = d.recorddate
            JOIN enigma.payfx f ON p.d = f.d
                AND p.currid = f.repcurr
                AND f.dispcurr = %s
            JOIN enigma.people pl ON p.pplid = pl.personid
            WHERE EXTRACT(YEAR FROM p.d) = %s
              AND p.prank = 1
              AND d.pay
            GROUP BY pplid, name
            ORDER BY {order_by}
            LIMIT {LIMIT}
        """
        params = (currency, year)

    try:
        league = execute_query(sql, params)
    except Exception as ex:
        current_app.logger.error(f"Error in payleague.asp: {ex}", exc_info=True)
        league = []

    return render_template('dbpub/payleague.html',
                         year=year,
                         currency=currency,
                         currencies=currencies,
                         ined_only=ined_only,
                         exclude_share=exclude_share,
                         sort=sort_param,
                         league=league,
                         todo=todo,
                         max_year=MAX_YEAR)




@bp.route('/payleagueorg.asp')
def payleague_org():
    """
    HK-listed board pay league table (by company)
    Shows total pay per company aggregated across all directors
    Query params: y (year), c (currency), i (INED only), s (exclude share-based), sort
    """
    from webbsite.asp_helpers import get_int, get_bool, get_str

    # Constants
    MAX_YEAR = 2024
    LIMIT = 10000

    # Parameters
    year = get_int('y', MAX_YEAR)
    if year < 2005:
        year = 2005
    elif year > MAX_YEAR:
        year = MAX_YEAR

    currency = get_int('c', 0)  # 0 = HKD
    ined_only = get_bool('i')  # Only INED positions
    exclude_share = get_bool('s')  # Exclude share-based pay from total
    sort_param = get_str('sort', 'totdn')

    # Get available currencies
    curr_query = """
        SELECT DISTINCT curr1 as id, currency
        FROM enigma.currpair p
        JOIN enigma.currencies c ON p.curr1 = c.id
        UNION SELECT 18, 'MOP'
        UNION SELECT 0, 'HKD'
        ORDER BY currency
    """
    currencies = execute_query(curr_query)

    # Count companies with missing pay data
    todo_query = """
        SELECT COUNT(DISTINCT p.orgid)
        FROM enigma.pay p
        JOIN enigma.documents d ON p.orgid = d.orgid AND p.d = d.recorddate
        WHERE d.doctypeid = 0
          AND NOT d.pay
          AND EXTRACT(YEAR FROM p.d) = %s
    """
    todo_count = execute_query(todo_query, (year,))
    todo = todo_count[0]['count'] if todo_count else 0

    # Sort mapping
    sort_map = {
        'feedn': 'fee DESC, name',
        'feeup': 'fee, name',
        'saldn': 'sal DESC, name',
        'salup': 'sal, name',
        'bondn': 'bon DESC, name',
        'bonup': 'bon, name',
        'retdn': 'ret DESC, name',
        'retup': 'ret, name',
        'shadn': 'sha DESC, name',
        'shaup': 'sha, name',
        'totdn': 'tot DESC, name',
        'totup': 'tot, name'
    }
    order_by = sort_map.get(sort_param, 'tot DESC, name')

    # Total calculation - optionally exclude share-based
    total_calc = "total - COALESCE(share, 0)" if exclude_share else "total"

    # Build query
    if ined_only:
        # For INED only - need to check position status at time of pay record
        sql = f"""
            SELECT
                t.orgid,
                name1 as name,
                COALESCE(ROUND(SUM(f * fee)::numeric)::integer, 0) as fee,
                COALESCE(ROUND(SUM(f * sal)::numeric)::integer, 0) as sal,
                COALESCE(ROUND(SUM(f * bon)::numeric)::integer, 0) as bon,
                COALESCE(ROUND(SUM(f * ret)::numeric)::integer, 0) as ret,
                COALESCE(ROUND(SUM(f * sha)::numeric)::integer, 0) as sha,
                COALESCE(ROUND(SUM(f * tot)::numeric)::integer, 0) as tot,
                t.d
            FROM (
                SELECT
                    orgid, pplid, currid, p.d,
                    fees as fee, salary as sal, bonus as bon,
                    retire as ret, share as sha, {total_calc} as tot,
                    (
                        SELECT status
                        FROM enigma.directorships d
                        JOIN enigma.positions pn ON d.positionid = pn.positionid
                        WHERE d.director = p.pplid
                          AND d.company = p.orgid
                          AND pn.rank = 1
                          AND (d.apptdate IS NULL OR d.apptdate <= p.d)
                          AND (d.resdate IS NULL OR d.resdate > COALESCE(
                              (SELECT recorddate FROM enigma.documents
                               WHERE doctypeid = 0 AND orgid = p.orgid
                                 AND recorddate < p.d
                               ORDER BY recorddate DESC LIMIT 1),
                              p.d - INTERVAL '1 year'
                          ))
                        ORDER BY d.apptdate DESC LIMIT 1
                    ) as stat
                FROM enigma.pay p
                WHERE EXTRACT(YEAR FROM p.d) = %s AND p.prank = 1
            ) t
            JOIN enigma.documents d ON t.orgid = d.orgid
                AND d.doctypeid = 0
                AND t.d = d.recorddate
            JOIN enigma.payfx f ON t.d = f.d
                AND t.currid = f.repcurr
                AND f.dispcurr = %s
            JOIN enigma.organisations o ON t.orgid = o.personid
            WHERE stat = 3 AND d.pay
            GROUP BY t.orgid, name, t.d
            ORDER BY {order_by}
            LIMIT {LIMIT}
        """
        params = (year, currency)
    else:
        # All directors
        sql = f"""
            SELECT
                p.orgid,
                name1 as name,
                COALESCE(ROUND(SUM(f * fees)::numeric)::integer, 0) as fee,
                COALESCE(ROUND(SUM(f * salary)::numeric)::integer, 0) as sal,
                COALESCE(ROUND(SUM(f * bonus)::numeric)::integer, 0) as bon,
                COALESCE(ROUND(SUM(f * retire)::numeric)::integer, 0) as ret,
                COALESCE(ROUND(SUM(f * share)::numeric)::integer, 0) as sha,
                COALESCE(ROUND(SUM(f * {total_calc})::numeric)::integer, 0) as tot,
                p.d
            FROM enigma.pay p
            JOIN enigma.documents d ON p.orgid = d.orgid
                AND d.doctypeid = 0
                AND p.d = d.recorddate
            JOIN enigma.payfx f ON p.d = f.d
                AND p.currid = f.repcurr
                AND f.dispcurr = %s
            JOIN enigma.organisations o ON p.orgid = o.personid
            WHERE EXTRACT(YEAR FROM p.d) = %s
              AND p.prank = 1
              AND d.pay
            GROUP BY p.orgid, name, p.d
            ORDER BY {order_by}
            LIMIT {LIMIT}
        """
        params = (currency, year)

    try:
        league = execute_query(sql, params)
    except Exception as ex:
        current_app.logger.error(f"Error in payleagueorg.asp: {ex}", exc_info=True)
        league = []

    return render_template('dbpub/payleague_org.html',
                         year=year,
                         currency=currency,
                         currencies=currencies,
                         ined_only=ined_only,
                         exclude_share=exclude_share,
                         sort=sort_param,
                         league=league,
                         todo=todo,
                         max_year=MAX_YEAR)


# Public housing


@bp.route('/prhestates.asp')
def prh_estates():
    """
    Hong Kong public rental housing estates in a district
    Port of dbpub/prhestates.asp

    Query params:
    - dis: district ID (1-18, default=1)
    - sort: en/end/cn/cnd/tota/totad/a/ad/c/cd

    Tables used: enigma.prhestate, enigma.prhblock, enigma.prhflat, enigma.hkdistrict
    """
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from flask import render_template, request

    dis = get_int('dis', 1)
    if dis < 1 or dis > 18:
        dis = 1

    sort_param = request.args.get('sort', 'en')

    # Map sort parameters to ORDER BY clauses
    order_by_map = {
        'en': 'en',
        'end': 'en DESC',
        'cn': 'cn',
        'cnd': 'cn DESC',
        'tota': 'tota',
        'totad': 'tota DESC',
        'a': 'a',
        'ad': 'a DESC',
        'c': 'c, en',
        'cd': 'c DESC, en'
    }
    order_by = order_by_map.get(sort_param, 'en')

    # Get district name
    district_info = execute_query("""
        SELECT CONCAT(en, ' ', cn) as name FROM enigma.hkdistrict WHERE id = %s
    """, (dis,))
    dis_name = district_info[0]['name'] if district_info else ''

    # Query estates in district with aggregated flat data
    estates = execute_query(f"""
        SELECT
            e.id,
            e.en,
            e.cn,
            COUNT(*) as c,
            SUM(f.area) as tota,
            CASE WHEN COUNT(*) > 0 THEN SUM(f.area) / COUNT(*) ELSE 0 END as a,
            SUM(f.elevator) as elev,
            e.latitude,
            e.longitude
        FROM enigma.prhflat f
        JOIN enigma.prhblock b ON f.blockid = b.id
        JOIN enigma.prhestate e ON b.estateid = e.id
        WHERE e.district = %s
          AND f.lastseen >= (SELECT DATE(MAX(lastseen)) FROM enigma.prhflat)
        GROUP BY e.id, e.en, e.cn, e.latitude, e.longitude
        ORDER BY {order_by}
    """, (dis,))

    return render_template('dbpub/prh_estates.html',
                         dis=dis,
                         dis_name=dis_name,
                         sort_param=sort_param,
                         estates=estates)




@bp.route('/prhblocks.asp')
def prh_blocks():
    """
    Hong Kong public rental housing blocks in an estate
    Port of dbpub/prhblocks.asp

    Query params:
    - e: estate ID (required)
    - sort: en/end/cn/cnd/tota/totad/a/ad/c/cd

    Tables used: enigma.prhblock, enigma.prhestate, enigma.prhflat, enigma.hkdistrict
    """
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from flask import render_template, request

    estate_id = get_int('e', 1)
    sort_param = request.args.get('sort', 'en')

    # Map sort parameters to ORDER BY clauses
    order_by_map = {
        'en': 'en',
        'end': 'en DESC',
        'cn': 'cn',
        'cnd': 'cn DESC',
        'tota': 'tota',
        'totad': 'tota DESC',
        'a': 'a',
        'ad': 'a DESC',
        'c': 'c, en',
        'cd': 'c DESC, en'
    }
    order_by = order_by_map.get(sort_param, 'en')

    # Get estate and district info
    estate_info = execute_query("""
        SELECT
            d.id as dis,
            CONCAT(e.en, ' ', e.cn) as est_name,
            CONCAT(d.en, ' ', d.cn) as dis_name,
            e.latitude,
            e.longitude
        FROM enigma.prhestate e
        JOIN enigma.hkdistrict d ON e.district = d.id
        WHERE e.id = %s
    """, (estate_id,))

    if estate_info:
        dis = estate_info[0]['dis']
        est_name = estate_info[0]['est_name']
        dis_name = estate_info[0]['dis_name']
        coords = f"{estate_info[0]['latitude']},{estate_info[0]['longitude']}"
    else:
        dis = 1
        est_name = ''
        dis_name = ''
        coords = ''

    # Query blocks in estate with aggregated flat data
    blocks = execute_query(f"""
        SELECT
            b.id,
            b.en,
            b.cn,
            COUNT(*) as c,
            SUM(f.area) as tota,
            CASE WHEN COUNT(*) > 0 THEN SUM(f.area) / COUNT(*) ELSE 0 END as a,
            SUM(f.elevator) as elev
        FROM enigma.prhflat f
        JOIN enigma.prhblock b ON f.blockid = b.id
        WHERE b.estateid = %s
          AND f.lastseen >= (SELECT DATE(MAX(lastseen)) FROM enigma.prhflat)
        GROUP BY b.id, b.en, b.cn
        ORDER BY {order_by}
    """, (estate_id,))

    return render_template('dbpub/prh_blocks.html',
                         estate_id=estate_id,
                         dis=dis,
                         est_name=est_name,
                         dis_name=dis_name,
                         coords=coords,
                         sort_param=sort_param,
                         blocks=blocks)


# Government accounts


@bp.route('/govac.asp')
def govac():
    """Government accounts explorer - hierarchical budget data with drill-down"""
    from webbsite.asp_helpers import get_int, get_bool, col_sum, join_row

    # Parameters
    i = get_int('i', 1251)  # govitem ID, default to Consolidated Accounts
    t = get_int('t', 0)     # tree view (alternate classification)
    g = get_bool('g')        # show as % of GDP

    # Get current item details
    item_query = """
        SELECT
            COALESCE(a.parentid, g.parentid) as parentid,
            COALESCE(a.txt, g.txt) as txt,
            g.txt as origtxt,
            g.firstd,
            g.head,
            g.rev,
            g.approved,
            g.h3
        FROM enigma.govitems g
        LEFT JOIN enigma.govadopt a ON g.id = a.govitem AND a.tree = %s
        WHERE g.id = %s
    """
    item_rows = execute_query(item_query, (t, i))

    if not item_rows:
        return "Item not found", 404

    item = item_rows[0]
    parent_id = item['parentid']
    title = item['txt']
    first_d = item['firstd']
    head = item['head']
    origtxt = item['origtxt']
    approved = item['approved']
    h3 = item['h3']
    neg = 1 if item['rev'] else -1  # Revenue is positive, expenditure is negative

    # Build breadcrumbs by traversing up the parent chain
    breadcrumbs = []
    current_parent = parent_id
    while current_parent is not None:
        parent_rows = execute_query("""
            SELECT
                COALESCE(a.parentid, g.parentid) as p,
                COALESCE(a.txt, g.txt) as txt
            FROM enigma.govitems g
            LEFT JOIN enigma.govadopt a ON g.id = a.govitem AND a.tree = %s
            WHERE g.id = %s
        """, (t, current_parent))

        if parent_rows:
            parent = parent_rows[0]
            breadcrumbs.insert(0, {
                'id': current_parent,
                'txt': parent['txt']
            })
            current_parent = parent['p']
        else:
            break

    # Get all fiscal periods (annual data only)
    periods_query = """
        SELECT DISTINCT d::text as d
        FROM enigma.govac
        WHERE ann = true AND act > 0 AND d >= %s
        ORDER BY d
    """
    periods_rows = execute_query(periods_query, (first_d,))
    periods = [row['d'] for row in periods_rows]
    num_periods = len(periods)

    if num_periods == 0:
        return "No data available for this item", 404

    # Get child items (or siblings if this item has no children)
    # Exclude transfers to funds and reimbursements (matches ASP line 98)
    where_clause = " WHERE NOT g.transfer AND NOT g.reimb "

    items_query = """
        SELECT
            g.id,
            COALESCE(a.txt, g.txt) as txt,
            g.head,
            COALESCE(COALESCE(a.short, a.txt), COALESCE(g.short, g.txt)) as short,
            g.rev
        FROM enigma.govitems g
        LEFT JOIN enigma.govadopt a ON g.id = a.govitem AND a.tree = %s
        """ + where_clause + """
        AND COALESCE(a.parentid, g.parentid) = %s
        ORDER BY COALESCE(a.priority, g.priority) DESC, txt
    """
    items_rows = execute_query(items_query, (t, i))

    links = True  # Show drill-down links
    graph_title = title

    if not items_rows:
        # No breakdown - show this item as a sibling view
        links = False
        if parent_id:
            graph_title_rows = execute_query(
                "SELECT txt FROM enigma.govitems WHERE id = %s",
                (parent_id,)
            )
            if graph_title_rows:
                graph_title = graph_title_rows[0]['txt']

        items_rows = execute_query(items_query, (t, i))
        if not items_rows:
            # Still no items, use current item
            items_rows = [item]

    items = items_rows
    num_items = len(items)

    # Build results matrix [period][item]
    # Initialize with zeros
    results = [[0 for _ in range(num_items)] for _ in range(num_periods)]

    # Populate results for each item
    for item_idx, item_row in enumerate(items):
        item_id = item_row['id']
        is_head = item_row['head']

        # Get sum for this item (recursive for heads)
        # Use the PARENT's neg value, not recalculate per item
        item_data = get_govac_sum( item_id, is_head, periods, where_clause, t, neg)

        for period_idx, period in enumerate(periods):
            if period in item_data:
                results[period_idx][item_idx] = item_data[period]

    # Check for discrepancies and add "Others" row if needed
    use_others = False
    direct_values = get_govac_sum( i, False, periods, where_clause, t, neg)

    for period_idx, period in enumerate(periods):
        total = sum(results[period_idx])
        direct_val = direct_values.get(period, 0)

        if direct_val != 0 and direct_val != total:
            if not use_others:
                # Need to add "Others" row
                use_others = True
                num_items += 1
                items.append({
                    'id': i,
                    'txt': 'Others/no breakdown',
                    'short': 'Others/no breakdown',
                    'head': False,
                    'rev': item_row['rev'] if items else False
                })
                # Extend results matrix
                for p_idx in range(num_periods):
                    results[p_idx].append(0)

            # Set "Others" value
            results[period_idx][num_items - 1] = direct_val - total

    # Calculate totals row
    totals = []
    for period_idx in range(num_periods):
        if use_others or direct_values.get(periods[period_idx], 0) != 0:
            totals.append(direct_values.get(periods[period_idx], 0))
        else:
            totals.append(sum(results[period_idx]))

    # Divide by GDP if requested
    y_title = "HK$000"
    y_round = 0
    if g:
        gdp_query = """
            SELECT d::text as d, act
            FROM enigma.govac
            WHERE govitem = 6060 AND d >= %s
            ORDER BY d
        """
        gdp_rows = execute_query(gdp_query, (periods[0],))
        gdp_data = {row['d']: row['act'] for row in gdp_rows}

        # Divide all values by GDP
        for period_idx, period in enumerate(periods):
            if period in gdp_data and gdp_data[period] > 0:
                gdp_val = gdp_data[period]
                for item_idx in range(num_items):
                    results[period_idx][item_idx] = results[period_idx][item_idx] / (10 * gdp_val)
                totals[period_idx] = totals[period_idx] / (10 * gdp_val)

        y_title = "% of GDP"
        y_round = 3

    # Prepare data for template
    # Transpose results for easier template access: results_t[item][period]
    results_transposed = [[results[p][i] for p in range(num_periods)] for i in range(num_items)]

    return render_template('dbpub/govac.html',
        i=i,
        t=t,
        g=g,
        title=title,
        breadcrumbs=breadcrumbs,
        graph_title=graph_title,
        periods=periods,
        items=items,
        results=results,  # [period][item]
        results_t=results_transposed,  # [item][period] for join_row
        totals=totals,
        num_periods=num_periods,
        num_items=num_items,
        y_title=y_title,
        y_round=y_round,
        links=links,
        approved=approved,
        h3=h3
    )


def get_govac_sum(item_id, is_head, periods, where_clause, tree_id, neg):
    """
    Recursively sum government account values for an item across periods.
    Returns dict: {period: value}
    """
    result = {period: 0 for period in periods}

    if is_head:
        # Sum all non-head children
        non_head_query = """
            SELECT d::text as d, SUM(act * CASE WHEN g.rev THEN 1 ELSE -1 END) as act
            FROM enigma.govac
            JOIN enigma.govitems g ON govitem = g.id
            LEFT JOIN enigma.govadopt a ON g.id = a.govitem AND a.tree = %s
            """ + where_clause + """
            AND NOT g.head
            AND COALESCE(a.parentid, g.parentid) = %s
            GROUP BY d
            ORDER BY d
        """
        rows = execute_query(non_head_query, (tree_id, item_id))

        for row in rows:
            period = row['d']
            if period in result:
                result[period] += int(row['act']) * neg

        # Recursively sum head children
        head_children_query = """
            SELECT g.id
            FROM enigma.govitems g
            LEFT JOIN enigma.govadopt a ON g.id = a.govitem AND a.tree = %s
            """ + where_clause + """
            AND g.head
            AND COALESCE(a.parentid, g.parentid) = %s
        """
        head_children = execute_query(head_children_query, (tree_id, item_id))

        for child in head_children:
            child_data = get_govac_sum(child['id'], True, periods, where_clause, tree_id, neg)
            for period in periods:
                result[period] += child_data.get(period, 0)

        # Also check for direct values on this head item
        # Note: Do NOT apply where_clause filter here (no transfer/reimb check)
        # This matches ASP line 42 which only checks "WHERE govitem=..."
        direct_query = """
            SELECT d::text as d, act * CASE WHEN rev THEN 1 ELSE -1 END as act
            FROM enigma.govac
            JOIN enigma.govitems ON govitem = id
            WHERE govitem = %s
            ORDER BY d
        """
        direct_rows = execute_query(direct_query, (item_id,))

        for row in direct_rows:
            period = row['d']
            if period in result:
                result[period] = int(row['act']) * neg

    else:
        # Not a head - get direct values only
        direct_query = """
            SELECT d::text as d, act * CASE WHEN g.rev THEN 1 ELSE -1 END as act
            FROM enigma.govac
            JOIN enigma.govitems g ON govitem = g.id
            """ + where_clause + """
            AND govitem = %s
            ORDER BY d
        """
        rows = execute_query(direct_query, (item_id,))

        for row in rows:
            period = row['d']
            if period in result:
                result[period] = int(row['act']) * neg

    return result




@bp.route('/govacCSV.asp')
def govac_csv():
    """Government accounts CSV export"""
    # Parameters (same as main govac route)
    i = get_int('i', 1251)
    t = get_int('t', 0)


    # Get current item details
    item_rows = execute_query("""
        SELECT
            COALESCE(a.txt, g.txt) as txt,
            g.firstd,
            g.rev
        FROM enigma.govitems g
        LEFT JOIN enigma.govadopt a ON g.id = a.govitem AND a.tree = %s
        WHERE g.id = %s
    """, (t, i))

    if not item_rows:
        return "Item not found", 404

    item = item_rows[0]
    title = item['txt']
    first_d = item['firstd']
    neg = 1 if item['rev'] else -1

    # Get periods
    periods_rows = execute_query("""
        SELECT DISTINCT d::text as d
        FROM enigma.govac
        WHERE ann = true AND act > 0 AND d >= %s
        ORDER BY d
    """, (first_d,))
    periods = [row['d'] for row in periods_rows]

    if not periods:
        return "No data available", 404

    # Get child items
    # Exclude transfers to funds and reimbursements (matches ASP line 98)
    where_clause = " WHERE NOT g.transfer AND NOT g.reimb "
    items_rows = execute_query("""
        SELECT
            g.id,
            COALESCE(a.txt, g.txt) as txt,
            g.head,
            g.rev
        FROM enigma.govitems g
        LEFT JOIN enigma.govadopt a ON g.id = a.govitem AND a.tree = %s
        """ + where_clause + """
        AND COALESCE(a.parentid, g.parentid) = %s
        ORDER BY COALESCE(a.priority, g.priority) DESC, txt
    """, (t, i))

    if not items_rows:
        # No children, show just this item
        items_rows = [item]

    items = [dict(row) for row in items_rows]

    # Build results matrix
    results = [[0 for _ in range(len(items))] for _ in range(len(periods))]

    for item_idx, item_row in enumerate(items):
        item_id = item_row['id']
        is_head = item_row['head']

        # Use the PARENT's neg value consistently
        item_data = get_govac_sum( item_id, is_head, periods, where_clause, t, neg)

        for period_idx, period in enumerate(periods):
            if period in item_data:
                results[period_idx][item_idx] = item_data[period]

    # Calculate totals
    totals = [sum(results[p]) for p in range(len(periods))]

    # Build CSV
    output = io.StringIO()

    # Header row
    header = ['Year'] + [item['txt'] for item in items] + ['Total']
    output.write(','.join(f'"{cell}"' for cell in header) + '\n')

    # Data rows
    for period_idx, period in enumerate(periods):
        year = period[:4]  # Extract year from YYYY-MM-DD
        row = [year]
        row.extend([str(results[period_idx][i]) for i in range(len(items))])
        row.append(str(totals[period_idx]))
        output.write(','.join(row) + '\n')

    csv_content = output.getvalue()
    output.close()

    # Return CSV response
    return Response(
        csv_content,
        mimetype='text/csv',
        headers={
            'Content-Disposition': f'attachment; filename=govac_{i}.csv'
        }
    )




@bp.route('/govacNotes.asp')
def govac_notes():
    """Government accounts notes"""
    return render_template('dbpub/govac_notes.html')




@bp.route('/govacsearch.asp', methods=['GET', 'POST'])
def govac_search():
    """Government accounts search - search govitems by text"""
    from webbsite.asp_helpers import make_select
    from flask import request

    # Get search parameters (check both GET and POST like ASP Request())
    n = request.values.get('n', '')  # search term
    st = request.values.get('st', 'a')  # search type: 'a' = any match (full-text), 'l' = left match (LIKE)

    # Sanitize search term (replace "Hong Kong" with "HK" case-insensitive)
    n = re.sub(r'\bHong Kong\b', 'HK', n, flags=re.IGNORECASE)
    n = n.strip()

    title = "Search the HKSAR Government accounts"
    limit = 50
    matches = []

    if n:
        # Build search query based on search type
        if st == 'a':
            # Full-text search using PostgreSQL to_tsquery
            # Convert space-separated terms to '&' (AND) query
            terms = n.split()
            if terms:
                # Create tsquery format: term1 & term2 & term3
                tsquery = ' & '.join(terms)

                sql = """
                    SELECT id, txt, parentid
                    FROM enigma.govitems
                    WHERE to_tsvector('simple', txt) @@ to_tsquery('simple', %s)
                    ORDER BY txt
                    LIMIT %s
                """
                results = execute_query(sql, (tsquery, limit))
        else:
            # Left match using LIKE
            sql = """
                SELECT id, txt, parentid
                FROM enigma.govitems
                WHERE txt LIKE %s
                ORDER BY txt
                LIMIT %s
            """
            results = execute_query(sql, (n + '%', limit))

        # For each result, build breadcrumb trail up to root (1251)
        for row in results:
            item_id = row['id']
            item_txt = row['txt']
            parent_id = row['parentid']

            # Build breadcrumb trail
            trail = [{
                'id': item_id,
                'txt': item_txt,
                'indent': 0
            }]

            # Traverse up the parent chain
            current_id = item_id
            current_parent = parent_id
            indent = 1

            while current_parent is not None and current_id != 1251:
                parent_row = execute_query("""
                    SELECT id, txt, parentid
                    FROM enigma.govitems
                    WHERE id = %s
                """, (current_parent,))

                if parent_row:
                    trail.append({
                        'id': current_parent,
                        'txt': parent_row[0]['txt'],
                        'indent': indent
                    })
                    current_id = current_parent
                    current_parent = parent_row[0]['parentid']
                    indent += 1
                else:
                    break

            matches.append(trail)

    return render_template('dbpub/govacsearch.html',
                         title=title,
                         n=n,
                         st=st,
                         matches=matches,
                         limit=limit,
                         make_select=make_select)


# Overlap analysis


@bp.route('/overlap.asp')
def overlap():
    """
    Director overlap between companies - shows organizations that share directors

    Query params:
    - p: organization personID
    - d: date for overlap analysis (default: today)
    - sort: nam=by name, cnt=by overlap count

    Tables used: enigma.directorships, enigma.organisations, enigma.stockListings
    """
    from datetime import date as dt

    person_id = get_int('p', 0)
    d = request.args.get('d', str(dt.today()))
    sort_param = request.args.get('sort', 'cnt')

    # Get organization name
    org_name = ''
    if person_id:
        org_result = execute_query("""
            SELECT name1 FROM enigma.organisations WHERE personID = %s
        """, (person_id,))
        if org_result:
            org_name = org_result[0]['name1']

    # Build order by
    if sort_param == 'nam':
        order_by = "o.name1"
    else:
        order_by = "cd DESC, o.name1"

    # Find overlapping organizations
    overlaps = []
    if person_id:
        overlaps = execute_query(f"""
            SELECT t.company AS orgid,
                   COUNT(t.director) AS cd,
                   o.name1,
                   sl.stockexid
            FROM (
                SELECT DISTINCT d2.company, d2.director
                FROM enigma.directorships d1
                JOIN enigma.directorships d2 ON d1.director = d2.director
                WHERE d2.company <> %s
                  AND d1.company = %s
                  AND (d1.until IS NULL OR d1.until > %s)
                  AND (d2.until IS NULL OR d2.until > %s)
                  AND (d1.from IS NULL OR d1.from <= %s)
                  AND (d2.from IS NULL OR d2.from <= %s)
            ) t
            JOIN enigma.organisations o ON t.company = o.personid
            LEFT JOIN LATERAL (
                SELECT stockexid
                FROM enigma.stocklistings sl
                WHERE sl.issuer = o.personid
                  AND (sl.firsttradedate IS NULL OR sl.firsttradedate <= %s)
                  AND (sl.delistdate IS NULL OR sl.delistdate > %s)
                LIMIT 1
            ) sl ON TRUE
            GROUP BY t.company, o.name1, sl.stockexid
            ORDER BY {order_by}
        """, (person_id, person_id, d, d, d, d, d, d))

    return render_template('dbpub/overlap.html',
                         person_id=person_id,
                         org_name=org_name,
                         d=d,
                         sort=sort_param,
                         overlaps=overlaps)


# Outstanding shares


@bp.route('/outstanding.asp')
def outstanding():
    """
    Outstanding shares history with market capitalization

    Query params:
    - i: issueID (via findStock from sc stock code)
    - sc: stock code

    Tables used: enigma.issuedshares, ccass.quotes, enigma.splitpends
    """
    issue_id = get_int('i', 0)
    stock_code = request.args.get('sc', '')

    # Resolve stock code to issueID if provided
    if stock_code and not issue_id:
        result = execute_query("""
            SELECT issueID FROM enigma.stockListings
            WHERE stockCode = %s
            ORDER BY FirstTradeDate DESC LIMIT 1
        """, (stock_code,))
        if result:
            issue_id = result[0]['issueid']

    # Get company name
    company_name = ''
    if issue_id:
        org_result = execute_query("""
            SELECT o.name1
            FROM enigma.issue i
            JOIN enigma.organisations o ON i.issuer = o.personID
            WHERE i.ID1 = %s
        """, (issue_id,))
        if org_result:
            company_name = org_result[0]['name1']

    # Query outstanding shares history with market cap
    history = []
    if issue_id:
        history = execute_query("""
            SELECT
                iss.atDate,
                iss.outstanding,
                (SELECT MAX(q.atDate)
                 FROM ccass.quotes q
                 WHERE q.issueID = %s AND q.atDate <= iss.atDate) AS maxDate,
                (SELECT q.closing
                 FROM ccass.quotes q
                 WHERE q.issueID = %s AND q.atDate <= iss.atDate
                 ORDER BY q.atDate DESC LIMIT 1) AS closing,
                (SELECT COALESCE(SUM(sharesPost - sharesPre), 0)
                 FROM enigma.splitpends
                 WHERE issueID = %s AND effDate > iss.atDate) AS pendsh
            FROM enigma.issuedshares iss
            WHERE iss.issueID = %s
            ORDER BY iss.atDate DESC
        """, (issue_id, issue_id, issue_id, issue_id))

    return render_template('dbpub/outstanding.html',
                         issue_id=issue_id,
                         stock_code=stock_code,
                         company_name=company_name,
                         history=history)


# CSV exports


@bp.route('/CSV.asp')
def csv():
    """
    Generic CSV export utility
    Port of dbpub/CSV.asp

    Query params:
    - t: table name to export (airlines, airports, destor, flights, hkpx, hkpxtypes,
         hkports, qt, qtcentres, vax, jails, jailtypes, prisoners, vaxcohorts)

    Tables used: various enigma schema tables for COVID/transport data
    """
    from flask import request, Response
    from webbsite.db import get_db
    import csv
    import io

    table = request.args.get('t', '')

    # Whitelist of allowed tables and queries
    valid_exports = {
        'airlines': 'SELECT * FROM enigma.airlines',
        'airports': 'SELECT * FROM enigma.airports',
        'destor': 'SELECT * FROM enigma.destor',
        'flights': 'SELECT * FROM enigma.flights',
        'hkpx': 'SELECT * FROM enigma.hkpx',
        'hkpxtypes': 'SELECT * FROM enigma.hkpxtypes',
        'hkports': 'SELECT * FROM enigma.hkports',
        'qt': 'SELECT * FROM enigma.qt',
        'qtcentres': 'SELECT * FROM enigma.qtcentres',
        'vax': 'SELECT * FROM enigma.vax',
        'vaxcohorts': 'SELECT id, minage, popn, mpopn, fpopn FROM enigma.vaxcohorts',
        'jails': 'SELECT * FROM enigma.jails',
        'jailtypes': 'SELECT * FROM enigma.jailtypes',
        'prisoners': 'SELECT * FROM enigma.prisoners',
        'prisorigin': 'SELECT * FROM enigma.prisorigin'
    }

    if table not in valid_exports:
        return Response("Not a valid download", mimetype='text/plain'), 400

    # Execute query
    with get_db() as conn:
        cursor = conn.cursor()
        cursor.execute(valid_exports[table])

        # Get column names
        columns = [desc[0] for desc in cursor.description]

        # Create CSV in memory
        output = io.StringIO()
        writer = csv.writer(output)

        # Write header
        writer.writerow(columns)

        # Write data rows
        for row in cursor:
            writer.writerow(row)

        # Get CSV content
        csv_content = output.getvalue()
        output.close()

    # Return CSV response
    return Response(
        csv_content,
        mimetype='text/csv',
        headers={'Content-Disposition': f'attachment; filename={table}.csv'}
    )


# FAQ pages


@bp.route('/FAQW.asp')
def faq_w():
    """FAQ - Webb-site"""
    return render_template('dbpub/faq_w.html')




@bp.route('/FAQWWW.asp')
def faq_www():
    """FAQ - WWW and internet"""
    return render_template('dbpub/faq_www.html')




@bp.route('/auditornotes.asp')
def auditor_notes():
    """Notes on auditor changes - static explanatory page"""
    return render_template('dbpub/auditor_notes.html')




@bp.route('/LIRteamNotes.asp')
def lir_team_notes():
    """About the Listing Teams of SEHK - static explanatory page"""
    return render_template('dbpub/lir_team_notes.html')


# Navbars (shared components)


@bp.route('/navbars.asp')
def navbars():
    """Navigation bars include file"""
    return render_template('dbpub/navbars.html')




@bp.route('/functions1.asp')
def functions1():
    """Functions library (ASP include)"""
    # This is an include file, not a standalone page
    return "This is an include file", 200


# Roles


@bp.route('/roles.asp')
def roles():
    """
    Webb-site League Tables - Directory of adviser roles

    Shows count of positions for each adviser role (auditors, bankers, IFAs, etc.)
    """
    from webbsite.db import execute_query
    from flask import render_template

    # Query the WebCountAdvByRole view
    roles_data = execute_query("""
        SELECT roleid, role, onetime, countofrole
        FROM enigma.webcountadvbyrole
        ORDER BY role
    """)

    return render_template('dbpub/roles.html', roles_data=roles_data)




@bp.route('/advltsnap.asp')
def advltsnap():
    """
    Adviser league table snapshot

    Shows advisers (auditors, bankers, IFAs, etc.) and their client counts
    at a specific snapshot date. Shows only continuing roles (not one-time).
    """
    from webbsite.asp_helpers import get_int, get_str
    from webbsite.db import execute_query
    from flask import render_template, current_app
    from datetime import date

    r = get_int('r', 0)  # Role ID
    d = get_str('d', str(date.today()))  # Snapshot date
    sort_param = get_str('sort', 'cntdn')

    # Get role information
    role_name = "Advisers"
    try:
        role_result = execute_query(
            "SELECT rolelong FROM enigma.roles WHERE NOT onetime AND roleid = %s", (r,)
        )
        if role_result:
            role_name = role_result[0]['rolelong']
    except Exception:
        pass

    # Determine sort order
    sort_orders = {
        'nameup': 'name1',
        'namedn': 'name1 DESC',
        'cntup': 'c, name1',
        'cntdn': 'c DESC, name1 DESC'
    }
    ob = sort_orders.get(sort_param, 'c DESC, name1 DESC')
    if sort_param not in sort_orders:
        sort_param = 'cntdn'

    # Query advisers at snapshot date
    try:
        results = execute_query(f"""
            SELECT o.personid, o.name1,
                   COUNT(a.company) AS c
            FROM enigma.adviserships a
            JOIN enigma.organisations o ON a.adviser = o.personid
            WHERE a.company IN (
                SELECT DISTINCT s.issuer
                FROM enigma.stocklistings s
                JOIN enigma.issue i ON s.issueid = i.id
                WHERE i.typeid IN (0,6,7,10,42)
                  AND s.stockexid IN (1,20,23)
                  AND (s.firsttradedate IS NULL OR s.firsttradedate <= %s)
                  AND (s.delistdate IS NULL OR s.delistdate > %s)
            )
            AND a.role = %s
            AND (a.adddate IS NULL OR a.adddate <= %s)
            AND (a.remdate IS NULL OR a.remdate > %s)
            GROUP BY o.personid, o.name1
            ORDER BY {ob}
        """, (d, d, r, d, d))

        # Calculate total
        total = sum(row['c'] for row in results) if results else 0
    except Exception as ex:
        current_app.logger.error(f"Error in advltsnap.asp: {ex}", exc_info=True)
        results = []
        total = 0

    # Get role options for dropdown
    try:
        roles = execute_query(
            "SELECT roleid, rolelong FROM enigma.roles WHERE NOT onetime ORDER BY rolelong"
        )
    except Exception:
        roles = []

    return render_template('dbpub/advltsnap.html',
                         results=results,
                         r=r,
                         d=d,
                         role_name=role_name,
                         total=total,
                         roles=roles,
                         sort=sort_param)




@bp.route('/HKBRcheck.asp')
def hkbrcheck():
    """
    Hong Kong Business Registration number check digit calculator

    Takes first 7 digits of BR number and calculates the 8th check digit
    using the formula: (8*d1 + d2 + 2*d3 + 3*d4 + 6*d5 + 7*d6 + 8*d7) mod 10
    """
    from flask import render_template, request

    b = request.args.get('b', '').strip()
    hint = ""
    check_digit = None

    if b:
        if len(b) != 7:
            hint = "Enter the first 7 digits. "
        elif not b.isdigit():
            hint = "The first 7 digits must be numerals. "
        else:
            # Calculate check digit using the formula
            check_digit = (
                8 * int(b[0]) +
                int(b[1]) +
                2 * int(b[2]) +
                3 * int(b[3]) +
                6 * int(b[4]) +
                7 * int(b[5]) +
                8 * int(b[6])
            ) % 10
            hint = f"The last digit is: {check_digit}"

    return render_template('dbpub/hkbrcheck.html',
                         b=b,
                         hint=hint,
                         check_digit=check_digit)




@bp.route('/cosperdomHK.asp')
def cosperdomhk():
    """
    Foreign companies registered in HK per domicile

    Shows foreign companies currently registered in Hong Kong,
    grouped by their domicile. Displays surviving companies only.
    """
    from webbsite.asp_helpers import get_int, get_str
    from webbsite.db import execute_query
    from flask import render_template, current_app

    dom = get_int('dom', 2)  # Default to BVI (domicile 2)
    sort_param = get_str('sort', 'namup')

    # Get domicile name
    friendly = "Unknown"
    try:
        result = execute_query(
            "SELECT friendly FROM enigma.domiciles WHERE id = %s", (dom,)
        )
        if result:
            friendly = result[0]['friendly']
    except Exception:
        pass

    # Determine sort order
    sort_orders = {
        'namdn': 'name DESC, regdate DESC',
        'regup': 'regdate, name',
        'regdn': 'regdate DESC, name DESC',
        'namup': 'name, regdate'
    }
    ob = sort_orders.get(sort_param, 'name, regdate')
    if sort_param not in sort_orders:
        sort_param = 'namup'

    # Query foreign companies registered in HK
    try:
        results = execute_query(f"""
            SELECT o.personid, o.name1 AS name, f.regdate
            FROM enigma.organisations o
            JOIN enigma.freg f ON o.personid = f.orgid
            WHERE f.hostdom = 1
              AND o.cesdate IS NULL
              AND o.disdate IS NULL
              AND o.domicile = %s
            ORDER BY {ob}
        """, (dom,))
    except Exception as ex:
        current_app.logger.error(f"Error in cosperdomHK.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/cosperdomhk.html',
                         results=results,
                         dom=dom,
                         friendly=friendly,
                         sort=sort_param)




@bp.route('/possum.asp')
def possum():
    """Position summary"""
    # TODO: Query position summary
    summary = []
    return render_template('dbpub/possum.html', summary=summary)


# Recent HK-listed director appointments


@bp.route('/latestdirsHK.asp')
def latest_dirs_hk():
    """
    Recent HK-listed director appointments
    Port of latestdirsHK.asp
    Query params: d1 (start date), d2 (end date), sort
    """
    from datetime import date, timedelta
    from webbsite.asp_helpers import get_str, mobile, sl

    # Get end date (defaults to today)
    d2_str = get_str('d2', '')
    if d2_str:
        try:
            d2 = date.fromisoformat(d2_str)
            if d2 > date.today():
                d2 = date.today()
        except ValueError:
            d2 = date.today()
    else:
        d2 = date.today()

    # Get start date (defaults to 60 days before end date)
    d1_str = get_str('d1', '')
    if d1_str:
        try:
            d1 = date.fromisoformat(d1_str)
        except ValueError:
            d1 = d2 - timedelta(days=59)
    else:
        d1 = d2 - timedelta(days=59)

    # Validate date range
    if d2 < d1:
        d1 = d2 - timedelta(days=59)
    if (d2 - d1).days > 365:
        d1 = d2 - timedelta(days=365)

    d1_str = d1.isoformat()
    d2_str = d2.isoformat()
    now_year = d2.year

    # Get sort parameter
    sort_param = get_str('sort', 'dirup')
    order_by_map = {
        'dirup': 'Dir, ApptDate',
        'dirdn': 'Dir DESC, ApptDate',
        'appup': 'ApptDate, Dir',
        'appdn': 'ApptDate DESC, Dir',
        'posup': 'posShort, Dir, ApptDate',
        'posdn': 'posShort DESC, Dir, ApptDate',
        'agedn': 'YOB, Dir, ApptDate',
        'ageup': 'YOB DESC, ApptDate',
        'sexup': 'sex, Dir, org',
        'sexdn': 'sex DESC, Dir, org',
        'orgdn': 'org DESC, apptDate, dir',
        'orgup': 'org, apptDate, dir'
    }
    order_by = order_by_map.get(sort_param, order_by_map['dirup'])

    # Direct SQL query (no stored procedure in ASP)
    sql = f"""
        SELECT
            p.name1 || COALESCE(', ' || p.name2, '') || COALESCE(' ' || p.cname, '') AS dir,
            director AS dirID,
            company AS orgID,
            o.name1 AS org,
            sex,
            TO_CHAR(apptDate, 'YYYY-MM-DD') AS appt,
            posShort,
            posLong,
            YOB
        FROM enigma.directorships d
        JOIN enigma.listedcoshkever ON company = issuer
        JOIN enigma.people p ON director = p.personID
        JOIN enigma.organisations o ON company = o.personID
        JOIN enigma.positions pn ON d.positionID = pn.positionID
        WHERE apptDate <= %s
          AND apptDate >= %s
          AND rank = 1
        ORDER BY {order_by}
    """

    try:
        appointments = execute_query(sql, (d2_str, d1_str))

        # Calculate statistics
        male = 0
        female = 0
        nosex = 0
        mage = 0
        fage = 0
        nage = 0
        magecnt = 0
        fagecnt = 0
        nagecnt = 0

        for row in appointments:
            yob = row['yob']
            sex = row['sex']

            # Calculate age
            if yob:
                row['age'] = now_year - yob
            else:
                row['age'] = None

            # Count by sex
            if sex == 'M':
                male += 1
                if yob:
                    magecnt += 1
                    mage += yob
            elif sex == 'F':
                female += 1
                if yob:
                    fagecnt += 1
                    fage += yob
            else:
                nosex += 1
                if yob:
                    nagecnt += 1
                    nage += yob

        # Calculate analysis statistics
        total = len(appointments)
        stats = {
            'male': male,
            'female': female,
            'nosex': nosex,
            'total': total,
            'male_pct': (male / total * 100) if total > 0 else 0,
            'female_pct': (female / total * 100) if total > 0 else 0,
            'nosex_pct': (nosex / total * 100) if total > 0 else 0,
            'male_age_cnt': magecnt,
            'female_age_cnt': fagecnt,
            'nosex_age_cnt': nagecnt,
            'total_age_cnt': magecnt + fagecnt + nagecnt,
            'male_avg_age': (now_year - mage / magecnt) if magecnt > 0 else None,
            'female_avg_age': (now_year - fage / fagecnt) if fagecnt > 0 else None,
            'nosex_avg_age': (now_year - nage / nagecnt) if nagecnt > 0 else None,
            'total_avg_age': (now_year - (mage + fage + nage) / (magecnt + fagecnt + nagecnt)) if (magecnt + fagecnt + nagecnt) > 0 else None
        }

        # Calculate period length
        period_days = (d2 - d1).days + 1

        # Build sort links
        base_url = f'/dbpub/latestdirsHK.asp?d1={d1_str}&d2={d2_str}'
        sort_links = {
            'director': sl('Director', 'dirup', 'dirdn', sort_param, base_url),
            'sex': sl("<span style='font-size:large'>&#x26A5;</span>", 'sexup', 'sexdn', sort_param, base_url),
            'age': sl(f'Age in<br>{now_year}', 'agedn', 'ageup', sort_param, base_url),
            'position': sl('Position', 'posup', 'posdn', sort_param, base_url),
            'from': sl('From', 'appdn', 'appup', sort_param, base_url),
            'company': sl('Company', 'orgup', 'orgdn', sort_param, base_url)
        }

        return render_template('dbpub/latest_dirs_hk.html',
                             title="Recent HK-listed director appointments",
                             appointments=appointments,
                             stats=stats,
                             d1=d1_str,
                             d2=d2_str,
                             now_year=now_year,
                             period_days=period_days,
                             sort=sort_param,
                             sort_links=sort_links,
                             mobile_alert=mobile(2))
    except Exception as e:
        current_app.logger.error(f"Error in latest_dirs_hk: {e}")
        abort(500)


# Board composition per company


@bp.route('/boardcomp.asp')
def boardcomp():
    """
    Board composition per HK-listed company
    Query params: d (snapshot date), sort
    """
    from datetime import date
    from webbsite.asp_helpers import get_str, mobile, sl

    # Get snapshot date
    d_str = get_str('d', '')
    if d_str:
        try:
            d = date.fromisoformat(d_str)
        except ValueError:
            d = date.today()
            d_str = d.isoformat()
    else:
        d = date.today()
        d_str = d.isoformat()

    # Get sort parameter
    sort_param = get_str('sort', 'dirdn')
    order_by_map = {
        'inpdn': 'inepropn DESC, name',
        'inpup': 'inepropn, name',
        'fmpdn': 'fempropn DESC, name',
        'fmpup': 'fempropn, name',
        'agedn': 'age DESC, name',
        'ageup': 'age, name',
        'inedn': 'ine DESC, name',
        'ineup': 'ine, name',
        'femdn': 'female DESC, name',
        'femup': 'female, name',
        'dirdn': 'dirs DESC, name',
        'dirup': 'dirs, name',
        'namup': 'name',
        'namdn': 'name DESC',
        'stkup': 'sc',
        'stkdn': 'sc DESC'
    }
    order_by = order_by_map.get(sort_param, order_by_map['dirdn'])

    # Query board composition - direct port from hkbdanalsnap stored procedure
    sql = f"""
        SELECT
            issuer as personid,
            name,
            dirs,
            ine,
            female,
            CASE WHEN avg_yob IS NOT NULL THEN EXTRACT(YEAR FROM CAST(%s AS date)) - avg_yob END as age,
            sc,
            ine::numeric / NULLIF(dirs, 0) as inepropn,
            female::numeric / NULLIF(dirs, 0) as fempropn
        FROM (
            SELECT
                t2.issuer,
                t2.name,
                t2.sc,
                COUNT(DISTINCT d.director) as dirs,
                SUM(CASE WHEN pn.status = 3 THEN 1 ELSE 0 END) as ine,
                SUM(CASE WHEN p.sex = 'F' THEN 1 ELSE 0 END) as female,
                AVG(p.yob) as avg_yob
            FROM (
                SELECT DISTINCT
                    i.issuer,
                    o.name1 as name,
                    (
                        SELECT sl2.stockcode
                        FROM enigma.issue i2
                        JOIN enigma.stocklistings sl2 ON i2.id1 = sl2.issueid
                        WHERE i2.issuer = i.issuer
                          AND i2.typeid NOT IN (1, 2, 40, 41, 46)
                          AND sl2.stockexid IN (1, 20, 22, 23, 38)
                          AND sl2."2ndCtr" = FALSE
                          AND (sl2.firsttradedate IS NULL OR sl2.firsttradedate <= %s)
                          AND (sl2.delistdate IS NULL OR sl2.delistdate > %s)
                        ORDER BY sl2.stockcode
                        LIMIT 1
                    ) as sc
                FROM enigma.issue i
                JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
                JOIN enigma.organisations o ON i.issuer = o.personid
                WHERE sl.stockexid IN (1, 20)
                  AND i.typeid NOT IN (1, 2, 40, 41, 46)
                  AND (sl.firsttradedate IS NULL OR sl.firsttradedate <= %s)
                  AND (sl.delistdate IS NULL OR sl.delistdate > %s)
            ) t2
            LEFT JOIN enigma.directorships d ON t2.issuer = d.company
                AND (d.apptdate IS NULL OR d.apptdate <= %s)
                AND (d.resdate IS NULL OR d.resdate > %s)
            LEFT JOIN enigma.people p ON d.director = p.personid
            LEFT JOIN enigma.positions pn ON d.positionid = pn.positionid
            WHERE pn.rank = 1 OR d.director IS NULL
            GROUP BY t2.issuer, t2.name, t2.sc
        ) t4
        ORDER BY {order_by}
    """

    try:
        results = execute_query(sql, (d, d, d, d, d, d, d))
    except Exception as ex:
        current_app.logger.error(f"Error in boardcomp.asp: {ex}", exc_info=True)
        results = []

    title = f"Board composition per HK-listed company on {d}"

    # Build base URL for sort links
    base_url = '/dbpub/boardcomp.asp'
    if d_str:
        base_url += f'?d={d_str}'

    # Generate sort links using sl() function (port of ASP SL function)
    sort_links = {
        'stock': sl('Stock<br>code', 'stkup', 'stkdn', sort_param, base_url),
        'name': sl('Name', 'namup', 'namdn', sort_param, base_url),
        'dirs': sl('No.<br>of<br>dirs', 'dirdn', 'dirup', sort_param, base_url),
        'ine': sl('INE', 'inedn', 'ineup', sort_param, base_url),
        'female': sl("<span style='font-size:large'>&#x2640;</span>", 'femdn', 'femup', sort_param, base_url),
        'inepropn': sl('INE<br>Ratio', 'inpdn', 'inpup', sort_param, base_url),
        'fempropn': sl('Fem.<br>Ratio', 'fmpdn', 'fmpup', sort_param, base_url),
        'age': sl(f'Mean<br>age in<br>{d.year}', 'agedn', 'ageup', sort_param, base_url),
    }

    return render_template('dbpub/boardcomp.html',
                         boards=results,
                         d=d,
                         d_str=d_str,
                         sort=sort_param,
                         title=title,
                         mobile_alert=mobile(3),
                         sort_links=sort_links)


# Listing trend by year


@bp.route('/listingtrend.asp')
def listingtrend():
    """
    Number of HK-listed issuers by market annually
    Shows Main Board, GEM, Secondary, REIT, CIS counts per year
    """
    from datetime import date

    # Query enigma.listings by market and year
    # Port of ListCosByMktAtDate stored procedure
    start_year = 1986
    current_year = date.today().year

    years_data = []

    for year in range(start_year, current_year + 1):
        if year == current_year:
            snapshot_date = date.today()
        else:
            snapshot_date = date(year, 12, 31)

        sql = """
            SELECT
                sl.stockexid,
                COUNT(DISTINCT i.issuer) as count
            FROM enigma.stocklistings sl
            JOIN enigma.issue i ON sl.issueid = i.id1
            WHERE sl."2ndCtr" = FALSE
              AND (sl.firsttradedate IS NULL OR sl.firsttradedate <= %s)
              AND (sl.delistdate IS NULL OR sl.delistdate > %s)
            GROUP BY sl.stockexid
            ORDER BY sl.stockexid
        """

        try:
            results = execute_query(sql, (snapshot_date, snapshot_date))

            # Parse results into market categories
            counts = {1: 0, 20: 0, 22: 0, 23: 0, 38: 0}  # Main, GEM, Sec, REIT, CIS
            for row in results:
                counts[row['stockexid']] = row['count']

            years_data.append({
                'year': year,
                'is_ytd': (year == current_year),
                'main': counts[1],
                'gem': counts[20],
                'secondary': counts[22],
                'reit': counts[23],
                'cis': counts[38],
                'total_cos': counts[1] + counts[20] + counts[22],
                'total_utmf': counts[23] + counts[38],
                'date': snapshot_date.isoformat()
            })
        except Exception as ex:
            current_app.logger.error(f"Error in listingtrend for year {year}: {ex}", exc_info=True)
            # Continue with empty data for this year
            years_data.append({
                'year': year,
                'is_ytd': (year == current_year),
                'main': 0, 'gem': 0, 'secondary': 0, 'reit': 0, 'cis': 0,
                'total_cos': 0, 'total_utmf': 0,
                'date': snapshot_date.isoformat()
            })

    return render_template('dbpub/listingtrend.html', years=years_data)


# Year-end distribution


@bp.route('/yearend.asp')
def yearend():
    """
    Financial year-end distribution for HK-listed companies
    Query params: e (exchange: m=Main, g=GEM, a=All), sort
    """
    from webbsite.asp_helpers import get_str

    e = get_str('e', 'a')
    sort_param = get_str('sort', 'monup')

    # Build title and exchange filter
    if e == 'g':
        stockex_filter = "= 20"
        title = "GEM"
    elif e == 'm':
        stockex_filter = "= 1"
        title = "Main Board"
    else:
        e = 'a'
        stockex_filter = "IN (1, 20)"
        title = "Main Board and GEM"

    # Build sort
    order_by_map = {
        'cntdn': 'cnt DESC, monthid',
        'cntup': 'cnt, monthid',
        'mondn': 'monthid DESC',
        'monup': 'monthid'
    }
    order_by = order_by_map.get(sort_param, order_by_map['monup'])

    # Query year-end distribution
    sql = f"""
        SELECT
            m.monthid,
            m.shortname,
            COUNT(od.personid) as cnt
        FROM enigma.months m
        LEFT JOIN (
            SELECT DISTINCT lc.issuer, od.yearendmonth, od.personid
            FROM enigma.listedcoshk lc
            JOIN enigma.orgdata od ON lc.issuer = od.personid
            WHERE lc.stockexid {stockex_filter}
        ) AS yearends ON m.monthid = yearends.yearendmonth
        GROUP BY m.monthid, m.shortname
        ORDER BY {order_by}
    """

    try:
        results = execute_query(sql)
        total = execute_query(f"""
            SELECT COUNT(DISTINCT lc.issuer)
            FROM enigma.listedcoshk lc
            WHERE lc.stockexid {stockex_filter}
        """)[0]['count']
    except Exception as ex:
        current_app.logger.error(f"Error in yearend.asp: {ex}", exc_info=True)
        results = []
        total = 1  # Avoid division by zero

    return render_template('dbpub/yearend.html',
                         enigma_months=results,
                         e=e,
                         sort=sort_param,
                         title=title,
                         total=total)


# Companies with websites


@bp.route('/hklistcowebs.asp')
def hklistcowebs():
    """
    HK-listed companies with websites
    Query params: sort
    """
    from webbsite.asp_helpers import get_str

    sort_param = get_str('sort', 'namup')
    order_by_map = {
        'codup': 'code',
        'coddn': 'code DESC',
        'namdn': 'name DESC',
        'namup': 'name'
    }
    order_by = order_by_map.get(sort_param, order_by_map['namup'])

    # Query companies with websites
    sql = f"""
        SELECT
            a.personid,
            a.name,
            w.url,
            (SELECT MIN(sl.stockcode)
             FROM enigma.stocklistings sl
             JOIN enigma.issue i ON sl.issueid = i.id1
             WHERE i.issuer = a.personid
               AND sl."2ndCtr" = FALSE
               AND (sl.delistdate IS NULL OR sl.delistdate > CURRENT_DATE)
            ) as code
        FROM enigma.listedcoshkall a
        JOIN enigma.web w ON a.personid = w.personid
        WHERE NOT w.dead
        ORDER BY {order_by}
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        current_app.logger.error(f"Error in hklistcowebs.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/hklistcowebs.html',
                         companies=results,
                         sort=sort_param)


# Companies without websites


@bp.route('/hklistconowebs.asp')
def hklistconowebs():
    """
    HK-listed companies without websites
    Query params: sort
    """
    from webbsite.asp_helpers import get_str

    sort_param = get_str('sort', 'namup')
    order_by_map = {
        'codup': 'code',
        'coddn': 'code DESC',
        'namdn': 'name DESC',
        'namup': 'name'
    }
    order_by = order_by_map.get(sort_param, order_by_map['namup'])

    # Query companies WITHOUT websites
    sql = f"""
        SELECT
            a.personid,
            a.name,
            (SELECT MIN(sl.stockcode)
             FROM enigma.stocklistings sl
             JOIN enigma.issue i ON sl.issueid = i.id1
             WHERE i.issuer = a.personid
               AND sl."2ndCtr" = FALSE
               AND (sl.delistdate IS NULL OR sl.delistdate > CURRENT_DATE)
            ) as code
        FROM enigma.listedcoshkall a
        WHERE NOT EXISTS (
            SELECT 1 FROM enigma.web w
            WHERE w.personid = a.personid AND NOT w.dead
        )
        ORDER BY {order_by}
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        current_app.logger.error(f"Error in hklistconowebs.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/hklistconowebs.html',
                         companies=results,
                         sort=sort_param)


# League table of directors


@bp.route('/leagueDirsHK.asp')
def league_dirs_hk():
    """
    Webb-site League Table of HK-listed enigma.directorships
    Shows people with most HK-listed enigma.directorships
    Query params: d (snapshot date), sort
    """
    from datetime import date
    from webbsite.asp_helpers import get_str

    # Get snapshot date
    d_str = get_str('d', '')
    if d_str:
        try:
            d = date.fromisoformat(d_str)
        except ValueError:
            d = date.today()
    else:
        d = date.today()

    # Get sort parameter
    sort_param = get_str('sort', 'countdn')
    order_by_map = {
        'countdn': 'dirs DESC, person',
        'countup': 'dirs, person',
        'namedn': 'person DESC',
        'nameup': 'person'
    }
    order_by = order_by_map.get(sort_param, order_by_map['countdn'])

    # Query directors league table
    sql = f"""
        SELECT
            p.personid,
            CASE WHEN p.name2 IS NULL THEN p.name1
                 ELSE p.name1 || ', ' || p.name2
            END as person,
            COUNT(DISTINCT d.company) as dirs,
            STRING_AGG(DISTINCT o.name1, '; ' ORDER BY o.name1) as companies
        FROM enigma.directorships d
        JOIN enigma.people p ON d.director = p.personid
        JOIN enigma.organisations o ON d.company = o.personid
        JOIN enigma.positions pn ON d.positionid = pn.positionid
        JOIN enigma.listedcoshk lc ON d.company = lc.issuer
        WHERE pn.rank = 1
          AND (d.apptdate IS NULL OR d.apptdate <= %s)
          AND (d.resdate IS NULL OR d.resdate > %s)
        GROUP BY p.personid, person
        HAVING COUNT(DISTINCT d.company) > 1
        ORDER BY {order_by}
    """

    try:
        results = execute_query(sql, (d, d))
    except Exception as ex:
        current_app.logger.error(f"Error in leagueDirsHK.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/league_dirs_hk.html',
                         directors=results,
                         d=d,
                         sort=sort_param)


# Birthdays by day of year


@bp.route('/bornday.asp')
def bornday():
    """
    People born on a specific day/month
    Query params: d (day), m (month), sort
    """
    # Get current date as default
    today = date.today()
    m = get_int('m', today.month)
    d = get_int('d', today.day)

    # Validate month
    if m < 1 or m > 12:
        m = today.month

    # Validate day for month
    mend = calendar.monthrange(2000, m)[1]  # Use leap year to get max days
    if d < 1 or d > mend:
        d = min(today.day, mend)

    # Get sort parameter
    sort_param = get_str('sort', 'yearup')
    order_by_map = {
        'nameup': 'name1, name2',
        'namedn': 'name1 DESC, name2 DESC',
        'yeardn': 'yob DESC',
        'yearup': 'yob'
    }
    order_by = order_by_map.get(sort_param, order_by_map['yearup'])

    # Query people born on this day
    sql = f"""
        SELECT
            personid,
            CASE WHEN name2 IS NULL THEN name1
                 ELSE name1 || ', ' || name2
            END as name,
            yob,
            yod,
            dod
        FROM enigma.people
        WHERE mob = %s
          AND dob = %s
          AND yob IS NOT NULL
        ORDER BY {order_by}
    """

    try:
        results = execute_query(sql, (m, d))
    except Exception as ex:
        current_app.logger.error(f"Error in bornday.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/bornday.html',
                         people=results,
                         d=d,
                         m=m,
                         sort=sort_param,
                         month_name=calendar.month_name[m],
                         current_year=today.year)


# Birthdays by year of birth


@bp.route('/bornyear.asp')
def bornyear():
    """
    People born in a specific year
    Query params: y (year), sort
    """
    from datetime import date
    from webbsite.asp_helpers import get_int, get_str

    # Get current year as default
    y = get_int('y', date.today().year - 50)

    # Get sort parameter
    sort_param = get_str('sort', 'nameup')
    order_by_map = {
        'nameup': 'name1, name2',
        'namedn': 'name1 DESC, name2 DESC',
        'dayup': 'mob, dob, name1, name2',
        'daydn': 'mob DESC, dob DESC, name1, name2'
    }
    order_by = order_by_map.get(sort_param, order_by_map['nameup'])

    # Query people born in this year
    sql = f"""
        SELECT
            personid,
            CASE WHEN name2 IS NULL THEN name1
                 ELSE name1 || ', ' || name2
            END as name,
            mob,
            dob,
            yod,
            dod
        FROM enigma.people
        WHERE yob = %s
        ORDER BY {order_by}
    """

    try:
        results = execute_query(sql, (y,))
    except Exception as ex:
        current_app.logger.error(f"Error in bornyear.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/bornyear.html',
                         people=results,
                         y=y,
                         sort=sort_param,
                         current_year=date.today().year)


# Free stock codes under 1000


@bp.route('/freecodesunder1000.asp')
def freecodesunder1000():
    """
    Available stock codes under 1000
    Shows which 3-digit codes are currently unused
    """
    # Query to get all used codes under 1000
    sql = """
        SELECT DISTINCT stockcode
        FROM enigma.stocklistings
        WHERE stockcode < 1000
        ORDER BY stockcode
    """

    try:
        used_results = execute_query(sql)
        used_codes = set(row['stockcode'] for row in used_results)

        # Find unused codes
        unused_codes = [code for code in range(1, 1000) if code not in used_codes]
    except Exception as ex:
        current_app.logger.error(f"Error in freecodesunder1000.asp: {ex}", exc_info=True)
        unused_codes = []

    return render_template('dbpub/freecodesunder1000.html',
                         unused_codes=unused_codes,
                         count=len(unused_codes))


# Total Returns notes


@bp.route('/TRnotes.asp')
def tr_notes():
    """
    About Webb-site Total Returns - explanatory page
    This is a static informational page
    """
    return render_template('dbpub/tr_notes.html')


# Rights issues and open offers


@bp.route('/rightsoo.asp')
def rightsoo():
    """
    Rights issues and open offers listing
    Query params: sort
    """
    from webbsite.asp_helpers import get_str

    sort_param = get_str('sort', 'datedn')
    order_by_map = {
        'datedn': 'eventdate DESC, o.name1',
        'dateup': 'eventdate, o.name1',
        'namedn': 'o.name1 DESC, eventdate DESC',
        'nameup': 'o.name1, eventdate DESC',
        'codedn': 'sc DESC, eventdate DESC',
        'codeup': 'sc, eventdate DESC'
    }
    order_by = order_by_map.get(sort_param, order_by_map['datedn'])

    # Query rights issues and open offers
    sql = f"""
        SELECT
            e.eventid,
            e.eventdate,
            e.eventtypeid,
            et.eventtype,
            o.personid,
            o.name1,
            i.id1 as issueid,
            (SELECT MIN(sl.stockcode)
             FROM enigma.stocklistings sl
             WHERE sl.issueid = i.id1
               AND sl."2ndCtr" = FALSE
            ) as sc
        FROM enigma.events e
        JOIN enigma.eventtypes et ON e.eventtypeid = et.eventtypeid
        JOIN enigma.issue i ON e.issueid = i.id1
        JOIN enigma.organisations o ON i.issuer = o.personid
        WHERE e.eventtypeid IN (8, 9)  -- 8=rights enigma.issue, 9=open offer
        ORDER BY {order_by}
        LIMIT 500
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        current_app.logger.error(f"Error in rightsoo.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/rightsoo.html',
                         enigma_events=results,
                         sort=sort_param)


# Stock distribution by board lot


@bp.route('/HKstocksByBoardLot.asp')
def hk_stocks_by_board_lot():
    """
    Distribution of HK stocks by board lot size
    """
    sql = """
        SELECT
            i.boardlot,
            COUNT(*) as count
        FROM enigma.issue i
        JOIN enigma.listedcoshk lc ON i.issuer = lc.issuer
        JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
        WHERE sl."2ndCtr" = FALSE
          AND (sl.delistdate IS NULL OR sl.delistdate > CURRENT_DATE)
        GROUP BY i.boardlot
        ORDER BY i.boardlot
    """

    try:
        results = execute_query(sql)
        total = sum(row['count'] for row in results)
    except Exception as ex:
        current_app.logger.error(f"Error in HKstocksByBoardLot.asp: {ex}", exc_info=True)
        results = []
        total = 0

    return render_template('dbpub/hkstocksbyboardlot.html',
                         board_lots=results,
                         total=total)


# HK companies incorporated per year


@bp.route('/dirsHKPerPerson.asp')
def dirs_hk_per_person():
    """
    Directors per person at a snapshot date
    Port of dirsHKPerPerson.asp - shows directors of HK-listed companies
    Query params: d (snapshot date), sort
    """
    from datetime import date
    from webbsite.asp_helpers import get_str, mobile, sl

    # Get snapshot date with validation (1990-01-01 to today)
    d_str = get_str('d', '')
    if d_str:
        try:
            d = date.fromisoformat(d_str)
            # Validate range
            if d < date(1990, 1, 1):
                d = date(1990, 1, 1)
            elif d > date.today():
                d = date.today()
            d_str = d.isoformat()
        except ValueError:
            d = date.today()
            d_str = d.isoformat()
    else:
        d = date.today()
        d_str = d.isoformat()

    snap_year = d.year

    # Get sort parameter
    sort_param = get_str('sort', 'cntdn')
    order_by_map = {
        'cntdn': 'numSeats DESC, name',
        'cntup': 'numSeats, YOB, name',
        'inedn': 'INED DESC, name',
        'ineup': 'INED, YOB, name',
        'namup': 'name',
        'namdn': 'name DESC',
        'sexno': 'sex, numSeats DESC, name',
        'sexna': 'sex, name',
        'agedn': 'YOB, numSeats DESC, name',
        'ageup': 'YOB DESC, name'
    }
    order_by = order_by_map.get(sort_param, order_by_map['cntdn'])

    # Port of HKdirsPerPerson stored procedure - inline SQL for PostgreSQL
    sql = f"""
        SELECT
            director,
            name1 || COALESCE(', ' || name2, '') || COALESCE(' ' || cName, '') AS name,
            COUNT(company) AS numSeats,
            SUM(CASE WHEN status = 3 THEN 1 ELSE 0 END) AS INED,
            YOB,
            sex
        FROM (
            SELECT DISTINCT issuer
            FROM enigma.issue
            JOIN enigma.stocklistings ON issue.id1 = stocklistings.issueid
            WHERE stockexid IN (1, 20)
              AND typeid NOT IN (1, 2, 40, 41, 46)
              AND (firsttradedate IS NULL OR firsttradedate <= %s)
              AND (delistdate IS NULL OR delistdate > %s)
        ) AS t1
        JOIN enigma.directorships ON t1.issuer = directorships.company
        JOIN enigma.people ON directorships.director = people.personid
        JOIN enigma.positions ON directorships.positionid = positions.positionid
        WHERE positions.rank = 1
          AND (apptdate IS NULL OR apptdate <= %s)
          AND (resdate IS NULL OR resdate > %s)
        GROUP BY director, name1, name2, cName, YOB, sex
        ORDER BY {order_by}
    """

    try:
        directors = execute_query(sql, (d_str, d_str, d_str, d_str))

        # Build sort links using sl() helper
        base_url = f'/dbpub/dirsHKPerPerson.asp?d={d_str}'
        sort_links = {
            'name': sl('Name', 'namup', 'namdn', sort_param, base_url),
            'count': sl('No.<br>of<br>seats', 'cntdn', 'cntup', sort_param, base_url),
            'ined': sl('No.<br>INED', 'inedn', 'ineup', sort_param, base_url),
            'sex': sl('Sex', 'sexno', 'sexna', sort_param, base_url),
            'age': sl(f'Age in<br>{snap_year}', 'agedn', 'ageup', sort_param, base_url)
        }

        # Calculate ages
        for director in directors:
            if director['yob']:
                director['age'] = snap_year - director['yob']
            else:
                director['age'] = None

        return render_template('dbpub/dirs_hk_per_person.html',
                             title=f"HK-listed directorships per person at {d_str}",
                             directors=directors,
                             d=d_str,
                             snap_year=snap_year,
                             sort=sort_param,
                             sort_links=sort_links,
                             mobile_alert=mobile(3))
    except Exception as e:
        current_app.logger.error(f"Error in dirs_hk_per_person: {e}")
        abort(500)


# Gem graduates - performance since transfer from GEM to Main Board


@bp.route('/gemgrads.asp')
def gemgrads():
    """
    Performance of companies that graduated from GEM to Main Board
    Shows total returns since transfer date
    """
    # Query companies that transferred from GEM to Main
    sql = """
        SELECT
            o.personid,
            o.name1 as name,
            MIN(mb.firsttradedate) as main_date,
            MAX(gem.finaltradedate) as gem_date,
            (SELECT MIN(sl.stockcode)
             FROM enigma.stocklistings sl
             JOIN enigma.issue i ON sl.issueid = i.id1
             WHERE i.issuer = o.personid
               AND sl.stockexid = 1
               AND sl."2ndCtr" = FALSE
            ) as code
        FROM enigma.organisations o
        JOIN enigma.issue i ON o.personid = i.issuer
        JOIN enigma.stocklistings mb ON i.id1 = mb.issueid AND mb.stockexid = 1
        JOIN enigma.stocklistings gem ON i.id1 = gem.issueid AND gem.stockexid = 20
        WHERE gem.finaltradedate IS NOT NULL
          AND mb.firsttradedate > gem.finaltradedate
        GROUP BY o.personid, o.name1
        ORDER BY main_date DESC
        LIMIT 200
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        current_app.logger.error(f"Error in gemgrads.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/gemgrads.html',
                         companies=results)


# Reporting speed - time from year-end to results announcement


@bp.route('/reportspeed.asp')
def reportspeed():
    """
    Reporting speed analysis
    Time between financial year-end and results announcement
    Query params: y (year), sort
    """
    from datetime import date
    from webbsite.asp_helpers import get_int, get_str

    y = get_int('y', date.today().year - 1)
    sort_param = get_str('sort', 'speedup')

    order_by_map = {
        'speedup': 'days_to_report',
        'speeddn': 'days_to_report DESC',
        'nameup': 'o.name1',
        'namedn': 'o.name1 DESC',
        'codeup': 'code',
        'codedn': 'code DESC'
    }
    order_by = order_by_map.get(sort_param, order_by_map['speedup'])

    # Query reporting speed
    # This is a simplified version - full version would need year-end calculation
    sql = f"""
        SELECT
            o.personid,
            o.name1,
            od.yearendmonth,
            (SELECT MIN(sl.stockcode)
             FROM enigma.stocklistings sl
             JOIN enigma.issue i ON sl.issueid = i.id1
             WHERE i.issuer = o.personid
               AND sl."2ndCtr" = FALSE
               AND (sl.delistdate IS NULL OR sl.delistdate > CURRENT_DATE)
            ) as code
        FROM enigma.organisations o
        JOIN enigma.orgdata od ON o.personid = od.personid
        JOIN enigma.listedcoshk lc ON o.personid = lc.issuer
        WHERE od.yearendmonth IS NOT NULL
        ORDER BY {order_by}
        LIMIT 500
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        current_app.logger.error(f"Error in reportspeed.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/reportspeed.html',
                         companies=results,
                         y=y,
                         sort=sort_param)


# HK Companies incorporated by year/month/day and type


@bp.route('/auditorchanges.asp')
def auditorchanges():
    """Changes of auditors for current HK-listed companies"""
    from webbsite.asp_helpers import get_str
    from webbsite.db import execute_query
    from flask import render_template

    sort_param = get_str('sort', 'sdatdn')

    # Build order by clause
    order_by_map = {
        'sdatup': 'sortdate',
        'sdatdn': 'sortdate DESC',
        'anamup': 'advname, sortdate DESC',
        'anamdn': 'advname DESC, sortdate DESC',
        'cnamup': 'coname, sortdate DESC',
        'cnamdn': 'coname DESC, sortdate DESC'
    }
    order_by = order_by_map.get(sort_param, 'sortdate DESC')

    # Query auditor changes - this uses a view that should exist
    sql = f"""
        SELECT
            "add",
            rem,
            company,
            coname,
            advname,
            sortdate
        FROM enigma.auditorchanges
        ORDER BY {order_by}
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        current_app.logger.error(f"Error in auditorchanges.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/auditorchanges.html',
                         changes=results,
                         sort=sort_param)


# HK monthly incorporations and dissolutions


@bp.route('/hksols.asp')
def hksols():
    """List of HK solicitors"""
    from webbsite.asp_helpers import get_str
    from webbsite.db import execute_query
    from flask import render_template

    sort_param = get_str('sort', 'namup')

    order_by_map = {
        'namup': 'name',
        'namdn': 'name DESC',
        'admup': 'adm',
        'admdn': 'adm DESC'
    }
    order_by = order_by_map.get(sort_param, 'name')

    sql = f"""
        SELECT
            d.director AS personid,
            CASE WHEN p.name2 IS NULL THEN p.name1
                 ELSE p.name1 || ', ' || p.name2
            END AS name,
            MIN(d.apptdate) AS adm
        FROM enigma.directorships d
        JOIN enigma.people p ON d.director = p.personid
        WHERE d.positionid IN (394, 395)
          AND d.resdate IS NULL
        GROUP BY d.director, p.name1, p.name2
        ORDER BY {order_by}
        LIMIT 5000
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        current_app.logger.error(f"Error in hksols.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/hksols.html', solicitors=results, sort=sort_param)


# HK solicitor firms


@bp.route('/hksolfirms.asp')
def hksolfirms():
    """List of HK solicitor firms"""
    from webbsite.asp_helpers import get_str
    from webbsite.db import execute_query
    from flask import render_template

    sort_param = get_str('sort', 'namup')

    order_by_map = {
        'namup': 'o.name1',
        'namdn': 'o.name1 DESC',
        'cntdn': 'sol_count DESC',
        'cntup': 'sol_count'
    }
    order_by = order_by_map.get(sort_param, 'o.name1')

    # This is a simplified version - full version would need lsemps table
    sql = f"""
        SELECT
            d.company AS personid,
            o.name1,
            COUNT(DISTINCT d.director) AS sol_count
        FROM enigma.directorships d
        JOIN enigma.organisations o ON d.company = o.personid
        WHERE d.positionid IN (394, 395)
          AND d.resdate IS NULL
        GROUP BY d.company, o.name1
        HAVING COUNT(DISTINCT d.director) > 0
        ORDER BY {order_by}
        LIMIT 1000
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        current_app.logger.error(f"Error in hksolfirms.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/hksolfirms.html', firms=results, sort=sort_param)


# HK solicitors admitted in HK


@bp.route('/hksolsadmhk.asp')
def hksolsadmhk():
    """
    HK solicitors by year of admission to HK with Google Charts

    Shows distribution of solicitors currently in HK law firms by their
    year of admission to Hong Kong. Includes role filter (partner, consultant, etc.)
    """
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from flask import render_template, current_app

    # Get role filter parameter (0 = all, 1-5 = specific role)
    p = get_int('p', 0)

    # Build SQL filter for role
    role_filter = ""
    role_name = "All solicitors"
    if p > 0:
        role_filter = " AND post = %s"
        try:
            role_result = execute_query(
                "SELECT lstxt FROM enigma.lsroles WHERE id = %s", (p,)
            )
            if role_result:
                role_name = role_result[0]['lstxt'] + "s"
        except Exception:
            pass

    # Get total count
    try:
        if p > 0:
            total_count = execute_query(
                "SELECT COUNT(DISTINCT lsppl) FROM enigma.lsposts WHERE NOT dead AND post = %s",
                (p,)
            )[0]['count']
        else:
            total_count = execute_query(
                "SELECT COUNT(DISTINCT lsppl) FROM enigma.lsposts WHERE NOT dead"
            )[0]['count']
    except Exception:
        total_count = 0

    # Get data grouped by year of admission
    try:
        if p > 0:
            results = execute_query("""
                SELECT EXTRACT(YEAR FROM admhk) AS year,
                       COUNT(DISTINCT lsppl) AS count
                FROM enigma.lsposts ps
                JOIN enigma.lsppl p ON ps.lsppl = p.lsid
                WHERE NOT ps.dead AND post = %s
                GROUP BY EXTRACT(YEAR FROM admhk)
                ORDER BY year
            """, (p,))
        else:
            results = execute_query("""
                SELECT EXTRACT(YEAR FROM admhk) AS year,
                       COUNT(DISTINCT lsppl) AS count
                FROM enigma.lsposts ps
                JOIN enigma.lsppl p ON ps.lsppl = p.lsid
                WHERE NOT ps.dead
                GROUP BY EXTRACT(YEAR FROM admhk)
                ORDER BY year
            """)
    except Exception as ex:
        current_app.logger.error(f"Error in hksolsadmhk.asp: {ex}", exc_info=True)
        results = []

    # Get role options for dropdown
    try:
        roles = execute_query(
            "SELECT id, lstxt FROM enigma.lsroles WHERE id <> 4 ORDER BY id"
        )
    except Exception:
        roles = []

    return render_template('dbpub/hksolsadmhk.html',
                         results=results,
                         p=p,
                         role_name=role_name,
                         total_count=total_count,
                         roles=roles)


# HK solicitors admitted overseas


@bp.route('/hksolsadmos.asp')
def hksolsadmos():
    """
    HK solicitors admitted to overseas jurisdictions

    Shows HK solicitors grouped by overseas jurisdiction where they've also
    been admitted. Displays counts of lawyers admitted before/after HK admission.
    """
    from webbsite.asp_helpers import get_str
    from webbsite.db import execute_query
    from flask import render_template, current_app, request

    sort_param = get_str('sort', 'cntdn')

    # Determine sort order
    sort_orders = {
        'jurup': 'jur',
        'jurdn': 'jur DESC',
        'cntup': 'cnt, jur',
        'cntdn': 'cnt DESC, friendly',
        'befdn': 'bef DESC, jur',
        'befup': 'bef, jur',
        'aftdn': 'aft DESC, jur',
        'aftup': 'aft, jur',
        'shrdn': 'share DESC, jur',
        'shrup': 'share, jur'
    }
    ob = sort_orders.get(sort_param, 'cnt DESC, friendly')
    if sort_param not in sort_orders:
        sort_param = 'cntdn'

    # Query overseas admissions grouped by jurisdiction
    try:
        results = execute_query(f"""
            SELECT d.domid,
                   d.friendly AS jur,
                   COUNT(*) AS cnt,
                   SUM(CASE WHEN a.adm < p.admhk THEN 1 ELSE 0 END) AS bef,
                   SUM(CASE WHEN a.adm >= p.admhk THEN 1 ELSE 0 END) AS aft,
                   SUM(CASE WHEN a.adm < p.admhk THEN 1 ELSE 0 END)::FLOAT / COUNT(*) AS share
            FROM enigma.lsppl p
            JOIN enigma.lsadm a ON p.lsid = a.lsid
            JOIN enigma.lsdoms ld ON a.lsdom = ld.lsdom
            JOIN enigma.domiciles d ON ld.domid = d.id
            WHERE NOT p.dead
            GROUP BY d.domid, d.friendly
            ORDER BY {ob}
        """)
    except Exception as ex:
        current_app.logger.error(f"Error in hksolsadmos.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/hksolsadmos.html',
                         results=results,
                         sort=sort_param)


# HK solicitors by overseas domicile


@bp.route('/hksolsdom.asp')
def hksolsdom():
    """
    HK solicitors admitted to a specific overseas jurisdiction

    Shows list of HK solicitors who have also been admitted to the selected
    overseas jurisdiction, with admission dates for both.
    """
    from webbsite.asp_helpers import get_int, get_str
    from webbsite.db import execute_query
    from flask import render_template, current_app

    dom = get_int('dom', 116)  # Default to England & Wales
    sort_param = get_str('sort', 'nameup')

    # Get jurisdiction name
    jurisdiction = "Unknown"
    try:
        result = execute_query(
            "SELECT friendly FROM enigma.domiciles WHERE id = %s", (dom,)
        )
        if result:
            jurisdiction = result[0]['friendly']
    except Exception:
        pass

    # Determine sort order
    sort_orders = {
        'admoup': 'adm, name',
        'admodn': 'adm DESC, name',
        'admhup': 'admhk, name',
        'admhdn': 'admhk DESC, name',
        'namedn': 'name DESC, admhk DESC',
        'nameup': 'name, admhk'
    }
    ob = sort_orders.get(sort_param, 'name, admhk')
    if sort_param not in sort_orders:
        sort_param = 'nameup'

    # Get solicitors admitted to this jurisdiction
    try:
        results = execute_query(f"""
            SELECT DISTINCT
                p.personid,
                p.admhk,
                a.adm AS admos,
                CASE
                    WHEN p.cname IS NOT NULL AND p.cname <> ''
                    THEN COALESCE(p.name1, '') || COALESCE(', ' || p.name2, '') || ' ' || p.cname
                    ELSE COALESCE(p.name1, '') || COALESCE(', ' || p.name2, '')
                END AS name
            FROM enigma.lsppl p
            JOIN enigma.lsadm a ON p.lsid = a.lsid
            JOIN enigma.lsdoms ld ON a.lsdom = ld.lsdom
            JOIN enigma.domiciles d ON ld.domid = d.id
            WHERE NOT p.dead
              AND d.id = %s
            ORDER BY {ob}
        """, (dom,))
    except Exception as ex:
        current_app.logger.error(f"Error in hksolsdom.asp: {ex}", exc_info=True)
        results = []

    # Get list of jurisdictions for dropdown
    try:
        jurisdictions = execute_query("""
            SELECT DISTINCT d.id AS domid, d.friendly
            FROM enigma.lsppl p
            JOIN enigma.lsadm a ON p.lsid = a.lsid
            JOIN enigma.lsdoms ld ON a.lsdom = ld.lsdom
            JOIN enigma.domiciles d ON ld.domid = d.id
            WHERE NOT p.dead
            ORDER BY d.friendly
        """)
    except Exception:
        jurisdictions = []

    return render_template('dbpub/hksolsdom.html',
                         results=results,
                         dom=dom,
                         jurisdiction=jurisdiction,
                         jurisdictions=jurisdictions,
                         sort=sort_param)


# HK solicitors employer search


@bp.route('/hksolemps.asp')
def hksolemps():
    """HK solicitors by employer"""
    from webbsite.db import execute_query
    from flask import render_template

    # Simplified - would need lsemps table for full implementation
    sql = """
        SELECT
            d.company AS personid,
            o.name1 AS employer,
            COUNT(DISTINCT d.director) AS sol_count
        FROM enigma.directorships d
        JOIN enigma.organisations o ON d.company = o.personid
        WHERE d.positionid IN (394, 395)
          AND d.resdate IS NULL
        GROUP BY d.company, o.name1
        ORDER BY sol_count DESC
        LIMIT 500
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        current_app.logger.error(f"Error in hksolemps.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/hksolemps.html', employers=results)


# Company index by letter


@bp.route('/indexhk.asp')
def indexhk():
    """
    HK company index - companies with articles starting with given letter

    Query params: p=<letter> (or "0" for numeric start)

    Workflow:
    1. Get letter from query param 'p'
    2. Query HK-listed companies with articles starting with that letter
    3. Query HK-delisted companies with articles starting with that letter
    4. Display both lists with links to articles

    Tables used: enigma.listedcoshk, listedcoshkever, enigma.organisations, personstories
    """
    p = request.args.get('p', '')

    if not p:
        abort(400, "Missing parameter 'p'")

    title = f"Reports on companies: names starting with: {p}"

    # Build WHERE clause based on parameter
    if p == "0":
        # Numeric starts
        where_clause = "LEFT(name1,1) >= '0' AND LEFT(name1,1) <= '9'"
    else:
        # Letter starts
        where_clause = f"name1 LIKE '{p}%'"

    try:
        # HK-listed companies with articles
        listed_query = f"""
            SELECT DISTINCT lc.issuer, o.name1 AS name
            FROM enigma.listedcoshk lc
            JOIN enigma.organisations o ON lc.issuer = o.personid
            JOIN enigma.personstories ps ON lc.issuer = ps.personID
            WHERE {where_clause}
            ORDER BY name
        """
        listed_companies = execute_query(listed_query)

        # HK-delisted companies (no personstories join - shows all, not just with articles)
        delisted_query = f"""
            SELECT DISTINCT lce.issuer, o.name1 AS name
            FROM enigma.listedcoshkever lce
            JOIN enigma.organisations o ON lce.issuer = o.personid
            WHERE lce.issuer NOT IN (SELECT issuer FROM enigma.listedcoshk)
              AND {where_clause}
            ORDER BY name
        """
        delisted_companies = execute_query(delisted_query)

    except Exception as e:
        current_app.logger.error(f"Error in indexhk for p={p}: {e}")
        abort(500)

    return render_template('dbpub/indexhk.html',
                         title=title,
                         p=p,
                         listed_companies=listed_companies,
                         delisted_companies=delisted_companies)


# Government quarantine data


@bp.route('/qt.asp')
def qt():
    """Quarantine data (COVID-19 related)"""
    from webbsite.db import execute_query
    from flask import render_template

    # Stub - would need quarantine-specific tables
    return render_template('dbpub/qt.html', data=[])


# Judgments database


@bp.route('/judgments.asp')
def judgments():
    """
    Legal judgments database browser

    Filters: court (c), case type (t), year (y), month (m), day (d), sort
    Shows judgments from Hong Kong courts
    """
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from flask import render_template
    from datetime import datetime

    # Get filter parameters
    y = get_int('y', 0)
    m = get_int('m', 0) if y > 0 else 0
    d = get_int('d', 0) if m > 0 else 0
    c = get_int('c', 0)  # court ID
    t = get_int('t', 0)  # case type ID
    sort_param = request.args.get('sort', 'jddn')

    limit = 1000

    # Sort mappings
    sort_mappings = {
        'jddn': 'jdate DESC, caseyear, caseseq',
        'jdup': 'jdate, caseyear, caseseq',
        'psup': 'parties, jdate DESC',
        'psdn': 'parties DESC, jdate',
        'cnup': 'casenum, jdate DESC',
        'cndn': 'casenum DESC, jdate',
        'ncup': 'neutcit, jdate DESC',
        'ncdn': 'neutcit DESC, jdate',
        'rpdn': 'rep DESC, casenum, jdate DESC',
        'rpup': 'rep, casenum, jdate'
    }
    ob = sort_mappings.get(sort_param, 'jdate DESC, caseyear, caseseq')

    # Get list of courts for dropdown
    courts = execute_query("SELECT id, des FROM enigma.courts ORDER BY des")

    # Get case types for selected court
    case_types = []
    ct_name = ""
    type_name = ""
    if c > 0:
        ct_result = execute_query("SELECT des FROM enigma.courts WHERE id = %s", (c,))
        if ct_result:
            ct_name = ct_result[0]['des']
        case_types = execute_query(
            "SELECT id, des FROM enigma.casetypes WHERE courtid = %s ORDER BY des",
            (c,)
        )
        # Validate case type matches court
        if t > 0 and case_types:
            type_result = execute_query(
                "SELECT des FROM enigma.casetypes WHERE id = %s AND courtid = %s",
                (t, c)
            )
            if type_result:
                type_name = type_result[0]['des']
            else:
                t = 0  # Reset if mismatch

    # Build SQL query
    sql = """
        SELECT j.jdate, j.dis, j.casenum, j.neutcit, j.parties,
               t.des AS tdes, c.des AS cdes, j.rv, j.rs, j.rep,
               j.caseyear, j.caseseq
        FROM enigma.judgments j
        JOIN enigma.casetypes t ON j.casetype = t.id
        JOIN enigma.courts c ON t.courtid = c.id
        WHERE 1=1
    """
    params = []

    # Date filters
    if y > 0:
        sql += " AND EXTRACT(YEAR FROM j.jdate) = %s"
        params.append(y)
        if m > 0:
            sql += " AND EXTRACT(MONTH FROM j.jdate) = %s"
            params.append(m)
            if d > 0:
                sql += " AND EXTRACT(DAY FROM j.jdate) = %s"
                params.append(d)

    # Court and case type filters
    if c > 0:
        sql += " AND t.courtid = %s"
        params.append(c)
        if t > 0:
            sql += " AND j.casetype = %s"
            params.append(t)

    sql += f" ORDER BY {ob} LIMIT {limit}"

    # Execute query
    judgments_data = execute_query(sql, tuple(params)) if params else execute_query(sql)

    # Build title
    title = "Judgments"
    if c > 0:
        title += f" of {ct_name}"
    if y > 0:
        if d > 0:
            title += f" dated on {y:04d}-{m:02d}-{d:02d}"
        elif m > 0:
            title += f" dated in {y:04d}-{m:02d}"
        else:
            title += f" dated in {y:04d}"
    if type_name:
        title += f": {type_name}"

    return render_template('dbpub/judgments.html',
                         judgments_data=judgments_data,
                         courts=courts,
                         case_types=case_types,
                         y=y, m=m, d=d, c=c, t=t,
                         sort_param=sort_param,
                         title=title,
                         limit=limit,
                         current_year=datetime.now().year)


# Vaccination data


@bp.route('/ESStop.asp')
def esstop():
    """
    Employment Support Scheme top 5,000 recipients
    Shows statistics and top recipients by phase or both phases
    """
    p = get_int('p', 0)  # 0=both phases, 1=phase 1, 2=phase 2
    if p < 0 or p > 2:
        p = 0

    sort_param = get_str('sort', 'amtdn')

    # Define sort order
    sort_map = {
        'hdsup': 'hds, name',
        'hdsdn': 'hds DESC, name',
        'namup': 'name',
        'namdn': 'name DESC',
        'avgup': 'avg, name',
        'avgdn': 'avg DESC, name',
        'amtup': 'amt, name',
        'amtdn': 'amt DESC, name',
    }
    order_by = sort_map.get(sort_param, 'amt DESC, name')

    # Statistics queries
    stats_data = []
    matched_stats = None
    claim_analysis = None

    if p == 0:
        # Statistics for both phases
        stats_data = execute_query("""
            SELECT phase, COUNT(*) AS cnt, SUM(amt) AS amt, SUM(heads) AS hds,
                   SUM(amt)::numeric / SUM(heads) AS avg
            FROM enigma.ess
            GROUP BY phase
            ORDER BY phase
        """)
    else:
        # Statistics for specific phase - matched vs unmatched
        total_stats = execute_query("""
            SELECT COUNT(*) AS cnt, SUM(amt) AS amt, SUM(heads) AS hds
            FROM enigma.ess
            WHERE phase = %s
        """, (p,))

        matched_data = execute_query("""
            SELECT COUNT(*) AS cnt, SUM(amt) AS amt, SUM(heads) AS hds,
                   SUM(amt)::numeric / SUM(heads) AS avg
            FROM enigma.ess
            WHERE orgid IS NOT NULL AND phase = %s
        """, (p,))

        if total_stats and matched_data:
            total = total_stats[0]
            matched = matched_data[0]
            matched_stats = {
                'matched': matched,
                'total': total,
                'unmatched': {
                    'cnt': total['cnt'] - matched['cnt'],
                    'amt': total['amt'] - matched['amt'],
                    'hds': total['hds'] - matched['hds'],
                    'avg': (total['amt'] - matched['amt']) / (total['hds'] - matched['hds']) if (total['hds'] - matched['hds']) > 0 else 0
                }
            }

        # Claim size analysis
        claim_analysis = execute_query("""
            SELECT
                CASE
                    WHEN amt < 100000 THEN '<100k'
                    WHEN amt >= 100000 AND amt < 1000000 THEN '100k to <1m'
                    WHEN amt >= 1000000 AND amt < 10000000 THEN '1m to <10m'
                    WHEN amt >= 10000000 AND amt < 100000000 THEN '10m to <100m'
                    ELSE '>100m'
                END AS amtrange,
                MIN(CASE
                    WHEN amt < 100000 THEN 1
                    WHEN amt >= 100000 AND amt < 1000000 THEN 2
                    WHEN amt >= 1000000 AND amt < 10000000 THEN 3
                    WHEN amt >= 10000000 AND amt < 100000000 THEN 4
                    ELSE 5
                END) AS sort_order,
                COUNT(*) AS cnt,
                SUM(amt) AS amt,
                SUM(heads) AS hds,
                SUM(amt)::numeric / NULLIF(SUM(heads), 0) AS avg
            FROM enigma.ess
            WHERE phase = %s
            GROUP BY amtrange
            ORDER BY sort_order
        """, (p,))

    # Main query for top 5000
    # Build the queries differently to avoid ORDER BY inside UNION
    if p > 0:
        # Specific phase - simplified query
        sql = """
            WITH top_ess AS (
                SELECT orgid, NULL::text AS name, SUM(amt) AS amt, SUM(heads) AS hds
                FROM enigma.ess
                WHERE orgid IS NOT NULL AND phase = %s
                GROUP BY orgid
                UNION ALL
                SELECT NULL, COALESCE(ename, cname), SUM(amt) AS amt, SUM(heads) AS hds
                FROM enigma.ess
                WHERE orgid IS NULL AND phase = %s
                GROUP BY ename, cname
            )
            SELECT t.orgid, COALESCE(o.name1, t.name) AS name,
                   t.amt, t.hds,
                   (t.amt::numeric / NULLIF(t.hds, 0)) AS avg
            FROM (SELECT * FROM top_ess ORDER BY amt DESC LIMIT 5000) t
            LEFT JOIN enigma.organisations o ON t.orgid = o.personid
            ORDER BY """ + order_by
        top_data = execute_query(sql, (p, p))
    else:
        # Both phases - show p1/p2 indicators
        sql = """
            WITH top_ess AS (
                SELECT orgid, NULL::text AS name,
                       SUM(CASE WHEN phase=1 THEN 1 ELSE 0 END) AS p1,
                       SUM(CASE WHEN phase=2 THEN 1 ELSE 0 END) AS p2,
                       SUM(amt) AS amt,
                       AVG(hds) AS hds_avg
                FROM (
                    SELECT orgid, phase, SUM(amt) AS amt, SUM(heads) AS hds
                    FROM enigma.ess
                    WHERE orgid IS NOT NULL
                    GROUP BY orgid, phase
                ) t1
                GROUP BY orgid
                UNION ALL
                SELECT NULL, COALESCE(ename, cname),
                       SUM(CASE WHEN phase=1 THEN 1 ELSE 0 END) AS p1,
                       SUM(CASE WHEN phase=2 THEN 1 ELSE 0 END) AS p2,
                       SUM(amt) AS amt,
                       AVG(hds) AS hds_avg
                FROM (
                    SELECT ename, cname, phase, SUM(amt) AS amt, SUM(heads) AS hds
                    FROM enigma.ess
                    WHERE orgid IS NULL
                    GROUP BY ename, cname, phase
                ) t2
                GROUP BY ename, cname
            )
            SELECT t.orgid, COALESCE(o.name1, t.name) AS name,
                   t.amt, ROUND(t.hds_avg, 0) AS hds,
                   ROUND(t.amt::numeric / NULLIF(t.hds_avg, 0), 0) AS avg,
                   t.p1, t.p2
            FROM (SELECT * FROM top_ess ORDER BY amt DESC LIMIT 5000) t
            LEFT JOIN enigma.organisations o ON t.orgid = o.personid
            ORDER BY """ + order_by
        top_data = execute_query(sql)

    return render_template('dbpub/esstop.html',
                         p=p,
                         sort_param=sort_param,
                         stats_data=stats_data,
                         matched_stats=matched_stats,
                         claim_analysis=claim_analysis,
                         top_data=top_data)


# ESS search


@bp.route('/searchESS.asp')
def searchess():
    """
    Search Employment Support Scheme recipients
    Search by English name with full-text or left-match
    Aggregates by employer name and phase
    """
    n = get_str('n', '')
    st = get_str('st', 'a')  # 'a' for any match, 'l' for left match
    sort_param = get_str('sort', 'namup')

    # Define sort order
    sort_map = {
        'amtup': 'amt, ename',
        'amtdn': 'amt DESC, ename',
        'hdsup': 'hds, ename',
        'hdsdn': 'hds DESC, ename',
        'namup': 'ename',
        'namdn': 'ename DESC',
    }
    order_by = sort_map.get(sort_param, 'ename, amt DESC')

    results = []
    limit = 500

    if n:
        # Build WHERE clause based on search type
        if st == 'a':
            # Full-text search - convert space-separated words to AND query
            search_terms = ' & '.join(n.split())
            where_clause = "to_tsvector('simple', ename) @@ to_tsquery('simple', %s)"
            params = (search_terms,)
        else:  # st == 'l' for left match
            where_clause = "ename LIKE %s"
            params = (n + '%',)

        # Complex query that aggregates by name and phase
        sql = f"""
            SELECT orgid, ename, cname,
                   SUM(CASE WHEN phase=1 THEN 1 ELSE 0 END) AS p1,
                   SUM(CASE WHEN phase=2 THEN 1 ELSE 0 END) AS p2,
                   SUM(amt) AS amt,
                   ROUND(AVG(hds), 0) AS hds,
                   CASE WHEN AVG(hds) > 0 THEN ROUND(SUM(amt)/AVG(hds), 0) ELSE NULL END AS avg
            FROM (
                SELECT orgid, ename, cname, phase, SUM(amt) AS amt, SUM(heads) AS hds
                FROM enigma.ess
                WHERE {where_clause}
                GROUP BY orgid, ename, cname, phase
            ) t2
            GROUP BY orgid, ename, cname
            ORDER BY {order_by}
            LIMIT %s
        """

        results = execute_query(sql, params + (limit,))

    return render_template('dbpub/searchess.html',
                         n=n,
                         st=st,
                         sort_param=sort_param,
                         results=results,
                         limit=limit)


# HKID index


@bp.route('/HKIDindex.asp')
def hkidindex():
    """HKID (Hong Kong Identity Card) index"""
    from webbsite.db import execute_query
    from flask import render_template

    # Stub - would need HKID-specific data
    return render_template('dbpub/hkidindex.html', data=[])


# Webb chips - David Webb's disclosed holdings


@bp.route('/webbchips.asp')
def webbchips():
    """Display David Webb's disclosed holdings (5%+ stakes) in HK-listed stocks"""
    from webbsite.db import execute_query
    from flask import render_template, request

    # Get sort parameter
    sort_param = request.args.get('sort', 'mvdn')

    # Map sort parameter to ORDER BY clause
    sort_mapping = {
        'datedn': 'atdate DESC, name',
        'dateup': 'atdate, name',
        'namedn': 'name DESC',
        'nameup': 'name',
        'codeup': 'sc',
        'codedn': 'sc DESC',
        'stkup': 'stake, name',
        'stkdn': 'stake DESC, name DESC',
        'qddn': 'qdate DESC, value DESC',
        'qdup': 'qdate, value DESC',
        'mvup': 'value, name',
        'mvdn': 'value DESC, name'  # default
    }

    order_by = sort_mapping.get(sort_param, sort_mapping['mvdn'])

    # Build query - matches original ASP logic
    query = f"""
        SELECT
            enigma.lastcode(issueid) AS sc,
            issueid,
            issuer,
            os,
            name1 AS name,
            shares,
            atdate,
            stake,
            price,
            price * shares / 1000000.0 AS value,
            enigma.lastquotedate(issueid, CURRENT_DATE) AS qdate,
            filing
        FROM (
            SELECT *,
                enigma.outstanding(issueid, CURRENT_DATE) AS os,
                ROUND(CAST(enigma.lastquote(issueid, CURRENT_DATE) AS numeric), 3) AS price
            FROM enigma.webbhold
        ) AS t
        JOIN enigma.issue i ON t.issueid = i.id1
        JOIN enigma.organisations o ON i.issuer = o.personid
        ORDER BY {order_by}
    """

    holdings = [dict(row) for row in execute_query(query)]

    # Calculate total market value
    total_value = sum(h['value'] for h in holdings if h['value'] is not None)

    return render_template('dbpub/webbchips.html',
                          holdings=holdings,
                          total_value=total_value,
                          sort=sort_param,
                          title='Webb-chips: current disclosed holdings')


# Land registry data


@bp.route('/landreg.asp')
def landreg():
    """Land registry transactions"""
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from flask import render_template
    from datetime import date

    y = get_int('y', date.today().year)

    # Stub - would need land registry tables
    return render_template('dbpub/landreg.html', y=y, transactions=[])


# Land registry value categories


@bp.route('/lrvaluecats.asp')
def lrvaluecats():
    """Land registry transactions by value category"""
    from webbsite.db import execute_query
    from flask import render_template

    # Stub - would need land registry tables
    return render_template('dbpub/lrvaluecats.html', categories=[])


# Public rental housing districts


@bp.route('/prhdistricts.asp')
def prhdistricts():
    """
    Public rental housing by district - Port of dbpub/prhdistricts.asp
    Shows HK Housing Authority's public rental units by district

    Query params:
    - sort: sorting column

    Tables: enigma.prhflat, enigma.prhblock, enigma.prhestate, enigma.hkdistrict, enigma.hkregion
    """
    sort_param = request.args.get('sort', 'r')

    # Determine sort order
    sort_map = {
        'en': 'en',
        'end': 'en DESC',
        'cn': 'cn',
        'cnd': 'cn DESC',
        'tota': 'tota',
        'totad': 'tota DESC',
        'a': 'a',
        'ad': 'a DESC',
        'c': 'c, en',
        'cd': 'c DESC, en',
        'r': 'region, en',
        'rd': 'region DESC, en',
    }
    order_by = sort_map.get(sort_param, 'region, en')

    # Query districts with aggregated PRH data
    districts = execute_query(f"""
        SELECT
            d.ID,
            d.en,
            d.cn,
            COUNT(*) AS c,
            SUM(f.area) AS tota,
            SUM(f.area) / COUNT(*) AS a,
            CONCAT(r.en, ' ', r.cn) AS region,
            SUM(CASE WHEN f.elevator THEN 1 ELSE 0 END) AS elev
        FROM enigma.prhflat f
        JOIN enigma.prhblock b ON f.blockID = b.ID
        JOIN enigma.prhestate e ON b.estateID = e.ID
        JOIN enigma.hkdistrict d ON e.district = d.ID
        JOIN enigma.hkregion r ON d.regionID = r.ID
        WHERE f.lastseen >= (SELECT DATE(MAX(lastSeen)) FROM enigma.prhflat)
        GROUP BY d.ID, d.en, d.cn, r.en, r.cn
        ORDER BY {order_by}
    """)

    # Calculate totals
    total_units = sum(d['c'] for d in districts) if districts else 0
    total_area = sum(d['tota'] for d in districts) if districts else 0
    total_elev = sum(d['elev'] for d in districts) if districts else 0
    avg_area = total_area / total_units if total_units > 0 else 0

    # Adjust sort for URL (if sorting by region, show by en for drill-down)
    url_sort = 'en' if sort_param == 'r' else sort_param

    return render_template('dbpub/prhdistricts.html',
                         districts=districts,
                         sort=sort_param,
                         url_sort=url_sort,
                         total_units=total_units,
                         total_area=total_area,
                         total_elev=total_elev,
                         avg_area=avg_area)


# HK flights data


@bp.route('/HKflights.asp')
def hkflights():
    """Hong Kong flight statistics (simplified)"""
    from webbsite.asp_helpers import get_str, get_int
    from datetime import datetime, timedelta

    d = get_str('d', '')
    arr = get_int('arr', 1)  # 1 = arrivals, 0 = departures

    # Default to today if no date provided
    if not d:
        d = datetime.now().strftime('%Y-%m-%d')

    # Query flights for the specified date
    data = execute_query(f"""
        SELECT flightno, airline, sched, actual, terminal, gate, status
        FROM enigma.flights
        WHERE DATE(sched) = %s
          AND arrival = %s
          AND cargo = FALSE
        ORDER BY sched
        LIMIT 200
    """, (d, arr == 1))

    return render_template('dbpub/hkflights.html', d=d, arr=arr, data=data)


# HK flights cancellations


@bp.route('/HKflightscan.asp')
def hkflightscan():
    """Hong Kong flight cancellations (simplified)"""
    from webbsite.asp_helpers import get_str, get_int
    from datetime import datetime, timedelta

    d = get_str('d', '')
    arr = get_int('arr', 1)  # 1 = arrivals, 0 = departures

    # Default to today if no date provided
    if not d:
        d = datetime.now().strftime('%Y-%m-%d')

    # Query cancelled flights for the specified date
    data = execute_query(f"""
        SELECT flightno, airline, sched, terminal, status
        FROM enigma.flights
        WHERE DATE(sched) = %s
          AND arrival = %s
          AND cancelled = TRUE
        ORDER BY sched
        LIMIT 100
    """, (d, arr == 1))

    return render_template('dbpub/hkflightscan.html', d=d, arr=arr, data=data)


# Tenders


@bp.route('/HKDtender.asp')
def hkdtender():
    """Government tenders"""
    from webbsite.db import execute_query
    from flask import render_template

    # Stub - would need tender tables
    return render_template('dbpub/hkdtender.html', tenders=[])


# EFBS (Exchange Fund Bills and Notes)


@bp.route('/EFBS.asp')
def efbs():
    """Exchange Fund Bills and Notes"""
    from webbsite.db import execute_query
    from flask import render_template

    # Stub - would need EFBS tables
    return render_template('dbpub/efbs.html', securities=[])


# Female directors distribution per HK-listed company


@bp.route('/FDirsPerListcoHKdstn.asp')
def fdirsperlistcohkdstn():
    """Distribution of female directors per HK-listed company at snapshot date"""
    from webbsite.asp_helpers import get_str
    from webbsite.db import execute_query
    from datetime import date
    from flask import render_template

    d_str = get_str('d', date.today().isoformat())
    try:
        snapshot_date = date.fromisoformat(d_str)
    except ValueError:
        snapshot_date = date.today()

    # Query distribution of female directors
    # Matches HKfdirsDistn stored procedure logic
    sql = """
        WITH listed_companies AS (
            SELECT DISTINCT i.issuer
            FROM enigma.issue i
            JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
            WHERE sl.stockexid IN (1, 20)
              AND i.typeid NOT IN (1, 2, 40, 41, 46)
              AND (sl.firsttradedate IS NULL OR sl.firsttradedate <= %s)
              AND (sl.delistdate IS NULL OR sl.delistdate > %s)
        ),
        board_data AS (
            SELECT
                d.company,
                COUNT(DISTINCT d.director) AS fdirs
            FROM listed_companies lc
            JOIN enigma.directorships d ON lc.issuer = d.company
            JOIN enigma.people p ON d.director = p.personid
            JOIN enigma.positions pos ON d.positionid = pos.positionid
            WHERE pos.rank = 1
              AND p.sex = 'F'
              AND (d.apptdate IS NULL OR d.apptdate <= %s)
              AND (d.resdate IS NULL OR d.resdate > %s)
            GROUP BY d.company
        )
        SELECT
            fdirs,
            COUNT(*) AS number_of_cos
        FROM board_data
        WHERE fdirs > 0
        GROUP BY fdirs
        ORDER BY fdirs DESC
    """

    try:
        results = execute_query(sql, (snapshot_date, snapshot_date, snapshot_date, snapshot_date))

        # Get total listed company count at snapshot date
        # Matches listcoCntAtDate() function logic
        count_sql = """
            SELECT COUNT(DISTINCT i.issuer) AS cnt
            FROM enigma.issue i
            JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
            WHERE sl.stockexid IN (1, 20)
              AND i.typeid NOT IN (1, 2, 40, 41, 46)
              AND (sl.firsttradedate IS NULL OR sl.firsttradedate <= %s)
              AND (sl.delistdate IS NULL OR sl.delistdate > %s)
        """
        count_result = execute_query(count_sql, (snapshot_date, snapshot_date))
        total_cos = count_result[0]['cnt'] if count_result else 0
    except Exception as ex:
        current_app.logger.error(f"Error in FDirsPerListcoHKdstn.asp: {ex}", exc_info=True)
        results = []
        total_cos = 0

    return render_template('dbpub/fdirsperlistcohkdstn.html',
                         distribution=results,
                         d=snapshot_date.isoformat(),
                         total_cos=total_cos)


# INED distribution per HK-listed company


@bp.route('/INEDHKDistnCos.asp')
def inedhkdstncos():
    """Distribution of INEDs per HK-listed company at snapshot date"""
    from webbsite.asp_helpers import get_str
    from webbsite.db import execute_query
    from datetime import date
    from flask import render_template

    d_str = get_str('d', date.today().isoformat())
    try:
        snapshot_date = date.fromisoformat(d_str)
    except ValueError:
        snapshot_date = date.today()

    # Query distribution of INEDs
    sql = """
        WITH board_data AS (
            SELECT
                d.company,
                COUNT(DISTINCT d.director) FILTER (WHERE pos.status = 'INED') AS ineds
            FROM enigma.directorships d
            JOIN enigma.positions pos ON d.positionid = pos.positionid
            JOIN enigma.listedcoshk lc ON d.company = lc.issuer
            WHERE pos.rank = 1
              AND (d.resdate IS NULL OR d.resdate > %s)
              AND d.apptdate <= %s
            GROUP BY d.company
        )
        SELECT
            ineds AS num_seats,
            COUNT(*) AS num_cos
        FROM board_data
        GROUP BY ineds
        ORDER BY ineds DESC
    """

    try:
        results = execute_query(sql, (snapshot_date, snapshot_date))

        # Get total listed company count
        count_sql = "SELECT COUNT(*) AS cnt FROM enigma.listedcoshk"
        count_result = execute_query(count_sql)
        total_cos = count_result[0]['cnt'] if count_result else 0
    except Exception as ex:
        current_app.logger.error(f"Error in INEDHKDistnCos.asp: {ex}", exc_info=True)
        results = []
        total_cos = 0

    return render_template('dbpub/inedhkdstncos.html',
                         distribution=results,
                         d=snapshot_date.isoformat(),
                         total_cos=total_cos)


# INED distribution per person


@bp.route('/INEDHKDistnPeople.asp')
def inedhkdstnpeople():
    """Distribution of INED seats per person at snapshot date"""
    from webbsite.asp_helpers import get_str
    from webbsite.db import execute_query
    from datetime import date
    from flask import render_template

    d_str = get_str('d', date.today().isoformat())
    try:
        snapshot_date = date.fromisoformat(d_str)
    except ValueError:
        snapshot_date = date.today()

    # Query distribution of INED seats per person
    sql = """
        WITH person_data AS (
            SELECT
                d.director,
                p.sex,
                COUNT(DISTINCT d.company) AS num_seats
            FROM enigma.directorships d
            JOIN enigma.people p ON d.director = p.personid
            JOIN enigma.positions pos ON d.positionid = pos.positionid
            JOIN enigma.listedcoshk lc ON d.company = lc.issuer
            WHERE pos.rank = 1
              AND pos.status = 'INED'
              AND (d.resdate IS NULL OR d.resdate > %s)
              AND d.apptdate <= %s
            GROUP BY d.director, p.sex
        )
        SELECT
            num_seats,
            COUNT(*) AS num_people,
            COUNT(*) FILTER (WHERE sex = 'F') AS female
        FROM person_data
        GROUP BY num_seats
        ORDER BY num_seats DESC
    """

    try:
        results = execute_query(sql, (snapshot_date, snapshot_date))
    except Exception as ex:
        current_app.logger.error(f"Error in INEDHKDistnPeople.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/inedhkdstnpeople.html',
                         distribution=results,
                         d=snapshot_date.isoformat())


# Listing teams (SEHK regulatory teams)


@bp.route('/lirteams.asp')
def lirteams():
    """Issuers regulated by SEHK Listing team"""
    from webbsite.asp_helpers import get_int, get_str
    from webbsite.db import execute_query
    from flask import render_template

    t = get_int('t', 1)  # Team ID
    sort_param = get_str('sort', 'namup')

    order_by_map = {
        'codup': 'sc',
        'coddn': 'sc DESC',
        'namup': 'name',
        'namdn': 'name DESC'
    }
    order_by = order_by_map.get(sort_param, 'name')

    # Get team number
    team_sql = "SELECT teamno FROM enigma.lirteams WHERE id = %s"
    try:
        team_result = execute_query(team_sql, (t,))
        teamno = team_result[0]['teamno'] if team_result else 0
    except:
        teamno = 0

    if teamno > 0:
        # Get team staff
        staff_sql = """
            SELECT ls.staffid, ls.firstseen,
                   CASE WHEN s.n2 IS NULL THEN s.n1
                        ELSE s.n1 || ', ' || s.n2
                   END AS name,
                   r.title, s.tel
            FROM enigma.lirteamstaff ls
            JOIN enigma.lirstaff s ON ls.staffid = s.id
            JOIN enigma.lirroles r ON ls.posid = r.id
            WHERE ls.teamid = %s
              AND NOT ls.dead
            ORDER BY r.id DESC
        """

        # Get current issuers
        issuers_sql = f"""
            SELECT
                t.orgid,
                o.name1 AS name,
                t.firstseen,
                (SELECT MIN(sl.stockcode)
                 FROM enigma.stocklistings sl
                 JOIN enigma.issue i ON sl.issueid = i.id1
                 WHERE i.issuer = t.orgid
                   AND NOT sl."2ndCtr"
                   AND (sl.delistdate IS NULL OR sl.delistdate > CURRENT_DATE)
                ) AS sc
            FROM enigma.lirorgteam t
            JOIN enigma.organisations o ON t.orgid = o.personid
            WHERE t.teamid = %s
              AND NOT t.dead
            ORDER BY {order_by}
        """

        try:
            staff = execute_query(staff_sql, (t,))
            issuers = execute_query(issuers_sql, (t,))
        except Exception as ex:
            current_app.logger.error(f"Error in lirteams.asp: {ex}", exc_info=True)
            staff = []
            issuers = []
    else:
        staff = []
        issuers = []

    # Get all teams for dropdown
    teams_sql = """
        SELECT DISTINCT l.id, l.teamno
        FROM enigma.lirteams l
        JOIN enigma.lirteamstaff s ON l.id = s.teamid
        WHERE NOT s.dead
        ORDER BY l.teamno
    """
    try:
        teams = execute_query(teams_sql)
    except:
        teams = []

    return render_template('dbpub/lirteams.html',
                         t=t,
                         teamno=teamno,
                         staff=staff,
                         issuers=issuers,
                         teams=teams,
                         sort=sort_param)


# Single stock total returns (STR)


@bp.route('/str.asp')
def str_route():
    """Webb-site Single stock Total Return chart - port of str.asp"""
    from webbsite.asp_helpers import get_int, get_bool, get_str
    from webbsite.db import execute_query
    from flask import render_template

    i = get_int('i', 0)  # Issue ID
    sc = get_int('sc', 0)  # Stock code (alternative lookup)
    show_deals = get_bool('f')  # Show directors' dealings
    show_bb = get_bool('b')  # Show buybacks

    stock_name = ""
    stock_type = ""
    stock_exp = ""

    # Find enigma.issue ID from stock code if needed (ASP: Call findStock)
    if sc > 0 and i == 0:
        issue_sql = """
            SELECT i.id1, o.name1, st.typeshort,
                   COALESCE(enigma.msdateacc(i.expmat, i.expacc), '') as exp
            FROM enigma.issue i
            JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
            JOIN enigma.organisations o ON i.issuer = o.personid
            JOIN enigma.sectypes st ON i.typeid = st.typeid
            WHERE sl.stockcode = %s
              AND NOT sl."2ndCtr"
            ORDER BY sl.firsttradedate DESC
            LIMIT 1
        """
        try:
            issue_result = execute_query(issue_sql, (sc,))
            if issue_result:
                i = issue_result[0]['id1']
                stock_name = issue_result[0]['name1']
                stock_type = issue_result[0]['typeshort']
                stock_exp = issue_result[0]['exp']
        except:
            pass

    # Initialize data structures
    quotes = []
    sdi_flags = []
    bb_flags = []
    stock_listings = []
    nav_flags = {}
    org_nav = {}
    person_id = None

    if i > 0:
        # Get stock details if not already loaded
        if not stock_name:
            name_sql = """
                SELECT o.name1, o.personid, st.typeshort,
                       COALESCE(enigma.msdateacc(i.expmat, i.expacc), '') as exp,
                       i.floating, i.coupon,
                       COALESCE(c.currency, 'HKD') as curr
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personid
                JOIN enigma.sectypes st ON i.typeid = st.typeid
                LEFT JOIN enigma.currencies c ON i.SEHKcurr = c.ID
                WHERE i.id1 = %s
            """
            try:
                name_result = execute_query(name_sql, (i,))
                if name_result:
                    stock_name = name_result[0]['name1']
                    stock_type = name_result[0]['typeshort']
                    stock_exp = name_result[0]['exp']
                    person_id = name_result[0]['personid']
                    floating = name_result[0]['floating']
                    coupon = name_result[0]['coupon']
                    currency = name_result[0]['curr']
            except:
                pass
        else:
            # Get personID if we have stock name but not person_id
            try:
                person_result = execute_query("""
                    SELECT o.personid
                    FROM enigma.issue i
                    JOIN enigma.organisations o ON i.issuer = o.personid
                    WHERE i.id1 = %s
                """, (i,))
                if person_result:
                    person_id = person_result[0]['personid']
            except:
                pass

        # Build full stock display name (matching ASP issueName function)
        # Format: Name: [Floating] typeShort currency [coupon%] [due exp]
        stock_display = f"{stock_name}: "
        if 'floating' in locals() and floating:
            stock_display += "Floating "
        stock_display += f"{stock_type}"
        if 'currency' in locals() and currency:
            stock_display += f" {currency}"
        if 'coupon' in locals() and coupon:
            stock_display += f" {coupon}%"
        if stock_exp:
            stock_display += f" due {stock_exp}"
        stock_display = stock_display.strip()

        # Get stock listings (matching HKlistings from navbars.asp)
        try:
            stock_listings = execute_query("""
                SELECT sl.*, l.shortname as exchange_name
                FROM enigma.stocklistings sl
                JOIN enigma.listings l ON sl.stockExID = l.stockExID
                WHERE sl.stockExID IN (1, 20, 22, 23, 38, 71)
                  AND sl.issueID = %s
                ORDER BY sl.firstTradeDate
            """, (i,))

            # Format stock codes (5 digits, zero-padded)
            from datetime import date as date_type
            today = date_type.today()
            for listing in stock_listings:
                if listing['stockcode']:
                    listing['stockcode_formatted'] = str(listing['stockcode']).zfill(5)
                else:
                    listing['stockcode_formatted'] = ''
        except:
            stock_listings = []
            today = None

        # Get security type for navigation logic
        try:
            sec_type_result = execute_query("""
                SELECT typeID FROM enigma.issue WHERE ID1 = %s
            """, (i,))
            sec_type = sec_type_result[0]['typeid'] if sec_type_result else None
        except:
            sec_type = None

        # Build navigation flags (matching stockBar from navbars.asp)
        has_hk_listed = len(stock_listings) > 0
        latest_listing = stock_listings[-1] if stock_listings else None
        delist_date = latest_listing['delistdate'] if latest_listing else None
        stock_ex_id = latest_listing['stockexid'] if latest_listing else None

        # Check for buybacks (not for rights/convertible bonds)
        has_buybacks = has_hk_listed and sec_type not in (2, 41)

        # Check for outstanding shares data
        try:
            outstanding_result = execute_query("""
                SELECT EXISTS(SELECT 1 FROM enigma.issuedshares WHERE issueID = %s) as has_data
            """, (i,))
            has_outstanding = outstanding_result[0]['has_data'] if outstanding_result else False
        except:
            has_outstanding = False

        # Check for short selling data
        try:
            short_result = execute_query("""
                SELECT EXISTS(SELECT 1 FROM enigma.sfcshort WHERE issueID = %s) as has_data
            """, (i,))
            has_short = short_result[0]['has_data'] if short_result else False
        except:
            has_short = False

        # Check for CCASS (after Jun 26 2007, not rights/convertible/notes)
        ccass_on = False
        if has_hk_listed and sec_type not in (2, 40, 41):
            if delist_date is None or delist_date >= date_type(2007, 6, 26):
                ccass_on = True

        # Check for SDI dealings
        try:
            sdi_result = execute_query("""
                SELECT EXISTS(SELECT 1 FROM enigma.sdi WHERE issueID = %s) as has_data
            """, (i,))
            has_sdi = sdi_result[0]['has_data'] if sdi_result else False
        except:
            has_sdi = False

        nav_flags = {
            'has_buybacks': has_buybacks,
            'has_outstanding': has_outstanding,
            'has_short': has_short,
            'ccass_on': ccass_on,
            'has_sdi': has_sdi,
            'has_hk_listed': has_hk_listed,
            'stock_ex_id': stock_ex_id,
            'delist_date': delist_date,
            'sec_type': sec_type
        }

        # Organization navigation flags (matching orgBar from navbars.asp)
        if person_id:
            try:
                # Check for officers/directorships
                officers_result = execute_query("""
                    SELECT EXISTS(SELECT 1 FROM enigma.directorships WHERE Company = %s) as has_data
                """, (person_id,))
                org_nav['has_officers'] = officers_result[0]['has_data'] if officers_result else False

                # Check for pay data
                pay_result = execute_query("""
                    SELECT EXISTS(SELECT 1 FROM enigma.documents WHERE docTypeID = 0 AND pay AND orgID = %s) as has_data
                """, (person_id,))
                org_nav['has_pay'] = pay_result[0]['has_data'] if pay_result else False

                # Check for advisers (when company is the client)
                advisers_result = execute_query("""
                    SELECT EXISTS(SELECT 1 FROM enigma.adviserships WHERE Company = %s) as has_data
                """, (person_id,))
                org_nav['has_advisers'] = advisers_result[0]['has_data'] if advisers_result else False

                # Check for adviserships (when company is the adviser)
                adviserships_result = execute_query("""
                    SELECT EXISTS(SELECT 1 FROM enigma.adviserships WHERE Adviser = %s) as has_data
                """, (person_id,))
                org_nav['has_adviserships'] = adviserships_result[0]['has_data'] if adviserships_result else False

                # Check for SFC licenses
                sfc_lic_result = execute_query("""
                    SELECT EXISTS(SELECT 1 FROM enigma.olicrec WHERE orgID = %s) as has_data
                """, (person_id,))
                org_nav['has_sfc_licenses'] = sfc_lic_result[0]['has_data'] if sfc_lic_result else False

                # Check for CCASS participant
                ccass_part_result = execute_query("""
                    SELECT partID FROM ccass.participants WHERE personID = %s LIMIT 1
                """, (person_id,))
                org_nav['ccass_part_id'] = ccass_part_result[0]['partid'] if ccass_part_result else None

                # Check for financial documents
                financials_result = execute_query("""
                    SELECT EXISTS(SELECT 1 FROM enigma.documents WHERE orgID = %s) as has_data
                """, (person_id,))
                org_nav['has_financials'] = financials_result[0]['has_data'] if financials_result else False

                # Check for ESS data
                ess_result = execute_query("""
                    SELECT EXISTS(SELECT 1 FROM enigma.ess WHERE orgID = %s) as has_data
                """, (person_id,))
                org_nav['has_ess'] = ess_result[0]['has_data'] if ess_result else False

                # Check for Webb-site articles
                articles_result = execute_query("""
                    SELECT EXISTS(SELECT 1 FROM enigma.personstories WHERE personID = %s) as has_data
                """, (person_id,))
                org_nav['has_articles'] = articles_result[0]['has_data'] if articles_result else False

                # Check for complain page (HKEX or has lirorgteam)
                complain_result = execute_query("""
                    SELECT EXISTS(SELECT 1 FROM enigma.lirorgteam WHERE orgID = %s) as has_data
                """, (person_id,))
                org_nav['has_complain'] = complain_result[0]['has_data'] or person_id == 9643  # 9643 = HKEX
            except Exception as ex:
                from flask import current_app
                current_app.logger.error(f"Error building org_nav: {ex}", exc_info=True)

        # Get adjusted quotes using getadjust() function (ASP lines 19-36)
        quotes_sql = """
            SELECT
                EXTRACT(EPOCH FROM atDate) * 1000 AS timestamp,
                ROUND((vol / enigma.getadjust(%s, atDate))::numeric) AS adj_vol,
                ROUND((closing * enigma.getadjust(%s, atDate))::numeric, 5) AS adj_close
            FROM ccass.quotes
            WHERE issueID = %s
            ORDER BY atDate
        """

        # Get SDI (directors' dealings) data (ASP lines 38-46)
        sdi_sql = """
            SELECT
                relDate,
                CASE WHEN probReason IN(21,1101,1113) THEN 'Bought' ELSE 'Sold' END AS action,
                shsInv,
                CONCAT(p.name1, ', ', p.name2) AS person_name,
                dir AS person_id,
                s.ID AS sdi_id,
                COALESCE(avPrice, hiPrice) AS price,
                c.currency
            FROM enigma.sdi s
            JOIN enigma.sdievent ON s.id = sdiID
            JOIN enigma.people p ON dir = personID
            JOIN enigma.currencies c ON curr = c.ID
            WHERE serNoSuper IS NULL
              AND probReason IN(21,22,23,1101,1113,1201,1213,1302)
              AND (hiPrice IS NOT NULL OR avPrice IS NOT NULL)
              AND issueID = %s
            ORDER BY relDate
        """

        # Get buyback data (ASP lines 48-54)
        buyback_sql = """
            SELECT
                effDate,
                -shares AS shares,
                value
            FROM enigma.capchanges
            WHERE capChangeType IN(1,6)
              AND issueID = %s
        """

        try:
            quotes = execute_query(quotes_sql, (i, i, i))

            # Fill in gaps in closing prices with previous close (ASP lines 24-28)
            if quotes:
                last_close = None
                for quote in quotes:
                    if quote['adj_close'] and quote['adj_close'] > 0:
                        last_close = quote['adj_close']
                    elif last_close is not None:
                        quote['adj_close'] = last_close

            sdi_flags = execute_query(sdi_sql, (i,))
            bb_flags = execute_query(buyback_sql, (i,))

        except Exception as ex:
            current_app.logger.error(f"Error in str.asp: {ex}", exc_info=True)
    else:
        stock_display = "Stock not found."

    return render_template('dbpub/str.html',
                         i=i,
                         sc=sc,
                         stock_name=stock_display,
                         quotes=quotes,
                         sdi_flags=sdi_flags,
                         bb_flags=bb_flags,
                         show_deals=show_deals,
                         show_bb=show_bb,
                         stock_listings=stock_listings,
                         nav_flags=nav_flags,
                         org_nav=org_nav,
                         person_id=person_id,
                         today=today if 'today' in locals() else None)




@bp.route('/ctr.asp')
def ctr():
    """Compare Webb-site Total Returns - up to 5 stocks"""
    from webbsite.asp_helpers import get_int, get_str, get_bool
    from webbsite.db import execute_query
    from flask import render_template, request
    from datetime import datetime, date

    # Helper function to resolve stock code or issue ID to full issue info
    def get_issue(issue_id_param, stock_code_param, d1):
        """Resolve stock code or issue ID to issue details"""
        issue_id = None
        stock_code = stock_code_param

        # Try to resolve from stock code
        if stock_code and stock_code.isdigit():
            if d1:
                # Look for listing existing on that date
                sql = """
                    SELECT issueID FROM enigma.stocklistings
                    WHERE stockExID IN (1,20,22,23,38)
                    AND (firstTradeDate IS NULL OR firstTradeDate <= %s)
                    AND (deListDate IS NULL OR deListDate > %s)
                    AND stockCode = %s
                """
                result = execute_query(sql, (d1, d1, int(stock_code)))
                if result:
                    issue_id = result[0]['issueid']
                else:
                    # No listing, look for first listing after that date
                    sql = """
                        SELECT MIN(firstTradeDate) AS minDate
                        FROM enigma.stocklistings
                        WHERE stockExID IN (1,20,22,23,38)
                        AND firstTradeDate >= %s
                        AND stockCode = %s
                    """
                    result = execute_query(sql, (d1, int(stock_code)))
                    if result and result[0]['mindate']:
                        sql = """
                            SELECT issueID FROM enigma.stocklistings
                            WHERE stockExID IN (1,20,22,23,38)
                            AND firstTradeDate = %s
                            AND stockCode = %s
                        """
                        result = execute_query(sql, (result[0]['mindate'], int(stock_code)))
                        if result:
                            issue_id = result[0]['issueid']
            else:
                # No date specified, look for current stock
                sql = """
                    SELECT issueID FROM enigma.stocklistings
                    WHERE stockExID IN (1,20,22,23,38)
                    AND deListDate IS NULL
                    AND stockCode = %s
                """
                result = execute_query(sql, (int(stock_code),))
                if result:
                    issue_id = result[0]['issueid']
                else:
                    # No current listing, get latest
                    sql = """
                        SELECT MAX(deListDate) AS maxDate
                        FROM enigma.stocklistings
                        WHERE stockExID IN (1,20,22,23,38)
                        AND stockCode = %s
                    """
                    result = execute_query(sql, (int(stock_code),))
                    if result and result[0]['maxdate']:
                        sql = """
                            SELECT issueID FROM enigma.stocklistings
                            WHERE stockExID IN (1,20,22,23,38)
                            AND deListDate = %s
                            AND stockCode = %s
                        """
                        result = execute_query(sql, (result[0]['maxdate'], int(stock_code)))
                        if result:
                            issue_id = result[0]['issueid']

        # If no issue_id from stock code, try issue_id parameter
        if not issue_id and issue_id_param:
            issue_id = issue_id_param

        # Get issue details
        if issue_id:
            sql = """
                SELECT i.id1 as issueID, o.personID, o.name1,
                       enigma.lastCode(i.id1) as lastCode,
                       st.typeShort,
                       CASE WHEN i.expmat IS NOT NULL THEN
                           TO_CHAR(i.expmat, 'YYYY-MM-DD')
                       ELSE '' END as exp
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                WHERE i.id1 = %s
            """
            result = execute_query(sql, (issue_id,))
            if result:
                return {
                    'issueID': result[0]['issueid'],
                    'lastCode': result[0]['lastcode'],
                    'personID': result[0]['personid'],
                    'name': f"{result[0]['name1']}: {result[0]['typeshort']} {result[0]['exp']}"
                }

        return None

    # Check for reset
    if request.args.get('r'):
        rel = False
        d1 = None
        issues = []
    else:
        rel = get_bool('rel')
        d1_str = get_str('d1', '')
        d1 = None
        if d1_str:
            try:
                d1 = datetime.strptime(d1_str, '%Y-%m-%d').date()
                # Don't allow future dates
                if d1 > date.today():
                    d1 = date(date.today().year - 1, date.today().month, date.today().day)
            except:
                pass

        # Get up to 5 issues
        issues = []
        for i in range(1, 6):
            issue_id = get_int(f'i{i}', None)
            stock_code = get_str(f's{i}', '')
            issue_info = get_issue(issue_id, stock_code, d1)
            if issue_info:
                issues.append(issue_info)

    # Get stock listings and navigation data for the first issue (if any)
    stock_listings = []
    nav_flags = {}
    if issues:
        first_issue_id = issues[0]['issueID']

        # Get stock listings (equivalent to HKlistings)
        stock_listings = execute_query("""
            SELECT sl.*, l.shortname as exchange_name
            FROM enigma.stocklistings sl
            JOIN enigma.listings l ON sl.stockExID = l.stockExID
            WHERE sl.stockExID IN (1, 20, 22, 23, 38, 71)
              AND sl.issueID = %s
            ORDER BY sl.firstTradeDate
        """, (first_issue_id,))

        # Format stock codes (5 digits, zero-padded)
        for listing in stock_listings:
            if listing['stockcode']:
                listing['stockcode_formatted'] = str(listing['stockcode']).zfill(5)
            else:
                listing['stockcode_formatted'] = ''

        # Get security type for navigation logic
        sec_type_result = execute_query("""
            SELECT typeID FROM enigma.issue WHERE ID1 = %s
        """, (first_issue_id,))
        sec_type = sec_type_result[0]['typeid'] if sec_type_result else None

        # Determine navigation flags
        has_hk_listed = len(stock_listings) > 0
        latest_listing = stock_listings[-1] if stock_listings else None  # Get latest (last in chronological order)
        delist_date = latest_listing['delistdate'] if latest_listing else None
        stock_ex_id = latest_listing['stockexid'] if latest_listing else None

        # Check for buybacks (not for rights/convertible bonds)
        # ASP code doesn't query buybacklog, just checks conditions
        has_buybacks = has_hk_listed and sec_type not in (2, 41)

        # Check for outstanding shares data
        outstanding_result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.issuedshares WHERE issueID = %s) as has_data
        """, (first_issue_id,))
        has_outstanding = outstanding_result[0]['has_data'] if outstanding_result else False

        # Check for short selling data
        short_result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.sfcshort WHERE issueID = %s) as has_data
        """, (first_issue_id,))
        has_short = short_result[0]['has_data'] if short_result else False

        # Check for CCASS (after Jun 26 2007, not rights/convertible/notes)
        from datetime import date as date_type
        ccass_on = False
        if has_hk_listed and sec_type not in (2, 40, 41):
            if delist_date is None or delist_date >= date_type(2007, 6, 26):
                ccass_on = True

        # Check for SDI dealings
        sdi_result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.sdi WHERE issueID = %s) as has_data
        """, (first_issue_id,))
        has_sdi = sdi_result[0]['has_data'] if sdi_result else False

        nav_flags = {
            'has_buybacks': has_buybacks,
            'has_outstanding': has_outstanding,
            'has_short': has_short,
            'ccass_on': ccass_on,
            'has_sdi': has_sdi,
            'has_hk_listed': has_hk_listed,
            'stock_ex_id': stock_ex_id,
            'delist_date': delist_date,
            'sec_type': sec_type
        }

        # Organization navigation flags (matching orgBar from navbars.asp)
        person_id = issues[0]['personID']
        org_nav = {}

        # Check for officers/directorships
        officers_result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.directorships WHERE Company = %s) as has_data
        """, (person_id,))
        org_nav['has_officers'] = officers_result[0]['has_data'] if officers_result else False

        # Check for pay data
        pay_result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.documents WHERE docTypeID = 0 AND pay AND orgID = %s) as has_data
        """, (person_id,))
        org_nav['has_pay'] = pay_result[0]['has_data'] if pay_result else False

        # Check for advisers (when company is the client)
        advisers_result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.adviserships WHERE Company = %s) as has_data
        """, (person_id,))
        org_nav['has_advisers'] = advisers_result[0]['has_data'] if advisers_result else False

        # Check for adviserships (when company is the adviser)
        adviserships_result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.adviserships WHERE Adviser = %s) as has_data
        """, (person_id,))
        org_nav['has_adviserships'] = adviserships_result[0]['has_data'] if adviserships_result else False

        # Check for SFC licenses
        sfc_lic_result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.olicrec WHERE orgID = %s) as has_data
        """, (person_id,))
        org_nav['has_sfc_licenses'] = sfc_lic_result[0]['has_data'] if sfc_lic_result else False

        # Check for CCASS participant
        ccass_part_result = execute_query("""
            SELECT partID FROM ccass.participants WHERE personID = %s LIMIT 1
        """, (person_id,))
        org_nav['ccass_part_id'] = ccass_part_result[0]['partid'] if ccass_part_result else None

        # Check for financial documents
        financials_result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.documents WHERE orgID = %s) as has_data
        """, (person_id,))
        org_nav['has_financials'] = financials_result[0]['has_data'] if financials_result else False

        # Check for ESS data
        ess_result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.ess WHERE orgID = %s) as has_data
        """, (person_id,))
        org_nav['has_ess'] = ess_result[0]['has_data'] if ess_result else False

        # Check for Webb-site articles
        articles_result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.personstories WHERE personID = %s) as has_data
        """, (person_id,))
        org_nav['has_articles'] = articles_result[0]['has_data'] if articles_result else False

        # Check for complain page (HKEX or has lirorgteam)
        complain_result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.lirorgteam WHERE orgID = %s) as has_data
        """, (person_id,))
        org_nav['has_complain'] = complain_result[0]['has_data'] or person_id == 9643  # 9643 = HKEX
    else:
        org_nav = {}

    # Build the data if we have issues
    adj_data = []
    colors = ['blue', 'green', 'red', 'black', 'olive']
    start_date_str = ''

    if issues:
        # Default start date
        if not d1:
            d1 = date(1994, 1, 1)

        # Find earliest common date where all stocks have quotes
        for issue in issues:
            sql = """
                SELECT MIN(atDate) AS d1
                FROM ccass.quotes
                WHERE issueID = %s
                AND atDate >= %s
            """
            result = execute_query(sql, (issue['issueID'], d1))
            if result and result[0]['d1'] and result[0]['d1'] > d1:
                d1 = result[0]['d1']

        start_date_str = d1.strftime('%Y-%m-%d')

        # Get list of dates where any stock has a quote
        issue_list = ','.join(str(issue['issueID']) for issue in issues)
        sql = f"""
            SELECT DISTINCT atDate
            FROM ccass.quotes
            WHERE issueID IN ({issue_list})
            AND atDate >= %s
            ORDER BY atDate
        """
        date_rows = execute_query(sql, (d1,))
        dates = [row['atdate'] for row in date_rows]

        if dates:
            # Initialize adj_data array: [date, stock1_return, stock2_return, ...]
            adj_data = [[d] + [0.0] * len(issues) for d in dates]

            # Calculate adjusted returns for each stock
            for stock_idx, issue in enumerate(issues):
                issue_id = issue['issueID']

                # Find last exDate on or before first day with a price
                sql = """
                    SELECT MAX(exDate) AS maxDate
                    FROM enigma.adjustments
                    WHERE issueID = %s
                    AND exDate <= enigma.firstQuoteDate(%s, %s)
                """
                result = execute_query(sql, (issue_id, issue_id, start_date_str))
                last_ex_date = result[0]['maxdate'] if result and result[0]['maxdate'] else None

                base_adj = 1.0
                next_ex_date = None
                adjustments = []

                if last_ex_date is None:
                    # No ex-dates prior to first quote
                    last_ex_date = d1
                    base_adj = 1.0
                    sql = """
                        SELECT exDate, cumAdjust
                        FROM enigma.adjustments
                        WHERE issueID = %s
                        ORDER BY exDate
                    """
                    adj_rows = execute_query(sql, (issue_id,))
                    if adj_rows:
                        adjustments = [(row['exdate'], float(row['cumadjust'])) for row in adj_rows]
                        next_ex_date = adjustments[0][0]
                else:
                    sql = """
                        SELECT exDate, cumAdjust
                        FROM enigma.adjustments
                        WHERE issueID = %s
                        AND exDate >= %s
                        ORDER BY exDate
                    """
                    adj_rows = execute_query(sql, (issue_id, last_ex_date))
                    adjustments = [(row['exdate'], float(row['cumadjust'])) for row in adj_rows]

                    # Get base adjustment and move to next adjustment
                    adj_idx = 0
                    next_ex_date = last_ex_date
                    while adj_idx < len(adjustments) and adjustments[adj_idx][0] <= last_ex_date:
                        base_adj = adjustments[adj_idx][1]
                        adj_idx += 1
                        if adj_idx < len(adjustments):
                            next_ex_date = adjustments[adj_idx][0]
                    adjustments = adjustments[adj_idx:]
                    if adjustments:
                        next_ex_date = adjustments[0][0]

                # Get quotes
                sql = """
                    SELECT atDate, closing
                    FROM ccass.quotes
                    WHERE issueID = %s
                    AND atDate >= %s
                    ORDER BY atDate
                """
                quote_rows = execute_query(sql, (issue_id, start_date_str))
                quotes = {row['atdate']: float(row['closing']) for row in quote_rows}

                # Find first non-zero price as base
                base_price = None
                for d in dates:
                    if d in quotes and quotes[d] != 0:
                        base_price = quotes[d]
                        break

                if base_price is None:
                    base_price = 1.0  # Avoid division by zero

                # Calculate adjusted returns
                factor = 1.0
                adj_idx = 0
                closing_return = 0.0

                for date_idx, at_date in enumerate(dates):
                    # Update factor if we've reached next adjustment date
                    while adj_idx < len(adjustments) and at_date >= adjustments[adj_idx][0]:
                        factor = base_adj / adjustments[adj_idx][1]
                        adj_idx += 1

                    # Calculate return for this date
                    if at_date in quotes and quotes[at_date] != 0:
                        closing_return = (quotes[at_date] * factor / base_price - 1) * 100

                    # Store return (carry forward last value for missing dates)
                    adj_data[date_idx][stock_idx + 1] = closing_return

    return render_template('dbpub/ctr.html',
                         issues=issues,
                         adj_data=adj_data,
                         rel=rel,
                         start_date_str=start_date_str,
                         colors=colors,
                         stock_listings=stock_listings,
                         nav_flags=nav_flags,
                         org_nav=org_nav,
                         today=date.today())




@bp.route('/hksolsmoves.asp')
def hksolsmoves_lowercase():
    """Lowercase alias for HKsolsmoves.asp"""
    return hk_sols_moves()




@bp.route('/hkpax.asp')
def hkpax():
    """
    HK Immigration Department passenger statistics
    Port of dbpub/hkpax.asp

    Query params:
    - t: passenger type ID (0=all passengers, default=0)
    - p: port ID (0=all ports, -1=all except airport, default=0)
    - f: frequency (0=daily, 1=weekly Sun-Sat, 2=weekly Mon-Sun, 3=monthly, 4=annual, default=4)

    Tables used: enigma.hkpx, enigma.hkpxtypes, enigma.hkports
    """
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from flask import render_template, request

    t = get_int('t', 0)  # passenger type
    p = get_int('p', 0)  # port
    f = get_int('f', 4)  # frequency (default to annual)

    # Validate frequency parameter
    if f < 0 or f > 4:
        f = 4

    # Get passenger type and port names for display
    pxtypes = execute_query("""
        SELECT 0 as id, 'All passengers' as name
        UNION
        SELECT id, name FROM enigma.hkpxtypes ORDER BY id
    """)

    ports = execute_query("""
        SELECT 0 as id, 'All ports' as name
        UNION
        SELECT -1 as id, 'All ports except airport' as name
        UNION
        SELECT id, name FROM enigma.hkports ORDER BY name
    """)

    # Get selected names
    px_name = next((row['name'] for row in pxtypes if row['id'] == t), 'All passengers')
    port_name = next((row['name'] for row in ports if row['id'] == p), 'All ports')

    # Build WHERE clause
    where_parts = []
    if t > 0:
        where_parts.append(f"pxtype = {t}")
    if p > 0:
        where_parts.append(f"port = {p}")
    elif p == -1:
        where_parts.append("port <> 1")

    where_clause = " AND " + " AND ".join(where_parts) if where_parts else ""

    # Determine grouping based on frequency
    freq_groups = {
        0: 'd',  # daily
        1: 'TO_CHAR(d, \'IYYY-IW\')',  # weekly Sun-Sat (ISO week)
        2: 'TO_CHAR(d - INTERVAL \'1 day\', \'IYYY-IW\')',  # weekly Mon-Sun
        3: 'EXTRACT(YEAR FROM d), EXTRACT(MONTH FROM d)',  # monthly
        4: 'EXTRACT(YEAR FROM d)'  # annual
    }
    fgroup = freq_groups.get(f, freq_groups[4])

    # Query passenger data with aggregation
    pax_data = execute_query(f"""
        SELECT
            MIN(d) as d,
            SUM(arrivals) as arrivals,
            -SUM(departures) as departures,
            SUM(arrivals - departures) as net
        FROM enigma.hkpx
        WHERE 1=1 {where_clause}
        GROUP BY {fgroup}
        ORDER BY MIN(d)
    """)

    # Format data for Highcharts (convert to list for JSON serialization)
    chart_data = [[str(row['d']), int(row['arrivals']), int(row['departures']), int(row['net'])] for row in pax_data]

    return render_template('dbpub/hkpax.html',
                         t=t,
                         p=p,
                         f=f,
                         px_name=px_name,
                         port_name=port_name,
                         pxtypes=pxtypes,
                         ports=ports,
                         pax_data=pax_data,
                         chart_data=chart_data)




@bp.route('/jail.asp')
def jail():
    """
    Hong Kong Correctional Services Department custody statistics
    Port of dbpub/jail.asp

    Query params:
    - j: jail/institution ID (0=all institutions, default=0)

    Tables used: enigma.prisoners, enigma.jails, enigma.jailtypes, enigma.prisorigin
    """
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from flask import render_template, request

    j = get_int('j', 0)  # jail ID

    # Get jail/institution details
    jail_name = "all institutions"
    type_txt = "all institutions"
    jail_type = 0

    if j > 0:
        jail_info = execute_query("""
            SELECT j.name, j.type, jt.txt
            FROM enigma.jails j
            JOIN enigma.jailtypes jt ON j.type = jt.id
            WHERE j.id = %s
        """, (j,))
        if jail_info:
            jail_name = jail_info[0]['name']
            jail_type = jail_info[0]['type']
            type_txt = jail_info[0]['txt'] + "s"

    # Build WHERE clause for prisoner queries
    where_clause = f" AND jail = {j}" if j > 0 else ""

    # Query 1: Prisoners by type (convicted, remand, detainee) for selected institution(s)
    prisoners_by_type = execute_query(f"""
        SELECT
            d,
            SUM(convict) as c,
            SUM(remand) as r,
            SUM(detain) as dt,
            SUM(convict + remand + detain) as t,
            CASE WHEN SUM(convict + remand + detain) > 0
                 THEN ROUND(100.0 * SUM(convict) / SUM(convict + remand + detain), 2)
                 ELSE 0 END as c_pct,
            CASE WHEN SUM(convict + remand + detain) > 0
                 THEN ROUND(100.0 * SUM(remand) / SUM(convict + remand + detain), 2)
                 ELSE 0 END as r_pct,
            CASE WHEN SUM(convict + remand + detain) > 0
                 THEN ROUND(100.0 * SUM(detain) / SUM(convict + remand + detain), 2)
                 ELSE 0 END as dt_pct
        FROM enigma.prisoners
        WHERE 1=1 {where_clause}
        GROUP BY d
        ORDER BY d
    """)

    # Query 2: Breakdown by origin (for all institutions) OR by type (for specific jail type)
    if j == 0:
        # Breakdown by origin for all institutions
        prisoners_breakdown = execute_query("""
            SELECT
                d,
                local as val1,
                mtm as val2,
                nonlocal as val3,
                local + mtm + nonlocal as t,
                CASE WHEN local + mtm + nonlocal > 0
                     THEN ROUND(100.0 * local / (local + mtm + nonlocal), 2)
                     ELSE 0 END as val1_pct,
                CASE WHEN local + mtm + nonlocal > 0
                     THEN ROUND(100.0 * mtm / (local + mtm + nonlocal), 2)
                     ELSE 0 END as val2_pct,
                CASE WHEN local + mtm + nonlocal > 0
                     THEN ROUND(100.0 * nonlocal / (local + mtm + nonlocal), 2)
                     ELSE 0 END as val3_pct
            FROM enigma.prisorigin
            GROUP BY d, local, mtm, nonlocal
            ORDER BY d
        """)
    else:
        # Breakdown by type for this jail type
        prisoners_breakdown = execute_query(f"""
            SELECT
                d,
                SUM(convict) as val1,
                SUM(remand) as val2,
                SUM(detain) as val3,
                SUM(convict + remand + detain) as t,
                CASE WHEN SUM(convict + remand + detain) > 0
                     THEN ROUND(100.0 * SUM(convict) / SUM(convict + remand + detain), 2)
                     ELSE 0 END as val1_pct,
                CASE WHEN SUM(convict + remand + detain) > 0
                     THEN ROUND(100.0 * SUM(remand) / SUM(convict + remand + detain), 2)
                     ELSE 0 END as val2_pct,
                CASE WHEN SUM(convict + remand + detain) > 0
                     THEN ROUND(100.0 * SUM(detain) / SUM(convict + remand + detain), 2)
                     ELSE 0 END as val3_pct
            FROM enigma.prisoners p
            JOIN enigma.jails j ON p.jail = j.id
            WHERE j.type = {jail_type}
            GROUP BY d
            ORDER BY d
        """)

    # Get list of jails for dropdown
    jails_list = execute_query("""
        SELECT 0 as id, 'All institutions' as name
        UNION
        SELECT id, name FROM enigma.jails ORDER BY id <> 0, name
    """)

    # Format data for Highcharts
    chart1_data = [[str(row['d']), int(row['c']), int(row['r']), int(row['dt'])] for row in prisoners_by_type]
    chart2_data = [[str(row['d']), float(row['c_pct']), float(row['r_pct']), float(row['dt_pct'])] for row in prisoners_by_type]
    chart3_data = [[str(row['d']), int(row['val1']), int(row['val2']), int(row['val3'])] for row in prisoners_breakdown] if prisoners_breakdown else []
    chart4_data = [[str(row['d']), float(row['val1_pct']), float(row['val2_pct']), float(row['val3_pct'])] for row in prisoners_breakdown] if prisoners_breakdown else []

    return render_template('dbpub/jail.html',
                         j=j,
                         jail_name=jail_name,
                         type_txt=type_txt,
                         jails_list=jails_list,
                         prisoners_by_type=prisoners_by_type,
                         prisoners_breakdown=prisoners_breakdown,
                         chart1_data=chart1_data,
                         chart2_data=chart2_data,
                         chart3_data=chart3_data,
                         chart4_data=chart4_data)




@bp.route('/orgdata.asp')
def orgdata():
    """
    Port of dbpub/orgdata.asp
    Comprehensive organization/company data page showing:
    - Basic info (domicile, incorporation, type, etc.)
    - Foreign registrations
    - ESS COVID-19 subsidy data
    - Name and domicile history
    - Securities (listed equities, debt, preference shares)
    - Governance ratings
    - Reorganization history

    Query params:
    - p: personID (organization ID)
    - code: stock code (converts to personID)
    - s1, s2, s3: sort parameters for holders/holdings/debt tables
    - x: expand parameter

    Tables used: weborgs view, lsorgs, orgdata, freg, oldcrf, ess,
                 nameChanges, domChanges, reorg, stocklistings, issue, etc.
    """
    from webbsite.asp_helpers import get_int, get_str, html_ent, ms_date

    # Get query parameters
    person_id = get_int('p', 0)
    code = get_int('code', 0)
    s1 = get_str('s1', '')
    s2 = get_str('s2', '')
    s3 = get_str('s3', '')
    expand = get_str('x', 'c')
    if expand not in ('n', 'y'):
        expand = 'c'

    # Convert stock code to personID if provided
    if code > 0:
        # Pad stock code: 4 digits for Main Board (1-9999), 5 digits for GEM (80000+)
        padded_code = str(code).zfill(5) if code >= 8000 else str(code).zfill(4)
        result = execute_query("""
            SELECT COALESCE((
                SELECT orgID FROM enigma.WebListings
                WHERE StockCode = %s
                AND (DelistDate IS NULL OR DelistDate >= NOW())
            ), 0) as personID
        """, (padded_code,))
        if result:
            person_id = result[0]['personid']

    # Initialize variables
    name = "No record found"
    org_data = None
    title = name
    lsid = None
    year_end_data = None
    registry_links = {}

    # Registry URL templates by domicile ID
    registry_url_templates = {
        1: 'https://www.e-services.cr.gov.hk/ICRIS3EP/system/home.do',
        2: 'https://find-and-update.company-information.service.gov.uk/company/{incid}',
        25: 'https://www.companiesoffice.govt.nz/companies/app/ui/pages/companies/{incid}',
        16: 'http://abr.business.gov.au/SearchByAbn.aspx?SearchText={incid_nospace}',
        23: 'https://www.ic.gc.ca/app/scr/cc/CorporationsCanada/fdrlCrpDtls.html?corpId={incid_nodash}',
        46: 'https://datacvr.virk.dk/data/visenhed?language=en-gb&enhedstype=virksomhed&id={incid}',
        112: 'https://find-and-update.company-information.service.gov.uk/company/{incid}',
        116: 'https://find-and-update.company-information.service.gov.uk/company/{incid}',
        288: 'http://corp.sec.state.ma.us/CorpWeb/CorpSearch/CorpSummary.aspx?FEIN={incid}',
        311: 'https://find-and-update.company-information.service.gov.uk/company/{incid}'
    }

    if person_id > 0:
        # Get main organization data from weborgs view
        org_result = execute_query("""
            SELECT * FROM enigma.weborgs WHERE OrgID = %s
        """, (person_id,))

        if org_result:
            org_data = org_result[0]
            name = org_data['org'] if org_data['org'] else "No record found"
            title = name
            if org_data['cname']:
                title = f"{title} {org_data['cname']}"
        else:
            # Check if this person was merged into another
            merged = execute_query("""
                SELECT newp FROM enigma.mergedpersons WHERE oldp = %s
            """, (person_id,))
            if merged:
                # Redirect to new personID
                from flask import redirect, url_for
                return redirect(url_for('dbpub.orgdata', p=merged[0]['newp']))

        # Get Law Society ID if applicable
        if org_data:
            lsorg_result = execute_query("""
                SELECT lsid FROM enigma.lsorgs
                WHERE NOT dead AND personID = %s
            """, (person_id,))
            if lsorg_result:
                lsid = lsorg_result[0]['lsid']

            # Get year-end data
            yearend_result = execute_query("""
                SELECT YearEndDate, YearEndMonth
                FROM enigma.orgdata
                WHERE PersonID = %s AND YearEndDate IS NOT NULL
            """, (person_id,))
            if yearend_result:
                year_end_data = yearend_result[0]

    # Foreign registrations
    foreign_regs = []
    if person_id > 0 and org_data:
        foreign_regs = execute_query("""
            SELECT f.hostDom, d.A2, f.regID, f.regDate, f.cesDate,
                   d.friendly, o.crn as oldcrn
            FROM enigma.freg f
            JOIN enigma.domiciles d ON f.hostDom = d.ID
            LEFT JOIN enigma.oldcrf o ON f.ID = o.fregID
            WHERE f.orgID = %s
        """, (person_id,))

    # ESS COVID-19 subsidy data
    ess_data = []
    ess_totals = {}
    if person_id > 0 and org_data:
        # Check if ESS data exists
        ess_check = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.ess WHERE orgID = %s) as has_ess
        """, (person_id,))

        if ess_check and ess_check[0]['has_ess']:
            # Aggregate ESS data by eName/cName across phases
            ess_data = execute_query("""
                SELECT eName, cName,
                       SUM(CASE WHEN phase=1 THEN 1 ELSE 0 END) as p1,
                       SUM(CASE WHEN phase=2 THEN 1 ELSE 0 END) as p2,
                       SUM(amt) as amt,
                       ROUND(AVG(hds), 0) as hds,
                       ROUND(SUM(amt) / NULLIF(AVG(hds), 0), 0) as avg
                FROM (
                    SELECT eName, cName, phase, SUM(amt) as amt, SUM(heads) as hds
                    FROM enigma.ess
                    WHERE orgID = %s
                    GROUP BY eName, cName, phase
                ) t
                GROUP BY eName, cName
                ORDER BY eName, cName
            """, (person_id,))

            # Calculate totals if multiple entries
            if len(ess_data) > 1:
                sum_amt = sum(row['amt'] or 0 for row in ess_data)
                sum_hds = sum(row['hds'] or 0 for row in ess_data)
                ess_totals = {
                    'amt': sum_amt,
                    'hds': sum_hds,
                    'avg': round(sum_amt / sum_hds, 0) if sum_hds > 0 else 0
                }

    # Governance rating data (aggregate only, no user ratings yet)
    # Note: ratings table may not exist yet - feature not implemented
    rating_data = {}

    # Name history
    name_history = []
    if person_id > 0 and org_data:
        name_history = execute_query("""
            SELECT OldName, CAST(oldcName AS TEXT) as oldcName,
                   CASE
                       WHEN dateAcc = 3 THEN 'U'
                       WHEN dateAcc IN (1, 4) THEN TO_CHAR(dateChanged, 'YYYY')
                       WHEN dateAcc IN (2, 5) THEN TO_CHAR(dateChanged, 'YYYY-MM')
                       ELSE TO_CHAR(dateChanged, 'YYYY-MM-DD')
                   END as chg
            FROM enigma.nameChanges
            WHERE (OldName IS NOT NULL OR oldCName IS NOT NULL)
              AND personID = %s
            ORDER BY DateChanged DESC
        """, (person_id,))

    # Domicile history
    dom_history = []
    if person_id > 0 and org_data:
        dom_history = execute_query("""
            SELECT d.fullName,
                   CASE
                       WHEN c.dateAcc = 3 THEN 'U'
                       WHEN c.dateAcc IN (1, 4) THEN TO_CHAR(c.dateChanged, 'YYYY')
                       WHEN c.dateAcc IN (2, 5) THEN TO_CHAR(c.dateChanged, 'YYYY-MM')
                       ELSE TO_CHAR(c.dateChanged, 'YYYY-MM-DD')
                   END as chg
            FROM enigma.domChanges c
            JOIN enigma.domiciles d ON c.oldDom = d.ID
            WHERE c.orgID = %s
            ORDER BY c.dateChanged DESC
        """, (person_id,))

    # Reorganized from
    reorg_from = []
    if person_id > 0 and org_data:
        reorg_from = execute_query("""
            SELECT r.fromOrg, o.Name1 as name, o.cname,
                   CASE
                       WHEN r.effAcc = 3 THEN 'U'
                       WHEN r.effAcc IN (1, 4) THEN TO_CHAR(r.effDate, 'YYYY')
                       WHEN r.effAcc IN (2, 5) THEN TO_CHAR(r.effDate, 'YYYY-MM')
                       ELSE TO_CHAR(r.effDate, 'YYYY-MM-DD')
                   END as chg
            FROM enigma.reorg r
            JOIN enigma.organisations o ON r.fromOrg = o.personID
            WHERE r.toOrg = %s
        """, (person_id,))

    # Reorganized to
    reorg_to = []
    if person_id > 0 and org_data:
        reorg_to = execute_query("""
            SELECT r.toOrg, o.Name1 as name, o.cname,
                   CASE
                       WHEN r.effAcc = 3 THEN 'U'
                       WHEN r.effAcc IN (1, 4) THEN TO_CHAR(r.effDate, 'YYYY')
                       WHEN r.effAcc IN (2, 5) THEN TO_CHAR(r.effDate, 'YYYY-MM')
                       ELSE TO_CHAR(r.effDate, 'YYYY-MM-DD')
                   END as chg
            FROM enigma.reorg r
            JOIN enigma.organisations o ON r.toOrg = o.personID
            WHERE r.fromOrg = %s
        """, (person_id,))

    # HK-listed equities (by type)
    equity_types = []
    if person_id > 0 and org_data:
        equity_types = execute_query("""
            SELECT DISTINCT sl.issueID as i, st.typeLong,
                   COALESCE(c.currency, 'HKD') as curr,
                   st.listord, st.typeShort, i.expmat
            FROM enigma.stocklistings sl
            JOIN enigma.issue i ON sl.issueID = i.ID1
            JOIN enigma.sectypes st ON i.typeID = st.typeID
            LEFT JOIN enigma.currencies c ON i.SEHKcurr = c.ID
            WHERE i.typeID NOT IN (5, 40, 41, 46)
              AND sl.stockExID IN (1, 20, 22, 23, 38, 71)
              AND i.issuer = %s
            ORDER BY st.listord, st.typeShort, i.expmat
        """, (person_id,))

    # For each equity type, get detailed stock listing and navigation data
    equity_details = []
    for equity in equity_types:
        issue_id = equity['i']

        # Get stock listings for this issue (equivalent to HKlistings)
        listings = execute_query("""
            SELECT sl.*, l.shortname as exchange_name
            FROM enigma.stocklistings sl
            JOIN enigma.listings l ON sl.stockExID = l.stockExID
            WHERE sl.stockExID IN (1, 20, 22, 23, 38, 71)
              AND sl.issueID = %s
            ORDER BY sl.firstTradeDate
        """, (issue_id,))

        # Get security type for navigation logic
        sec_type_result = execute_query("""
            SELECT typeID FROM enigma.issue WHERE ID1 = %s
        """, (issue_id,))
        sec_type = sec_type_result[0]['typeid'] if sec_type_result else None

        # Determine navigation flags
        has_hk_listed = len(listings) > 0
        latest_listing = listings[0] if listings else None
        delist_date = latest_listing['delistdate'] if latest_listing else None
        stock_ex_id = latest_listing['stockexid'] if latest_listing else None

        # Check for buybacks (not for rights/convertible bonds)
        has_buybacks = has_hk_listed and sec_type not in (2, 41)

        # Check for outstanding shares data
        outstanding_result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.issuedshares WHERE issueID = %s) as has_data
        """, (issue_id,))
        has_outstanding = outstanding_result[0]['has_data'] if outstanding_result else False

        # Check for short selling data
        short_result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.sfcshort WHERE issueID = %s) as has_data
        """, (issue_id,))
        has_short = short_result[0]['has_data'] if short_result else False

        # Check for CCASS (after Jun 26 2007, not rights/convertible/notes)
        from datetime import date as date_type
        ccass_on = False
        if has_hk_listed and sec_type not in (2, 40, 41):
            if delist_date is None or delist_date >= date_type(2007, 6, 26):
                ccass_on = True

        # Check for SDI dealings
        sdi_result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.sdi WHERE issueID = %s) as has_data
        """, (issue_id,))
        has_sdi = sdi_result[0]['has_data'] if sdi_result else False

        # Format stock codes (5 digits, zero-padded)
        for listing in listings:
            if listing['stockcode']:
                listing['stockcode_formatted'] = str(listing['stockcode']).zfill(5)
            else:
                listing['stockcode_formatted'] = ''

        equity_details.append({
            'issue_id': issue_id,
            'typelong': equity['typelong'],
            'curr': equity['curr'],
            'listings': listings,
            'sec_type': sec_type,
            'has_buybacks': has_buybacks,
            'has_outstanding': has_outstanding,
            'has_short': has_short,
            'ccass_on': ccass_on,
            'has_sdi': has_sdi,
            'has_hk_listed': has_hk_listed,
            'stock_ex_id': stock_ex_id,
            'delist_date': delist_date
        })

    # Listed debt and preference shares
    debt_securities = []
    if person_id > 0 and org_data:
        # Build ORDER BY based on s3 parameter
        order_by_map = {
            'cpndn': 'i.coupon DESC, i.expmat DESC',
            'cpnup': 'i.coupon, i.expmat',
            'ftddn': 'sl.firstTradeDate DESC, i.expmat DESC',
            'ftdup': 'sl.firstTradeDate, i.expmat',
            'matup': 'i.expmat, sl.firstTradeDate',
            'osdn': 'c.currency, os DESC, sl.delistDate DESC',
            'osup': 'c.currency, os, sl.delistDate DESC',
            'matdn': 'i.expmat DESC, sl.firstTradeDate DESC'  # default
        }
        if not s3:
            s3 = 'matdn'
        order_by = order_by_map.get(s3, order_by_map['matdn'])

        # Query debt securities
        # Note: outstanding() function not available, using NULL for now
        debt_securities = execute_query(f"""
            SELECT sl.issueID, sl.stockId, sl.stockCode,
                   sl.firstTradeDate, sl.finalTradeDate, sl.delistDate,
                   CASE
                       WHEN i.expAcc = 0 THEN TO_CHAR(i.expmat, 'YYYY-MM-DD')
                       WHEN i.expAcc = 1 THEN TO_CHAR(i.expmat, 'YYYY-MM')
                       ELSE TO_CHAR(i.expmat, 'YYYY')
                   END as exp,
                   st.typeShort, i.coupon, i.floating,
                   c.currency,
                   NULL as os
            FROM enigma.stocklistings sl
            JOIN enigma.issue i ON sl.issueID = i.ID1
            JOIN enigma.sectypes st ON i.typeID = st.typeID
            LEFT JOIN enigma.currencies c ON i.SEHKcurr = c.ID
            WHERE i.typeID IN (5, 40, 41, 46)
              AND i.issuer = %s
            ORDER BY {order_by}
        """, (person_id,))

    # Unlisted securities
    unlisted_securities = []
    if person_id > 0 and org_data:
        unlisted_securities = execute_query("""
            SELECT i.ID1 as issueID, st.typeLong,
                   EXISTS(
                       SELECT 1 FROM enigma.issuedshares
                       WHERE issueID = i.ID1
                   ) as has_outstanding
            FROM enigma.issue i
            JOIN enigma.secTypes st ON i.typeID = st.typeID
            LEFT JOIN enigma.stocklistings sl ON i.ID1 = sl.issueID
            WHERE sl.issueID IS NULL
              AND i.typeID NOT IN (1, 2, 40, 41)
              AND i.issuer = %s
        """, (person_id,))

    # Old SFC IDs
    old_sfc_ids = []
    if person_id > 0 and org_data and org_data.get('sfcid'):
        old_sfc_ids = execute_query("""
            SELECT SFCID, SFCri, TO_CHAR(until, 'YYYY-MM-DD') as until
            FROM enigma.oldsfcids
            WHERE orgID = %s
            ORDER BY until DESC
        """, (person_id,))

    # Check if ever listed (for holders section)
    ever_listed = False
    if person_id > 0 and org_data:
        ever_result = execute_query("""
            SELECT enigma.everListCo(%s) as ever_listed
        """, (person_id,))
        if ever_result:
            ever_listed = ever_result[0]['ever_listed']

    # Navigation menu visibility checks (orgBar equivalent)
    nav_has_directorships = False
    nav_has_pay = False
    nav_has_advisers = False
    nav_has_adviserships = False
    nav_has_sfc_licenses = False
    nav_has_documents = False
    nav_has_stories = False
    nav_has_lir_team = False
    ccass_part_id = None

    if person_id > 0:
        # Check for directorships (shows Officers + Overlaps)
        result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.directorships WHERE company = %s) as has_data
        """, (person_id,))
        nav_has_directorships = result[0]['has_data'] if result else False

        # Check for pay records
        result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.documents WHERE docTypeID = 0 AND pay AND orgID = %s) as has_data
        """, (person_id,))
        nav_has_pay = result[0]['has_data'] if result else False

        # Check for advisers
        result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.adviserships WHERE company = %s) as has_data
        """, (person_id,))
        nav_has_advisers = result[0]['has_data'] if result else False

        # Check for adviserships (acts as adviser)
        result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.adviserships WHERE adviser = %s) as has_data
        """, (person_id,))
        nav_has_adviserships = result[0]['has_data'] if result else False

        # Check for SFC licenses
        result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.olicrec WHERE orgID = %s) as has_data
        """, (person_id,))
        nav_has_sfc_licenses = result[0]['has_data'] if result else False

        # Check for CCASS participant
        result = execute_query("""
            SELECT partID FROM ccass.participants WHERE personID = %s LIMIT 1
        """, (person_id,))
        if result and result[0]['partid']:
            ccass_part_id = result[0]['partid']

        # Check for documents
        result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.documents WHERE orgID = %s) as has_data
        """, (person_id,))
        nav_has_documents = result[0]['has_data'] if result else False

        # Check for stories
        result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.personstories WHERE personID = %s) as has_data
        """, (person_id,))
        nav_has_stories = result[0]['has_data'] if result else False

        # Check for LIR team or is HKEX (personID 9643)
        result = execute_query("""
            SELECT EXISTS(SELECT 1 FROM enigma.lirorgteam WHERE orgID = %s) as has_data
        """, (person_id,))
        nav_has_lir_team = result[0]['has_data'] if result else False
        if person_id == 9643:  # HKEX, regulated by SFC
            nav_has_lir_team = True

    # Web sites data
    websites = []
    if person_id > 0:
        websites = execute_query("""
            SELECT url, dead
            FROM enigma.web
            WHERE personid = %s
            ORDER BY dead, url
        """, (person_id,))

    # Generate registry links if we have org data
    if org_data and org_data.get('incid'):
        dom_id = org_data.get('domid')
        inc_id = org_data['incid']

        if dom_id in registry_url_templates:
            template = registry_url_templates[dom_id]
            registry_links[dom_id] = {
                'url': template.format(
                    incid=inc_id,
                    incid_nospace=inc_id.replace(' ', ''),
                    incid_nodash=inc_id.replace('-', '')
                ),
                'use_ukuri': org_data.get('ukuri', False) and dom_id in [2, 112, 116, 311]
            }

    # Holdings section - show what this organization holds in other companies
    holdings_data = []
    holdings_tree = []
    has_holdings = False

    if person_id > 0:
        # Check if any holdings exist
        check_result = execute_query("""
            SELECT EXISTS(
                SELECT 1 FROM enigma.webholdings3
                WHERE personid = %s
                  AND (shares > 0 OR stake > 0 OR (shares IS NULL AND stake IS NULL))
            ) as has_data
        """, (person_id,))
        has_holdings = check_result[0]['has_data'] if check_result else False

        if has_holdings:
            # Sort order mapping (parameter s2 controls holdings sort)
            holdings_sort_mappings = {
                'stakup': 'stakecomp, name',
                'stakdn': 'stakecomp DESC, name',
                'namedn': 'name DESC',
                'namup': 'name',
                'incdup': 'incdate, name',
                'incddn': 'incdate DESC, name',
                'domiup': 'a2, name',
                'domidn': 'a2 DESC, name'
            }
            holdings_sort = holdings_sort_mappings.get(s2, 'name')

            if expand == 'y':
                # Expanded mode - build recursive tree
                org_tracker = {person_id: 0}
                _build_holdings_tree(person_id, 0, holdings_sort, holdings_tree, org_tracker)
            else:
                # Simple mode - flat table
                # Match ASP query pattern: nested subquery with SELECT * inner query
                holdings_data = execute_query(f"""
                    SELECT personid, issue, holdingdate, shares, stake, friendly, a2,
                           name, orgtype, sectype, typeshort, typelong, issuer, stakecomp,
                           CASE
                               WHEN incacc = 3 THEN 'U'
                               WHEN incacc IN (1, 4) THEN TO_CHAR(incdate, 'YYYY')
                               WHEN incacc IN (2, 5) THEN TO_CHAR(incdate, 'YYYY-MM')
                               ELSE TO_CHAR(incdate, 'YYYY-MM-DD')
                           END as inc
                    FROM (
                        SELECT *,
                               CASE
                                   WHEN shares IS NULL THEN stake
                                   ELSE shares / NULLIF(
                                       (SELECT outstanding
                                        FROM enigma.issuedshares
                                        WHERE issueid = issue
                                          AND atdate <= CURRENT_DATE
                                        ORDER BY atdate DESC
                                        LIMIT 1), 0)
                               END AS stakecomp
                        FROM enigma.webholdings3
                        WHERE personid = %s
                    ) AS t1
                    WHERE shares > 0 OR stake > 0 OR (shares IS NULL AND stake IS NULL)
                    ORDER BY {holdings_sort}
                """, (person_id,))

    return render_template('dbpub/orgdata.html',
                         person_id=person_id,
                         name=name,
                         title=title,
                         org=org_data,
                         lsid=lsid,
                         year_end_data=year_end_data,
                         foreign_regs=foreign_regs,
                         ess_data=ess_data,
                         ess_totals=ess_totals,
                         rating_data=rating_data,
                         name_history=name_history,
                         dom_history=dom_history,
                         reorg_from=reorg_from,
                         reorg_to=reorg_to,
                         equity_details=equity_details,
                         debt_securities=debt_securities,
                         unlisted_securities=unlisted_securities,
                         old_sfc_ids=old_sfc_ids,
                         ever_listed=ever_listed,
                         registry_links=registry_links,
                         websites=websites,
                         nav_has_directorships=nav_has_directorships,
                         nav_has_pay=nav_has_pay,
                         nav_has_advisers=nav_has_advisers,
                         nav_has_adviserships=nav_has_adviserships,
                         nav_has_sfc_licenses=nav_has_sfc_licenses,
                         nav_has_documents=nav_has_documents,
                         nav_has_stories=nav_has_stories,
                         nav_has_lir_team=nav_has_lir_team,
                         ccass_part_id=ccass_part_id,
                         has_holdings=has_holdings,
                         holdings_data=holdings_data,
                         holdings_tree=holdings_tree,
                         today=date.today(),
                         s1=s1,
                         s2=s2,
                         s3=s3,
                         expand=expand)




@bp.route('/pricesCSV.asp')
def pricescsv():
    """
    Port of dbpub/pricesCSV.asp
    Export historical prices/returns to CSV format

    Query params:
    - i: issueID (required)
    - f: frequency (d=daily, w=weekly, m=monthly, y=yearly, default=daily)
    - wd: weekday for weekly aggregation (2-6, default=6 for Friday)

    Tables used: ccass.quotes, ccass.calendar, enigma.getAdjust()
    """
    issue_id = get_int('i', 0)
    freq = request.args.get('f', 'd')
    wd = get_int('wd', 6)  # Friday

    if issue_id == 0:
        abort(400, "Missing required parameter: i (issueID)")

    # Validate parameters
    if freq not in ['d', 'w', 'm', 'y']:
        freq = 'd'
    if wd < 2 or wd > 6:
        wd = 6

    # Get current adjustment factor
    with get_db() as conn:
        result = conn.execute(
            "SELECT enigma.getAdjust(%s, CURRENT_DATE) as adj",
            (issue_id,)
        ).fetchone()
        current_adj = result['adj'] if result else 1.0

        # Build query based on frequency
        if freq == 'd':
            # Daily query
            query = """
                SELECT
                    q.atDate,
                    c.settleDate,
                    CAST(q.susp AS INTEGER) AS susp,
                    q.closing,
                    q.bid,
                    q.ask,
                    q.low,
                    q.high,
                    q.vol,
                    q.turn,
                    CASE WHEN q.vol > 0 THEN q.turn / q.vol ELSE 0 END AS vwap,
                    q.closing * (%s / enigma.getAdjust(%s, q.atDate)) AS adjClose,
                    q.bid * (%s / enigma.getAdjust(%s, q.atDate)) AS adjBid,
                    q.ask * (%s / enigma.getAdjust(%s, q.atDate)) AS adjAsk,
                    q.low * (%s / enigma.getAdjust(%s, q.atDate)) AS adjLow,
                    q.high * (%s / enigma.getAdjust(%s, q.atDate)) AS adjHigh,
                    ROUND(q.vol / (%s / enigma.getAdjust(%s, q.atDate)), 0) AS adjVol,
                    CASE WHEN q.vol > 0 THEN (q.turn * (%s / enigma.getAdjust(%s, q.atDate))) / q.vol ELSE 0 END AS adjVWAP
                FROM ccass.quotes q
                JOIN ccass.calendar c ON q.atDate = c.tradeDate
                WHERE q.issueID = %s
                ORDER BY q.atDate DESC
            """
            params = (current_adj, issue_id, current_adj, issue_id, current_adj, issue_id,
                     current_adj, issue_id, current_adj, issue_id, current_adj, issue_id,
                     current_adj, issue_id, issue_id)

        elif freq == 'm':
            # Monthly aggregation
            query = """
                WITH monthly_agg AS (
                    SELECT
                        DATE_TRUNC('month', q.atDate)::date + INTERVAL '1 month' - INTERVAL '1 day' AS month_end,
                        MAX(q.atDate) AS atDate,
                        MIN(CASE WHEN q.low > 0 THEN q.low * (%s / enigma.getAdjust(%s, q.atDate)) END) AS adjLow,
                        MAX(q.high * (%s / enigma.getAdjust(%s, q.atDate))) AS adjHigh,
                        SUM(q.vol / (%s / enigma.getAdjust(%s, q.atDate))) AS adjVol,
                        SUM(q.turn) AS turn,
                        SUM(CAST(q.susp AS INTEGER)) AS susp,
                        COUNT(*) AS days
                    FROM ccass.quotes q
                    WHERE q.issueID = %s
                    GROUP BY DATE_TRUNC('month', q.atDate)
                )
                SELECT
                    ma.atDate,
                    c.settleDate,
                    ma.susp,
                    ma.days,
                    q.closing,
                    q.bid,
                    q.ask,
                    ma.turn,
                    q.closing * (%s / enigma.getAdjust(%s, ma.atDate)) AS adjClose,
                    q.bid * (%s / enigma.getAdjust(%s, ma.atDate)) AS adjBid,
                    q.ask * (%s / enigma.getAdjust(%s, ma.atDate)) AS adjAsk,
                    ma.adjLow,
                    ma.adjHigh,
                    ma.adjVol,
                    CASE WHEN ma.adjVol <> 0 THEN ma.turn / ma.adjVol ELSE 0 END AS adjVWAP
                FROM monthly_agg ma
                JOIN ccass.quotes q ON ma.atDate = q.atDate AND q.issueID = %s
                JOIN ccass.calendar c ON ma.atDate = c.tradeDate
                ORDER BY ma.atDate DESC
            """
            params = (current_adj, issue_id, current_adj, issue_id, current_adj, issue_id, issue_id,
                     current_adj, issue_id, current_adj, issue_id, current_adj, issue_id, issue_id)

        elif freq == 'y':
            # Yearly aggregation
            query = """
                WITH yearly_agg AS (
                    SELECT
                        DATE_TRUNC('year', q.atDate)::date + INTERVAL '1 year' - INTERVAL '1 day' AS year_end,
                        MAX(q.atDate) AS atDate,
                        MIN(CASE WHEN q.low > 0 THEN q.low * (%s / enigma.getAdjust(%s, q.atDate)) END) AS adjLow,
                        MAX(q.high * (%s / enigma.getAdjust(%s, q.atDate))) AS adjHigh,
                        SUM(q.vol / (%s / enigma.getAdjust(%s, q.atDate))) AS adjVol,
                        SUM(q.turn) AS turn,
                        SUM(CAST(q.susp AS INTEGER)) AS susp,
                        COUNT(*) AS days
                    FROM ccass.quotes q
                    WHERE q.issueID = %s
                    GROUP BY DATE_TRUNC('year', q.atDate)
                )
                SELECT
                    ya.atDate,
                    c.settleDate,
                    ya.susp,
                    ya.days,
                    q.closing,
                    q.bid,
                    q.ask,
                    ya.turn,
                    q.closing * (%s / enigma.getAdjust(%s, ya.atDate)) AS adjClose,
                    q.bid * (%s / enigma.getAdjust(%s, ya.atDate)) AS adjBid,
                    q.ask * (%s / enigma.getAdjust(%s, ya.atDate)) AS adjAsk,
                    ya.adjLow,
                    ya.adjHigh,
                    ya.adjVol,
                    CASE WHEN ya.adjVol <> 0 THEN ya.turn / ya.adjVol ELSE 0 END AS adjVWAP
                FROM yearly_agg ya
                JOIN ccass.quotes q ON ya.atDate = q.atDate AND q.issueID = %s
                JOIN ccass.calendar c ON ya.atDate = c.tradeDate
                ORDER BY ya.atDate DESC
            """
            params = (current_adj, issue_id, current_adj, issue_id, current_adj, issue_id, issue_id,
                     current_adj, issue_id, current_adj, issue_id, current_adj, issue_id, issue_id)

        else:  # freq == 'w'
            # Weekly aggregation (end on specified weekday)
            offset = 7 - wd
            query = """
                WITH weekly_agg AS (
                    SELECT
                        MAX(q.atDate) AS atDate,
                        MIN(CASE WHEN q.low > 0 THEN q.low * (%s / enigma.getAdjust(%s, q.atDate)) END) AS adjLow,
                        MAX(q.high * (%s / enigma.getAdjust(%s, q.atDate))) AS adjHigh,
                        SUM(q.vol / (%s / enigma.getAdjust(%s, q.atDate))) AS adjVol,
                        SUM(q.turn) AS turn,
                        SUM(CAST(q.susp AS INTEGER)) AS susp,
                        COUNT(*) AS days
                    FROM ccass.quotes q
                    WHERE q.issueID = %s
                    GROUP BY EXTRACT(YEAR FROM q.atDate + INTERVAL '%s days'),
                             EXTRACT(WEEK FROM q.atDate + INTERVAL '%s days')
                )
                SELECT
                    wa.atDate,
                    c.settleDate,
                    wa.susp,
                    wa.days,
                    q.closing,
                    q.bid,
                    q.ask,
                    wa.turn,
                    q.closing * (%s / enigma.getAdjust(%s, wa.atDate)) AS adjClose,
                    q.bid * (%s / enigma.getAdjust(%s, wa.atDate)) AS adjBid,
                    q.ask * (%s / enigma.getAdjust(%s, wa.atDate)) AS adjAsk,
                    wa.adjLow,
                    wa.adjHigh,
                    wa.adjVol,
                    CASE WHEN wa.adjVol <> 0 THEN wa.turn / wa.adjVol ELSE 0 END AS adjVWAP
                FROM weekly_agg wa
                JOIN ccass.quotes q ON wa.atDate = q.atDate AND q.issueID = %s
                JOIN ccass.calendar c ON wa.atDate = c.tradeDate
                ORDER BY wa.atDate DESC
            """
            params = (current_adj, issue_id, current_adj, issue_id, current_adj, issue_id, issue_id,
                     offset, offset, current_adj, issue_id, current_adj, issue_id, current_adj, issue_id, issue_id)

        # Execute query and get results
        results = conn.execute(query, params).fetchall()

        # Build CSV output
        if not results:
            abort(404, f"No price data found for issueID {issue_id}")

        # Generate CSV
        output = io.StringIO()

        # Write header
        if freq == 'd':
            header = ['atDate', 'settleDate', 'susp', 'closing', 'bid', 'ask', 'low', 'high',
                     'vol', 'turn', 'vwap', 'adjClose', 'adjBid', 'adjAsk', 'adjLow', 'adjHigh',
                     'adjVol', 'adjVWAP', 'totalRet']
        else:
            header = ['atDate', 'settleDate', 'susp', 'days', 'closing', 'bid', 'ask', 'turn',
                     'adjClose', 'adjBid', 'adjAsk', 'adjLow', 'adjHigh', 'adjVol', 'adjVWAP', 'totalRet']

        output.write(','.join(header) + '\n')

        # Write data rows with total return calculation
        prev_adj_close = None
        for row in results:
            row_data = []
            for col in header[:-1]:  # All columns except totalRet
                val = row[col.lower()] if col.lower() in row.keys() else None
                if val is None:
                    row_data.append('')
                elif isinstance(val, (int, bool)):
                    row_data.append(str(val))
                elif isinstance(val, float):
                    row_data.append(f"{val:.5f}" if abs(val) < 1000 else f"{val:.2f}")
                else:
                    row_data.append(str(val))

            # Calculate total return
            adj_close = row['adjclose']

            if prev_adj_close is not None and prev_adj_close != 0 and adj_close != 0:
                total_ret = adj_close / prev_adj_close - 1
                row_data.append(f"{total_ret:.5f}")
            else:
                row_data.append('')

            prev_adj_close = adj_close
            output.write(','.join(row_data) + '\n')

        # Create response
        csv_data = output.getvalue()
        response = Response(csv_data, mimetype='text/csv')
        filename = f"prices{freq}{issue_id}.csv"
        response.headers['Content-Disposition'] = f'attachment;filename={filename}'

        return response




@bp.route('/adviserships.asp')
def adviserships():
    """
    Adviserships - Port of dbpub/adviserships.asp
    Shows organizations where this entity acts as an adviser (auditor, solicitor, sponsor, etc.)

    Query params:
    - p: personID (adviser)
    - r: roleID (specific role, defaults to most popular)
    - sort: sorting column
    - hide: hide history (Y/N)
    - f: from date (optional)
    - t: to date (optional)
    - y: years for performance period (for one-time roles)
    - c: include new appointments after start date (boolean)

    Tables: enigma.adviserships, enigma.roles, enigma.organisations, enigma.issue
    Note: Total returns calculations are complex and require stored functions
    """
    person_id = get_int('p', 0)
    role_id = get_int('r', -1)
    sort_param = request.args.get('sort', 'orgup')
    hide = request.args.get('hide', 'N')
    from_date = request.args.get('f', '')
    to_date = request.args.get('t', '')
    years = get_dbl('y', 1.0)
    include_new = get_bool('c')

    if not person_id:
        return render_template('error.html', message="Missing person ID"), 400

    # Get organization name
    org_name = execute_query(
        "SELECT name1 FROM enigma.organisations WHERE personID = %s",
        (person_id,)
    )
    if not org_name:
        return render_template('error.html', message="Organization not found"), 404
    org_name = org_name[0]['name1']

    # Get list of roles this entity has
    all_roles = execute_query("""
        SELECT DISTINCT roleID, roleLong
        FROM enigma.adviserships
        JOIN enigma.roles ON adviserships.role = roles.roleID
        WHERE adviser = %s
        ORDER BY roleLong
    """, (person_id,))

    # If no specific role selected, default to most popular
    if role_id == -1 and all_roles:
        default_role = execute_query("""
            SELECT roleID, COUNT(DISTINCT company) cnt, roleLong, oneTime
            FROM enigma.adviserships a
            JOIN enigma.roles r ON a.role = r.roleID
            WHERE adviser = %s
            GROUP BY roleID, roleLong, oneTime
            ORDER BY cnt DESC
            LIMIT 1
        """, (person_id,))
        if default_role:
            role_id = default_role[0]['roleid']
            role_name = default_role[0]['rolelong']
            one_time = default_role[0]['onetime']
    else:
        role_info = execute_query("""
            SELECT roleID, roleLong, oneTime
            FROM enigma.roles
            WHERE roleID = %s
        """, (role_id,))
        if role_info:
            role_name = role_info[0]['rolelong']
            one_time = role_info[0]['onetime']
        else:
            role_name = None
            one_time = False

    if not role_name:
        return render_template('dbpub/adviserships.html',
                             person_id=person_id,
                             org_name=org_name,
                             all_roles=all_roles,
                             adviserships=[],
                             role_id=role_id,
                             role_name=None)

    # Determine sort order
    sort_map = {
        'orgup': 'org, addDate',
        'orgdn': 'org DESC, addDate',
        'addup': 'addDate, org',
        'adddn': 'addDate DESC, org',
        'remup': 'remDate, org',
        'remdn': 'remDate DESC, org',
    }
    order_by = sort_map.get(sort_param, 'org, addDate')

    # Build WHERE clause for date filtering
    where_clauses = []
    params = [role_id, person_id]

    if hide == 'Y' and not from_date and not to_date:
        where_clauses.append("(remDate IS NULL OR remDate > CURRENT_DATE)")

    if from_date:
        where_clauses.append("(remDate IS NULL OR remDate > %s)")
        params.append(from_date)
        if not include_new:
            where_clauses.append("(addDate IS NULL OR addDate <= %s)")
            params.append(from_date)

    if to_date:
        if not from_date or include_new:
            where_clauses.append("(addDate IS NULL OR addDate <= %s)")
            params.append(to_date)

    where_clause = " AND " + " AND ".join(where_clauses) if where_clauses else ""

    # Query adviserships (simplified without total returns for now)
    adviserships = execute_query(f"""
        SELECT
            company AS orgID,
            o.name1 AS org,
            a.ID1 AS issueID,
            addDate,
            remDate,
            i.name1 AS issue_name
        FROM enigma.adviserships adv
        JOIN enigma.organisations o ON adv.company = o.personID
        JOIN enigma.issue a ON adv.company = a.issuer
        JOIN enigma.issue i ON a.ID1 = i.ID1
        WHERE a.typeID IN (0, 6, 7, 8, 10, 42)
          AND adv.role = %s
          AND adv.adviser = %s
          AND a.ID1 IN (
              SELECT DISTINCT issueID
              FROM enigma.stocklistings
              WHERE stockExID IN (1, 20, 23)
          )
          {where_clause}
        ORDER BY {order_by}
    """, tuple(params))

    return render_template('dbpub/adviserships.html',
                         person_id=person_id,
                         org_name=org_name,
                         all_roles=all_roles,
                         adviserships=adviserships,
                         role_id=role_id,
                         role_name=role_name,
                         one_time=one_time,
                         sort=sort_param,
                         hide=hide,
                         from_date=from_date,
                         to_date=to_date,
                         years=years,
                         include_new=include_new)




@bp.route('/ESSraw.asp')
def essraw():
    """
    Employment Support Subsidy raw data - Port of dbpub/ESSraw.asp
    Shows raw ESS filings from HK government COVID scheme for an organization

    Query params:
    - p: personID
    - sort: sorting column

    Tables: enigma.ess
    """
    person_id = get_int('p', 0)
    sort_param = request.args.get('sort', 'phaup')

    if not person_id:
        return render_template('error.html', message="Missing organization ID"), 400

    # Get organization name
    org_name = execute_query(
        "SELECT name1 FROM enigma.organisations WHERE personID = %s",
        (person_id,)
    )
    if not org_name:
        return render_template('error.html', message="Organization not found"), 404
    org_name = org_name[0]['name1']

    # Determine sort order
    sort_map = {
        'amtup': 'amt, eName, phase',
        'amtdn': 'amt DESC, eName, phase',
        'hdsup': 'heads, eName, phase',
        'hdsdn': 'heads DESC, eName',
        'namup': 'eName',
        'namdn': 'eName DESC',
        'avgup': 'amt/NULLIF(heads,0), eName',
        'avgdn': 'amt/NULLIF(heads,0) DESC, eName',
        'phaup': 'phase, eName',
        'phadn': 'phase, amt DESC',
    }
    order_by = sort_map.get(sort_param, 'phase, eName')

    # Query ESS filings
    filings = execute_query(f"""
        SELECT
            eName,
            cName,
            phase,
            amt,
            heads,
            CASE WHEN heads = 0 THEN NULL ELSE amt::numeric / heads END AS avg
        FROM enigma.ess
        WHERE orgID = %s
        ORDER BY {order_by}
    """, (person_id,))

    # Query totals by phase
    phase_totals = []
    if filings:
        phase_totals = execute_query("""
            SELECT
                phase,
                SUM(amt) AS amt,
                SUM(heads) AS hds,
                CASE WHEN SUM(heads) = 0 THEN NULL
                     ELSE SUM(amt)::numeric / SUM(heads)
                END AS avg
            FROM enigma.ess
            WHERE orgID = %s
            GROUP BY phase
            ORDER BY phase
        """, (person_id,))

    # Calculate grand totals if multiple phases
    grand_total = None
    if len(phase_totals) > 1:
        total_amt = sum(p['amt'] for p in phase_totals)
        total_hds = sum(p['hds'] for p in phase_totals)
        grand_total = {
            'amt': total_amt,
            'hds': total_hds / 2,  # Divide by 2 as per ASP logic (same person counted twice)
            'avg': total_amt / total_hds if total_hds > 0 else None
        }

    return render_template('dbpub/essraw.html',
                         person_id=person_id,
                         org_name=org_name,
                         filings=filings,
                         phase_totals=phase_totals,
                         grand_total=grand_total,
                         sort=sort_param)




@bp.route('/complain.asp')
def complain():
    """Complaint form for regulatory organizations (stub)"""
    person_id = get_int('p', 0)
    return f"<h2>Complain</h2><p>Route stub - person_id: {person_id}</p><p><a href='/dbpub/orgdata.asp?p={person_id}'>Back to Key Data</a></p>"




@bp.route('/hpu.asp')
def hpu():
    """
    Parallel trading quotes - Port of dbpub/hpup.asp
    Shows daily prices from parallel trading counter (archaic HKEX practice during splits)

    Query params:
    - i: issueID
    - sort: sorting column (datedn, dateup, turndn, turnup)

    Tables: ccass.pquotes
    """
    issue_id = get_int('i', 0)
    sort_param = request.args.get('sort', 'datedn')

    if not issue_id:
        return render_template('error.html', message="Missing issue ID"), 400

    # Get stock info
    stock_info = execute_query("""
        SELECT
            i.name1,
            o.personID
        FROM enigma.issue i
        JOIN enigma.organisations o ON i.issuer = o.personID
        WHERE i.ID1 = %s
    """, (issue_id,))

    if not stock_info:
        return render_template('error.html', message="Stock not found"), 404

    stock_name = stock_info[0]['name1']
    person_id = stock_info[0]['personid']

    # Determine sort order
    sort_map = {
        'turndn': 'turn DESC, atDate',
        'turnup': 'turn, atDate',
        'dateup': 'atDate',
        'datedn': 'atDate DESC',
    }
    order_by = sort_map.get(sort_param, 'atDate DESC')

    # Query parallel trading quotes
    quotes = execute_query(f"""
        SELECT
            atDate,
            susp,
            closing,
            bid,
            ask,
            high,
            low,
            vol,
            turn,
            CASE WHEN vol = 0 THEN 0 ELSE turn::numeric / vol END AS vwap
        FROM ccass.pquotes
        WHERE issueID = %s
        ORDER BY {order_by}
    """, (issue_id,))

    return render_template('dbpub/hpu.html',
                         issue_id=issue_id,
                         person_id=person_id,
                         stock_name=stock_name,
                         quotes=quotes,
                         sort=sort_param)




