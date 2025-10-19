"""
Database routes - Direct port from dbpub/default.asp
Main database homepage and related pages
"""
from flask import Blueprint, render_template, request, abort
from datetime import date
from webbsite.db import execute_query

bp = Blueprint('dbpub', __name__)


@bp.route('/')
def index():
    """Database homepage - port of dbpub/default.asp"""
    return render_template('dbpub/index.html')


@bp.route('/listed.asp')
def listed():
    """
    Port of dbpub/listed.asp
    Shows currently listed stocks with filtering by exchange and security type

    Query params:
    - e: exchange (m=Main Board, g=GEM, s=Secondary, r=REIT, c=CIS, a=All)
    - t: type (s=shares/units, r=rights, w=warrants, h=H-shares)
    - d: snapshot date (default: today)
    - sort: sorting column

    Tables used: stocklistings, enigma.issue, enigma.organisations, sectypes
    """
    # Get query parameters
    sort_param = request.args.get('sort', 'nameup')
    e = request.args.get('e', 'a')
    t = request.args.get('t', 's')
    d = request.args.get('d', str(date.today()))

    # Build title based on filters
    exchange_titles = {
        'm': 'Main Board primary-listed',
        'g': 'Growth Enterprise Market',
        's': 'Secondary-listed',
        'r': 'Real Estate Investment Trust',
        'c': 'Collective Investment Scheme',
        'a': 'Main Board, GEM and secondary'
    }

    type_suffixes = {
        'r': ' rights',
        'w': ' subscription warrants',
        'h': ' H-shares',
        's': ' shares' if e not in ['r', 'c'] else ' units'
    }

    title = exchange_titles.get(e, exchange_titles['a']) + type_suffixes.get(t, ' shares')

    # Build ORDER BY clause based on sort parameter (lowercase for PostgreSQL)
    order_by_map = {
        'namedn': 'o.name1 DESC',
        'codeup': 'sl.stockcode',
        'codedn': 'sl.stockcode DESC',
        'typeup': 'st.typeshort, o.name1',
        'typedn': 'st.typeshort DESC, o.name1',
        'datedn': 'sl.firsttradedate DESC, o.name1',
        'dateup': 'sl.firsttradedate, o.name1',
        'nameup': 'o.name1, sl.stockcode'  # default
    }
    order_by = order_by_map.get(sort_param, order_by_map['nameup'])

    # Build exchange filter (lowercase for PostgreSQL)
    exchange_filters = {
        'm': 'sl.stockexid = 1',      # Main Board
        'g': 'sl.stockexid = 20',     # GEM
        's': 'sl.stockexid = 22',     # Secondary
        'r': 'sl.stockexid = 23',     # REIT
        'c': 'sl.stockexid = 38',     # CIS
        'a': 'sl.stockexid IN (1, 20, 22)'  # All HK
    }
    exchange_filter = exchange_filters.get(e, exchange_filters['a'])

    # Build security type filter (lowercase for PostgreSQL)
    type_filters = {
        'r': 'i.typeid = 2',          # Rights
        'w': 'i.typeid = 1',          # Warrants
        'h': 'i.typeid = 6',          # H-shares
        's': 'i.typeid NOT IN (1, 2, 40, 41, 46)'  # Regular shares/units
    }
    type_filter = type_filters.get(t, type_filters['s'])

    # Query for listed stocks (lowercase columns for PostgreSQL)
    # Note: Simplified without total returns calculations for now
    # totRet, CAGRet, CAGRel functions need to be ported from MySQL
    sql = f"""
        SELECT
            sl.stockcode,
            sl.issueid,
            st.typeshort,
            st.typelong,
            o.name1,
            o.personid,
            sl.firsttradedate
        FROM enigma.stocklistings sl
        JOIN enigma.issue i ON sl.issueid = i.id1
        JOIN enigma.organisations o ON i.issuer = o.personid
        JOIN enigma.sectypes st ON i.typeid = st.typeid
        WHERE (sl.firsttradedate IS NULL OR sl.firsttradedate <= %s)
          AND (sl.delistdate IS NULL OR sl.delistdate > %s)
          AND sl."2ndCtr" = FALSE
          AND {exchange_filter}
          AND {type_filter}
        ORDER BY {order_by}
    """

    try:
        results = execute_query(sql, (d, d))
        stocks = []
        for row in results:
            stocks.append({
                'StockCode': row['stockcode'],
                'issueID': row['issueid'],
                'typeShort': row['typeshort'],
                'typeLong': row['typelong'],
                'Name1': row['name1'],
                'PersonID': row['personid'],
                'FirstTradeDate': row['firsttradedate']
                # TODO: Add totRet, CAGret, CAGrel when functions are ported
            })
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error in listed.asp: {type(ex).__name__}: {ex}", exc_info=True)
        stocks = []

    return render_template('dbpub/listed.html',
                         title=title,
                         stocks=stocks,
                         sort=sort_param,
                         e=e,
                         t=t,
                         d=d)


@bp.route('/delisted.asp')
def delisted():
    """
    Port of dbpub/delisted.asp
    Shows delisted stocks with filtering by exchange and security type

    Query params:
    - e: exchange (m=Main Board, g=GEM, s=Secondary, r=REIT, c=CIS, a=All)
    - t: type (s=shares/units, r=rights, w=warrants, h=H-shares)
    - sort: sorting column

    Tables used: stocklistings, enigma.issue, enigma.organisations, sectypes, enigma.dlreasons
    """
    # Get query parameters
    sort_param = request.args.get('sort', 'nameup')
    e = request.args.get('e', 'a')
    t = request.args.get('t', 's')

    # Build title (same logic as listed.asp)
    exchange_titles = {
        'm': 'Main Board primary-listed',
        'g': 'Growth Enterprise Market',
        's': 'Secondary-listed',
        'r': 'Real Estate Investment Trust',
        'c': 'Collective Investment Scheme',
        'a': 'Main Board, GEM and secondary'
    }

    type_suffixes = {
        'r': ' rights',
        'w': ' subscription warrants',
        'h': ' H-shares',
        's': ' shares' if e not in ['r', 'c'] else ' units'
    }

    title = exchange_titles.get(e, exchange_titles['a']) + type_suffixes.get(t, ' shares')

    # Build ORDER BY clause based on sort parameter
    order_by_map = {
        'namedn': 'o.name1 DESC',
        'codeup': 'sl.stockcode',
        'codedn': 'sl.stockcode DESC',
        'typeup': 'st.typeshort, o.name1',
        'typedn': 'st.typeshort DESC, o.name1',
        'fdatedn': 'sl.firsttradedate DESC, o.name1',
        'fdateup': 'sl.firsttradedate, o.name1',
        'ldatedn': 'sl.finaltradedate DESC, o.name1',
        'ldateup': 'sl.finaltradedate, o.name1',
        'ddatedn': 'sl.delistdate DESC, o.name1',
        'ddateup': 'sl.delistdate, o.name1',
        'lifeup': 'TradeLife, o.name1',
        'lifedn': 'TradeLife DESC, o.name1',
        'rsnup': 'dl.reason, o.name1',
        'rsndn': 'dl.reason DESC, o.name1',
        'nameup': 'o.name1, sl.stockcode'  # default
    }
    order_by = order_by_map.get(sort_param, order_by_map['nameup'])

    # Build exchange filter
    exchange_filters = {
        'm': 'sl.stockexid = 1',
        'g': 'sl.stockexid = 20',
        's': 'sl.stockexid = 22',
        'r': 'sl.stockexid = 23',
        'c': 'sl.stockexid = 38',
        'a': 'sl.stockexid IN (1, 20, 22)'
    }
    exchange_filter = exchange_filters.get(e, exchange_filters['a'])

    # Build security type filter
    type_filters = {
        'r': 'i.typeid = 2',
        'w': 'i.typeid = 1',
        'h': 'i.typeid = 6',
        's': 'i.typeid NOT IN (1, 2, 40, 41, 46)'
    }
    type_filter = type_filters.get(t, type_filters['s'])

    # Query for delisted stocks
    # TradeLife calculation: PostgreSQL date arithmetic instead of MySQL to_days()
    sql = f"""
        SELECT
            sl.stockcode,
            st.typeshort,
            st.typelong,
            sl.issueid,
            o.name1,
            o.personid,
            sl.firsttradedate,
            sl.finaltradedate,
            sl.delistdate,
            dl.reason,
            CASE
                WHEN sl.firsttradedate IS NULL OR sl.finaltradedate IS NULL THEN NULL
                ELSE ((sl.finaltradedate - sl.firsttradedate) + 1) / 365.2425
            END AS TradeLife
        FROM enigma.stocklistings sl
        JOIN enigma.issue i ON sl.issueid = i.id1
        JOIN enigma.organisations o ON i.issuer = o.personid
        JOIN enigma.sectypes st ON i.typeid = st.typeid
        LEFT JOIN enigma.dlreasons dl ON sl.reasonid = dl.reasonid
        WHERE sl.delistdate <= CURRENT_DATE
          AND {exchange_filter}
          AND {type_filter}
        ORDER BY {order_by}
    """

    try:
        results = execute_query(sql)
        stocks = []
        for row in results:
            stocks.append({
                'StockCode': row['stockcode'],
                'typeShort': row['typeshort'],
                'typeLong': row['typelong'],
                'issueID': row['issueid'],
                'Name1': row['name1'],
                'PersonID': row['personid'],
                'FirstTradeDate': row['firsttradedate'],
                'FinalTradeDate': row['finaltradedate'],
                'DelistDate': row['delistdate'],
                'Reason': row['reason'],
                'TradeLife': row['tradelife']
            })
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error in delisted.asp: {type(ex).__name__}: {ex}", exc_info=True)
        stocks = []

    return render_template('dbpub/delisted.html',
                         title=title,
                         stocks=stocks,
                         sort=sort_param,
                         e=e,
                         t=t)


@bp.route('/code.asp')
def code():
    """
    Port of dbpub/code.asp
    Shows securities (current and delisted) using a specific stock code

    Query params:
    - code: 5-digit stock code

    Tables used: stocklistings (via WebListings view)
    """
    code_param = request.args.get('code', '00001')
    # Pad to 5 digits
    code_padded = code_param.zfill(5)

    # Query for delisted securities with this stock code
    # Note: HKEX recycles stock codes, so multiple companies may have used the same code
    sql = """
        SELECT
            o.name1 AS Org,
            o.personid AS OrgID,
            st.typeshort AS SecType,
            sl.firsttradedate,
            sl.finaltradedate,
            sl.delistdate,
            dl.reason
        FROM enigma.stocklistings sl
        JOIN enigma.issue i ON sl.issueid = i.id1
        JOIN enigma.organisations o ON i.issuer = o.personid
        JOIN enigma.sectypes st ON i.typeid = st.typeid
        LEFT JOIN enigma.dlreasons dl ON sl.reasonid = dl.reasonid
        WHERE sl.stockcode = %s
          AND sl.delistdate < CURRENT_DATE
        ORDER BY sl.delistdate
    """

    try:
        results = execute_query(sql, (code_padded,))
        delisted_securities = []
        for row in results:
            delisted_securities.append({
                'Org': row['org'],
                'OrgID': row['orgid'],
                'SecType': row['sectype'],
                'FirstTradeDate': row['firsttradedate'],
                'FinalTradeDate': row['finaltradedate'],
                'DelistDate': row['delistdate'],
                'Reason': row['reason']
            })
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error in code.asp: {type(ex).__name__}: {ex}", exc_info=True)
        delisted_securities = []

    return render_template('dbpub/code.html',
                         code=code_padded,
                         delisted=delisted_securities)


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
            o.incid,
            o.hklist
        FROM enigma.organisations o
        LEFT JOIN enigma.domiciles d ON o.domicile = d.id
        LEFT JOIN enigma.dismodes dm ON o.dismode = dm.dismodeid
        LEFT JOIN enigma.orgtypes ot ON o.orgtype = ot.orgtypeid
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
            'incID': org_row['incid'],
            'hklist': org_row['hklist']
        }
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
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
            l.listingname
        FROM enigma.stocklistings sl
        JOIN enigma.issue i ON sl.issueid = i.id1
        JOIN enigma.sectypes st ON i.typeid = st.typeid
        JOIN enigma.listings l ON sl.stockexid = l.listingid
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
        from flask import current_app
        current_app.logger.error(f"Error in enigma.orgdata.asp (enigma.listings): {type(ex).__name__}: {ex}", exc_info=True)
        org_data['enigma.listings'] = []

    # Get current directors (simplified - current only, not full history)
    # Using right-open interval: period includes "from" date, excludes "until" date
    directors_sql = """
        SELECT
            p.personID,
            p.name1,
            p.name2,
            pos.position,
            d.from_date,
            d.until
        FROM enigma.directorships d
        JOIN enigma.persons p ON d.personID = p.personID
        JOIN enigma.positions pos ON d.positionid = pos.positionid
        WHERE d.orgid = %s
          AND (d.until IS NULL OR d.until > CURRENT_DATE)
        ORDER BY pos.rank DESC, d.from_date DESC
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
                'position': row['position'],
                'from_date': row['from_date'],
                'until': row['until']
            })
        org_data['directors'] = directors
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error in enigma.orgdata.asp (directors): {type(ex).__name__}: {ex}", exc_info=True)
        org_data['directors'] = []

    # Get recent enigma.events (limit 20)
    events_sql = """
        SELECT
            e.eventid,
            e.eventDate,
            e.exdate,
            ct.capChange,
            e.details
        FROM enigma.events e
        JOIN capChangeTypes ct ON e.changeType = ct.typeid
        WHERE e.personID = %s
        ORDER BY e.eventDate DESC
        LIMIT 20
    """

    try:
        events_result = execute_query(events_sql, (person_id,))
        events_list = []
        for row in events_result:
            events_list.append({
                'eventID': row['eventid'],
                'eventDate': row['eventdate'],
                'exDate': row['exdate'],
                'capChange': row['capchange'],
                'details': row['details']
            })
        org_data['enigma.events'] = events_list
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error in enigma.orgdata.asp (enigma.events): {type(ex).__name__}: {ex}", exc_info=True)
        org_data['enigma.events'] = []

    return render_template('dbpub/enigma.orgdata.html', org=org_data)


@bp.route('/advisers.asp')
def advisers():
    """
    Port of dbpub/advisers.asp
    Shows advisers (auditors, solicitors, etc.) for an organization

    Query params:
    - p: personID of organization
    - d: snapshot date
    - hide: Y=current only, N=show history
    - u: exclude unknown removal dates
    - sort: sorting column

    Tables used: enigma.adviserships, enigma.organisations, roles
    """
    person_id = request.args.get('p', type=int)
    d = request.args.get('d', str(date.today()))
    hide = request.args.get('hide', 'Y')
    u = request.args.get('u', type=bool, default=False)
    sort_param = request.args.get('sort', 'advup')

    if not person_id:
        return "PersonID required", 400

    # Get organization name
    try:
        org_result = execute_query("SELECT name1 FROM enigma.organisations WHERE personID = %s", (person_id,))
        org_name = org_result[0]['name1'] if org_result else "Unknown"
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error getting org name for advisers.asp: {ex}")
        org_name = "Unknown"

    # Build date filter for enigma.adviserships (using addDate/remDate with accuracy)
    # Note: Simplified - not using accuracy columns for MVP
    date_filter = "(a.addDate IS NULL OR a.addDate <= %s)"
    params = [d]

    if hide == 'Y':
        # Current only: remDate IS NULL OR remDate > snapshot_date OR remDate = '1000-01-01'
        date_filter += " AND (a.remDate IS NULL OR a.remDate > %s OR a.remDate = '1000-01-01')"
        params.append(d)

    if u:
        # Exclude unknown removal dates (1000-01-01 placeholder)
        date_filter += " AND (a.remDate IS NULL OR a.remDate != '1000-01-01')"

    # Determine sort order
    sort_orders = {
        'advup': 'AdvName, a.addDate, r.role',
        'advdn': 'AdvName DESC, a.addDate, r.role',
        'rolup': 'r.role, AdvName, a.addDate',
        'roldn': 'r.role DESC, AdvName, a.addDate',
        'addup': 'a.addDate, AdvName, r.role',
        'adddn': 'a.addDate DESC, AdvName, r.role',
        'remup': 'a.remDate, AdvName, a.addDate, r.role',
        'remdn': 'a.remDate DESC, AdvName, a.addDate, r.role'
    }
    ob = sort_orders.get(sort_param, 'AdvName, a.addDate, r.role')
    if sort_param not in sort_orders:
        sort_param = 'advup'

    # Query regular advisers (continuing roles like auditors)
    regular_sql = f"""
        SELECT
            a.personID AS AdvID,
            COALESCE(
                CASE
                    WHEN p.personID IS NOT NULL THEN
                        CASE
                            WHEN p.name2 IS NOT NULL THEN p.name1 || ', ' || p.name2
                            ELSE p.name1
                        END
                    ELSE o.name1
                END
            ) AS AdvName,
            r.roleID,
            r.role,
            a.addDate,
            a.remDate
        FROM enigma.adviserships a
        JOIN roles r ON a.roleID = r.roleID
        LEFT JOIN enigma.persons p ON a.personID = p.personID AND p.isPerson = TRUE
        LEFT JOIN enigma.organisations o ON a.personID = o.personid AND o.isPerson = FALSE
        WHERE a.orgid = %s
          AND a.oneTime = FALSE
          AND {date_filter}
        ORDER BY {ob}
    """
    params_regular = [person_id] + params

    try:
        regular_results = execute_query(regular_sql, tuple(params_regular))
        regular_advisers = []
        for row in regular_results:
            regular_advisers.append({
                'AdvID': row['advid'],
                'AdvName': row['advname'],
                'roleID': row['roleid'],
                'role': row['role'],
                'addDate': row['adddate'],
                'remDate': row['remdate']
            })
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error in advisers.asp (regular): {type(ex).__name__}: {ex}", exc_info=True)
        regular_advisers = []

    # Query one-time advisers (transaction-specific like IFAs)
    onetime_sql = f"""
        SELECT
            a.personID AS AdvID,
            COALESCE(
                CASE
                    WHEN p.personID IS NOT NULL THEN
                        CASE
                            WHEN p.name2 IS NOT NULL THEN p.name1 || ', ' || p.name2
                            ELSE p.name1
                        END
                    ELSE o.name1
                END
            ) AS AdvName,
            r.roleID,
            r.role,
            a.addDate
        FROM enigma.adviserships a
        JOIN roles r ON a.roleID = r.roleID
        LEFT JOIN enigma.persons p ON a.personID = p.personID AND p.isPerson = TRUE
        LEFT JOIN enigma.organisations o ON a.personID = o.personid AND o.isPerson = FALSE
        WHERE a.orgid = %s
          AND a.oneTime = TRUE
          AND {date_filter}
        ORDER BY {ob}
    """
    # One-time advisers don't have removal dates
    params_onetime = [person_id, d]
    if hide == 'Y':
        params_onetime.append(d)

    try:
        onetime_results = execute_query(onetime_sql, tuple(params_onetime))
        onetime_advisers = []
        for row in onetime_results:
            onetime_advisers.append({
                'AdvID': row['advid'],
                'AdvName': row['advname'],
                'roleID': row['roleid'],
                'role': row['role'],
                'addDate': row['adddate']
            })
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error in advisers.asp (one-time): {type(ex).__name__}: {ex}", exc_info=True)
        onetime_advisers = []

    return render_template('dbpub/advisers.html',
                         person_id=person_id,
                         org_name=org_name,
                         regular_advisers=regular_advisers,
                         onetime_advisers=onetime_advisers,
                         d=d,
                         hide=hide,
                         u=u,
                         sort=sort_param)


@bp.route('/officers.asp')
def officers():
    """
    Port of dbpub/officers.asp
    Shows directors and officers for an organization

    Query params:
    - p: personID of organization
    - d: snapshot date
    - hide: Y=current only, N=show history
    - u: exclude unknown resignation dates
    - sort: sorting column

    Tables used: enigma.directorships, people, enigma.positions, rank
    """
    person_id = request.args.get('p', type=int)
    d = request.args.get('d', str(date.today()))
    hide = request.args.get('hide', 'Y')
    u = request.args.get('u', type=bool, default=False)
    sort_param = request.args.get('sort', 'namup')

    if not person_id:
        return "PersonID required", 400

    # Get organization name
    try:
        org_result = execute_query("SELECT name1 FROM enigma.organisations WHERE personID = %s", (person_id,))
        org_name = org_result[0]['name1'] if org_result else "Unknown"
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error getting org name for officers.asp: {ex}")
        org_name = "Unknown"

    # Build date filter for enigma.directorships (right-open interval logic)
    # Note: Using from_date/until columns based on enigma schema
    date_filter = "(d.from_date IS NULL OR d.from_date <= %s)"
    params = [d]

    if hide == 'Y':
        # Current only: until IS NULL OR until > snapshot_date
        date_filter += " AND (d.until IS NULL OR d.until > %s)"
        params.append(d)

    if u:
        # Exclude unknown resignation dates (1000-01-01 placeholder)
        date_filter += " AND (d.until IS NULL OR d.until != '1000-01-01')"

    # Determine sort order
    sort_orders = {
        'namup': 'PersonName, d.from_date',
        'namdn': 'PersonName DESC, d.from_date',
        'appup': 'd.from_date, PersonName',
        'appdn': 'd.from_date DESC, PersonName',
        'resup': 'd.until, PersonName',
        'resdn': 'd.until DESC, PersonName',
        'posup': 'pos.posShort, PersonName, d.from_date',
        'posdn': 'pos.posShort DESC, PersonName, d.from_date'
    }
    ob = sort_orders.get(sort_param, 'PersonName, d.from_date')
    if sort_param not in sort_orders:
        sort_param = 'namup'

    # Query enigma.directorships grouped by rank
    # Note: Simplified - using COALESCE to handle both people and enigma.organisations as directors
    sql = f"""
        SELECT
            r.rankID,
            r.RankText,
            d.personID AS director,
            COALESCE(
                CASE
                    WHEN p.personID IS NOT NULL THEN
                        CASE
                            WHEN p.name2 IS NOT NULL THEN p.name1 || ', ' || p.name2
                            ELSE p.name1
                        END
                    ELSE o.name1
                END
            ) AS PersonName,
            pos.posShort,
            pos.posLong,
            p.sex,
            p.YOB,
            d.from_date,
            d.until
        FROM enigma.directorships d
        JOIN enigma.positions pos ON d.positionid = pos.positionid
        JOIN rank r ON pos.rank = r.rankID
        LEFT JOIN enigma.persons p ON d.personID = p.personID AND p.isPerson = TRUE
        LEFT JOIN enigma.organisations o ON d.personID = o.personid AND o.isPerson = FALSE
        WHERE d.orgid = %s
          AND {date_filter}
        ORDER BY r.rankID, {ob}
    """
    params.insert(0, person_id)

    try:
        results = execute_query(sql, tuple(params))

        # Group by rank
        officers_by_rank = {}
        for row in results:
            rank_id = row['rankid']
            rank_text = row['ranktext']

            if rank_id not in officers_by_rank:
                officers_by_rank[rank_id] = {
                    'rankText': rank_text,
                    'officers': []
                }

            officers_by_rank[rank_id]['officers'].append({
                'director': row['director'],
                'PersonName': row['personname'],
                'posShort': row['posshort'],
                'posLong': row['poslong'],
                'sex': row['sex'],
                'YOB': row['yob'],
                'from_date': row['from_date'],
                'until': row['until']
            })
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error in officers.asp: {type(ex).__name__}: {ex}", exc_info=True)
        officers_by_rank = {}

    return render_template('dbpub/officers.html',
                         person_id=person_id,
                         org_name=org_name,
                         officers_by_rank=officers_by_rank,
                         d=d,
                         hide=hide,
                         u=u,
                         sort=sort_param)


@bp.route('/splits.asp')
def splits():
    """
    Port of dbpub/splits.asp
    Stock splits, consolidations, and bonus issues

    Query params:
    - e: exchange (m=Main Board, g=GEM, s=Secondary, r=REIT, c=CIS, a=All)
    - t: type (s=splits/consols, b=bonus, a=both)
    - sort: sorting column

    Tables used: enigma.events, enigma.issue, enigma.organisations, enigma.capchangetypes, sectypes, stocklistings
    """
    sort_param = request.args.get('sort', 'exdtdn')
    e = request.args.get('e', 'a')
    t = request.args.get('t', 'a')

    # Sort order mapping
    sort_orders = {
        'stckup': 'Name1, announced DESC',
        'stckdn': 'Name1 DESC, announced DESC',
        'exdtdn': 'exDate DESC, stockCode',
        'exdtup': 'exDate, stockCode',
        'adjudn': 'adjust DESC, announced DESC',
        'adjuup': 'adjust, announced DESC',
        'codeup': 'stockCode, exDate DESC',
        'codedn': 'stockCode DESC, exDate DESC'
    }
    ob = sort_orders.get(sort_param, 'exDate DESC, name1')
    if sort_param not in sort_orders:
        sort_param = 'exdtdn'

    # Exchange filter mapping
    exchange_filters = {
        'm': ('=1', 'Main Board primary-listed'),
        'g': ('=20', 'Growth Enterprise Market'),
        's': ('=22', 'Secondary-listed'),
        'r': ('=23', 'Real Estate Investment Trust'),
        'c': ('=38', 'Collective Investment Scheme'),
        'a': (' IN (1,20,22)', 'Main Board, GEM and secondary')
    }
    e_str, title = exchange_filters.get(e, exchange_filters['a'])

    # Type filter mapping
    type_filters = {
        's': ('=4', ' splits and consolidations'),
        'b': ('=5', ' bonus issues'),
        'a': (' IN(4,5)', ' splits, consolidations and bonus issues')
    }
    sql, type_suffix = type_filters.get(t, type_filters['a'])
    title += type_suffix

    # Query splits, consolidations, and bonus issues
    query = f"""
        SELECT e.eventid, e.change, e.exdate, o.name1, st.typeshort,
               e.issueid, e.new, e.old, e.adjust, sl.stockCode
        FROM enigma.events e
        JOIN enigma.issue i ON e.issueid = i.id1
        JOIN enigma.organisations o ON i.issuer = o.personid
        JOIN enigma.capchangetypes ct ON e.eventtype = ct.capchangetype
        JOIN enigma.sectypes st ON i.typeid = st.typeid
        JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
        WHERE e.canceldate IS NULL
          AND sl.stockexid {e_str}
          AND (sl.firsttradedate IS NULL OR sl.firsttradedate <= e.exdate)
          AND (sl.delistdate IS NULL OR sl.delistdate > e.exdate)
          AND e.eventtype {sql}
        ORDER BY {ob}
    """

    try:
        results = execute_query(query)
        events_list = []
        for row in results:
            events_list.append({
                'eventID': row['eventid'],
                'change': row['change'],
                'exDate': row['exdate'],
                'Name1': row['name1'],
                'typeShort': row['typeshort'],
                'issueID': row['issueid'],
                'new': row['new'],
                'old': row['old'],
                'adjust': row['adjust'],
                'stockCode': row['stockcode']
            })
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in splits.asp: {type(ex).__name__}: {ex}", exc_info=True)
        events_list = []

    return render_template('dbpub/splits.html',
                         title=title,
                         enigma_events=events_list,
                         sort=sort_param,
                         e=e,
                         t=t)


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
            FROM enigma.persons p
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
        from flask import current_app
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
            WHERE d.personid = %s
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
                    d.orgid AS company,
                    o.name1,
                    i.id1 AS issueid,
                    d.from_date AS apptdate,
                    d.until AS resdate,
                    pos.posshort,
                    pos.poslong
                FROM enigma.directorships d
                JOIN enigma.organisations o ON d.orgid = o.personid
                JOIN enigma.positions pos ON d.positionid = pos.positionid
                LEFT JOIN enigma.issue i ON d.orgid = i.issuer
                WHERE pos.rank = %s
                  AND d.personid = %s
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
        from flask import current_app
        current_app.logger.error(f"Error in enigma.positions query: {ex}")
        positions_by_rank = []

    return render_template('dbpub/enigma.positions.html',
                         person_id=person_id,
                         person_name=person_name,
                         is_person=is_person,
                         positions_by_rank=positions_by_rank,
                         sort=sort_param,
                         hide=hide)


@bp.route('/holders.asp')
def holders():
    """
    Recursive ownership tree - COMPLEX PAGE
    Shows complete ownership structure with cross-holdings

    Query params:
    - p: personID of company
    - d: snapshot date
    - min: minimum percentage threshold

    Tables used: sholdings, ownerprof, people, enigma.organisations

    IMPORTANT: Uses recursive holdersGen() subroutine to traverse ownership tree
    """
    person_id = get_int('p', 0)
    d = request.args.get('d', str(date.today()))
    min_pct = request.args.get('min', type=float, default=5.0)

    if not person_id:
        return "PersonID required", 400

    # TODO: Implement recursive ownership tree generation
    # This is a VERY complex query involving:
    # - Recursive tree traversal
    # - Cross-holding detection
    # - Circular ownership handling
    # - Ultimate beneficial owner identification

    ownership_tree = {}

    return render_template('dbpub/holders.html',
                         person_id=person_id,
                         ownership_tree=ownership_tree,
                         d=d,
                         min_pct=min_pct)


@bp.route('/holdings.asp')
def holdings():
    """
    Shareholdings by a specific shareholder

    Query params:
    - p: personID of shareholder
    - d: snapshot date

    Tables used: sholdings, enigma.organisations, enigma.issue
    """
    person_id = get_int('p', 0)
    d = request.args.get('d', str(date.today()))

    if not person_id:
        return "PersonID required", 400

    # TODO: Query shareholdings
    holdings = []

    return render_template('dbpub/holdings.html',
                         person_id=person_id,
                         holdings=holdings,
                         d=d)


@bp.route('/prices.asp')
def prices():
    """
    Price and total returns history for a stock

    Query params:
    - i: issueid
    - sc: stock code (alternative)
    - from: start date
    - to: end date

    Tables used: ccass.quotes, enigma.issue, enigma.events (for splits)
    """
    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')
    from_date = request.args.get('from', '')
    to_date = request.args.get('to', str(date.today()))

    # TODO: Query price history
    # TODO: Calculate total returns with dividend reinvestment
    prices = []

    return render_template('dbpub/prices.html',
                         issue_id=issue_id,
                         stock_code=stock_code,
                         prices=prices,
                         from_date=from_date,
                         to_date=to_date)


@bp.route('/pricesCSV.asp')
def prices_csv():
    """CSV export of price data"""
    # TODO: Generate CSV export
    # Similar to prices.asp but returns CSV
    return "CSV export not yet implemented", 501


@bp.route('/chart.asp')
def chart():
    """
    Price chart with Highstock

    Query params:
    - i: issueid
    - sc: stock code

    Uses Highstock for interactive charting
    """
    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')

    # TODO: Query price data for chart
    chart_data = []

    return render_template('dbpub/chart.html',
                         issue_id=issue_id,
                         stock_code=stock_code,
                         chart_data=chart_data)


@bp.route('/alltotrets.asp')
def alltotrets():
    """
    Total returns for all stocks

    Query params:
    - e: exchange filter
    - sort: sorting column
    - from: start date
    - to: end date

    Tables used: stocklistings, totrets view
    """
    e = request.args.get('e', 'a')
    sort_param = request.args.get('sort', 'trdn')
    from_date = request.args.get('from', '')
    to_date = request.args.get('to', str(date.today()))

    # TODO: Query total returns for all stocks
    total_returns = []

    return render_template('dbpub/alltotrets.html',
                         total_returns=total_returns,
                         e=e,
                         sort=sort_param,
                         from_date=from_date,
                         to_date=to_date)


@bp.route('/mcap.asp')
def mcap():
    """
    Market capitalization snapshot

    Query params:
    - d: date
    - e: exchange
    - sort: sorting column

    Tables used: issuedshares, quotes, stocklistings
    """
    d = request.args.get('d', str(date.today()))
    e = request.args.get('e', 'a')
    sort_param = request.args.get('sort', 'mcapdn')

    # TODO: Calculate market caps
    market_caps = []

    return render_template('dbpub/mcap.html',
                         market_caps=market_caps,
                         d=d,
                         e=e,
                         sort=sort_param)


@bp.route('/mcaphist.asp')
def mcaphist():
    """
    Market capitalization history

    Query params:
    - i: issueid
    - sc: stock code

    Tables used: issuedshares, quotes
    """
    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')

    # TODO: Query market cap history
    mcap_history = []

    return render_template('dbpub/mcaphist.html',
                         issue_id=issue_id,
                         stock_code=stock_code,
                         mcap_history=mcap_history)


# SDI (Significant Dealer Information) routes
@bp.route('/sdilatest.asp')
def sdilatest():
    """Latest SDI disclosures"""
    # TODO: Query latest SDI records
    sdi = []
    return render_template('dbpub/sdilatest.html', sdi=sdi)


@bp.route('/sdiissue.asp')
def sdiissue():
    """SDI disclosures for a specific stock"""
    issue_id = get_int('i', 0)
    # TODO: Query SDI for stock
    sdi = []
    return render_template('dbpub/sdiissue.html', issue_id=issue_id, sdi=sdi)


@bp.route('/sdidir.asp')
def sdidir():
    """SDI disclosures by a specific director"""
    person_id = get_int('p', 0)
    # TODO: Query SDI by director
    sdi = []
    return render_template('dbpub/sdidir.html', person_id=person_id, sdi=sdi)


@bp.route('/sdidirco.asp')
def sdidirco():
    """SDI cross-reference: director and company"""
    person_id = get_int('p', 0)
    company_id = get_int('c', 0)
    # TODO: Query SDI
    sdi = []
    return render_template('dbpub/sdidirco.html',
                         person_id=person_id, company_id=company_id, sdi=sdi)


@bp.route('/sdicap.asp')
def sdicap():
    """SDI as percentage of issued capital"""
    # TODO: Calculate SDI percentages
    sdi = []
    return render_template('dbpub/sdicap.html', sdi=sdi)


@bp.route('/sdiNotes.asp')
def sdi_notes():
    """SDI system notes and explanation"""
    return render_template('dbpub/sdi_notes.html')


# SFC (Securities and Futures Commission) routes
@bp.route('/SFClicensees.asp')
def sfc_licensees():
    """SFC licensed enigma.persons and firms"""
    search = get_str('n', '')
    # TODO: Query SFC licensees
    licensees = []
    return render_template('dbpub/sfc_licensees.html',
                         search=search, licensees=licensees)


@bp.route('/SFChistall.asp')
def sfc_hist_all():
    """SFC licensing history for a person (all activities)"""
    person_id = get_int('p', 0)
    # TODO: Query SFC history
    history = []
    return render_template('dbpub/sfc_hist_all.html',
                         person_id=person_id, history=history)


@bp.route('/SFChistfirm.asp')
def sfc_hist_firm():
    """SFC licensing history for a firm"""
    person_id = get_int('p', 0)
    # TODO: Query SFC firm history
    history = []
    return render_template('dbpub/sfc_hist_firm.html',
                         person_id=person_id, history=history)


@bp.route('/SFCchanges.asp')
def sfc_changes():
    """Recent SFC licensing changes"""
    # TODO: Query recent changes
    changes = []
    return render_template('dbpub/sfc_changes.html', changes=changes)


@bp.route('/SFClicount.asp')
def sfc_licount():
    """SFC licensee count statistics"""
    # TODO: Generate statistics
    stats = []
    return render_template('dbpub/sfc_licount.html', stats=stats)


# Buybacks routes
@bp.route('/buybacks.asp')
def buybacks():
    """Share buyback transactions"""
    issue_id = get_int('i', 0)
    # TODO: Query buybacks
    buybacks = []
    return render_template('dbpub/buybacks.html',
                         issue_id=issue_id, buybacks=buybacks)


@bp.route('/buybacksum.asp')
def buybacksum():
    """Buyback summary statistics"""
    # TODO: Query buyback summaries
    summaries = []
    return render_template('dbpub/buybacksum.html', summaries=summaries)


@bp.route('/buybackstime.asp')
def buybacks_time():
    """Buybacks over time"""
    # TODO: Query time-series data
    time_series = []
    return render_template('dbpub/buybackstime.html', time_series=time_series)


# Short selling routes
@bp.route('/short.asp')
def short():
    """Short selling enigma.positions"""
    issue_id = get_int('i', 0)
    # TODO: Query short enigma.positions
    shorts = []
    return render_template('dbpub/short.html',
                         issue_id=issue_id, shorts=shorts)


@bp.route('/shortsum.asp')
def shortsum():
    """Short selling summary"""
    # TODO: Query short summaries
    summaries = []
    return render_template('dbpub/shortsum.html', summaries=summaries)


@bp.route('/shortdate.asp')
def shortdate():
    """Short enigma.positions on a specific date"""
    d = request.args.get('d', str(date.today()))
    # TODO: Query short enigma.positions
    shorts = []
    return render_template('dbpub/shortdate.html', d=d, shorts=shorts)


@bp.route('/shortnotes.asp')
def short_notes():
    """Short selling notes"""
    return render_template('dbpub/short_notes.html')


# Events and distributions
@bp.route('/enigma.events.asp')
def enigma_events():
    """
    Corporate enigma.events for a stock - port of enigma.events.asp
    Shows dividends, splits, rights issues, etc.

    Query params:
    - i: issueid
    - sc: stock code (alternative)
    - sort: sorting column (annddn/anndup, evntup/evntdn, exdtdn/exdtup)

    Tables used: enigma.events, enigma.capchangetypes, enigma.currencies, enigma.issue, enigma.organisations
    """
    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')
    sort_param = request.args.get('sort', 'annddn')

    # Look up issueid from stock code if provided
    if stock_code and not issue_id:
        try:
            result = execute_query("""
                SELECT issueid
                FROM stocklistings
                WHERE stockCode = %s AND delistdate IS NULL
                ORDER BY firsttradedate DESC
                LIMIT 1
            """, (stock_code,))
            if result and len(result) > 0:
                issue_id = result[0][0]
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error looking up stock code for enigma.events: {ex}")

    # Get stock/company name
    stock_name = ""
    person_id = 0
    if issue_id:
        try:
            result = execute_query("""
                SELECT o.name1, o.personid
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personid
                WHERE i.id1 = %s
            """, (issue_id,))
            if result and len(result) > 0:
                stock_name = result[0][0]
                person_id = result[0][1]
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error getting stock name for enigma.events: {ex}")
            stock_name = f"Issue {issue_id}"

    # Determine sort order
    sort_orders = {
        'anndup': 'announced, exDate, yearEnd',
        'annddn': 'announced DESC, exDate DESC, yearEnd DESC',
        'evntup': 'Change, announced DESC, yearEnd DESC',
        'evntdn': 'Change DESC, announced DESC, yearEnd DESC',
        'exdtdn': 'exDate DESC, announced DESC, yearEnd DESC',
        'exdtup': 'exDate, announced, yearEnd'
    }
    ob = sort_orders.get(sort_param, 'announced DESC, exDate DESC, yearEnd DESC')
    if sort_param not in sort_orders:
        sort_param = 'annddn'

    # Query enigma.events
    events_list = []
    if issue_id:
        try:
            events_list = execute_query(f"""
                SELECT
                    e.eventid,
                    e.announced,
                    e.yearend,
                    ct.change,
                    e.price,
                    e.priceHKD,
                    e.new,
                    e.old,
                    e.exdate,
                    e.distdate,
                    e.notes,
                    e.canceldate,
                    c.currency,
                    e.fxdate
                FROM enigma.events e
                JOIN enigma.capchangetypes ct ON e.eventtype = ct.capchangetype
                LEFT JOIN enigma.currencies c ON e.currid = c.ID
                WHERE e.issueid = %s
                ORDER BY {{ob}}
            """.format(ob=ob), (issue_id,))
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error querying enigma.events: {ex}")
            events_list = []

    return render_template('dbpub/enigma.events.html',
                         issue_id=issue_id,
                         person_id=person_id,
                         stock_name=stock_name,
                         enigma_events=events_list,
                         sort=sort_param)


@bp.route('/eventdets.asp')
def eventdets():
    """Event details"""
    event_id = get_int('e', 0)
    # TODO: Query event details
    event = {}
    return render_template('dbpub/eventdets.html', event_id=event_id, event=event)


# Documents
@bp.route('/docs.asp')
def docs():
    """Search financial reports and documents"""
    search = get_str('s', '')
    # TODO: Query documents
    docs = []
    return render_template('dbpub/docs.html', search=search, docs=docs)


# Articles and content
@bp.route('/articles.asp')
def articles():
    """Articles index"""
    # TODO: Query articles from stories table
    articles = []
    return render_template('dbpub/articles.html', articles=articles)


@bp.route('/articlesyear.asp')
def articles_year():
    """Articles by year"""
    year = get_int('y', date.today().year)
    # TODO: Query articles
    articles = []
    return render_template('dbpub/articlesyear.html', year=year, articles=articles)


@bp.route('/artlinks.asp')
def artlinks():
    """Article links"""
    # TODO: Query article links
    links = []
    return render_template('dbpub/artlinks.html', links=links)


@bp.route('/cat.asp')
def cat():
    """Article categories"""
    cat_id = get_int('c', 0)
    # TODO: Query articles by category
    articles = []
    return render_template('dbpub/cat.html', cat_id=cat_id, articles=articles)


@bp.route('/subject.asp')
def subject():
    """Articles by subject tag"""
    tag = get_str('t', '')
    # TODO: Query articles by tag
    articles = []
    return render_template('dbpub/subject.html', tag=tag, articles=articles)


# HK Solicitors
@bp.route('/HKsols.asp')
def hk_sols():
    """HK solicitors search"""
    search = get_str('n', '')
    # TODO: Query solicitors
    solicitors = []
    return render_template('dbpub/hk_sols.html', search=search, solicitors=solicitors)


@bp.route('/HKsolfirms.asp')
def hk_sol_firms():
    """HK law firms"""
    # TODO: Query law firms
    firms = []
    return render_template('dbpub/hk_sol_firms.html', firms=firms)


@bp.route('/HKsolsmoves.asp')
def hk_sols_moves():
    """HK solicitors job moves"""
    # TODO: Query moves
    moves = []
    return render_template('dbpub/hk_sols_moves.html', moves=moves)


@bp.route('/HKsolemps.asp')
def hk_sol_emps():
    """HK solicitors by employer"""
    person_id = get_int('p', 0)
    # TODO: Query solicitors by employer
    solicitors = []
    return render_template('dbpub/hk_sol_emps.html',
                         person_id=person_id, solicitors=solicitors)


# Website URLs
@bp.route('/websites.asp')
def websites():
    """Company websites"""
    # TODO: Query company websites
    websites = []
    return render_template('dbpub/websites.html', websites=websites)


# Matches (name similarity)
@bp.route('/matches.asp')
def matches():
    """Find similar organization names"""
    search = get_str('n', '')
    # TODO: Find name matches
    matches = []
    return render_template('dbpub/matches.html', search=search, matches=matches)


# Domiciles
@bp.route('/domicile.asp')
def domicile():
    """Companies by domicile"""
    dom_id = get_int('d', 0)
    # TODO: Query by domicile
    companies = []
    return render_template('dbpub/domicile.html', dom_id=dom_id, companies=companies)


@bp.route('/domicilecos.asp')
def domicilecos():
    """All enigma.domiciles with company counts"""
    # TODO: Query enigma.domiciles
    domiciles_list = []
    return render_template('dbpub/domicilecos.html', enigma_domiciles=domiciles_list)


@bp.route('/domicilechange.asp')
def domicile_change():
    """Domicile changes"""
    # TODO: Query domicile changes
    changes = []
    return render_template('dbpub/domicile_change.html', changes=changes)


# Name changes
@bp.route('/namechangeHK.asp')
def namechange_hk():
    """HK company name changes"""
    # TODO: Query name changes
    changes = []
    return render_template('dbpub/namechange_hk.html', changes=changes)


@bp.route('/namechangeHKlisted.asp')
def namechange_hk_listed():
    """HK listed company name changes"""
    # TODO: Query name changes for listed cos
    changes = []
    return render_template('dbpub/namechange_hk_listed.html', changes=changes)


# Directors stats
@bp.route('/DirsPerListcoHKdstn.asp')
def dirs_per_listco_hk():
    """Directors per listed company distribution"""
    # TODO: Generate distribution stats
    distribution = []
    return render_template('dbpub/dirs_per_listco_hk.html', distribution=distribution)


@bp.route('/DirsHKDistnPeople.asp')
def dirs_hk_distn_people():
    """HK directors distribution by person"""
    # TODO: Generate stats
    distribution = []
    return render_template('dbpub/dirs_hk_distn_people.html', distribution=distribution)


@bp.route('/DirsHKAgeDistn.asp')
def dirs_hk_age_distn():
    """HK directors age distribution"""
    # TODO: Generate age stats
    distribution = []
    return render_template('dbpub/dirs_hk_age_distn.html', distribution=distribution)


@bp.route('/HKdirsTypeSex.asp')
def hk_dirs_type_sex():
    """HK directors by type and gender"""
    # TODO: Generate stats
    stats = []
    return render_template('dbpub/hk_dirs_type_sex.html', stats=stats)


# Pay stats
@bp.route('/pay.asp')
def pay():
    """Director remuneration details"""
    pay_id = get_int('id', 0)
    # TODO: Query pay record
    pay = {}
    return render_template('dbpub/pay.html', pay_id=pay_id, pay=pay)


@bp.route('/payleague.asp')
def payleague():
    """Director pay league"""
    year = get_int('y', date.today().year)
    # TODO: Query pay league
    league = []
    return render_template('dbpub/payleague.html', year=year, league=league)


@bp.route('/payleagueorg.asp')
def payleague_org():
    """Company pay league"""
    year = get_int('y', date.today().year)
    # TODO: Query company pay totals
    league = []
    return render_template('dbpub/payleague_org.html', year=year, league=league)


# Public housing
@bp.route('/prhestates.asp')
def prh_estates():
    """Public rental housing estates"""
    # TODO: Query PRH estates
    estates = []
    return render_template('dbpub/prh_estates.html', estates=estates)


@bp.route('/prhblocks.asp')
def prh_blocks():
    """PRH blocks"""
    estate_id = get_int('e', 0)
    # TODO: Query blocks
    blocks = []
    return render_template('dbpub/prh_blocks.html', estate_id=estate_id, blocks=blocks)


# Government accounts
@bp.route('/govac.asp')
def govac():
    """Government accounts explorer"""
    # TODO: Query government accounts
    accounts = []
    return render_template('dbpub/govac.html', accounts=accounts)


@bp.route('/govacCSV.asp')
def govac_csv():
    """Government accounts CSV export"""
    # TODO: Generate CSV
    return "CSV export not yet implemented", 501


@bp.route('/govacNotes.asp')
def govac_notes():
    """Government accounts notes"""
    return render_template('dbpub/govac_notes.html')


# Overlap analysis
@bp.route('/overlap.asp')
def overlap():
    """Director overlap between companies"""
    p1 = get_int('p1', 0)
    p2 = get_int('p2', 0)
    # TODO: Find common directors
    overlap = []
    return render_template('dbpub/overlap.html', p1=p1, p2=p2, overlap=overlap)


# Outstanding shares
@bp.route('/outstanding.asp')
def outstanding():
    """Outstanding shares history"""
    issue_id = get_int('i', 0)
    # TODO: Query outstanding shares
    history = []
    return render_template('dbpub/outstanding.html', issue_id=issue_id, history=history)


# CSV exports
@bp.route('/CSV.asp')
def csv():
    """Generic CSV export utility"""
    # TODO: Handle various CSV export types
    return "CSV export utility", 200


# FAQ pages
@bp.route('/FAQW.asp')
def faq_w():
    """FAQ - Webb-site"""
    return render_template('dbpub/faq_w.html')


@bp.route('/FAQWWW.asp')
def faq_www():
    """FAQ - WWW and internet"""
    return render_template('dbpub/faq_www.html')


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
    """Directory of position roles"""
    # TODO: Query roles
    roles = []
    return render_template('dbpub/roles.html', roles=roles)


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
    Query params: d1, d2 (date range), sort
    """
    from datetime import date, timedelta
    from webbsite.asp_helpers import get_str

    # Get date parameters (default: last 60 days)
    d2_str = get_str('d2', '')
    if d2_str:
        try:
            d2 = date.fromisoformat(d2_str)
        except ValueError:
            d2 = date.today()
    else:
        d2 = date.today()

    d1_str = get_str('d1', '')
    if d1_str:
        try:
            d1 = date.fromisoformat(d1_str)
        except ValueError:
            d1 = d2 - timedelta(days=59)
    else:
        d1 = d2 - timedelta(days=59)

    # Ensure d1 <= d2 and range <= 366 days
    if d1 > d2:
        d1 = d2 - timedelta(days=59)
    if (d2 - d1).days > 366:
        d1 = d2 - timedelta(days=365)

    # Get sort parameter
    sort_param = get_str('sort', 'dirup')
    order_by_map = {
        'dirup': 'dir, apptdate',
        'dirdn': 'dir DESC, apptdate',
        'appup': 'apptdate, dir',
        'appdn': 'apptdate DESC, dir',
        'posup': 'posshort, dir, apptdate',
        'posdn': 'posshort DESC, dir, apptdate',
        'agedn': 'yob, dir, apptdate',
        'ageup': 'yob DESC, apptdate',
        'sexup': 'sex, dir, org',
        'sexdn': 'sex DESC, dir, org',
        'orgdn': 'org DESC, apptdate, dir',
        'orgup': 'org, apptdate, dir'
    }
    order_by = order_by_map.get(sort_param, order_by_map['dirup'])

    # Query recent appointments
    sql = f"""
        SELECT
            CASE WHEN p.name2 IS NULL THEN p.name1
                 ELSE p.name1 || ', ' || p.name2
            END as dir,
            d.director as dirid,
            d.company as orgid,
            o.name1 as org,
            p.sex,
            d.apptdate as appt,
            pn.posshort,
            pn.poslong,
            p.yob
        FROM enigma.directorships d
        JOIN enigma.people p ON d.director = p.personid
        JOIN enigma.organisations o ON d.company = o.personid
        JOIN enigma.positions pn ON d.positionid = pn.positionid
        JOIN enigma.listedcoshkever lc ON d.company = lc.issuer
        WHERE d.apptdate >= %s
          AND d.apptdate <= %s
          AND pn.rank = 1
        ORDER BY {order_by}
    """

    try:
        results = execute_query(sql, (d1, d2))
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in latestdirsHK.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/latest_dirs_hk.html',
                         appointments=results,
                         d1=d1,
                         d2=d2,
                         sort=sort_param,
                         period_days=(d2-d1).days + 1)


# Board composition per company
@bp.route('/boardcomp.asp')
def boardcomp():
    """
    Board composition per HK-listed company
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

    # Query board composition - aggregate directors per company
    sql = f"""
        WITH company_boards AS (
            SELECT
                d.company,
                o.name1 as name,
                COUNT(*) as dirs,
                COUNT(CASE WHEN pn.postype = 3 THEN 1 END) as ine,
                COUNT(CASE WHEN p.sex = 'F' THEN 1 END) as female,
                ROUND(AVG(EXTRACT(YEAR FROM %s) - p.yob), 1) as age,
                MIN(sl.stockcode) as sc
            FROM enigma.directorships d
            JOIN enigma.organisations o ON d.company = o.personid
            JOIN enigma.people p ON d.director = p.personid
            JOIN enigma.positions pn ON d.positionid = pn.positionid
            JOIN enigma.listedcoshk lc ON d.company = lc.issuer
            LEFT JOIN enigma.stocklistings sl ON lc.issueid = sl.issueid
                AND sl.firsttradedate <= %s
                AND (sl.delistdate IS NULL OR sl.delistdate > %s)
                AND sl."2ndCtr" = FALSE
            WHERE pn.rank = 1
              AND (d.apptdate IS NULL OR d.apptdate <= %s)
              AND (d.until IS NULL OR d.until > %s)
            GROUP BY d.company, o.name1
        )
        SELECT
            company as orgid,
            name,
            dirs,
            ine,
            female,
            age,
            sc,
            CASE WHEN dirs > 0 THEN ROUND(100.0 * ine / dirs, 1) ELSE 0 END as inepropn,
            CASE WHEN dirs > 0 THEN ROUND(100.0 * female / dirs, 1) ELSE 0 END as fempropn
        FROM company_boards
        ORDER BY {order_by}
    """

    try:
        results = execute_query(sql, (d, d, d, d, d))
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in boardcomp.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/boardcomp.html',
                         boards=results,
                         d=d,
                         sort=sort_param)


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
            from flask import current_app
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
        from flask import current_app
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
        from flask import current_app
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
        from flask import current_app
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
          AND (d.until IS NULL OR d.until > %s)
        GROUP BY p.personid, person
        HAVING COUNT(DISTINCT d.company) > 1
        ORDER BY {order_by}
    """

    try:
        results = execute_query(sql, (d, d))
    except Exception as ex:
        from flask import current_app
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
    from datetime import date
    from webbsite.asp_helpers import get_int, get_str
    import calendar

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
        from flask import current_app
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
        from flask import current_app
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
        from flask import current_app
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
        from flask import current_app
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
        from flask import current_app
        current_app.logger.error(f"Error in HKstocksByBoardLot.asp: {ex}", exc_info=True)
        results = []
        total = 0

    return render_template('dbpub/hkstocksbyboardlot.html',
                         board_lots=results,
                         total=total)


# HK companies incorporated per year
@bp.route('/incHKannual.asp')
def inc_hk_annual():
    """
    HK companies incorporated and dissolved per year
    Query params: t (orgtype filter)
    Shows chart and table of incorporations/dissolutions
    """
    from datetime import date
    from webbsite.asp_helpers import get_int

    t = get_int('t', 0)
    title = "HK companies"

    # Build type filter
    if t > 0:
        # Get type name
        type_sql = "SELECT typename FROM enigma.orgtypes WHERE orgtype = %s"
        try:
            type_result = execute_query(type_sql, (t,))
            if type_result:
                type_name = type_result[0]['typename']
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
        from flask import current_app
        current_app.logger.error(f"Error in incHKannual.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/inchkannual.html',
                         years=results,
                         t=t,
                         title=title)


# Oldest HK companies
@bp.route('/oldestHKcos.asp')
def oldest_hk_cos():
    """
    The oldest HK-incorporated companies
    Query params: a (alive only), t (orgtype filter), sort
    """
    from webbsite.asp_helpers import get_int, get_bool, get_str

    a = get_bool('a')  # Alive only
    t = get_int('t', 0)  # Orgtype filter
    sort_param = get_str('sort', 'incup')

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
        'namup': 'name',
        'namdn': 'name DESC',
        'regup': 'incid',
        'regdn': 'incid DESC',
        'incup': 'incdate, name',
        'incdn': 'incdate DESC, name',
        'disdn': 'disdate DESC, name',
        'disup': 'disdate, name',
        'typup': 'typename, name',
        'typdn': 'typename DESC, name'
    }
    order_by = order_by_map.get(sort_param, order_by_map['incup'])

    # Build type filter
    if t > 0:
        type_sql = "SELECT typename FROM enigma.orgtypes WHERE orgtype = %s"
        try:
            type_result = execute_query(type_sql, (t,))
            if type_result:
                type_name = type_result[0]['typename']
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
        from flask import current_app
        current_app.logger.error(f"Error in oldestHKcos.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/oldest_hk_cos.html',
                         companies=results,
                         a=a,
                         t=t,
                         sort=sort_param,
                         title=title)


# Directors per person distribution
@bp.route('/dirsHKPerPerson.asp')
def dirs_hk_per_person():
    """
    Distribution of enigma.directorships per person
    Shows how many people have 1, 2, 3... enigma.directorships
    Query params: d (snapshot date)
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

    # Query distribution of enigma.directorships per person
    sql = """
        WITH person_counts AS (
            SELECT
                d.director,
                COUNT(DISTINCT d.company) as dirs
            FROM enigma.directorships d
            JOIN enigma.positions pn ON d.positionid = pn.positionid
            JOIN enigma.listedcoshk lc ON d.company = lc.issuer
            WHERE pn.rank = 1
              AND (d.apptdate IS NULL OR d.apptdate <= %s)
              AND (d.until IS NULL OR d.until > %s)
            GROUP BY d.director
        )
        SELECT
            dirs as enigma.directorships,
            COUNT(*) as people
        FROM person_counts
        GROUP BY dirs
        ORDER BY dirs
    """

    try:
        results = execute_query(sql, (d, d))
        total_people = sum(row['people'] for row in results)
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in dirsHKPerPerson.asp: {ex}", exc_info=True)
        results = []
        total_people = 0

    return render_template('dbpub/dirs_hk_per_person.html',
                         distribution=results,
                         d=d,
                         total=total_people)


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
        from flask import current_app
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
        from flask import current_app
        current_app.logger.error(f"Error in reportspeed.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/reportspeed.html',
                         companies=results,
                         y=y,
                         sort=sort_param)


# HK Companies incorporated by year/month/day and type
@bp.route('/incHKcaltype.asp')
def inchkcaltype():
    """HK companies incorporated by calendar date and type"""
    from webbsite.asp_helpers import get_int, get_str
    from webbsite.db import execute_query
    from datetime import date
    from flask import render_template

    # Get parameters
    y = get_int('y', date.today().year)
    m = get_int('m', 0)  # 0 = any month
    d = get_int('d', 0)  # 0 = any day
    t = get_int('t', 0)  # 0 = any type
    sort_param = get_str('sort', 'namup')

    # Validate year range
    if y < 1865:
        y = 1865
    elif y > date.today().year:
        y = date.today().year

    # Build order by clause
    order_by_map = {
        'namup': 'o.name1',
        'namdn': 'o.name1 DESC',
        'regup': 'o.incid',
        'regdn': 'o.incid DESC',
        'incup': 'o.incdate, o.name1',
        'incdn': 'o.incdate DESC, o.name1',
        'disup': 'o.disdate, o.name1',
        'disdn': 'o.disdate DESC, o.name1',
        'typup': 'ot.typename, o.name1',
        'typdn': 'ot.typename DESC, o.name1'
    }
    order_by = order_by_map.get(sort_param, 'o.name1')

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
                typename = type_result[0]['typename']

        # Get org types for dropdown
        types_sql = """
            SELECT orgtype, typename
            FROM enigma.orgtypes
            WHERE orgtype IN (1,2,9,15,19,21,22,23,26,28,35,42,43)
            ORDER BY typename
        """
        orgtypes_list = execute_query(types_sql)
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in incHKcaltype.asp: {ex}", exc_info=True)
        results = []
        typename = None
        orgtypes_list = []

    return render_template('dbpub/inchkcaltype.html',
                         companies=results,
                         y=y, m=m, d=d, t=t,
                         typename=typename,
                         enigma_orgtypes=orgtypes_list,
                         sort=sort_param,
                         count=len(results))


# HK Companies dissolved by year/month/day, type, and method
@bp.route('/disHKcaltype.asp')
def dishkcaltype():
    """HK companies dissolved by calendar date, type, and dissolution method"""
    from webbsite.asp_helpers import get_int, get_str
    from webbsite.db import execute_query
    from datetime import date
    from flask import render_template

    # Get parameters
    y = get_int('y', date.today().year)
    m = get_int('m', 0)  # 0 = any month
    d = get_int('d', 0)  # 0 = any day
    t = get_int('t', 0)  # 0 = any type
    w = get_int('w', 0)  # 0 = any dissolution method
    sort_param = get_str('sort', 'namup')

    # Validate year range
    if y < 1917:
        y = 1917
    elif y > date.today().year:
        y = date.today().year

    # Build order by clause
    order_by_map = {
        'namup': 'o.name1',
        'namdn': 'o.name1 DESC',
        'modup': 'dm.dismodetxt, o.name1',
        'moddn': 'dm.dismodetxt DESC, o.name1',
        'typup': 'ot.typename, o.name1',
        'typdn': 'ot.typename DESC, o.name1',
        'incup': 'o.incdate, o.name1',
        'incdn': 'o.incdate DESC, o.name1',
        'disup': 'o.disdate, o.name1',
        'disdn': 'o.disdate DESC, o.name1'
    }
    order_by = order_by_map.get(sort_param, 'o.name1')

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
                typename = type_result[0]['typename']
        if w > 0:
            method_sql = "SELECT dismodetxt FROM enigma.dismodes WHERE id = %s"
            method_result = execute_query(method_sql, (w,))
            if method_result:
                methodname = method_result[0]['dismodetxt']

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
        from flask import current_app
        current_app.logger.error(f"Error in disHKcaltype.asp: {ex}", exc_info=True)
        results = []
        typename = None
        methodname = None
        orgtypes_list = []
        dismodes_list = []

    return render_template('dbpub/dishkcaltype.html',
                         companies=results,
                         y=y, m=m, d=d, t=t, w=w,
                         typename=typename,
                         methodname=methodname,
                         enigma_orgtypes=orgtypes_list,
                         enigma_dismodes=dismodes_list,
                         sort=sort_param,
                         count=len(results))


# Auditor changes for listed companies
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
        from flask import current_app
        current_app.logger.error(f"Error in auditorchanges.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/auditorchanges.html',
                         changes=results,
                         sort=sort_param)


# HK monthly incorporations and dissolutions
@bp.route('/incHKmonth.asp')
def inchkmonth():
    """Monthly HK company incorporations and dissolutions"""
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from datetime import date
    from flask import render_template

    t = get_int('t', -1)  # -1 = all types

    # Get type name if filtering
    typename = None
    if t > 0:
        type_sql = "SELECT typename FROM enigma.orgtypes WHERE orgtype = %s"
        type_result = execute_query(type_sql, (t,))
        if type_result:
            typename = type_result[0]['typename']

    # Build query for monthly data since 1985
    start_date = '1985-01-01'
    end_date = date.today().replace(day=1).isoformat()

    # This query generates monthly data points
    sql = """
        WITH RECURSIVE dates AS (
            SELECT DATE '1985-01-01' AS d
            UNION ALL
            SELECT (d + INTERVAL '1 month')::date
            FROM dates
            WHERE d + INTERVAL '1 month' <= %s::date
        )
        SELECT
            d,
            COALESCE(inc.cnt, 0) AS incorporated,
            COALESCE(dis.cnt, 0) AS dissolved
        FROM dates
        LEFT JOIN (
            SELECT DATE_TRUNC('month', incdate)::date AS mstart, COUNT(*) AS cnt
            FROM enigma.organisations
            WHERE domicile = 1
              AND incid ~ '^[0-9]'
              AND incdate >= '1985-01-01'
              AND incdate <= %s::date
    """ + ("AND orgtype = %s" if t > 0 else "") + """
            GROUP BY mstart
        ) inc ON dates.d = inc.mstart
        LEFT JOIN (
            SELECT DATE_TRUNC('month', disdate)::date AS mstart, COUNT(*) AS cnt
            FROM enigma.organisations
            WHERE domicile = 1
              AND incid ~ '^[0-9]'
              AND disdate >= '1985-01-01'
              AND disdate <= %s::date
    """ + ("AND orgtype = %s" if t > 0 else "") + """
            GROUP BY mstart
        ) dis ON dates.d = dis.mstart
        ORDER BY d
    """

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

        inc_total = init_result[0]['inc_total'] if init_result else 0
        dis_total = init_result[0]['dis_total'] if init_result else 0

        # Get org types for dropdown
        types_sql = """
            SELECT orgtype, typename
            FROM enigma.orgtypes
            WHERE orgtype IN (1,19,21,26,28)
            ORDER BY typename
        """
        orgtypes_list = execute_query(types_sql)

    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in incHKmonth.asp: {ex}", exc_info=True)
        results = []
        inc_total = 0
        dis_total = 0
        orgtypes_list = []

    return render_template('dbpub/inchkmonth.html',
                         enigma_months=results,
                         t=t,
                         typename=typename,
                         enigma_orgtypes=orgtypes_list,
                         inc_total=inc_total,
                         dis_total=dis_total)


# HK company survival rates
@bp.route('/incHKsurvive.asp')
def inchksurvive():
    """Survival of HK companies at a given date"""
    from webbsite.asp_helpers import get_int, get_str
    from webbsite.db import execute_query
    from datetime import date
    from flask import render_template

    # Get parameters
    d_str = get_str('d', date.today().isoformat())
    t = get_int('t', -1)  # -1 = all types

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
            typename = type_result[0]['typename']

    # Query survival rates by year of incorporation
    sql = """
        WITH RECURSIVE years AS (
            SELECT 1865 AS y
            UNION ALL
            SELECT y + 1
            FROM years
            WHERE y + 1 <= EXTRACT(YEAR FROM %s::date)
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
                COUNT(*) FILTER (WHERE disdate IS NULL OR disdate > '2023-12-13') AS survive
            FROM enigma.organisations
            WHERE domicile = 1
              AND incid ~ '^[0-9]'
              AND incdate <= %s::date
    """ + ("AND orgtype = %s" if t > 0 else "") + """
            GROUP BY incyear
        ) t ON y = t.incyear
        ORDER BY y
    """

    try:
        if t > 0:
            params = (snapshot_date, snapshot_date, t)
        else:
            params = (snapshot_date, snapshot_date)

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
        from flask import current_app
        current_app.logger.error(f"Error in incHKsurvive.asp: {ex}", exc_info=True)
        results = []
        orgtypes_list = []

    return render_template('dbpub/inchksurvive.html',
                         years=results,
                         d=snapshot_date.isoformat(),
                         t=t,
                         typename=typename,
                         enigma_orgtypes=orgtypes_list)


# Annual HK company registrations
@bp.route('/regHKannual.asp')
def reghkannual():
    """Annual HK company registrations since 1865"""
    from webbsite.db import execute_query
    from flask import render_template

    sql = """
        WITH RECURSIVE years AS (
            SELECT 1865 AS y
            UNION ALL
            SELECT y + 1 FROM years WHERE y + 1 <= EXTRACT(YEAR FROM CURRENT_DATE)
        )
        SELECT y, COALESCE(cnt, 0) AS registrations
        FROM years
        LEFT JOIN (
            SELECT EXTRACT(YEAR FROM incdate) AS year, COUNT(*) AS cnt
            FROM enigma.organisations
            WHERE domicile = 1 AND incid ~ '^[0-9]'
            GROUP BY year
        ) t ON y = t.year
        ORDER BY y DESC
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in regHKannual.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/reghkannual.html', years=results)


# Foreign company annual registrations
@bp.route('/incFcal.asp')
def incfcal():
    """Foreign companies registered in HK by year"""
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from flask import render_template

    y = get_int('y', 2024)

    sql = """
        SELECT o.personid, o.name1, o.cname, o.incid, o.incdate, d.domName
        FROM enigma.organisations o
        JOIN enigma.domiciles d ON o.domicile = d.ID
        WHERE o.domicile != 1
          AND o.incid ~ '^[0-9]'
          AND EXTRACT(YEAR FROM o.incdate) = %s
        ORDER BY o.incdate DESC, o.name1
        LIMIT 1000
    """

    try:
        results = execute_query(sql, (y,))
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in incFcal.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/incfcal.html', companies=results, y=y)


# Foreign company dissolutions
@bp.route('/disFcal.asp')
def disfcal():
    """Foreign companies dissolved in HK by year"""
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from flask import render_template

    y = get_int('y', 2024)

    sql = """
        SELECT o.personid, o.name1, o.cname, o.incid, o.incdate, o.disdate, d.domName
        FROM enigma.organisations o
        JOIN enigma.domiciles d ON o.domicile = d.ID
        WHERE o.domicile != 1
          AND o.incid ~ '^[0-9]'
          AND EXTRACT(YEAR FROM o.disdate) = %s
        ORDER BY o.disdate DESC, o.name1
        LIMIT 1000
    """

    try:
        results = execute_query(sql, (y,))
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in disFcal.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/disfcal.html', companies=results, y=y)


# HK company domicile and registration
@bp.route('/domregHK.asp')
def domreghk():
    """HK companies by domicile and registration status"""
    from webbsite.db import execute_query
    from flask import render_template

    sql = """
        SELECT
            d.domname,
            COUNT(*) AS total,
            COUNT(*) FILTER (WHERE o.disdate IS NULL) AS alive,
            COUNT(*) FILTER (WHERE o.disdate IS NOT NULL) AS dissolved
        FROM enigma.organisations o
        JOIN enigma.domiciles d ON o.domicile = d.id
        WHERE o.incid ~ '^[0-9]'
        GROUP BY d.id, d.domname
        ORDER BY total DESC
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in domregHK.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/domreghk.html', enigma_domiciles=results)


# UK company incorporations by calendar type
@bp.route('/incUKcaltype.asp')
def incukcaltype():
    """UK companies incorporated by year"""
    from webbsite.asp_helpers import get_int, get_str
    from webbsite.db import execute_query
    from datetime import date
    from flask import render_template

    y = get_int('y', date.today().year)
    sort_param = get_str('sort', 'namup')

    order_by_map = {
        'namup': 'o.name1',
        'namdn': 'o.name1 DESC',
        'incup': 'o.incdate, o.name1',
        'incdn': 'o.incdate DESC, o.name1'
    }
    order_by = order_by_map.get(sort_param, 'o.name1')

    sql = f"""
        SELECT o.personid, o.name1, o.incid, o.incdate, o.disdate
        FROM enigma.organisations o
        WHERE o.domicile = 2
          AND EXTRACT(YEAR FROM o.incdate) = %s
        ORDER BY {order_by}
        LIMIT 5000
    """

    try:
        results = execute_query(sql, (y,))
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in incUKcaltype.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/incukcaltype.html', companies=results, y=y, sort=sort_param)


# HK solicitors list
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
          AND d.until IS NULL
        GROUP BY d.director, p.name1, p.name2
        ORDER BY {order_by}
        LIMIT 5000
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        from flask import current_app
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
          AND d.until IS NULL
        GROUP BY d.company, o.name1
        HAVING COUNT(DISTINCT d.director) > 0
        ORDER BY {order_by}
        LIMIT 1000
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in hksolfirms.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/hksolfirms.html', firms=results, sort=sort_param)


# HK solicitors admitted in HK
@bp.route('/hksolsadmhk.asp')
def hksolsadmhk():
    """HK solicitors admitted in Hong Kong"""
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from flask import render_template
    from datetime import date

    y = get_int('y', date.today().year)

    sql = """
        SELECT
            d.director AS personid,
            CASE WHEN p.name2 IS NULL THEN p.name1
                 ELSE p.name1 || ', ' || p.name2
            END AS name,
            d.apptdate AS admitted
        FROM enigma.directorships d
        JOIN enigma.people p ON d.director = p.personid
        WHERE d.positionid IN (394, 395)
          AND EXTRACT(YEAR FROM d.apptdate) = %s
        ORDER BY d.apptdate DESC, name
        LIMIT 1000
    """

    try:
        results = execute_query(sql, (y,))
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in hksolsadmhk.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/hksolsadmhk.html', solicitors=results, y=y)


# HK solicitors admitted overseas
@bp.route('/hksolsadmos.asp')
def hksolsadmos():
    """HK solicitors admitted overseas"""
    from webbsite.db import execute_query
    from flask import render_template

    # This is a stub - would need additional data on overseas admissions
    sql = """
        SELECT
            d.director AS personid,
            CASE WHEN p.name2 IS NULL THEN p.name1
                 ELSE p.name1 || ', ' || p.name2
            END AS name
        FROM enigma.directorships d
        JOIN enigma.people p ON d.director = p.personid
        WHERE d.positionid IN (394, 395)
          AND d.until IS NULL
        ORDER BY name
        LIMIT 100
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in hksolsadmos.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/hksolsadmos.html', solicitors=results)


# HK solicitors by domicile
@bp.route('/hksolsdom.asp')
def hksolsdom():
    """HK solicitors grouped by domicile"""
    from webbsite.db import execute_query
    from flask import render_template

    sql = """
        SELECT
            p.domicile,
            d.domname,
            COUNT(DISTINCT dir.director) AS sol_count
        FROM enigma.directorships dir
        JOIN enigma.people p ON dir.director = p.personid
        LEFT JOIN enigma.domiciles d ON p.domicile = d.id
        WHERE dir.positionid IN (394, 395)
          AND dir.until IS NULL
        GROUP BY p.domicile, d.domname
        ORDER BY sol_count DESC
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in hksolsdom.asp: {ex}", exc_info=True)
        results = []

    return render_template('dbpub/hksolsdom.html', enigma_domiciles=results)


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
          AND d.until IS NULL
        GROUP BY d.company, o.name1
        ORDER BY sol_count DESC
        LIMIT 500
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
        from flask import current_app
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
        from flask import current_app
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
    """Legal judgments database"""
    from webbsite.asp_helpers import get_str
    from webbsite.db import execute_query
    from flask import render_template

    search = get_str('q', '')

    if search:
        sql = """
            SELECT personid, name1, cname
            FROM enigma.organisations
            WHERE name1 ILIKE %s OR cname ILIKE %s
            LIMIT 100
        """
        try:
            results = execute_query(sql, (f'%{search}%', f'%{search}%'))
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error in judgments.asp: {ex}", exc_info=True)
            results = []
    else:
        results = []

    return render_template('dbpub/judgments.html', results=results, q=search)


# Vaccination data
@bp.route('/vax.asp')
def vax():
    """Vaccination statistics"""
    from webbsite.db import execute_query
    from flask import render_template

    # Stub - would need vaccination-specific tables
    return render_template('dbpub/vax.html', data=[])


# ESS (Employee Stock Scheme) top holdings
@bp.route('/ESStop.asp')
def esstop():
    """Top Employee Stock Scheme holdings"""
    from webbsite.db import execute_query
    from flask import render_template

    # Stub - would need ESS-specific data
    return render_template('dbpub/esstop.html', data=[])


# ESS search
@bp.route('/searchESS.asp')
def searchess():
    """Search Employee Stock Schemes"""
    from webbsite.asp_helpers import get_str
    from webbsite.db import execute_query
    from flask import render_template

    search = get_str('q', '')
    return render_template('dbpub/searchess.html', q=search, results=[])


# HKID index
@bp.route('/HKIDindex.asp')
def hkidindex():
    """HKID (Hong Kong Identity Card) index"""
    from webbsite.db import execute_query
    from flask import render_template

    # Stub - would need HKID-specific data
    return render_template('dbpub/hkidindex.html', data=[])


# Webb chips (stock market analysis)
@bp.route('/webbchips.asp')
def webbchips():
    """Webb-site CHIPS (Cheapest, Highest, Insider, PB, Shrinking) analysis"""
    from webbsite.db import execute_query
    from flask import render_template

    # Stub - complex calculation requiring multiple metrics
    return render_template('dbpub/webbchips.html', data=[])


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
    """Public rental housing by district"""
    from webbsite.db import execute_query
    from flask import render_template

    # Stub - would need PRH tables
    return render_template('dbpub/prhdistricts.html', districts=[])


# HK flights data
@bp.route('/HKflights.asp')
def hkflights():
    """Hong Kong flight statistics"""
    from webbsite.asp_helpers import get_str
    from webbsite.db import execute_query
    from flask import render_template

    date_param = get_str('d', '')

    # Stub - would need flights tables
    return render_template('dbpub/hkflights.html', d=date_param, flights=[])


# HK flights cancellations
@bp.route('/HKflightscan.asp')
def hkflightscan():
    """Hong Kong flight cancellations"""
    from webbsite.db import execute_query
    from flask import render_template

    # Stub - would need flights tables
    return render_template('dbpub/hkflightscan.html', cancellations=[])


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
    sql = """
        WITH board_data AS (
            SELECT
                d.company,
                COUNT(DISTINCT d.director) FILTER (WHERE p.sex = 'F') AS fdirs
            FROM enigma.directorships d
            JOIN enigma.people p ON d.director = p.personid
            JOIN enigma.positions pos ON d.positionid = pos.positionid
            JOIN enigma.listedcoshk lc ON d.company = lc.issuer
            WHERE pos.rank = 1
              AND (d.until IS NULL OR d.until > %s)
              AND d.apptdate <= %s
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
        results = execute_query(sql, (snapshot_date, snapshot_date))

        # Get total listed company count
        count_sql = "SELECT COUNT(*) AS cnt FROM enigma.listedcoshk"
        count_result = execute_query(count_sql)
        total_cos = count_result[0]['cnt'] if count_result else 0
    except Exception as ex:
        from flask import current_app
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
              AND (d.until IS NULL OR d.until > %s)
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
        from flask import current_app
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
              AND (d.until IS NULL OR d.until > %s)
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
        from flask import current_app
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
            from flask import current_app
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
    """Webb-site Single stock Total Return chart"""
    from webbsite.asp_helpers import get_int, get_bool
    from webbsite.db import execute_query
    from flask import render_template

    i = get_int('i', 0)  # Issue ID
    sc = get_int('sc', 0)  # Stock code (alternative lookup)
    show_deals = get_bool('f')  # Show directors' dealings
    show_bb = get_bool('b')  # Show buybacks

    # Find enigma.issue ID from stock code if needed
    if sc > 0 and i == 0:
        issue_sql = """
            SELECT i.id1
            FROM enigma.issue i
            JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
            WHERE sl.stockcode = %s
              AND NOT sl."2ndCtr"
            ORDER BY sl.firsttradedate DESC
            LIMIT 1
        """
        try:
            issue_result = execute_query(issue_sql, (sc,))
            if issue_result:
                i = issue_result[0]['id1']
        except:
            pass

    if i > 0:
        # Get stock name
        name_sql = """
            SELECT o.name1
            FROM enigma.issue i
            JOIN enigma.organisations o ON i.issuer = o.personid
            WHERE i.id1 = %s
        """

        # Get adjusted quotes
        quotes_sql = """
            SELECT
                EXTRACT(EPOCH FROM atdate) * 1000 AS timestamp,
                ROUND(vol / COALESCE(NULLIF(splitadj, 0), 1)) AS adj_vol,
                ROUND(closing * COALESCE(NULLIF(splitadj, 0), 1), 5) AS adj_close
            FROM ccass.quotes
            WHERE issueid = %s
            ORDER BY atdate
        """

        try:
            name_result = execute_query(name_sql, (i,))
            stock_name = name_result[0]['name1'] if name_result else f"Issue {i}"

            quotes = execute_query(quotes_sql, (i,))
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error in str.asp: {ex}", exc_info=True)
            stock_name = f"Issue {i}"
            quotes = []
    else:
        stock_name = "Unknown"
        quotes = []

    return render_template('dbpub/str.html',
                         i=i,
                         sc=sc,
                         stock_name=stock_name,
                         quotes=quotes,
                         show_deals=show_deals,
                         show_bb=show_bb)


@bp.route('/ctr.asp')
def ctr():
    """Chart total returns - interactive price chart with total returns"""
    from webbsite.asp_helpers import get_int, get_str
    from webbsite.db import execute_query
    from flask import render_template

    i = get_int('i', 0)
    sc = get_str('sc', '')

    # Get stock info
    stock_name = "Unknown"
    if i > 0:
        try:
            sql = """
                SELECT i.issuename, i.stockcode
                FROM enigma.issue i
                WHERE i.issueid = %s
            """
            result = execute_query(sql, (i,))
            if result:
                stock_name = result[0]['issuename']
                if not sc and result[0]['stockcode']:
                    sc = result[0]['stockcode']
        except Exception as ex:
            current_app.logger.error(f"Error in ctr.asp: {ex}", exc_info=True)

    # TODO: Get quote data with total returns adjustments
    chart_data = []

    return render_template('dbpub/ctr.html',
                         i=i,
                         sc=sc,
                         stock_name=stock_name,
                         chart_data=chart_data)


@bp.route('/hksolsmoves.asp')
def hksolsmoves_lowercase():
    """Lowercase alias for HKsolsmoves.asp"""
    return HKsolsmoves()


@bp.route('/hkpax.asp')
def hkpax():
    """HK passenger statistics (airport, border crossings)"""
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from flask import render_template
    from datetime import date

    y = get_int('y', date.today().year)

    # TODO: Query passenger statistics from transport tables
    pax_data = []

    return render_template('dbpub/hkpax.html',
                         y=y,
                         pax_data=pax_data)


@bp.route('/jail.asp')
def jail():
    """Directors who went to jail"""
    from webbsite.db import execute_query
    from flask import render_template

    # TODO: Query enigma.directorships where person has jail-related enigma.events
    # Need to identify which eventTypeIDs correspond to jail sentences
    jail_data = []

    return render_template('dbpub/jail.html',
                         jail_data=jail_data)


@bp.route('/tuntraff.asp')
def tuntraff():
    """Tunnel and bridge traffic statistics"""
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from flask import render_template
    from datetime import date

    y = get_int('y', date.today().year)

    # TODO: Query tunnel/bridge traffic from transport tables
    traffic_data = []

    return render_template('dbpub/tuntraff.html',
                         y=y,
                         traffic_data=traffic_data)


@bp.route('/veFR.asp')
def vefr():
    """Vehicle first registrations"""
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from flask import render_template
    from datetime import date

    y = get_int('y', date.today().year)
    m = get_int('m', 0)

    # TODO: Query vehicle first registrations from transport tables
    registrations = []

    return render_template('dbpub/vefr.html',
                         y=y,
                         m=m,
                         registrations=registrations)


@bp.route('/veFRtype.asp')
def vefrtype():
    """Vehicle first registrations by type"""
    from webbsite.asp_helpers import get_int, get_str
    from webbsite.db import execute_query
    from flask import render_template
    from datetime import date

    y = get_int('y', date.today().year)
    m = get_int('m', 0)
    vt = get_str('vt', '')  # vehicle type

    # TODO: Query vehicle first registrations by type
    registrations = []

    return render_template('dbpub/vefrtype.html',
                         y=y,
                         m=m,
                         vt=vt,
                         registrations=registrations)


@bp.route('/veFRtypehist.asp')
def vefrtypehist():
    """Vehicle first registrations by type - historical trend"""
    from webbsite.asp_helpers import get_str
    from webbsite.db import execute_query
    from flask import render_template

    vt = get_str('vt', '')  # vehicle type

    # TODO: Query historical vehicle registrations by type
    history = []

    return render_template('dbpub/vefrtypehist.html',
                         vt=vt,
                         history=history)


@bp.route('/veJourneyhist.asp')
def vejourneyhist():
    """Vehicle journey history"""
    from webbsite.asp_helpers import get_str
    from webbsite.db import execute_query
    from flask import render_template

    reg = get_str('reg', '')  # registration number

    # TODO: Query vehicle journey history
    journeys = []

    return render_template('dbpub/vejourneyhist.html',
                         reg=reg,
                         journeys=journeys)


@bp.route('/veJourneys.asp')
def vejourneys():
    """Vehicle journeys summary"""
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from flask import render_template
    from datetime import date

    y = get_int('y', date.today().year)

    # TODO: Query vehicle journey statistics
    journeys = []

    return render_template('dbpub/vejourneys.html',
                         y=y,
                         journeys=journeys)


@bp.route('/vebrandhist.asp')
def vebrandhist():
    """Vehicle brand registration history"""
    from webbsite.asp_helpers import get_str
    from webbsite.db import execute_query
    from flask import render_template

    brand = get_str('brand', '')

    # TODO: Query vehicle brand registration history
    history = []

    return render_template('dbpub/vebrandhist.html',
                         brand=brand,
                         history=history)


@bp.route('/vedet.asp')
def vedet():
    """Vehicle details"""
    from webbsite.asp_helpers import get_str
    from webbsite.db import execute_query
    from flask import render_template

    reg = get_str('reg', '')  # registration number

    # TODO: Query vehicle details (make, model, year, etc.)
    vehicle = None

    return render_template('dbpub/vedet.html',
                         reg=reg,
                         vehicle=vehicle)


@bp.route('/veengine.asp')
def veengine():
    """Vehicle engine types summary"""
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from flask import render_template
    from datetime import date

    y = get_int('y', date.today().year)

    # TODO: Query vehicle engine type statistics
    engines = []

    return render_template('dbpub/veengine.html',
                         y=y,
                         engines=engines)


@bp.route('/vefuel.asp')
def vefuel():
    """Vehicle fuel types summary"""
    from webbsite.asp_helpers import get_int
    from webbsite.db import execute_query
    from flask import render_template
    from datetime import date

    y = get_int('y', date.today().year)

    # TODO: Query vehicle fuel type statistics
    fuels = []

    return render_template('dbpub/vefuel.html',
                         y=y,
                         fuels=fuels)


@bp.route('/vefuelhist.asp')
def vefuelhist():
    """Vehicle fuel types - historical trend"""
    from webbsite.asp_helpers import get_str
    from webbsite.db import execute_query
    from flask import render_template

    fuel = get_str('fuel', '')

    # TODO: Query historical vehicle fuel type statistics
    history = []

    return render_template('dbpub/vefuelhist.html',
                         fuel=fuel,
                         history=history)


# Helpers to import
from webbsite.asp_helpers import get_int, get_str
