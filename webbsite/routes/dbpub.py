"""
Database routes - Direct port from dbpub/default.asp
Main database homepage and related pages
"""
from flask import Blueprint, render_template, request, abort, current_app
from datetime import date
from webbsite.db import execute_query, get_db

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
    # Note: PostgreSQL defaults differ from MySQL for NULL sorting:
    # - MySQL: ASC=NULLS FIRST, DESC=NULLS LAST
    # - PostgreSQL: ASC=NULLS LAST, DESC=NULLS FIRST
    # We explicitly specify NULLS FIRST/LAST to match MySQL behavior
    order_by_map = {
        'namedn': 'o.name1 DESC',
        'codeup': 'sl.stockcode',
        'codedn': 'sl.stockcode DESC',
        'typeup': 'st.typeshort, o.name1',
        'typedn': 'st.typeshort DESC, o.name1',
        'datedn': 'sl.firsttradedate DESC, o.name1',
        'dateup': 'sl.firsttradedate, o.name1',
        'totrdn': 'totret DESC NULLS LAST, sl.firsttradedate',
        'totrup': 'totret NULLS FIRST, sl.firsttradedate DESC',
        'cagretdn': 'cagret DESC NULLS LAST, sl.firsttradedate',
        'cagretup': 'cagret NULLS FIRST, sl.firsttradedate DESC',
        'cagreldn': 'cagrel DESC NULLS LAST, sl.firsttradedate',
        'cagrelup': 'cagrel NULLS FIRST, sl.firsttradedate DESC',
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

    # Query for listed stocks with total returns calculations
    sql = f"""
        SELECT
            sl.stockcode,
            sl.issueid,
            st.typeshort,
            st.typelong,
            o.name1,
            o.personid,
            sl.firsttradedate,
            enigma.totRet(sl.issueid, sl.firsttradedate, %s) - 1 AS totret,
            enigma.CAGRet(sl.issueid, sl.firsttradedate, %s) - 1 AS cagret,
            enigma.CAGRel(sl.issueid, sl.firsttradedate, %s) - 1 AS cagrel
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
        results = execute_query(sql, (d, d, d, d, d))
        stocks = []
        for row in results:
            # Format return percentages (NULL becomes empty string, values multiplied by 100 and formatted to 2 decimals)
            totret = '' if row['totret'] is None else f"{row['totret'] * 100:.2f}"
            cagret = '' if row['cagret'] is None else f"{row['cagret'] * 100:.2f}"
            cagrel = '' if row['cagrel'] is None else f"{row['cagrel'] * 100:.2f}"

            stocks.append({
                'StockCode': row['stockcode'],
                'issueID': row['issueid'],
                'typeShort': row['typeshort'],
                'typeLong': row['typelong'],
                'Name1': row['name1'],
                'PersonID': row['personid'],
                'FirstTradeDate': row['firsttradedate'],
                'totRet': totret,
                'CAGret': cagret,
                'CAGrel': cagrel
            })
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
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
        WHERE sl.delistdate <= NOW()
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
    - code: Stock code (will be padded to 5 digits like ASP: Right("0000"&code,5))

    Tables used: enigma.weblistings view
    """
    code_param = request.args.get('code', '1')
    # ASP: code=Right("0000"&Request("code"),5) - pad to 5 digits
    code_padded = code_param.zfill(5)

    # Query for delisted securities with this stock code
    # Note: HKEX recycles stock codes, so multiple companies may have used the same code
    # ASP SQL: SELECT * FROM WebListings WHERE stockCode=X AND DelistDate<Now() ORDER BY DeListDate
    # ASP does numeric comparison (no quotes), so "00009" matches "0009" in MySQL
    # PostgreSQL: Use LPAD to normalize comparison (some codes like "E16.SI" aren't numeric)
    sql = """
        SELECT *
        FROM enigma.weblistings
        WHERE LPAD(stockcode, 8, '0') = LPAD(%s, 8, '0')
          AND delistdate < CURRENT_DATE
        ORDER BY delistdate
    """

    try:
        results = execute_query(sql, (code_padded,))
        delisted_securities = []
        for row in results:
            delisted_securities.append({
                'org': row['org'],
                'orgid': row['orgid'],
                'sectype': row['sectype'],
                'firsttradedate': row['firsttradedate'],
                'finaltradedate': row['finaltradedate'],
                'delistdate': row['delistdate'],
                'reason': row['reason']
            })
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
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
    hide = request.args.get('hide', 'N')  # ASP defaults to 'N' (show history)
    u = request.args.get('u', type=bool, default=False)
    sort_param = request.args.get('sort', 'advup')

    if not person_id:
        return "PersonID required", 400

    # Get organization name (with Chinese name if available, like ASP fnameOrg function)
    try:
        org_result = execute_query("SELECT name1, cname FROM enigma.organisations WHERE personID = %s", (person_id,))
        if org_result:
            name1 = org_result[0]['name1']
            cname = org_result[0].get('cname')
            # Concatenate English and Chinese names like ASP does
            org_name = name1 + (" " + cname if cname else "")
        else:
            org_name = "No such organisation"
            person_id = 0  # ASP sets personID to 0 for non-existent orgs
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        current_app.logger.error(f"Error getting org name for advisers.asp: {ex}")
        org_name = "No such organisation"
        person_id = 0

    # Build date filter for enigma.webadv view
    # Note: Simplified - not using accuracy columns for MVP
    date_filter = "(adddate IS NULL OR adddate <= %s)"
    params = [d]

    if hide == 'Y':
        # Current only: remDate IS NULL OR remDate > snapshot_date OR remDate = '1000-01-01'
        date_filter += " AND (remdate IS NULL OR remdate > %s OR remdate = '1000-01-01')"
        params.append(d)

    if u:
        # Exclude unknown removal dates (1000-01-01 placeholder)
        date_filter += " AND (remdate IS NULL OR remdate != '1000-01-01')"

    # Determine sort order (using webadv view column names)
    sort_orders = {
        'advup': 'adv, adddate, role',
        'advdn': 'adv DESC, adddate, role',
        'rolup': 'role, adv, adddate',
        'roldn': 'role DESC, adv, adddate',
        'addup': 'adddate, adv, role',
        'adddn': 'adddate DESC, adv, role',
        'remup': 'remdate, adv, adddate, role',
        'remdn': 'remdate DESC, adv, adddate, role'
    }
    ob = sort_orders.get(sort_param, 'adv, adddate, role')
    if sort_param not in sort_orders:
        sort_param = 'advup'

    # Query regular advisers (continuing roles like auditors)
    # Use WebAdv view like ASP does - much simpler than manual joins
    regular_sql = f"""
        SELECT
            advid AS AdvID,
            adv AS AdvName,
            roleid,
            role,
            adddate,
            remdate
        FROM enigma.webadv
        WHERE NOT onetime
          AND orgid = %s
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
        current_app.logger.error(f"Error in advisers.asp (regular): {type(ex).__name__}: {ex}", exc_info=True)
        regular_advisers = []

    # Query one-time advisers (transaction-specific like IFAs)
    # Use WebAdv view like ASP does
    onetime_sql = f"""
        SELECT
            advid AS AdvID,
            adv AS AdvName,
            roleid,
            role,
            adddate
        FROM enigma.webadv
        WHERE onetime = TRUE
          AND orgid = %s
          AND {date_filter}
        ORDER BY {ob}
    """
    # One-time advisers use same date filter as regular
    params_onetime = [person_id] + params

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
        current_app.logger.error(f"Error in advisers.asp (one-time): {type(ex).__name__}: {ex}", exc_info=True)
        onetime_advisers = []

    # Get today's date for the clear button
    import datetime
    today = datetime.date.today().strftime('%Y-%m-%d')

    return render_template('dbpub/advisers.html',
                         person_id=person_id,
                         org_name=org_name,
                         regular_advisers=regular_advisers,
                         onetime_advisers=onetime_advisers,
                         d=d,
                         today=today,
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
        current_app.logger.error(f"Error getting org name for officers.asp: {ex}")
        org_name = "Unknown"

    # Build date filter for enigma.directorships (right-open interval logic)
    # Note: Using from_date/until columns based on enigma schema
    date_filter = "(d.apptdate IS NULL OR d.apptdate <= %s)"
    params = [d]

    if hide == 'Y':
        # Current only: until IS NULL OR until > snapshot_date
        date_filter += " AND (d.resdate IS NULL OR d.resdate > %s)"
        params.append(d)

    if u:
        # Exclude unknown resignation dates (1000-01-01 placeholder)
        date_filter += " AND (d.resdate IS NULL OR d.resdate != '1000-01-01')"

    # Determine sort order
    sort_orders = {
        'namup': 'PersonName, d.apptdate',
        'namdn': 'PersonName DESC, d.apptdate',
        'appup': 'd.apptdate, PersonName',
        'appdn': 'd.apptdate DESC, PersonName',
        'resup': 'd.resdate, PersonName',
        'resdn': 'd.resdate DESC, PersonName',
        'posup': 'pos.posShort, PersonName, d.apptdate',
        'posdn': 'pos.posShort DESC, PersonName, d.apptdate'
    }
    ob = sort_orders.get(sort_param, 'PersonName, d.apptdate')
    if sort_param not in sort_orders:
        sort_param = 'namup'

    # Query enigma.directorships grouped by rank
    # Note: Simplified - using COALESCE to handle both people and enigma.organisations as directors
    sql = f"""
        SELECT
            r.rankID,
            r.RankText,
            d.director AS director,
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
            d.apptdate,
            d.resdate
        FROM enigma.directorships d
        JOIN enigma.positions pos ON d.positionid = pos.positionid
        JOIN rank r ON pos.rank = r.rankID
        LEFT JOIN enigma.people p ON d.director = p.personid AND p.isPerson = TRUE
        LEFT JOIN enigma.organisations o ON d.director = o.personid
        WHERE d.company = %s
          AND {date_filter}
        ORDER BY r.rankID, {ob}
    """
    params = [person_id] + params

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
                'from_date': row['apptdate'],
                'until': row['resdate']
            })
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
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
        SELECT e.eventid, ct.change, e.exdate, o.name1, st.typeshort,
               e.issueid, e.new, e.old, e.adjust, sl.stockcode
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
@bp.route('/positions.asp')
def positions():
    """Alias for enigma_positions() to match ASP URL pattern"""
    return enigma_positions()


@bp.route('/holders.asp')
def holders():
    """
    Recursive ownership tree - shows who owns a company

    Query params:
    - p: personID of company
    - x: expand mode (n=direct, c=condensed, y=expanded)
    - s1: sort parameter

    Tables used: webholders3 view, issue, issuedshares
    """
    person_id = get_int('p', 0)
    expand = request.args.get('x', 'n')
    sort_param = request.args.get('s1', 'stakdn')

    if not person_id:
        return "PersonID required", 400

    # Get all qualifying issues for this person/company
    # Exclude warrants (1,2), rights (40,41), structured products (46)
    issues_data = execute_query("""
        SELECT i.id1 AS issueid,
               st.typelong,
               COALESCE(
                   (SELECT os.atdate
                    FROM enigma.issuedshares os
                    WHERE os.issueid = i.id1
                    ORDER BY os.atdate DESC
                    LIMIT 1), NULL) AS osdate,
               COALESCE(
                   (SELECT os.outstanding
                    FROM enigma.issuedshares os
                    WHERE os.issueid = i.id1
                    ORDER BY os.atdate DESC
                    LIMIT 1), NULL) AS outstanding
        FROM enigma.issue i
        JOIN enigma.sectypes st ON i.typeid = st.typeid
        WHERE i.issuer = %s
          AND i.typeid NOT IN (1, 2, 40, 41, 46)
        ORDER BY i.id1
    """, (person_id,))

    if not issues_data:
        return render_template('dbpub/holders.html',
                             person_id=person_id,
                             issues_data=[],
                             expand=expand)

    # Sort order mapping
    sort_mappings = {
        'stakdn': 'stakecomp DESC, name',
        'stakup': 'stakecomp, name',
        'namedn': 'name DESC',
        'nameup': 'name',
        'datedn': 'holdingdate DESC, name',
        'dateup': 'holdingdate, name'
    }
    ob = sort_mappings.get(sort_param, 'stakecomp DESC, name')

    # Process each issue
    issues_with_holders = []
    for issue_data in issues_data:
        issue_id = issue_data['issueid']

        if expand == 'n':
            # Direct mode - simple table
            holders = execute_query(f"""
                SELECT *,
                       CASE
                           WHEN shares IS NOT NULL AND shares > 0 THEN
                               shares / NULLIF(
                                   (SELECT outstanding
                                    FROM enigma.issuedshares
                                    WHERE issueid = %s
                                      AND atdate <= CURRENT_DATE
                                    ORDER BY atdate DESC
                                    LIMIT 1), 0)
                           ELSE stake
                       END AS stakecomp
                FROM enigma.webholders3
                WHERE issue = %s
                  AND (shares > 0 OR stake > 0 OR (shares IS NULL AND stake IS NULL))
                ORDER BY {ob}
            """, (issue_id, issue_id))

            issues_with_holders.append({
                'issue_data': issue_data,
                'holders': holders,
                'mode': 'direct'
            })
        else:
            # Expanded or condensed mode - recursive tree
            holders_tree = []
            seen_holders = {person_id: -1}  # Track to detect cross-holdings
            _build_holders_tree(issue_id, 0, 0, ob, holders_tree, seen_holders, expand == 'c')

            issues_with_holders.append({
                'issue_data': issue_data,
                'holders_tree': holders_tree,
                'mode': 'expanded' if expand == 'y' else 'condensed'
            })

    return render_template('dbpub/holders.html',
                         person_id=person_id,
                         issues_with_holders=issues_with_holders,
                         expand=expand,
                         sort_param=sort_param)


def _build_holders_tree(issue_id, parent_idx, level, ob, tree, seen_holders, is_condensed):
    """
    Recursive function to build ownership tree

    Args:
        issue_id: Issue whose holders to retrieve
        parent_idx: Index of parent node in tree
        level: Depth level in tree
        ob: ORDER BY clause
        tree: List to append results to
        seen_holders: Dict mapping personID -> first occurrence index (for cross-holding detection)
        is_condensed: If True, hide 100%-owned intermediates

    Algorithm mirrors the ASP holdersGen() subroutine:
    - Get all holders of this issue
    - For each holder that is an organization:
      - Check if already seen (cross-holding)
      - If not seen and not listed company, recursively get their issues and holders
      - Mark as visible if: stake != 100%, cross-holding, listed company, or multiple issues
    """
    # Get holders of this issue
    holders = execute_query(f"""
        SELECT *,
               CASE
                   WHEN shares IS NOT NULL AND shares > 0 THEN
                       shares / NULLIF(
                           (SELECT outstanding
                            FROM enigma.issuedshares
                            WHERE issueid = %s
                              AND atdate <= CURRENT_DATE
                            ORDER BY atdate DESC
                            LIMIT 1), 0)
                   ELSE stake
               END AS stakecomp
        FROM enigma.webholders3
        WHERE issue = %s
          AND (shares > 0 OR stake > 0 OR (shares IS NULL AND stake IS NULL))
        ORDER BY {ob}
    """, (issue_id, issue_id))

    # If no holders, mark parent as visible
    if not holders:
        if parent_idx >= 0:
            tree[parent_idx]['visible'] = True
        return

    for holder in holders:
        holder_id = holder['personid']
        stake = holder.get('stakecomp')
        current_idx = len(tree)

        # Add this holder to tree
        tree.append({
            'holder': holder,
            'parent_idx': parent_idx,
            'level': level,
            'visible': False,
            'is_cross_holding': False,
            'first_occurrence_idx': None
        })

        # Mark parent visible if stake != 100%
        if parent_idx >= 0 and stake != 1.0:
            tree[parent_idx]['visible'] = True

        # Check if this is a person (always visible) or organization
        if holder['persontype'] == 'P':
            tree[current_idx]['visible'] = True
        elif holder['persontype'] == 'O':
            # Check for cross-holding
            if holder_id in seen_holders:
                # Cross-holding detected
                tree[current_idx]['is_cross_holding'] = True
                tree[current_idx]['first_occurrence_idx'] = seen_holders[holder_id]
                tree[current_idx]['visible'] = True
                # Also make the first occurrence visible
                if seen_holders[holder_id] >= 0:
                    tree[seen_holders[holder_id]]['visible'] = True
            else:
                # Not yet seen - add to tracker
                seen_holders[holder_id] = current_idx

                # Check if this is a listed company (orgType 21=public, 22=listed)
                if holder.get('orgtype') in (21, 22):
                    tree[current_idx]['visible'] = True
                else:
                    # Get issues owned by this holder organization
                    holder_issues = execute_query("""
                        SELECT id1 FROM enigma.issue
                        WHERE issuer = %s
                          AND typeid NOT IN (1, 2, 40, 41, 46)
                    """, (holder_id,))

                    if not holder_issues:
                        # No qualifying issues - make visible
                        tree[current_idx]['visible'] = True
                    else:
                        # Recursively process each issue
                        for i, holder_issue in enumerate(holder_issues):
                            _build_holders_tree(
                                holder_issue['id1'],
                                current_idx,
                                level + 1,
                                ob,
                                tree,
                                seen_holders,
                                is_condensed
                            )
                            # If more than one issue, make this holder visible
                            if i > 0:
                                tree[current_idx]['visible'] = True


@bp.route('/holdings.asp')
def holdings():
    """
    Shareholdings by a specific shareholder - recursive tree showing what they own

    Query params:
    - p: personID of shareholder
    - x: expand mode (y=expanded tree, n=simple table)
    - sort: sorting column

    Tables used: webholdings3 view (sholdings + issue + organisations + domiciles)
    """
    person_id = get_int('p', 0)
    expand = request.args.get('x', 'n')
    sort_param = request.args.get('sort', 'namup')

    if not person_id:
        return "PersonID required", 400

    # Sort order mapping
    sort_mappings = {
        'stakup': 'stakecomp, name',
        'stakdn': 'stakecomp DESC, name',
        'namedn': 'name DESC',
        'namup': 'name',
        'incdup': 'incdate, name',
        'incddn': 'incdate DESC, name',
        'domiup': 'a2, name',
        'domidn': 'a2 DESC, name'
    }
    ob = sort_mappings.get(sort_param, 'name')

    if expand == 'y':
        # Expanded mode - recursive tree
        holdings_tree = []
        org_tracker = {person_id: 0}  # Track organizations to detect cross-holdings
        _build_holdings_tree(person_id, 0, ob, holdings_tree, org_tracker)

        return render_template('dbpub/holdings.html',
                             person_id=person_id,
                             holdings_tree=holdings_tree,
                             expand=expand,
                             sort_param=sort_param)
    else:
        # Simple mode - flat table
        holdings_data = execute_query(f"""
            SELECT personid, issue, holdingdate, shares, stake, friendly, a2,
                   name, orgtype, sectype, typeshort, issuer,
                   CASE
                       WHEN shares IS NOT NULL THEN
                           shares / NULLIF(
                               (SELECT outstanding
                                FROM enigma.issuedshares
                                WHERE issueid = issue
                                  AND atdate <= CURRENT_DATE
                                ORDER BY atdate DESC
                                LIMIT 1), 0)
                       ELSE stake
                   END AS stakecomp,
                   incdate, incacc
            FROM enigma.webholdings3
            WHERE personid = %s
              AND (shares > 0 OR stake > 0 OR (shares IS NULL AND stake IS NULL))
            ORDER BY {ob}
        """, (person_id,))

        return render_template('dbpub/holdings.html',
                             person_id=person_id,
                             holdings_data=holdings_data,
                             expand=expand,
                             sort_param=sort_param)


def _build_holdings_tree(person_id, level, ob, tree, org_tracker):
    """
    Recursive function to build holdings tree

    Args:
        person_id: Person/organization whose holdings to retrieve
        level: Depth level in tree (for indentation)
        ob: ORDER BY clause
        tree: List to append results to
        org_tracker: Dict mapping personID -> first occurrence index (for cross-holding detection)
    """
    holdings = execute_query(f"""
        SELECT *,
               CASE
                   WHEN shares IS NOT NULL THEN
                       shares / NULLIF(
                           (SELECT outstanding
                            FROM enigma.issuedshares
                            WHERE issueid = issue
                              AND atdate <= CURRENT_DATE
                            ORDER BY atdate DESC
                            LIMIT 1), 0)
                   ELSE stake
               END AS stakecomp
        FROM enigma.webholdings3
        WHERE personid = %s
          AND (shares > 0 OR stake > 0 OR (shares IS NULL AND stake IS NULL))
        ORDER BY {ob}
    """, (person_id,))

    for holding in holdings:
        issuer_id = holding['issuer']

        # Check if this issuer has been seen before (cross-holding)
        if issuer_id in org_tracker:
            # Cross-holding detected - add reference to previous occurrence
            tree.append({
                'level': level,
                'holding': holding,
                'is_cross_holding': True,
                'first_occurrence_idx': org_tracker[issuer_id]
            })
        else:
            # First time seeing this issuer - add to tracker and recurse
            org_tracker[issuer_id] = len(tree)
            tree.append({
                'level': level,
                'holding': holding,
                'is_cross_holding': False,
                'first_occurrence_idx': None
            })

            # Recursively get holdings of this issuer
            _build_holdings_tree(issuer_id, level + 1, ob, tree, org_tracker)


# NOTE: /prices.asp is implemented in quotes.py blueprint, not here
# @bp.route('/prices.asp')
# def prices():
#     """
#     Price and total returns history for a stock
#     MOVED TO: quotes.py
#     """
#     pass


@bp.route('/pricesCSV.asp')
def prices_csv():
    """CSV export of price data"""
    # TODO: Generate CSV export
    # Similar to prices.asp but returns CSV
    return "CSV export not yet implemented", 501


@bp.route('/chart.asp')
def chart():
    """
    Economic data charts with Highstock
    Direct port from chart.asp

    Query params:
    - c: chart ID (default 1)
    - d: show per day (boolean, for quantity charts)

    Uses charts, chartitems, dataitems, charttypes tables
    """
    c = get_int('c', 1)
    daily = request.args.get('d', '').lower() in ('1', 'true', 'yes')

    # Get chart metadata
    sql = "SELECT * FROM enigma.charts WHERE id = %s"
    chart_result = execute_query(sql, (c,))

    if not chart_result:
        return render_template('dbpub/chart.html', error='Chart not found')

    chart_info = chart_result[0]
    chart_title = chart_info.get('title', '')
    quant = chart_info.get('quant', False)

    # Get chart items with data item details
    sql = """
        SELECT c.dataitem, d.ddes, d.note, d.units, d.dp,
               d.shortname, d.freq, ct.name as typename, c.negate
        FROM enigma.chartitems c
        JOIN enigma.dataitems d ON c.dataitem = d.id
        JOIN enigma.charttypes ct ON c.typeid = ct.id
        WHERE c.chartid = %s
    """
    items = execute_query(sql, (c,))

    if not items:
        return render_template('dbpub/chart.html', error='No chart items found')

    # Get chart configuration from first item
    units = items[0].get('units', '')
    freq = items[0].get('freq', 1)

    # Determine date format for tooltip
    tipdate = '%Y' if freq == 3 else '%Y-%m'

    # Build title with frequency
    freq_sql = "SELECT fdes FROM enigma.freq WHERE id = %s"
    freq_result = execute_query(freq_sql, (freq,))
    freq_desc = freq_result[0].get('fdes', '').lower() if freq_result else ''

    denom = ""
    dpinc = 0
    if quant and freq < 3 and daily:
        # Per-day calculation for monthly/quarterly quantity data
        if freq == 1:
            denom = "/monthdays(d)"
        else:
            denom = "/quarterdays(d)"
        dpinc = 2

    full_title = f"{chart_title} {freq_desc}, {units}"
    if daily:
        full_title += " per day"

    # Get notes from all chart items
    note_sql = """
        SELECT STRING_AGG(d.note, ' ') as combined_note
        FROM enigma.chartitems c
        JOIN enigma.dataitems d ON c.dataitem = d.id
        WHERE c.chartid = %s
    """
    note_result = execute_query(note_sql, (c,))
    note = note_result[0].get('combined_note', '') if note_result else ''

    # Build data query for all items
    item_ids = [item.get('dataitem') for item in items]

    # Build SELECT for each data item
    select_parts = []
    for item in items:
        item_id = item.get('dataitem')
        negate = item.get('negate', False)
        sign = '-' if negate else ''
        select_parts.append(f"{sign}SUM(CASE WHEN item = {item_id} THEN v ELSE 0 END){denom}")

    data_sql = f"""
        SELECT d, {', '.join(select_parts)}
        FROM enigma.data
        WHERE item IN ({','.join(['%s'] * len(item_ids))})
        GROUP BY d
        ORDER BY d
    """

    data_points = execute_query(data_sql, item_ids)

    # Format data for Highcharts - one series per item
    series_data = [[] for _ in items]
    table_data = []

    for row in data_points:
        d = row.get('d')
        if d:
            # Convert date to JavaScript timestamp (milliseconds)
            if hasattr(d, 'timestamp'):
                timestamp = int(d.timestamp() * 1000)
            else:
                from datetime import datetime
                try:
                    dt = datetime.fromisoformat(str(d))
                    timestamp = int(dt.timestamp() * 1000)
                except:
                    continue

            # Add data point to each series
            row_values = []
            for i, item in enumerate(items):
                # PostgreSQL returns columns in order: d, item1, item2, ...
                value = row.get(f'sum', None) if len(items) == 1 else list(row.values())[i + 1]
                if value is not None:
                    series_data[i].append([timestamp, float(value)])
                    row_values.append(value)
                else:
                    row_values.append(None)

            table_data.append({'date': d, 'values': row_values})

    # Get data sources
    source_sql = """
        SELECT DISTINCT d.source, o.name1
        FROM enigma.chartitems c
        JOIN enigma.dataitems d ON c.dataitem = d.id
        JOIN enigma.organisations o ON d.source = o.personid
        WHERE c.chartid = %s
        ORDER BY o.name1
    """
    sources = execute_query(source_sql, (c,))

    # Get all available charts for dropdown
    charts_sql = "SELECT id, title FROM enigma.charts ORDER BY title"
    all_charts = execute_query(charts_sql)

    return render_template('dbpub/chart.html',
                         c=c,
                         title=full_title,
                         units=units,
                         note=note,
                         tipdate=tipdate,
                         freq=freq,
                         quant=quant,
                         daily=daily,
                         items=items,
                         series_data=series_data,
                         table_data=table_data,
                         sources=sources,
                         all_charts=all_charts,
                         dpinc=dpinc)


@bp.route('/alltotrets.asp')
def alltotrets():
    """
    Total returns for all stocks - port of alltotrets.asp

    Calculates total returns (price change + dividends) with adjustment for
    splits/consolidations over a specified period. Also computes CAGR
    (Compound Annual Growth Rate) for periods >= 180 days.

    Query params:
    - d1: start date (default: 1994-01-03)
    - d2: end date (default: max quotes date)
    - i: include IPOs after start date (default: False)
    - sort: sorting column (default: tretdn)

    Tables used: stocklistings, issue, organisations, sectypes, ccass.quotes, adjustments
    Functions used: delisted(), lastCode(), firstQuoteDate(), lastQuoteDate(), getAdjust()
    """
    from webbsite.asp_helpers import get_bool, get_date_or_default, format_percent_sig, pcsig

    # Get max quote dates from log table
    max_dates = execute_query("""
        SELECT val FROM enigma.log
        WHERE name IN ('MBquotesDate', 'GEMquotesDate')
        ORDER BY val
        LIMIT 1
    """)
    max_date = max_dates[0]['val'] if max_dates else str(date.today())

    # Parse parameters with validation
    inc_ipo = get_bool('i')
    sort_param = request.args.get('sort', 'tretdn')

    # Get dates with bounds checking (ASP logic: Max(Min(date, maxDate), minDate))
    d1_raw = get_date_or_default('d1', '1994-01-03')
    d2_raw = get_date_or_default('d2', max_date)

    # Apply bounds: max(min(input, max_date), '1994-01-03')
    d1 = max(min(d1_raw, max_date), '1994-01-03')
    d2 = max(min(d2_raw, max_date), '1994-01-03')

    # Swap if d1 > d2
    if d1 > d2:
        d1, d2 = d2, d1

    # Build ORDER BY clause based on sort parameter
    order_by_map = {
        'nameup': 't3.name1, t3.typeshort',
        'namedn': 't3.name1 DESC, t3.typeshort',
        'tretup': 't3.totret, t3.name1',
        'tretdn': 't3.totret DESC, t3.name1',
        'cagrup': 'cagret, t3.name1',
        'cagrdn': 'cagret DESC, t3.name1',
        'typeup': 't3.typeshort, t3.totret DESC',
        'typedn': 't3.typeshort DESC, t3.totret DESC',
        'frstup': 't3.buydate, t3.name1',
        'frstdn': 't3.buydate DESC, t3.name1',
        'lastup': 't3.selldate, t3.name1',
        'lastdn': 't3.selldate DESC, t3.name1',
        'codeup': 'lastcode, t3.buydate DESC',
        'codedn': 'lastcode DESC, t3.buydate DESC'
    }
    order_by = order_by_map.get(sort_param, 't3.totret DESC, t3.name1')

    # Determine the date filter for firstTradeDate based on inc_ipo
    # If inc_ipo=True, allow stocks listed up to d2
    # If inc_ipo=False, require stocks listed by d1
    first_trade_filter = d2 if inc_ipo else d1

    # Build the complete SQL query (inline version of allTotRets stored procedure)
    sql = f"""
        SELECT
            t3.name1,
            t3.typeshort,
            t3.issueid,
            enigma.delisted(t3.issueid, %s) AS delisted,
            enigma.lastcode(t3.issueid) AS lastcode,
            t3.buydate,
            t3.selldate,
            t3.totret,
            CASE
                WHEN (t3.selldate - t3.buydate) >= 180
                THEN POWER(t3.totret, 365.25 / (t3.selldate - t3.buydate))
                ELSE NULL
            END AS cagret
        FROM (
            SELECT
                t2.name1,
                t2.typeshort,
                t2.issueid,
                t2.buydate,
                t2.selldate,
                (
                    (SELECT closing FROM ccass.quotes WHERE issueid = t2.issueid AND atdate = t2.selldate) /
                    (SELECT closing FROM ccass.quotes WHERE issueid = t2.issueid AND atdate = t2.buydate) *
                    enigma.getadjust(t2.issueid, t2.buydate) /
                    enigma.getadjust(t2.issueid, t2.selldate)
                ) AS totret
            FROM (
                SELECT
                    o.name1,
                    st.typeshort,
                    t1.issueid,
                    enigma.firstquotedate(t1.issueid, %s) AS buydate,
                    enigma.lastquotedate(t1.issueid, %s) AS selldate
                FROM (
                    SELECT DISTINCT sl.issueid, i.issuer, i.typeid
                    FROM enigma.stocklistings sl
                    JOIN enigma.issue i ON sl.issueid = i.id1
                    WHERE sl.stockexid IN (1, 20, 23)
                      AND i.typeid IN (0, 6, 7, 8, 10)
                      AND (sl.firsttradedate IS NULL OR sl.firsttradedate <= %s)
                      AND (sl.delistdate IS NULL OR sl.delistdate > %s)
                ) AS t1
                JOIN enigma.organisations o ON t1.issuer = o.personid
                JOIN enigma.sectypes st ON t1.typeid = st.typeid
            ) AS t2
        ) AS t3
        WHERE t3.totret IS NOT NULL
        ORDER BY {order_by}
    """

    # Execute query with parameters
    # Parameters: d2 (for delisted check), d1 (buyDate), d2 (sellDate), first_trade_filter, d1
    results = execute_query(sql, (d2, d1, d2, first_trade_filter, d1))

    # Format results for display
    count = 0
    for row in results:
        count += 1
        row['row_num'] = count

        # Format total return with dynamic precision
        if row['totret'] is not None:
            # Subtract 1 to convert from multiplier to percentage
            totret_pct = row['totret'] - 1
            decimals = pcsig(totret_pct)
            row['totret_formatted'] = f"{totret_pct:.{decimals}%}"
        else:
            row['totret_formatted'] = '&nbsp;'

        # Format CAGR with dynamic precision
        if row['cagret'] is not None:
            cagr_pct = row['cagret'] - 1
            decimals = pcsig(cagr_pct)
            row['cagr_formatted'] = f"{cagr_pct:.{decimals}%}"
        else:
            row['cagr_formatted'] = ''

    # Build title
    title = f"Webb-site Total Returns up to {d2} of stocks listed at {d1}"
    if inc_ipo:
        title += " or after"

    # Build URL for sort links
    url_base = f"?d1={d1}&d2={d2}&i={int(inc_ipo)}"

    return render_template('dbpub/alltotrets.html',
                         title=title,
                         results=results,
                         count=count,
                         d1=d1,
                         d2=d2,
                         inc_ipo=inc_ipo,
                         sort=sort_param,
                         url_base=url_base,
                         max_date=max_date)


@bp.route('/mcap.asp')
def mcap():
    """
    Market capitalization snapshot - current market values by exchange and type

    Query params:
    - e: exchange (m=Main Board, g=GEM, s=Secondary, a=All, r=REIT, c=CIS)
    - t: type (s=shares, w=warrants, h=H-shares)
    - sort: sorting column

    Tables used: issuedshares, quotes, stocklistings, hkexdata
    """
    from flask import current_app
    from datetime import date as dt

    e = request.args.get('e', 'a')
    t = request.args.get('t', 's')
    sort_param = request.args.get('sort', 'mcapdn')

    # Exchange filter mapping
    exchange_filters = {
        'm': ('= 1', 'Main Board primary-listed'),
        'g': ('= 20', 'Growth Enterprise Market'),
        's': ('= 22', 'Secondary-listed'),
        'r': ('= 23', 'Real Estate Investment Trust'),
        'c': ('= 38', 'Collective Investment Scheme'),
        'a': ('IN (1, 20, 22)', 'Main Board, GEM and secondary')
    }
    e_str, title = exchange_filters.get(e, ('IN (1, 20, 22)', 'Main Board, GEM and secondary'))

    # Type filter mapping
    type_filters = {
        'w': ('= 1', ' subscription warrants'),
        'h': ('= 6', ' H-shares'),
        's': ('NOT IN (1, 2, 5, 40, 41, 46)', ' shares' if e not in ['r', 'c'] else ' units')
    }
    t_str, t_suffix = type_filters.get(t, ('NOT IN (1, 2, 5, 40, 41, 46)', ' shares'))
    title = f"Market values of {title}{t_suffix}"

    # Sort mapping
    sort_map = {
        'namedn': 'name DESC',
        'nameup': 'name',
        'codeup': 'stockCode',
        'codedn': 'stockCode DESC',
        'typeup': 'typeShort, name',
        'typedn': 'typeShort DESC, name',
        'lotup': 'lot, name',
        'lotdn': 'lot DESC, name',
        'ltvup': 'lotVal, name',
        'ltvdn': 'lotVal DESC, name',
        'prcdn': 'closing DESC, name',
        'prcup': 'closing, name',
        'issdn': 'outstanding DESC, name',
        'issup': 'outstanding, name',
        'mcpup': 'mcap, name',
        'mcapdn': 'mcap DESC, name'
    }
    ob = sort_map.get(sort_param, 'mcap DESC, name')

    # Currency codes
    currencies = ['HKD', 'CNY', 'USD']
    market_caps = []

    try:
        for curr_idx in range(3):
            if curr_idx == 0:
                curr_filter = "(sl.SEHKcurr IS NULL OR sl.SEHKcurr = 0)"
            else:
                curr_filter = f"sl.SEHKcurr = {curr_idx}"

            # Query market caps for this currency
            curr_data = execute_query(f"""
                SELECT COALESCE(h.nomprice, 0) AS closing,
                       h.priceDate,
                       o.name1 AS name,
                       i.issuer,
                       sl.issueID,
                       st.typeShort,
                       COALESCE(h.boardlot, 0) AS lot,
                       LPAD(sl.stockCode::TEXT, 5, '0') AS stockCode,
                       COALESCE(os.outstanding, 0) AS outstanding,
                       COALESCE(h.nomprice * os.outstanding, 0) AS mcap,
                       COALESCE(h.nomprice * h.boardlot, 0) AS lotVal
                FROM enigma.stockListings sl
                JOIN enigma.issue i ON sl.issueID = i.ID1
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                LEFT JOIN enigma.hkexdata h ON sl.issueID = h.issueID
                LEFT JOIN LATERAL (
                    SELECT outstanding
                    FROM enigma.issuedshares
                    WHERE issueID = sl.issueID
                      AND atDate <= CURRENT_DATE
                    ORDER BY atDate DESC
                    LIMIT 1
                ) os ON TRUE
                WHERE (sl.FirstTradeDate IS NULL OR sl.FirstTradeDate <= CURRENT_DATE)
                  AND (sl.DelistDate IS NULL OR sl.DelistDate > CURRENT_DATE)
                  AND NOT sl.`2ndCtr`
                  AND sl.StockExID {e_str}
                  AND i.typeID {t_str}
                  AND {curr_filter}
                ORDER BY {ob}
            """)

            if curr_data:
                market_caps.append({
                    'currency': currencies[curr_idx],
                    'data': curr_data
                })

    except Exception as ex:
        current_app.logger.error(f"Error querying market caps: {ex}")
        market_caps = []

    return render_template('dbpub/mcap.html',
                         market_caps=market_caps,
                         title=title,
                         e=e,
                         t=t,
                         sort=sort_param)


@bp.route('/mcaphist.asp')
def mcaphist():
    """
    Market capitalization history - historical market values by exchange and type

    Query params:
    - d: date
    - e: exchange (m=Main Board, g=GEM, s=Secondary, a=All, r=REIT, c=CIS)
    - t: type (s=shares, w=warrants, h=H-shares)
    - p: exclude pending shares (bool)
    - sort: sorting column

    Tables used: issuedshares, quotes, stocklistings
    """
    from flask import current_app
    from datetime import date as dt

    d = request.args.get('d', str(dt.today()))
    e = request.args.get('e', 'a')
    t = request.args.get('t', 's')
    exclude_pending = get_bool('p')
    sort_param = request.args.get('sort', 'mcapdn')

    # Exchange filter mapping (same as mcap)
    exchange_filters = {
        'm': ('= 1', 'Main Board primary-listed'),
        'g': ('= 20', 'Growth Enterprise Market'),
        's': ('= 22', 'Secondary-listed'),
        'r': ('= 23', 'Real Estate Investment Trust'),
        'c': ('= 38', 'Collective Investment Scheme'),
        'a': ('IN (1, 20, 22)', 'Main Board, GEM and secondary')
    }
    e_str, title = exchange_filters.get(e, ('IN (1, 20, 22)', 'Main Board, GEM and secondary'))

    # Type filter mapping
    type_filters = {
        'w': ('= 1', ' subscription warrants'),
        'h': ('= 6', ' H-shares'),
        's': ('NOT IN (1, 2, 5, 40, 41, 46)', ' shares' if e not in ['r', 'c'] else ' units')
    }
    t_str, t_suffix = type_filters.get(t, ('NOT IN (1, 2, 5, 40, 41, 46)', ' shares'))
    title = f"Historic market values of {title}{t_suffix}"

    # Sort mapping (slightly different from mcap for historical data)
    if exclude_pending:
        mcap_field = 'mcap'
        os_field = 'os'
    else:
        mcap_field = 'pendMcap'
        os_field = 'totsh'

    sort_map = {
        'namedn': 'name DESC',
        'nameup': 'name',
        'codeup': 'sc',
        'codedn': 'sc DESC',
        'typeup': 'typeShort, name',
        'typedn': 'typeShort DESC, name',
        'datedn': 'td DESC, name',
        'dateup': 'td, name',
        'lotup': 'lot, name',
        'lotdn': 'lot DESC, name',
        'ltvup': 'lotVal, name',
        'ltvdn': 'lotVal DESC, name',
        'prcdn': 'closing DESC, name',
        'prcup': 'closing, name',
        'issdn': f'{os_field} DESC, name',
        'issup': f'{os_field}, name',
        'mcpup': f'{mcap_field}, name',
        'mcapdn': f'{mcap_field} DESC, name'
    }
    ob = sort_map.get(sort_param, f'{mcap_field} DESC, name')

    # Get list of distinct currencies used
    currencies_list = []
    market_caps = []

    try:
        # Get currencies in use on this date
        currencies_list = execute_query(f"""
            SELECT DISTINCT sl.SEHKcurr, c.currency
            FROM enigma.stockListings sl
            JOIN enigma.issue i ON sl.issueID = i.ID1
            JOIN enigma.currencies c ON sl.SEHKcurr = c.id
            WHERE (sl.FirstTradeDate IS NULL OR sl.FirstTradeDate <= %s)
              AND (sl.DelistDate IS NULL OR sl.DelistDate > %s)
              AND sl.StockExID {e_str}
              AND i.typeID {t_str}
              AND NOT sl.`2ndCtr`
            ORDER BY sl.SEHKcurr
        """, (d, d))

        for curr_row in currencies_list:
            sehk_curr = curr_row['sehkcurr']
            currency = curr_row['currency']

            if sehk_curr == 0:
                curr_filter = "(sl.SEHKcurr = 0 OR sl.SEHKcurr IS NULL)"
            else:
                curr_filter = f"sl.SEHKcurr = {sehk_curr}"

            # Complex query for historical market caps
            curr_data = execute_query(f"""
                SELECT t2.sc, t2.i, t2.typeShort, t2.p, t2.closing, t2.td,
                       t2.os,
                       COALESCE(t2.closing * t2.os / 1000000.0, 0) AS mcap,
                       COALESCE(t2.os + t2.pendsh, 0) AS totsh,
                       COALESCE(t2.closing * (t2.os + t2.pendsh) / 1000000.0, 0) AS pendMcap,
                       o.name1 AS name,
                       COALESCE(t2.lot, 0) AS lot,
                       COALESCE(t2.closing * t2.lot, 0) AS lotVal
                FROM (
                    SELECT t1.sc, t1.i, t1.typeID, t1.p, t1.td,
                           COALESCE(os.outstanding, 0) AS os,
                           COALESCE(pend.pending, 0) AS pendsh,
                           COALESCE(bl.boardlot, 0) AS lot,
                           COALESCE(q.closing, 0) AS closing
                    FROM (
                        SELECT sl.stockCode AS sc,
                               sl.issueID AS i,
                               i.typeID,
                               i.issuer AS p,
                               COALESCE(
                                   (SELECT MAX(q2.atDate)
                                    FROM ccass.quotes q2
                                    WHERE q2.issueID = sl.issueID
                                      AND q2.atDate <= %s), %s) AS td
                        FROM enigma.stockListings sl
                        JOIN enigma.issue i ON sl.issueID = i.ID1
                        WHERE (sl.FirstTradeDate IS NULL OR sl.FirstTradeDate <= %s)
                          AND (sl.DelistDate IS NULL OR sl.DelistDate > %s)
                          AND NOT sl.`2ndCtr`
                          AND {curr_filter}
                          AND sl.StockExID {e_str}
                          AND i.typeID {t_str}
                    ) t1
                    LEFT JOIN LATERAL (
                        SELECT outstanding
                        FROM enigma.issuedshares
                        WHERE issueID = t1.i AND atDate <= t1.td
                        ORDER BY atDate DESC
                        LIMIT 1
                    ) os ON TRUE
                    LEFT JOIN LATERAL (
                        SELECT SUM(sharesPost - sharesPre) AS pending
                        FROM enigma.splitpends
                        WHERE issueID = t1.i AND effDate > t1.td
                    ) pend ON TRUE
                    LEFT JOIN LATERAL (
                        SELECT boardlot
                        FROM enigma.boardlotchanges
                        WHERE issueID = t1.i AND effDate <= t1.td
                        ORDER BY effDate DESC
                        LIMIT 1
                    ) bl ON TRUE
                    LEFT JOIN ccass.quotes q ON t1.i = q.issueID AND t1.td = q.atDate
                ) t2
                JOIN enigma.organisations o ON t2.p = o.personID
                JOIN enigma.secTypes st ON t2.typeID = st.typeID
                ORDER BY {ob}
            """, (d, d, d, d))

            if curr_data:
                market_caps.append({
                    'currency': currency,
                    'data': curr_data
                })

    except Exception as ex:
        current_app.logger.error(f"Error querying historical market caps: {ex}")
        market_caps = []

    return render_template('dbpub/mcaphist.html',
                         market_caps=market_caps,
                         title=title,
                         d=d,
                         e=e,
                         t=t,
                         exclude_pending=exclude_pending,
                         sort=sort_param)


# SDI (Significant Dealer Information) routes
@bp.route('/sdilatest.asp')
def sdilatest():
    """Latest SDI disclosures - latest 200 director & CEO dealings"""
    from flask import current_app
    sort_param = request.args.get('sort', 'relddn')

    # Map sort parameters to ORDER BY clauses
    sort_map = {
        'codeup': 'stockCode, name, relDate DESC',
        'codedn': 'stockCode DESC, name, relDate DESC',
        'nameup': 'name, oName, relDate DESC',
        'namedn': 'name DESC, oName, relDate DESC',
        'stokup': 'oName, name, relDate DESC',
        'stokdn': 'oName DESC, name, relDate DESC',
        'rsnup': 'rsnSht, oName, name, relDate DESC',
        'rsndn': 'rsnSht DESC, oName, name, relDate DESC',
        'lvalup': 'value, oName, name',
        'lvaldn': 'value DESC, oName, name',
        'reldup': 'relDate, oName, name',
        'relddn': 'relDate DESC, oName, name'
    }
    ob = sort_map.get(sort_param, 'relDate DESC, oName, name')

    try:
        # Complex query to get latest 200 SDI filings
        sdi = execute_query(f"""
            SELECT t2.id, t2.filing, t2.relDate, t2.issueID,
                   (SELECT sl.stockCode FROM enigma.stockListings sl
                    WHERE sl.issueID = t2.issueID AND sl.toDate IS NULL
                    ORDER BY sl.fromDate DESC LIMIT 1) AS stockCode,
                   t2.posType, r.rsnSht, r.rsnLng, t2.dir,
                   t2.shsInv, t2.longShs1, t2.longShs2, t2.shortShs1, t2.shortShs2,
                   t2.price, t2.avCon, t2.currency,
                   t2.longStk2, t2.shortStk2, t2.lngStkChg, t2.shtStkChg,
                   COALESCE(org.name1, CONCAT(pp.name1,
                            CASE WHEN pp.name2 IS NOT NULL THEN ', ' || pp.name2 ELSE '' END)) AS name,
                   CASE WHEN org.name1 IS NULL THEN 'P' ELSE 'O' END AS pType,
                   p.personID AS holderID,
                   COALESCE(t2.price, t2.avCon) * t2.shsInv AS value,
                   CONCAT(o.name1, ':', st.typeShort) AS oName,
                   c3.settleDate
            FROM (
                SELECT s.id, s.curr, s.filing, s.relDate, s.issueID, s.dir,
                       s.longShs1, s.longShs2, s.shortShs1, s.shortShs2,
                       COALESCE(s.avPrice, s.hiPrice) AS price, s.avCon,
                       s.longStk2, s.shortStk2, s.shsInv,
                       s.longStk2 - s.longStk1 AS lngStkChg,
                       s.shortStk2 - COALESCE(s.shortStk1, 0) AS shtStkChg
                FROM enigma.sdi s
                WHERE s.serNoSuper IS NULL
                ORDER BY s.relDate DESC
                LIMIT 200
            ) AS t2
            JOIN enigma.persons p ON t2.dir = p.personID
            JOIN enigma.sdievent se ON t2.id = se.sdiID
            JOIN enigma.sdireason r ON se.reason = r.id
            JOIN enigma.issue i ON t2.issueID = i.ID1
            JOIN enigma.organisations o ON i.issuer = o.personID
            JOIN enigma.secTypes st ON i.typeID = st.typeID
            LEFT JOIN enigma.organisations org ON p.personID = org.personID
            LEFT JOIN enigma.people pp ON p.personID = pp.personID
            LEFT JOIN enigma.currencies c ON t2.curr = c.id
            LEFT JOIN ccass.calendar c3 ON t2.relDate = c3.tradeDate
            ORDER BY {ob}
        """)
    except Exception as e:
        current_app.logger.error(f"Error querying SDI latest: {e}")
        sdi = []

    return render_template('dbpub/sdilatest.html', sdi=sdi, sort=sort_param)


@bp.route('/sdiissue.asp')
def sdiissue():
    """SDI disclosures for a specific stock"""
    from flask import current_app
    issue_id = get_int('i', 0)
    stock_code = request.args.get('sc', '')
    sort_param = request.args.get('sort', 'relddn')

    # Map sort parameters to ORDER BY clauses
    sort_map = {
        'nameup': 'name, relDate DESC',
        'namedn': 'name DESC, relDate DESC',
        'rsnup': 'rsnSht, relDate DESC',
        'rsndn': 'rsnSht DESC, relDate DESC',
        'pricup': 'currency, price, relDate DESC',
        'pricdn': 'currency DESC, price DESC, relDate DESC',
        'lvalup': 'value, relDate DESC',
        'lvaldn': 'value DESC, relDate DESC',
        'reldup': 'relDate, posType',
        'relddn': 'relDate DESC, posType'
    }
    ob = sort_map.get(sort_param, 'relDate DESC, posType')

    # Get stock info and convert stock code to issueID if needed
    stock_name = ''
    org_id = 0
    if stock_code and not issue_id:
        try:
            result = execute_query("""
                SELECT i.ID1 AS issueID, o.name1, o.personID, st.typeShort
                FROM enigma.stockListings sl
                JOIN enigma.issue i ON sl.issueID = i.ID1
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                WHERE sl.stockCode = %s AND sl.toDate IS NULL
                ORDER BY sl.fromDate DESC LIMIT 1
            """, (stock_code,))
            if result:
                issue_id = result[0]['issueid']
                stock_name = f"{result[0]['name1']}:{result[0]['typeshort']}"
                org_id = result[0]['personid']
        except Exception as e:
            current_app.logger.error(f"Error looking up stock code: {e}")

    # Get stock info if we have issueID
    if issue_id and not stock_name:
        try:
            result = execute_query("""
                SELECT o.name1, o.personID, st.typeShort
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                WHERE i.ID1 = %s
            """, (issue_id,))
            if result:
                stock_name = f"{result[0]['name1']}:{result[0]['typeshort']}"
                org_id = result[0]['personid']
        except Exception as e:
            current_app.logger.error(f"Error getting stock info: {e}")

    sdi = []
    if issue_id:
        try:
            # Query SDI for specific stock
            sdi = execute_query(f"""
                SELECT t1.id, t1.name, t1.posType, t1.rsnSht, t1.rsnLng,
                       t1.filing, t1.relDate, t1.shsInv,
                       t1.longShs1, t1.longShs2, t1.shortShs1, t1.shortShs2,
                       t1.price, t1.avCon, t1.currency,
                       t1.longStk2, t1.shortStk2, t1.lngStkChg, t1.shtStkChg,
                       t1.personID, c3.settleDate,
                       COALESCE(t1.price, t1.avCon) * t1.shsInv AS value
                FROM (
                    SELECT s.id, s.posType, r.rsnSht, r.rsnLng, s.filing, s.relDate,
                           s.shsInv, s.longShs1, s.longShs2, s.longStk2,
                           s.shortShs1, s.shortShs2, s.shortStk2,
                           COALESCE(s.avPrice, s.hiPrice) AS price, s.avCon, c.currency,
                           s.longStk2 - s.longStk1 AS lngStkChg,
                           s.shortStk2 - COALESCE(s.shortStk1, 0) AS shtStkChg,
                           COALESCE(o.name1, CONCAT(pp.name1,
                                    CASE WHEN pp.name2 IS NOT NULL THEN ', ' || pp.name2 ELSE '' END)) AS name,
                           p.personID
                    FROM enigma.sdi s
                    JOIN enigma.persons p ON s.dir = p.personID
                    JOIN enigma.sdievent se ON s.id = se.sdiID
                    JOIN enigma.sdireason r ON se.probReason = r.id
                    LEFT JOIN enigma.people pp ON p.personID = pp.personID
                    LEFT JOIN enigma.organisations o ON p.personID = o.personID
                    LEFT JOIN enigma.currencies c ON s.curr = c.id
                    WHERE s.serNoSuper IS NULL AND s.issueID = %s
                ) AS t1
                LEFT JOIN ccass.calendar c3 ON t1.relDate = c3.tradeDate
                ORDER BY {ob}
            """, (issue_id,))
        except Exception as e:
            current_app.logger.error(f"Error querying SDI for stock: {e}")
            sdi = []

    return render_template('dbpub/sdiissue.html',
                         issue_id=issue_id, stock_name=stock_name,
                         org_id=org_id, sdi=sdi, sort=sort_param)


@bp.route('/sdidir.asp')
def sdidir():
    """SDI disclosures by a specific director - shows all stocks where person has filed"""
    from flask import current_app
    person_id = get_int('p', 0)
    sort_param = request.args.get('sort', 'stkup')

    # Map sort parameters to ORDER BY clauses
    sort_map = {
        'stakdn': 'longStk2 DESC, stock',
        'stakup': 'longStk2, stock',
        'ldatup': 'maxDate, stock',
        'ldatdn': 'maxDate DESC, stock',
        'stkdn': 'stock DESC',
        'stkup': 'stock'
    }
    ob = sort_map.get(sort_param, 'stock')

    # Get person name
    person_name = ''
    if person_id:
        try:
            result = execute_query("""
                SELECT COALESCE(o.name1, CONCAT(p.name1,
                                CASE WHEN p.name2 IS NOT NULL THEN ', ' || p.name2 ELSE '' END)) AS name
                FROM enigma.persons ps
                LEFT JOIN enigma.organisations o ON ps.personID = o.personID
                LEFT JOIN enigma.people p ON ps.personID = p.personID
                WHERE ps.personID = %s
            """, (person_id,))
            if result:
                person_name = result[0]['name']
        except Exception as e:
            current_app.logger.error(f"Error getting person name: {e}")

    sdi = []
    if person_id:
        try:
            # Query all stocks where person has filed SDI, showing latest position
            sdi = execute_query(f"""
                SELECT t1.issueID,
                       CONCAT(o.name1, ':', st.typeShort) AS stock,
                       t1.maxDate, s.longShs2, s.longStk2
                FROM (
                    SELECT issueID, MAX(relDate) AS maxDate
                    FROM enigma.sdi
                    WHERE dir = %s
                    GROUP BY issueID
                ) t1
                JOIN enigma.sdi s ON t1.issueID = s.issueID
                                  AND t1.maxDate = s.relDate
                                  AND s.dir = %s
                JOIN enigma.issue i ON s.issueID = i.ID1
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                JOIN enigma.organisations o ON i.issuer = o.personID
                ORDER BY {ob}
            """, (person_id, person_id))
        except Exception as e:
            current_app.logger.error(f"Error querying SDI by director: {e}")
            sdi = []

    return render_template('dbpub/sdidir.html',
                         person_id=person_id, person_name=person_name,
                         sdi=sdi, sort=sort_param)


@bp.route('/sdidirco.asp')
def sdidirco():
    """SDI cross-reference: director and company - all dealings by person in stock"""
    from flask import current_app
    person_id = get_int('p', 0)
    issue_id = get_int('i', 0)
    sort_param = request.args.get('sort', 'relddn')

    # Map sort parameters to ORDER BY clauses
    sort_map = {
        'rsnup': 'rsnSht, relDate DESC',
        'rsndn': 'rsnSht DESC, relDate DESC',
        'pricup': 'currency, price, relDate DESC',
        'pricdn': 'currency DESC, price DESC, relDate DESC',
        'lvalup': 'value, relDate DESC',
        'lvaldn': 'value DESC, relDate DESC',
        'reldup': 'relDate, posType',
        'relddn': 'relDate DESC, posType'
    }
    ob = sort_map.get(sort_param, 'relDate DESC, posType')

    # Get person name and org status
    person_name = ''
    is_org = False
    if person_id:
        try:
            result = execute_query("""
                SELECT COALESCE(o.name1, CONCAT(p.name1,
                                CASE WHEN p.name2 IS NOT NULL THEN ', ' || p.name2 ELSE '' END)) AS name,
                       CASE WHEN o.name1 IS NOT NULL THEN TRUE ELSE FALSE END AS is_org
                FROM enigma.persons ps
                LEFT JOIN enigma.organisations o ON ps.personID = o.personID
                LEFT JOIN enigma.people p ON ps.personID = p.personID
                WHERE ps.personID = %s
            """, (person_id,))
            if result:
                person_name = result[0]['name']
                is_org = result[0]['is_org']
        except Exception as e:
            current_app.logger.error(f"Error getting person name: {e}")

    # Get stock info
    stock_name = ''
    org_id = 0
    if issue_id:
        try:
            result = execute_query("""
                SELECT o.name1, o.personID, st.typeShort
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                WHERE i.ID1 = %s
            """, (issue_id,))
            if result:
                stock_name = f"{result[0]['name1']}:{result[0]['typeshort']}"
                org_id = result[0]['personid']
        except Exception as e:
            current_app.logger.error(f"Error getting stock info: {e}")

    sdi = []
    if person_id and issue_id:
        try:
            # Query all dealings by person in specific stock
            sdi = execute_query(f"""
                SELECT t1.id, t1.posType, t1.rsnSht, t1.rsnLng,
                       t1.filing, t1.relDate, t1.shsInv,
                       t1.longShs1, t1.longShs2, t1.shortShs1, t1.shortShs2,
                       t1.price, t1.avCon, t1.currency,
                       t1.longStk2, t1.shortStk2, t1.lngStkChg, t1.shtStkChg,
                       t1.capShort, t1.capLong, c3.settleDate,
                       COALESCE(t1.price, t1.avCon) * t1.shsInv AS value
                FROM (
                    SELECT s.id, s.posType, r.rsnSht, r.rsnLng, s.filing, s.relDate,
                           s.shsInv, s.longShs1, s.longShs2, s.shortShs1, s.shortShs2,
                           COALESCE(s.capAfter, s.capBefore) AS capID,
                           COALESCE(s.avPrice, s.hiPrice) AS price, s.avCon, c.currency,
                           s.longStk2, s.longStk2 - s.longStk1 AS lngStkChg,
                           s.shortStk2, s.shortStk2 - COALESCE(s.shortStk1, 0) AS shtStkChg,
                           cap.capShort, cap.capLong
                    FROM enigma.sdi s
                    JOIN enigma.sdievent se ON s.id = se.sdiID
                    JOIN enigma.sdireason r ON se.probReason = r.id
                    LEFT JOIN enigma.currencies c ON s.curr = c.id
                    LEFT JOIN enigma.capacity cap ON COALESCE(s.capAfter, s.capBefore) = cap.id
                    WHERE s.serNoSuper IS NULL
                      AND s.issueID = %s
                      AND s.dir = %s
                ) AS t1
                LEFT JOIN ccass.calendar c3 ON t1.relDate = c3.tradeDate
                ORDER BY {ob}
            """, (issue_id, person_id))
        except Exception as e:
            current_app.logger.error(f"Error querying SDI for person+stock: {e}")
            sdi = []

    return render_template('dbpub/sdidirco.html',
                         person_id=person_id, person_name=person_name, is_org=is_org,
                         issue_id=issue_id, stock_name=stock_name, org_id=org_id,
                         sdi=sdi, sort=sort_param)


@bp.route('/sdicap.asp')
def sdicap():
    """SDI filing details - full details of a single SDI filing"""
    from flask import current_app
    sdi_id = get_int('r', 0)

    # Initialize context variables
    person_name = ''
    is_org = False
    person_id = 0
    stock_name = ''
    org_id = 0
    issue_id = 0
    filing_data = None
    events = []
    capacities = []

    if sdi_id:
        try:
            # Get main filing data
            result = execute_query("""
                SELECT COALESCE(o.name1, CONCAT(pp.name1,
                                CASE WHEN pp.name2 IS NOT NULL THEN ', ' || pp.name2 ELSE '' END)) AS name,
                       CASE WHEN pp.name1 IS NULL THEN TRUE ELSE FALSE END AS isOrg,
                       s.dir, s.filing, s.serNo, s.issueID, s.relDate, s.awDate, s.signDate,
                       s.longShs1, s.longShs2, s.shortShs1, s.shortShs2,
                       s.longStk1, s.longStk2, s.shortStk1, s.shortStk2, s.shsOut,
                       s.avPrice, s.hiPrice, s.avCon, c1.currency, c2.settleDate,
                       q.high, q.low, q.vol, q.turn
                FROM enigma.sdi s
                JOIN enigma.persons p ON s.dir = p.personID
                LEFT JOIN enigma.organisations o ON p.personID = o.personID
                LEFT JOIN enigma.people pp ON p.personID = pp.personID
                LEFT JOIN enigma.currencies c1 ON s.curr = c1.id
                LEFT JOIN ccass.calendar c2 ON s.relDate = c2.tradeDate
                LEFT JOIN ccass.quotes q ON s.relDate = q.atDate AND s.issueID = q.issueID
                WHERE s.id = %s
            """, (sdi_id,))

            if result and result[0]:
                filing_data = result[0]
                person_name = filing_data['name']
                is_org = filing_data['isorg']
                person_id = filing_data['dir']
                issue_id = filing_data['issueid']

                # Get stock info
                stock_result = execute_query("""
                    SELECT o.name1, o.personID, st.typeShort
                    FROM enigma.issue i
                    JOIN enigma.organisations o ON i.issuer = o.personID
                    JOIN enigma.secTypes st ON i.typeID = st.typeID
                    WHERE i.ID1 = %s
                """, (issue_id,))
                if stock_result:
                    stock_name = f"{stock_result[0]['name1']}:{stock_result[0]['typeshort']}"
                    org_id = stock_result[0]['personid']

                # Get event details (long and short events)
                events = execute_query("""
                    SELECT se.shsInv, se.posType,
                           c1.capLong AS capBef, c2.capLong AS capAft,
                           r1.rsnLng AS rsnLng1, r2.rsnLng AS rsnLng2
                    FROM enigma.sdievent se
                    JOIN enigma.sdireason r1 ON se.reason = r1.id
                    JOIN enigma.sdireason r2 ON se.probReason = r2.id
                    LEFT JOIN enigma.capacity c1 ON se.capBefore = c1.id
                    LEFT JOIN enigma.capacity c2 ON se.capAfter = c2.id
                    WHERE se.sdiID = %s
                    ORDER BY se.posType
                """, (sdi_id,))

                # Get capacity breakdown after the event
                capacities = execute_query("""
                    SELECT sc.capID, sc.posType, sc.shares, cap.capLong
                    FROM enigma.sdicap sc
                    JOIN enigma.capacity cap ON sc.capID = cap.id
                    WHERE sc.sdiID = %s
                    ORDER BY sc.capID, sc.posType
                """, (sdi_id,))

        except Exception as e:
            current_app.logger.error(f"Error querying SDI filing details: {e}")

    return render_template('dbpub/sdicap.html',
                         sdi_id=sdi_id,
                         person_id=person_id, person_name=person_name, is_org=is_org,
                         issue_id=issue_id, stock_name=stock_name, org_id=org_id,
                         filing_data=filing_data, events=events, capacities=capacities)


@bp.route('/sdiNotes.asp')
def sdi_notes():
    """SDI system notes and explanation"""
    return render_template('dbpub/sdi_notes.html')


# SFC (Securities and Futures Commission) routes
@bp.route('/SFClicensees.asp')
def sfc_licensees():
    """
    SFC licensed persons at a firm - port of SFClicensees.asp
    Shows Responsible Officers (ROs) and Representatives (Reps) for a firm

    Query params:
    - p: personID (organization)
    - d: date (defaults to today)
    - a: activity type (0 = all activities)
    - hide: Y (current only) or N (history)
    - sort: sorting column

    Tables used: enigma.directorships (for all activities) or enigma.licrec (for specific activity)
    """
    from flask import current_app
    person_id = get_int('p', 0)
    d = request.args.get('d', str(date.today()))
    act = get_int('a', 0)
    hide = get_str('hide', 'Y')
    sort_param = request.args.get('sort', 'namup')

    # Get organization name
    org_name = "No organisation was specified"
    if person_id:
        try:
            result = execute_query("""
                SELECT name1 FROM enigma.organisations WHERE personID = %s
            """, (person_id,))
            if result:
                org_name = result[0]['name1']
        except Exception as ex:
            current_app.logger.error(f"Error getting org name: {ex}")

    # Determine which columns to use based on activity filter
    if act > 0:
        appt_var = "startDate"
        res_var = "endDate"
    else:
        appt_var = "apptDate"
        res_var = "resDate"

    # Build hide filter
    hide_str = f" AND (({appt_var} IS NULL) OR ({appt_var} <= %s))"
    params = [person_id, d]
    if hide == 'Y':
        hide_str += f" AND (({res_var} IS NULL) OR ({res_var} > %s))"
        params.append(d)

    # Build sort order
    sort_map = {
        'namup': f"name,{appt_var}",
        'namdn': f"name DESC,{appt_var}",
        'appup': f"{appt_var},name",
        'appdn': f"{appt_var} DESC,name",
        'resup': f"{res_var},name",
        'resdn': f"{res_var} DESC,name",
        'rolup': f"role,name,{appt_var}",
        'roldn': f"role DESC,name,{appt_var}",
        'agedn': f"YOB,name,{appt_var}",
        'ageup': f"YOB DESC,name,{appt_var}",
        'sexup': f"sex,name,{appt_var}",
        'sexdn': f"sex DESC,name,{appt_var}"
    }
    ob = sort_map.get(sort_param, f"name,{appt_var}")

    # Build SQL based on activity filter
    licensees = []
    try:
        if act > 0:
            # Use licrec table for specific activity
            sql = f"""
                SELECT p.YOB, p.sex,
                       CONCAT(COALESCE(p.name1,''),
                              CASE WHEN p.name2 IS NOT NULL THEN CONCAT(', ', p.name2) ELSE '' END,
                              CASE WHEN p.cName IS NOT NULL THEN CONCAT(' ', p.cName) ELSE '' END) AS name,
                       lr.staffID, lr.startDate, lr.endDate, lr.role, p.SFCID
                FROM enigma.licrec lr
                JOIN enigma.people p ON lr.staffID = p.personID
                WHERE lr.actType = %s AND lr.orgID = %s {hide_str}
                ORDER BY {ob}
            """
            params = [act] + params
        else:
            # Use directorships table for all activities
            sql = f"""
                SELECT p.YOB, p.sex,
                       CONCAT(COALESCE(p.name1,''),
                              CASE WHEN p.name2 IS NOT NULL THEN CONCAT(', ', p.name2) ELSE '' END,
                              CASE WHEN p.cName IS NOT NULL THEN CONCAT(' ', p.cName) ELSE '' END) AS name,
                       p.personID AS staffID, d.apptDate AS startDate, d.resDate AS endDate,
                       CASE WHEN d.positionID = 395 THEN 1 ELSE 0 END AS role,
                       p.SFCID
                FROM enigma.directorships d
                JOIN enigma.people p ON d.director = p.personID
                WHERE d.positionID IN (394, 395) AND d.company = %s {hide_str}
                ORDER BY {ob}
            """

        licensees = execute_query(sql, tuple(params))

        # Add role text
        for lic in licensees:
            lic['role_text'] = 'RO' if lic['role'] == 1 else 'Rep'

    except Exception as ex:
        current_app.logger.error(f"Error querying SFC licensees: {ex}")

    # Get activity name if specific activity selected
    act_name = "All activities"
    if act > 0:
        try:
            result = execute_query("""
                SELECT actName FROM enigma.activity WHERE ID = %s
            """, (act,))
            if result:
                act_name = result[0]['actname']
        except:
            pass

    return render_template('dbpub/sfc_licensees.html',
                         person_id=person_id, org_name=org_name,
                         licensees=licensees, d=d, act=act, act_name=act_name,
                         hide=hide, sort=sort_param)


@bp.route('/SFChistall.asp')
def sfc_hist_all():
    """
    SFC licensing history for all firms - port of SFChistall.asp
    Shows historic number of SFC licensees (ROs and Reps) for all firms combined

    Query params:
    - a: activity type (0 = all activities)

    Tables used: enigma.licrecsum
    """
    from flask import current_app
    act = get_int('a', 0)

    # Get activity name
    act_name = "All activities"
    if act > 0:
        try:
            result = execute_query("""
                SELECT actName FROM enigma.activity WHERE ID = %s
            """, (act,))
            if result:
                act_name = result[0]['actname']
        except:
            pass

    # Query historic licensee counts
    history = []
    try:
        history = execute_query("""
            SELECT d, RO, total - RO AS reps, total, (total - RO) / NULLIF(total, 0) AS rep_ratio
            FROM enigma.licrecsum
            WHERE actType = %s
            ORDER BY d DESC
        """, (act,))
    except Exception as ex:
        current_app.logger.error(f"Error querying SFC hist all: {ex}")

    return render_template('dbpub/sfc_hist_all.html',
                         act=act, act_name=act_name, history=history)


@bp.route('/SFChistfirm.asp')
def sfc_hist_firm():
    """
    SFC licensing history for a specific firm - port of SFChistfirm.asp
    Shows historic number of SFC licensees (ROs and Reps) for one firm

    Query params:
    - p: personID (organization)
    - a: activity type (0 = all activities)
    - f: frequency (m=monthly, y=yearly, defaults to yearly)

    Tables used: enigma.licrec
    """
    from flask import current_app
    from datetime import date as dt_date
    from calendar import monthrange

    person_id = get_int('p', 0)
    act = get_int('a', 0)
    freq = get_str('f', 'y')
    if freq not in ['m', 'y']:
        freq = 'y'

    # Get organization name
    org_name = "FIRM NOT FOUND"
    if person_id:
        try:
            result = execute_query("""
                SELECT name1 FROM enigma.organisations WHERE personID = %s
            """, (person_id,))
            if result:
                org_name = result[0]['name1']
        except:
            pass

    # Get activity name
    act_name = "All activities"
    if act > 0:
        try:
            result = execute_query("""
                SELECT actName FROM enigma.activity WHERE ID = %s
            """, (act,))
            if result:
                act_name = result[0]['actname']
        except:
            pass

    # Generate date array going back to 2003-03-31
    history = []
    if person_id and org_name != "FIRM NOT FOUND":
        today = dt_date.today()
        dates = []

        if freq == 'm':
            # Monthly snapshots
            year = today.year
            month = today.month
            while year >= 2003:
                last_month = 12 if year > 2003 else 3
                for m in range(month, 0, -1):
                    if year == 2003 and m < 3:
                        break
                    last_day = monthrange(year, m)[1]
                    snap_date = dt_date(year, m, last_day)
                    if snap_date > today:
                        snap_date = today
                    dates.append(snap_date)
                year -= 1
                month = 12
        else:
            # Yearly snapshots (December 31)
            year = today.year
            while year >= 2003:
                snap_date = dt_date(year, 12, 31) if year < today.year else today
                dates.append(snap_date)
                year -= 1
            # Add 2003-03-31
            dates.append(dt_date(2003, 3, 31))

        # Query licensee counts for each date
        for snap_date in dates:
            try:
                if act > 0:
                    result = execute_query("""
                        SELECT COUNT(DISTINCT staffID) AS total, COALESCE(SUM(CASE WHEN role = 1 THEN 1 ELSE 0 END), 0) AS ROs
                        FROM (SELECT DISTINCT staffID, role
                              FROM enigma.licrec
                              WHERE orgID = %s
                                AND actType = %s
                                AND (endDate IS NULL OR endDate > %s)
                                AND (startDate IS NULL OR startDate <= %s)
                        ) t
                    """, (person_id, act, snap_date, snap_date))
                else:
                    result = execute_query("""
                        SELECT COUNT(DISTINCT staffID) AS total, COALESCE(SUM(CASE WHEN role = 1 THEN 1 ELSE 0 END), 0) AS ROs
                        FROM (SELECT DISTINCT staffID, role
                              FROM enigma.licrec
                              WHERE orgID = %s
                                AND (endDate IS NULL OR endDate > %s)
                                AND (startDate IS NULL OR startDate <= %s)
                        ) t
                    """, (person_id, snap_date, snap_date))

                if result:
                    total = result[0]['total'] or 0
                    ros = result[0]['ros'] or 0
                    reps = total - ros
                    rep_ratio = reps / total if total > 0 else 0

                    # Only include if not leading zeros
                    if total > 0 or not history:
                        history.append({
                            'd': snap_date,
                            'ros': ros,
                            'reps': reps,
                            'total': total,
                            'rep_ratio': rep_ratio
                        })
            except Exception as ex:
                current_app.logger.error(f"Error querying SFC hist firm for {snap_date}: {ex}")

    return render_template('dbpub/sfc_hist_firm.html',
                         person_id=person_id, org_name=org_name,
                         act=act, act_name=act_name, freq=freq, history=history)


@bp.route('/SFCchanges.asp')
def sfc_changes():
    """
    Recent SFC licensing changes - port of SFCchanges.asp
    Shows appointments and cessations in SFC licensees over last 14 days

    Query params:
    - d: end date (defaults to today)
    - sort: sorting column

    Tables used: enigma.directorships (positionID 394=Rep, 395=RO)
    """
    from flask import current_app
    from datetime import timedelta

    d = request.args.get('d', str(date.today()))
    sort_param = request.args.get('sort', 'orgup')

    # Calculate start date (14 days before end date)
    try:
        end_date = date.fromisoformat(d)
        start_date = end_date - timedelta(days=14)
    except:
        end_date = date.today()
        start_date = end_date - timedelta(days=14)

    # Build sort order
    sort_map = {
        'pplup': "pplName,orgName,apptDate",
        'ppldn': "pplName DESC,orgName,apptDate",
        'orgup': "orgName,pplName,apptDate",
        'orgdn': "orgName DESC,pplName,apptDate",
        'datup': "relDate,orgName,pplName",
        'datdn': "relDate DESC,orgName,pplName"
    }
    ob = sort_map.get(sort_param, "orgName,pplName,apptDate")

    # Query changes
    changes = []
    try:
        changes = execute_query(f"""
            SELECT o.name1 AS orgName,
                   CONCAT(COALESCE(p.name1,''),
                          CASE WHEN p.name2 IS NOT NULL THEN CONCAT(', ', p.name2) ELSE '' END,
                          CASE WHEN p.cName IS NOT NULL THEN CONCAT(' ', p.cName) ELSE '' END) AS pplName,
                   d.company AS orgID, d.director AS pplID,
                   d.apptDate, d.resDate, d.positionID,
                   CASE WHEN d.resDate >= %s THEN '-' ELSE '+' END AS appCes,
                   CASE WHEN d.resDate >= %s THEN d.resDate ELSE d.apptDate END AS relDate
            FROM enigma.directorships d
            JOIN enigma.organisations o ON d.company = o.personID
            JOIN enigma.people p ON d.director = p.personID
            WHERE d.positionID IN (394, 395)
              AND ((d.apptDate >= %s AND d.apptDate <= %s)
                   OR (d.resDate >= %s AND d.resDate <= %s))
            ORDER BY {ob}
        """, (start_date, start_date, start_date, d, start_date, d))

        # Add role text
        for change in changes:
            change['posText'] = 'Rep' if change['positionid'] == 394 else 'RO'

    except Exception as ex:
        current_app.logger.error(f"Error querying SFC changes: {ex}")

    return render_template('dbpub/sfc_changes.html',
                         changes=changes, d=d, start_date=str(start_date),
                         sort=sort_param)


@bp.route('/SFClicount.asp')
def sfc_licount():
    """
    SFC licensee count league table - port of SFClicount.asp
    Shows SFC licensee counts per firm at two dates (start and end) with changes

    Query params:
    - da: end date (defaults to today)
    - db: start date (defaults to 1 year before end date)
    - a: activity type (0 = all activities)
    - sort: sorting column

    Tables used: enigma.licrec, enigma.olicrec, enigma.organisations
    """
    from flask import current_app
    from datetime import timedelta

    # Get dates
    da = request.args.get('da', str(date.today()))
    try:
        date_a = date.fromisoformat(da)
        default_db = date_a - timedelta(days=365)
    except:
        date_a = date.today()
        default_db = date_a - timedelta(days=365)

    db = request.args.get('db', str(max(date(2003, 4, 1), default_db)))

    # Ensure db <= da
    try:
        date_b = date.fromisoformat(db)
        if date_b > date_a:
            db, da = da, db
    except:
        pass

    act = get_int('a', 0)
    sort_param = request.args.get('sort', 'acntdn')

    # Get activity name
    act_name = "All activities"
    if act > 0:
        try:
            result = execute_query("""
                SELECT actName FROM enigma.activity WHERE ID = %s
            """, (act,))
            if result:
                act_name = result[0]['actname']
        except:
            pass

    # Build sort order
    sort_map = {
        'namup': "name", 'namdn': "name DESC",
        'arepup': "arep,name", 'arepdn': "arep DESC,name",
        'aroup': "aRO,name", 'arodn': "aRO DESC,name",
        'acntup': "acnt,name", 'acntdn': "acnt DESC,name",
        'brepup': "brep,name", 'brepdn': "brep DESC,name",
        'broup': "bRO,name", 'brodn': "bRO DESC,name",
        'bcntup': "bcnt,name", 'bcntdn': "bcnt DESC,name",
        'crepup': "crep,name", 'crepdn': "crep DESC,name",
        'croup': "cRO,name", 'crodn': "cRO DESC,name",
        'ccntup': "ccnt,name", 'ccntdn': "ccnt DESC,name",
        'aratup': "arat,name", 'aratdn': "arat DESC,name",
        'bratup': "brat,name", 'bratdn': "brat DESC,name",
        'sddn': "startDate DESC,name", 'sdup': "startDate,name",
        'eddn': "endDate DESC,name", 'edup': "endDate,name"
    }
    ob = sort_map.get(sort_param, "acnt DESC,name")

    # Query stats
    stats = []
    try:
        if act == 0:
            # All activities
            sql = f"""
                SELECT t.orgID, o.name1 AS name, t.startDate, t.endDate,
                       t.bRO, t.bcnt - t.bRO AS brep, t.bcnt,
                       t.aRO, t.acnt - t.aRO AS arep, t.acnt,
                       CASE WHEN t.acnt > 0 THEN 1 - t.aRO / NULLIF(t.acnt, 0) ELSE NULL END AS arat,
                       CASE WHEN t.bcnt > 0 THEN 1 - t.bRO / NULLIF(t.bcnt, 0) ELSE NULL END AS brat,
                       t.aRO - t.bRO AS cRO, t.acnt - t.aRO - t.bcnt + t.bRO AS crep, t.acnt - t.bcnt AS ccnt
                FROM (
                    SELECT COALESCE(a.cnt, 0) AS acnt, COALESCE(a.RO, 0) AS aRO,
                           COALESCE(b.cnt, 0) AS bcnt, COALESCE(b.RO, 0) AS bRO,
                           ol.orgID, ol.startDate, ol.endDate
                    FROM (
                        SELECT orgID, MIN(startDate) AS startDate,
                               CASE WHEN MAX(COALESCE(endDate, '9999-12-31')) = '9999-12-31'
                                    THEN NULL ELSE MAX(endDate) END AS endDate
                        FROM enigma.olicrec
                        WHERE (endDate IS NULL OR endDate > %s)
                          AND (startDate IS NULL OR startDate <= %s)
                        GROUP BY orgID
                    ) ol
                    LEFT JOIN (
                        SELECT orgID, COUNT(DISTINCT staffID) AS cnt, SUM(CASE WHEN role = 1 THEN 1 ELSE 0 END) AS RO
                        FROM (SELECT DISTINCT orgID, staffID, role
                              FROM enigma.licrec
                              WHERE (endDate IS NULL OR endDate > %s)
                                AND (startDate IS NULL OR startDate <= %s)
                        ) t
                        GROUP BY orgID
                    ) b ON ol.orgID = b.orgID
                    LEFT JOIN (
                        SELECT orgID, COUNT(DISTINCT staffID) AS cnt, SUM(CASE WHEN role = 1 THEN 1 ELSE 0 END) AS RO
                        FROM (SELECT DISTINCT orgID, staffID, role
                              FROM enigma.licrec
                              WHERE (endDate IS NULL OR endDate > %s)
                                AND (startDate IS NULL OR startDate <= %s)
                        ) t
                        GROUP BY orgID
                    ) a ON ol.orgID = a.orgID
                ) t
                JOIN enigma.organisations o ON o.personID = t.orgID
                WHERE t.acnt + t.bcnt > 0
                ORDER BY {ob}
            """
            stats = execute_query(sql, (db, da, db, db, da, da))
        else:
            # Specific activity
            sql = f"""
                SELECT t.orgID, o.name1 AS name, t.startDate, t.endDate,
                       t.bRO, t.brep, t.bcnt, t.aRO, t.arep, t.acnt,
                       t.arat, t.brat, t.acnt - t.bcnt AS ccnt,
                       t.aRO - t.bRO AS cRO, t.arep - t.brep AS crep
                FROM (
                    SELECT ol.orgID, ol.startDate, ol.endDate,
                           COALESCE(b.RO, 0) AS bRO, COALESCE(b.cnt - b.RO, 0) AS brep, COALESCE(b.cnt, 0) AS bcnt,
                           COALESCE(a.RO, 0) AS aRO, COALESCE(a.cnt - a.RO, 0) AS arep, COALESCE(a.cnt, 0) AS acnt,
                           CASE WHEN b.cnt > 0 THEN 1 - b.RO / NULLIF(b.cnt, 0) ELSE NULL END AS brat,
                           CASE WHEN a.cnt > 0 THEN 1 - a.RO / NULLIF(a.cnt, 0) ELSE NULL END AS arat
                    FROM enigma.olicrec ol
                    LEFT JOIN (
                        SELECT orgID, COUNT(DISTINCT staffID) AS cnt, SUM(CASE WHEN role = 1 THEN 1 ELSE 0 END) AS RO
                        FROM enigma.licrec
                        WHERE (endDate IS NULL OR endDate > %s)
                          AND (startDate IS NULL OR startDate <= %s)
                          AND actType = %s
                        GROUP BY orgID
                    ) b ON ol.orgID = b.orgID
                    LEFT JOIN (
                        SELECT orgID, COUNT(DISTINCT staffID) AS cnt, SUM(CASE WHEN role = 1 THEN 1 ELSE 0 END) AS RO
                        FROM enigma.licrec
                        WHERE (endDate IS NULL OR endDate > %s)
                          AND (startDate IS NULL OR startDate <= %s)
                          AND actType = %s
                        GROUP BY orgID
                    ) a ON ol.orgID = a.orgID
                    WHERE ol.actType = %s
                      AND (ol.endDate IS NULL OR ol.endDate > %s)
                      AND (ol.startDate IS NULL OR ol.startDate <= %s)
                ) t
                JOIN enigma.organisations o ON t.orgID = o.personID
                WHERE t.acnt + t.bcnt > 0
                ORDER BY {ob}
            """
            stats = execute_query(sql, (db, db, act, da, da, act, act, db, da))

    except Exception as ex:
        current_app.logger.error(f"Error querying SFC licount: {ex}")

    return render_template('dbpub/sfc_licount.html',
                         stats=stats, da=da, db=db, act=act, act_name=act_name,
                         sort=sort_param)


# Buybacks routes
@bp.route('/buybacks.asp')
def buybacks():
    """Share buyback transactions for a specific stock"""
    from flask import current_app
    from datetime import date
    from webbsite.asp_helpers import get_int, get_bool
    issue_id = get_int('i', 0)
    stock_code = request.args.get('sc', '').strip()
    # Zero-pad stock code to 4 digits for database lookup (matches stored format)
    if stock_code and stock_code.isdigit():
        stock_code = stock_code.zfill(4)
    freq = request.args.get('f', 'd')  # d=daily, m=monthly, y=yearly
    unadj = get_bool('u')  # Show unadjusted for splits
    show_method = get_bool('e')  # Show exchange method
    sort_param = request.args.get('sort', 'datedn')

    # Validate frequency
    if freq not in ['d', 'm', 'y']:
        freq = 'd'

    # Get stock info from stock code if provided
    # Note: Stock code takes precedence over issue_id parameter (ASP behavior)
    stock_name = ''
    org_id = 0
    if stock_code:
        try:
            result = execute_query("""
                SELECT i.ID1 AS issueID, o.name1, o.personID, st.typeshort,
                       COALESCE(c.currency, 'HKD') AS currency
                FROM enigma.stockListings sl
                JOIN enigma.issue i ON sl.issueID = i.ID1
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.sectypes st ON i.typeID = st.typeID
                LEFT JOIN enigma.currencies c ON i.SEHKcurr = c.ID
                WHERE sl.stockCode = %s
                  AND sl.stockExID IN (1, 20, 22, 23, 38, 71)
                ORDER BY sl.firstTradeDate DESC NULLS LAST
                LIMIT 1
            """, (stock_code,))
            if result:
                issue_id = result[0]['issueid']
                # Format: "Name1: TypeShort Currency"
                stock_name = f"{result[0]['name1']}: {result[0]['typeshort']}"
                if result[0]['currency']:
                    stock_name += f" {result[0]['currency']}"
                org_id = result[0]['personid']
        except Exception as e:
            current_app.logger.error(f"Error looking up stock code: {e}")

    # Get stock info if we have issueID but no stock name yet
    if issue_id and not stock_name:
        try:
            result = execute_query("""
                SELECT o.name1, o.personID, st.typeshort,
                       COALESCE(c.currency, 'HKD') AS currency
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.sectypes st ON i.typeID = st.typeID
                LEFT JOIN enigma.currencies c ON i.SEHKcurr = c.ID
                WHERE i.ID1 = %s
            """, (issue_id,))
            if result:
                # Format: "Name1: TypeShort Currency"
                stock_name = f"{result[0]['name1']}: {result[0]['typeshort']}"
                if result[0]['currency']:
                    stock_name += f" {result[0]['currency']}"
                org_id = result[0]['personid']
        except Exception as e:
            current_app.logger.error(f"Error getting stock info: {e}")

    # Get navigation flags and stock listings data for navbar and HKlistings table
    nav_flags = {}
    listings_data = []
    sec_type = None
    stock_ex_id = None
    delist_date = None

    if org_id:
        try:
            # orgBar navigation flags
            nav_flags['has_directorships'] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.directorships WHERE Company = %s) AS exists",
                (org_id,))[0]['exists']
            nav_flags['has_pay'] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.documents WHERE docTypeID = 0 AND pay AND orgID = %s) AS exists",
                (org_id,))[0]['exists']
            nav_flags['has_advisers'] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.adviserships WHERE Company = %s) AS exists",
                (org_id,))[0]['exists']
            nav_flags['has_adviserships'] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.adviserships WHERE Adviser = %s) AS exists",
                (org_id,))[0]['exists']
            nav_flags['has_sfc_licenses'] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.olicrec WHERE orgID = %s) AS exists",
                (org_id,))[0]['exists']
            nav_flags['has_documents'] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.documents WHERE orgID = %s) AS exists",
                (org_id,))[0]['exists']
            nav_flags['has_ess'] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.ess WHERE orgID = %s) AS exists",
                (org_id,))[0]['exists']
            nav_flags['has_stories'] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.personstories WHERE personID = %s) AS exists",
                (org_id,))[0]['exists']
            # 9643=HKEX, regulated by SFC
            nav_flags['has_lir_team'] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.lirorgteam WHERE orgID = %s) AS exists",
                (org_id,))[0]['exists'] or (org_id == 9643)

            # Get CCASS participant ID if exists
            part_result = execute_query(
                "SELECT partID FROM ccass.participants WHERE personID = %s LIMIT 1",
                (org_id,))
            nav_flags['ccass_part_id'] = part_result[0]['partid'] if part_result else None

        except Exception as e:
            current_app.logger.error(f"Error getting orgBar navigation flags: {e}")

    if issue_id:
        try:
            # Get security type and stock exchange info for stockBar
            sec_info = execute_query("""
                SELECT i.typeID, sl.stockExID, sl.delistDate
                FROM enigma.issue i
                LEFT JOIN enigma.stockListings sl ON i.ID1 = sl.issueID
                WHERE i.ID1 = %s AND sl.stockExID IN (1, 20, 22, 23, 38, 71)
                ORDER BY sl.delistDate LIMIT 1
            """, (issue_id,))
            if sec_info:
                sec_type = sec_info[0]['typeid']
                stock_ex_id = sec_info[0]['stockexid']
                delist_date = sec_info[0]['delistdate']

            # stockBar navigation flags
            nav_flags['has_outstanding'] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.issuedshares WHERE issueID = %s) AS exists",
                (issue_id,))[0]['exists']
            nav_flags['has_short'] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.sfcshort WHERE issueID = %s) AS exists",
                (issue_id,))[0]['exists']
            nav_flags['has_sdi'] = execute_query(
                "SELECT EXISTS(SELECT 1 FROM enigma.sdi WHERE issueID = %s) AS exists",
                (issue_id,))[0]['exists']

            # Determine if CCASS data is available
            # No CCASS for rights (typeID=2), convertible bonds (40) or notes (41)
            # Only available after 2007-06-26 for delisted stocks
            from datetime import date as dt
            ccass_cutoff = dt(2007, 6, 26)
            nav_flags['ccass_on'] = (
                sec_type not in [2, 40, 41] and
                (delist_date is None or delist_date >= ccass_cutoff)
            )

            # Get stock listings for HKlistings table
            listings_data = execute_query("""
                SELECT l.shortName AS exchange_name,
                       sl.stockCode,
                       sl.firstTradeDate, sl.finalTradeDate, sl.delistDate,
                       sl.stockId
                FROM enigma.stockListings sl
                JOIN enigma.listings l ON sl.stockExID = l.stockExID
                WHERE sl.issueID = %s
                  AND sl.stockExID IN (1, 20, 22, 23, 38, 71)
                ORDER BY sl.firstTradeDate
            """, (issue_id,))

            # Format stock codes to 5 digits with leading zeros
            for listing in listings_data:
                if listing['stockcode']:
                    listing['stockcode_formatted'] = str(listing['stockcode']).zfill(5)
                else:
                    listing['stockcode_formatted'] = ''

        except Exception as e:
            current_app.logger.error(f"Error getting stockBar navigation flags or listings: {e}")

    # Build ORDER BY based on frequency and sort
    if freq == 'd':
        date_fields = 'effDate'
        date_dn = 'effDate DESC'
    elif freq == 'm':
        date_fields = 'y, m'
        date_dn = 'y DESC, m DESC'
    else:  # yearly
        date_fields = 'y'
        date_dn = 'y DESC'

    sort_map = {
        'dateup': date_fields,
        'datedn': date_dn,
        'shrsup': f'shares, {date_fields}',
        'shrsdn': f'shares DESC, {date_dn}',
        'valuup': f'currency, value, {date_fields}',
        'valudn': f'currency, value DESC, {date_dn}',
        'currup': f'currency, {date_dn}',
        'currdn': f'currency DESC, {date_fields}',
        'pricup': f'currency, price, {date_dn}',
        'pricdn': f'currency, price DESC, {date_dn}',
        'stkdn': f'stake DESC, {date_dn}',
        'stkup': f'stake, {date_fields}'
    }
    ob = sort_map.get(sort_param, date_dn)

    buybacks_data = []
    totals = []
    if issue_id:
        try:
            # Always use webbuybacks - the u parameter only affects outstanding shares adjustment, not buyback shares
            table = 'enigma.webbuybacks'

            if freq == 'd':
                # Daily data - no aggregation needed, views already have daily granularity
                select_fields = 'effDate, SUM(shares) AS shares, SUM(value) AS value, currency'
                group_by = 'effDate, currency'
                if show_method:
                    select_fields = 'effDate, SUM(shares) AS shares, SUM(value) AS value, currency, exchName'
                    group_by = 'effDate, currency, exchName'
            elif freq == 'm':
                # Monthly data
                select_fields = 'EXTRACT(YEAR FROM effDate)::INTEGER AS y, EXTRACT(MONTH FROM effDate)::INTEGER AS m, SUM(shares) AS shares, SUM(value) AS value, currency'
                group_by = 'EXTRACT(YEAR FROM effDate), EXTRACT(MONTH FROM effDate), currency'
                if show_method:
                    select_fields += ', exchName'
                    group_by += ', exchName'
            else:  # yearly
                select_fields = 'EXTRACT(YEAR FROM effDate)::INTEGER AS y, SUM(shares) AS shares, SUM(value) AS value, currency'
                group_by = 'EXTRACT(YEAR FROM effDate), currency'
                if show_method:
                    select_fields += ', exchName'
                    group_by += ', exchName'

            # Build split adjustment divisor based on unadj parameter
            # When unadj=False, divide outstanding shares by enigma.splitadj to match ASP behavior
            # splitadj returns adjustments AFTER the date, so it shows unadjusted shares by default
            denom = "1" if unadj else f"enigma.splitadj({issue_id}, os.atDate)"
            # For initial_os query, use atDate directly (not os.atDate) since no LATERAL join
            denom_initial = "1" if unadj else f"enigma.splitadj({issue_id}, atDate)"

            # Build date condition for LATERAL join based on frequency
            # This must be built at Python level, not as SQL CASE, because column names differ by frequency
            if freq == 'd':
                date_condition = "bb.effDate"
            elif freq == 'm':
                date_condition = "MAKE_DATE(bb.y, bb.m, 1)"
            else:  # yearly
                date_condition = "MAKE_DATE(bb.y, 1, 1)"

            # Get buybacks with outstanding shares calculation
            buybacks_data = execute_query(f"""
                SELECT bb.*, os.outstanding, os.atDate AS osd,
                       (os.outstanding / {denom}) AS os,
                       CASE WHEN os.outstanding > 0
                            THEN bb.shares * 100.0 / (os.outstanding / {denom})
                            ELSE NULL END AS stake,
                       CASE WHEN bb.shares > 0
                            THEN bb.value / bb.shares
                            ELSE NULL END AS price,
                       c.settleDate
                FROM (
                    SELECT {select_fields}
                    FROM {table}
                    WHERE issueID = %s
                    GROUP BY {group_by}
                ) bb
                LEFT JOIN LATERAL (
                    SELECT outstanding, atDate
                    FROM enigma.issuedshares
                    WHERE issueID = %s
                      AND atDate <= {date_condition}
                    ORDER BY atDate DESC
                    LIMIT 1
                ) os ON TRUE
                LEFT JOIN ccass.calendar c ON bb.effDate = c.tradeDate
                ORDER BY {ob}
            """, (issue_id, issue_id))

            # Get totals by currency
            totals = execute_query(f"""
                SELECT SUM(shares)::DOUBLE PRECISION AS shares, SUM(value)::DOUBLE PRECISION AS value,
                       currency,
                       CASE WHEN SUM(shares) > 0
                            THEN (SUM(value) / SUM(shares))::DOUBLE PRECISION
                            ELSE NULL END AS price
                FROM {table}
                WHERE issueID = %s
                GROUP BY currency
            """, (issue_id,))

            # Get initial outstanding shares for totals calculation
            # This is the outstanding shares at the date before the first buyback
            initial_os_result = execute_query(f"""
                SELECT (outstanding / {denom_initial})::DOUBLE PRECISION AS os, atDate AS osd
                FROM enigma.issuedshares
                WHERE issueID = %s
                  AND atDate <= (SELECT MIN(effDate) FROM enigma.webbuybacks WHERE issueID = %s)
                ORDER BY atDate DESC
                LIMIT 1
            """, (issue_id, issue_id))

            initial_os = initial_os_result[0]['os'] if initial_os_result else None
            initial_osd = initial_os_result[0]['osd'] if initial_os_result else None

        except Exception as e:
            current_app.logger.error(f"Error querying buybacks: {e}")
            buybacks_data = []
            totals = []
            initial_os = None
            initial_osd = None

    return render_template('dbpub/buybacks.html',
                         issue_id=issue_id, stock_name=stock_name, org_id=org_id,
                         buybacks=buybacks_data, totals=totals,
                         initial_os=initial_os, initial_osd=initial_osd,
                         freq=freq, unadj=unadj, show_method=show_method,
                         sort=sort_param, now=date.today(), current_year=date.today().year,
                         nav_flags=nav_flags, listings_data=listings_data,
                         sec_type=sec_type, stock_ex_id=stock_ex_id, delist_date=delist_date)


@bp.route('/buybacksum.asp')
def buybacksum():
    """Buyback summary - all stocks on a given date/period"""
    from flask import current_app
    from datetime import date

    # Get parameters
    unadj = get_bool('u')  # Show unadjusted for splits
    sort_param = request.args.get('sort', 'valdn')

    # Get max date from database
    max_date = date.today()
    try:
        result = execute_query("SELECT MAX(effDate) AS maxdate FROM enigma.WebBuybacks")
        if result and result[0]['maxdate']:
            max_date = result[0]['maxdate']
    except Exception as e:
        current_app.logger.error(f"Error getting max buyback date: {e}")

    # Parse date parameters with validation
    y = get_int('y', max_date.year)
    m = get_int('m', max_date.month)
    d = get_int('d', max_date.day if m > 0 else 0)

    # Validate year range
    y = max(1991, min(y, date.today().year))

    # Validate month range
    if y == 1991 and m > 0:
        m = max(11, m)
    if y == date.today().year:
        m = min(m, date.today().month)
    m = max(0, min(m, 12))

    # Validate day range
    if m > 0:
        import calendar
        max_day = calendar.monthrange(y, m)[1]
        if y == 1991 and m == 11:
            d = max(d, 27) if d > 0 else 0
        d = max(0, min(d, max_day))
    else:
        d = 0

    # Calculate start and end dates for query
    if m == 0:
        # Yearly: whole year
        dstart = date(y, 1, 1)
        dend = date(y, 12, 31)
        freq = 'y'
    elif d == 0:
        # Monthly: whole month
        import calendar
        dstart = date(y, m, 1)
        dend = date(y, m, calendar.monthrange(y, m)[1])
        freq = 'm'
    else:
        # Daily: single day
        dstart = date(y, m, d)
        dend = date(y, m, d)
        freq = 'd'

    # Sort mapping
    sort_map = {
        'namup': 'name',
        'namdn': 'name DESC',
        'codup': 'stockCode',
        'coddn': 'stockCode DESC',
        'valup': 'value, name',
        'valdn': 'value DESC, name',
        'curup': 'currency, value DESC',
        'curdn': 'currency, value',
        'stkdn': 'stake DESC, name',
        'stkup': 'stake, name'
    }
    ob = sort_map.get(sort_param, 'value DESC, name')

    summaries = []
    try:
        table = 'enigma.WebBuyBacks' if unadj else 'enigma.buybacksAdj'

        # Query all buybacks in the period
        summaries = execute_query(f"""
            SELECT b.issueID, sl.stockCode, CONCAT(o.name1, ':', st.typeShort) AS name,
                   b.currency, b.shares, b.value,
                   os.outstanding, os.osd,
                   CASE WHEN os.outstanding > 0
                        THEN b.shares * 100.0 / os.outstanding
                        ELSE NULL END AS stake,
                   CASE WHEN b.shares > 0
                        THEN b.value / b.shares
                        ELSE NULL END AS price
            FROM (
                SELECT issueID, currency, SUM(shares) AS shares, SUM(value) AS value
                FROM {table}
                WHERE effDate BETWEEN %s AND %s
                GROUP BY issueID, currency
            ) b
            JOIN enigma.issue i ON b.issueID = i.ID1
            JOIN enigma.organisations o ON i.issuer = o.personID
            JOIN enigma.secTypes st ON i.typeID = st.typeID
            LEFT JOIN LATERAL (
                SELECT outstanding, atDate AS osd
                FROM enigma.issuedshares
                WHERE issueID = b.issueID AND atDate <= %s
                ORDER BY atDate DESC
                LIMIT 1
            ) os ON TRUE
            LEFT JOIN LATERAL (
                SELECT stockCode
                FROM enigma.stockListings
                WHERE issueID = b.issueID AND toDate IS NULL
                ORDER BY fromDate DESC
                LIMIT 1
            ) sl ON TRUE
            ORDER BY {ob}
        """, (dstart, dend, dstart))

    except Exception as e:
        current_app.logger.error(f"Error querying buyback summary: {e}")
        summaries = []

    return render_template('dbpub/buybacksum.html',
                         summaries=summaries, year=y, month=m, day=d,
                         unadj=unadj, sort=sort_param, freq=freq,
                         max_date=max_date)


@bp.route('/buybackstime.asp')
def buybacks_time():
    """Buybacks lookback view - last N days"""
    from flask import current_app
    from datetime import date, timedelta

    # Get lookback period parameter (in days)
    hist = get_int('hist', 10)
    sort_param = request.args.get('sort', 'valdn')

    # Get max buyback date
    max_date = date.today()
    try:
        result = execute_query("SELECT MAX(effDate) AS maxdate FROM enigma.WebBuybacks")
        if result and result[0]['maxdate']:
            max_date = result[0]['maxdate']
    except Exception as e:
        current_app.logger.error(f"Error getting max buyback date: {e}")

    # Calculate lookback start date
    lookback_start = max_date - timedelta(days=hist)

    # Sort mapping
    sort_map = {
        'namup': 'name',
        'namdn': 'name DESC',
        'valup': 'sumValue, name',
        'valdn': 'sumValue DESC, name',
        'curup': 'currency, sumValue DESC',
        'curdn': 'currency, sumValue'
    }
    ob = sort_map.get(sort_param, 'sumValue DESC, name')

    time_series = []
    try:
        # Query buybacks since lookback date
        time_series = execute_query(f"""
            SELECT b.issueID, CONCAT(o.name1, ':', st.typeShort) AS name,
                   b.currency, SUM(b.value) AS sumValue
            FROM enigma.WebBuyBacks b
            JOIN enigma.issue i ON b.issueID = i.ID1
            JOIN enigma.organisations o ON i.issuer = o.personID
            JOIN enigma.secTypes st ON i.typeID = st.typeID
            WHERE b.effDate >= %s
            GROUP BY b.issueID, o.name1, st.typeShort, b.currency
            ORDER BY {ob}
        """, (lookback_start,))

    except Exception as e:
        current_app.logger.error(f"Error querying buybacks time series: {e}")
        time_series = []

    return render_template('dbpub/buybackstime.html',
                         time_series=time_series, hist=hist,
                         lookback_start=lookback_start, max_date=max_date,
                         sort=sort_param)


# Short selling routes
@bp.route('/short.asp')
def short():
    """Short selling positions for a specific stock - time series with charting data"""
    from flask import current_app
    issue_id = get_int('i', 0)
    stock_code = request.args.get('sc', '')

    # Get stock info from stock code if provided
    stock_name = ''
    org_id = 0
    if stock_code and not issue_id:
        try:
            result = execute_query("""
                SELECT i.ID1 AS issueID, o.name1, o.personID
                FROM enigma.stockListings sl
                JOIN enigma.issue i ON sl.issueID = i.ID1
                JOIN enigma.organisations o ON i.issuer = o.personID
                WHERE sl.stockCode = %s AND sl.toDate IS NULL
                ORDER BY sl.fromDate DESC LIMIT 1
            """, (stock_code,))
            if result:
                issue_id = result[0]['issueid']
                stock_name = result[0]['name1']
                org_id = result[0]['personid']
        except Exception as e:
            current_app.logger.error(f"Error looking up stock code: {e}")

    # Get stock info if we have issueID
    if issue_id and not stock_name:
        try:
            result = execute_query("""
                SELECT o.name1, o.personID
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                WHERE i.ID1 = %s
            """, (issue_id,))
            if result:
                stock_name = result[0]['name1']
                org_id = result[0]['personid']
        except Exception as e:
            current_app.logger.error(f"Error getting stock info: {e}")

    shorts = []
    if issue_id:
        try:
            # Get short position history with prices and outstanding shares
            # Note: Uses MySQL functions lastQuote() and outstanding() which need PostgreSQL equivalents
            shorts = execute_query("""
                SELECT s.atDate,
                       EXTRACT(EPOCH FROM s.atDate)::BIGINT * 1000 AS timestamp,
                       s.shares,
                       COALESCE(
                           (SELECT q.closing
                            FROM ccass.quotes q
                            WHERE q.issueID = s.issueID
                              AND q.atDate <= s.atDate
                            ORDER BY q.atDate DESC
                            LIMIT 1), 0) AS price,
                       COALESCE(
                           (SELECT os.outstanding
                            FROM enigma.issuedshares os
                            WHERE os.issueID = s.issueID
                              AND os.atDate <= s.atDate
                            ORDER BY os.atDate DESC
                            LIMIT 1), 0) AS outstanding,
                       CASE WHEN COALESCE(
                                (SELECT os.outstanding
                                 FROM enigma.issuedshares os
                                 WHERE os.issueID = s.issueID
                                   AND os.atDate <= s.atDate
                                 ORDER BY os.atDate DESC
                                 LIMIT 1), 0) > 0
                            THEN s.shares / COALESCE(
                                (SELECT os.outstanding
                                 FROM enigma.issuedshares os
                                 WHERE os.issueID = s.issueID
                                   AND os.atDate <= s.atDate
                                 ORDER BY os.atDate DESC
                                 LIMIT 1), 1)
                            ELSE 0
                       END AS stake
                FROM enigma.sfcshort s
                WHERE s.issueID = %s
                ORDER BY s.atDate DESC
            """, (issue_id,))

        except Exception as e:
            current_app.logger.error(f"Error querying short positions: {e}")
            shorts = []

    return render_template('dbpub/short.html',
                         issue_id=issue_id, stock_name=stock_name, org_id=org_id,
                         shorts=shorts)


@bp.route('/shortsum.asp')
def shortsum():
    """Short selling weekly summary - aggregate across all stocks"""
    from flask import current_app

    summaries = []
    try:
        # Aggregate short positions by week with market cap calculation
        summaries = execute_query("""
            SELECT s.atDate,
                   EXTRACT(EPOCH FROM s.atDate)::BIGINT * 1000 AS timestamp,
                   COUNT(*) AS cnt,
                   SUM(s.value) / 1000000000.0 AS sumVal,
                   SUM(
                       COALESCE(
                           (SELECT os.outstanding
                            FROM enigma.issuedshares os
                            WHERE os.issueID = s.issueID
                              AND os.atDate <= s.atDate
                            ORDER BY os.atDate DESC
                            LIMIT 1), 0) *
                       COALESCE(
                           (SELECT q.closing
                            FROM ccass.quotes q
                            WHERE q.issueID = s.issueID
                              AND q.atDate <= s.atDate
                            ORDER BY q.atDate DESC
                            LIMIT 1), 0)
                   ) / 1000000000.0 AS sumCap,
                   CASE WHEN SUM(
                            COALESCE(
                                (SELECT os.outstanding
                                 FROM enigma.issuedshares os
                                 WHERE os.issueID = s.issueID
                                   AND os.atDate <= s.atDate
                                 ORDER BY os.atDate DESC
                                 LIMIT 1), 0) *
                            COALESCE(
                                (SELECT q.closing
                                 FROM ccass.quotes q
                                 WHERE q.issueID = s.issueID
                                   AND q.atDate <= s.atDate
                                 ORDER BY q.atDate DESC
                                 LIMIT 1), 0)
                        ) > 0
                        THEN SUM(s.value) / SUM(
                            COALESCE(
                                (SELECT os.outstanding
                                 FROM enigma.issuedshares os
                                 WHERE os.issueID = s.issueID
                                   AND os.atDate <= s.atDate
                                 ORDER BY os.atDate DESC
                                 LIMIT 1), 0) *
                            COALESCE(
                                (SELECT q.closing
                                 FROM ccass.quotes q
                                 WHERE q.issueID = s.issueID
                                   AND q.atDate <= s.atDate
                                 ORDER BY q.atDate DESC
                                 LIMIT 1), 0)
                        )
                        ELSE 0
                   END AS stake
            FROM enigma.sfcshort s
            GROUP BY s.atDate
            ORDER BY s.atDate DESC
        """)

    except Exception as e:
        current_app.logger.error(f"Error querying short summary: {e}")
        summaries = []

    return render_template('dbpub/shortsum.html', summaries=summaries)


@bp.route('/shortdate.asp')
def shortdate():
    """Short positions on a specific date - all stocks"""
    from flask import current_app
    from datetime import date

    # Get date parameter
    d = request.args.get('d', '')
    sort_param = request.args.get('sort', 'stakdn')

    # Get list of available dates
    date_list = []
    try:
        date_list = execute_query("""
            SELECT DISTINCT atDate
            FROM enigma.sfcshort
            ORDER BY atDate DESC
        """)
    except Exception as e:
        current_app.logger.error(f"Error getting short dates: {e}")

    # Use first date if not specified
    if not d and date_list:
        d = str(date_list[0]['atdate'])
    elif not d:
        d = str(date.today())

    # Get previous date for change calculation
    prev_date = None
    try:
        result = execute_query("""
            SELECT COALESCE(
                (SELECT MAX(atDate) FROM enigma.sfcshort WHERE atDate < %s),
                '2012-08-31'::date
            ) AS prevDate
        """, (d,))
        if result:
            prev_date = result[0]['prevdate']
    except Exception as e:
        current_app.logger.error(f"Error getting previous short date: {e}")
        prev_date = '2012-08-31'

    # Sort mapping
    sort_map = {
        'nameup': 'name1',
        'namedn': 'name1 DESC',
        'stakdn': 'stake DESC, name1',
        'stakup': 'stake, name1',
        'valudn': 'value DESC, name1',
        'valuup': 'value, name1',
        'codeup': 'stockCode',
        'codedn': 'stockCode DESC',
        'mcapdn': 'mcap DESC',
        'mcapup': 'mcap',
        'typeup': 'typeShort, stake DESC',
        'typedn': 'typeShort DESC, stake DESC',
        'diffdn': 'diff DESC, name1',
        'diffup': 'diff, name1'
    }
    ob = sort_map.get(sort_param, 'stake DESC, name1')

    shorts = []
    try:
        # Query all short positions on the specified date
        shorts = execute_query(f"""
            SELECT sl.stockCode, t1.issueID, t1.shares, t1.value,
                   t1.stake, o.name1, st.typeShort, st.typeLong,
                   COALESCE(t1.stake - t2.prevStake, 0) AS diff,
                   t1.mcap, t1.os
            FROM (
                SELECT s.issueID, s.shares, s.value,
                       os.outstanding AS os,
                       CASE WHEN os.outstanding > 0
                            THEN s.shares / os.outstanding
                            ELSE 0 END AS stake,
                       COALESCE(q.closing, 0) * os.outstanding AS mcap
                FROM enigma.sfcshort s
                LEFT JOIN LATERAL (
                    SELECT outstanding
                    FROM enigma.issuedshares
                    WHERE issueID = s.issueID AND atDate <= %s
                    ORDER BY atDate DESC
                    LIMIT 1
                ) os ON TRUE
                LEFT JOIN LATERAL (
                    SELECT closing
                    FROM ccass.quotes
                    WHERE issueID = s.issueID AND atDate <= %s
                    ORDER BY atDate DESC
                    LIMIT 1
                ) q ON TRUE
                WHERE s.atDate = %s
            ) t1
            JOIN enigma.issue i ON t1.issueID = i.ID1
            JOIN enigma.organisations o ON i.issuer = o.personID
            JOIN enigma.secTypes st ON i.typeID = st.typeID
            LEFT JOIN (
                SELECT s2.issueID,
                       CASE WHEN os2.outstanding > 0
                            THEN s2.shares / os2.outstanding
                            ELSE 0 END AS prevStake
                FROM enigma.sfcshort s2
                LEFT JOIN LATERAL (
                    SELECT outstanding
                    FROM enigma.issuedshares
                    WHERE issueID = s2.issueID AND atDate <= %s
                    ORDER BY atDate DESC
                    LIMIT 1
                ) os2 ON TRUE
                WHERE s2.atDate = %s
            ) t2 ON t1.issueID = t2.issueID
            LEFT JOIN LATERAL (
                SELECT stockCode
                FROM enigma.stockListings
                WHERE issueID = t1.issueID AND toDate IS NULL
                ORDER BY fromDate DESC
                LIMIT 1
            ) sl ON TRUE
            ORDER BY {ob}
        """, (d, d, d, prev_date, prev_date))

    except Exception as e:
        current_app.logger.error(f"Error querying short positions by date: {e}")
        shorts = []

    return render_template('dbpub/shortdate.html',
                         d=d, prev_date=prev_date, shorts=shorts,
                         date_list=date_list, sort=sort_param)


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
    """
    Corporate event details

    Query params:
    - e: eventID

    Shows full details of a specific corporate action event
    """
    event_id = get_int('e', 1)

    # Get issue info from event
    issue_result = execute_query("""
        SELECT COALESCE(issueid, 0) AS issueid
        FROM enigma.events
        WHERE eventid = %s
    """, (event_id,))

    if not issue_result:
        return "Event not found", 404

    issue_id = issue_result[0]['issueid']

    # Get event details with all related data
    event_data = execute_query("""
        SELECT e.*,
               cct.change,
               cu.currency,
               COALESCE(e.distdate, e.exdate) AS dist_or_ex
        FROM enigma.events e
        JOIN enigma.capchangetypes cct ON e.eventtype = cct.capchangetype
        LEFT JOIN enigma.currencies cu ON e.currid = cu.id
        WHERE e.eventid = %s
    """, (event_id,))

    if not event_data:
        return "Event not found", 404

    event = event_data[0]

    # Get issue2 details if exists
    issue2_data = None
    if event.get('issue2'):
        issue2_data = execute_query("""
            SELECT i.issuer,
                   o.name1
            FROM enigma.issue i
            JOIN enigma.organisations o ON i.issuer = o.personid
            WHERE i.id1 = %s
        """, (event['issue2'],))

    # Get afterEvent details if exists (for bonus/warrant issues)
    after_event_type = None
    if event.get('afterevent'):
        after_event_data = execute_query("""
            SELECT eventtype FROM enigma.events WHERE eventid = %s
        """, (event['afterevent'],))
        if after_event_data:
            after_event_type = after_event_data[0]['eventtype']

    return render_template('dbpub/eventdets.html',
                         event_id=event_id,
                         issue_id=issue_id,
                         event=event,
                         issue2_data=issue2_data[0] if issue2_data else None,
                         after_event_type=after_event_type)


# Documents
@bp.route('/docs.asp')
def docs():
    """
    Financial reports and documents for an organization

    Query params:
    - p: personID (organization)
    - sort: sorting column

    Shows annual reports, interim reports, quarterly reports with filing dates and speeds
    """
    person_id = get_int('p', 0)
    sort_param = request.args.get('sort', 'recdn')

    if not person_id:
        return "PersonID required", 400

    # Sort order mapping
    sort_mappings = {
        'typup': 'doclong, reportdate DESC',
        'typdn': 'doclong DESC, reportdate',
        'repdn': 'reportdate DESC, recorddate DESC',
        'repup': 'reportdate, recorddate',
        'recup': 'recorddate',
        'recdn': 'recorddate DESC',
        'spddn': 'doclong, speed DESC, recorddate',
        'spdup': 'doclong, speed, recorddate DESC'
    }
    ob = sort_mappings.get(sort_param, 'recorddate DESC')

    # Query documents (docTypeID 0=annual, 1=interim, 6=quarterly)
    docs_data = execute_query(f"""
        SELECT d.recorddate,
               d.reportdate,
               EXTRACT(DAY FROM (d.reportdate - d.recorddate))::INTEGER AS speed,
               dt.doclong,
               COALESCE(r.url, '') AS url,
               r.repfiled,
               r.fsize
        FROM enigma.documents d
        JOIN enigma.doctypes dt ON d.doctypeid = dt.doctypeid
        LEFT JOIN enigma.repfilings r ON d.repid = r.id
        WHERE d.doctypeid IN (0, 1, 6)
          AND d.orgid = %s
        ORDER BY {ob}
    """, (person_id,))

    # Process URLs for display
    for doc in docs_data:
        if doc.get('url'):
            url = doc['url']
            # Fix HTTPS to HTTP (legacy ASP code did this)
            if url.startswith('https'):
                url = 'http' + url[5:]
            # Add HKEX prefix if not a full URL
            elif not url.startswith('http'):
                url = 'https://www.hkexnews.hk/listedco/listconews/' + url
            doc['url'] = url

    return render_template('dbpub/docs.html',
                         person_id=person_id,
                         docs_data=docs_data,
                         sort_param=sort_param)


# Articles and content
@bp.route('/articles.asp')
def articles():
    """
    Articles index - shows recent Webb-site articles

    Query params:
    - p: personID (show articles mentioning this person/org)

    Tables used: stories, personstories, organisations, people
    """
    person_id = get_int('p', 0)

    if person_id:
        # Articles mentioning specific person/org
        articles_data = execute_query("""
            SELECT s.storyid, s.title, s.summary, s.storydate, s.url, s.url2, s.url2text,
                   s.image, sr.sourcename, s.sourceid,
                   sn.storyid AS snid
            FROM enigma.personstories ps
            JOIN enigma.stories s ON ps.storyid = s.storyid
            LEFT JOIN enigma.sources sr ON s.sourceid = sr.sourceid
            LEFT JOIN enigma.sfcnews sn ON s.storyid = sn.storyid
            WHERE ps.personid = %s
              AND s.pubdate <= CURRENT_TIMESTAMP
            ORDER BY s.storydate DESC
            LIMIT 500
        """, (person_id,))
    else:
        # Recent articles
        articles_data = execute_query("""
            SELECT s.storyid, s.title, s.summary, s.storydate, s.url, s.url2, s.url2text,
                   s.image, sr.sourcename, s.sourceid,
                   sn.storyid AS snid
            FROM enigma.stories s
            LEFT JOIN enigma.sources sr ON s.sourceid = sr.sourceid
            LEFT JOIN enigma.sfcnews sn ON s.storyid = sn.storyid
            WHERE s.sourceid = 1
              AND s.pubdate <= CURRENT_TIMESTAMP
            ORDER BY s.storydate DESC
            LIMIT 100
        """)

    # Get related entities for each article
    for article in articles_data:
        story_id = article['storyid']

        # Get organizations mentioned
        article['orgs'] = execute_query("""
            SELECT ps.personid, o.name1
            FROM enigma.personstories ps
            JOIN enigma.organisations o ON ps.personid = o.personid
            WHERE ps.storyid = %s
            ORDER BY o.name1
        """, (story_id,))

        # Get people mentioned
        article['people'] = execute_query("""
            SELECT ps.personid,
                   p.name1 || COALESCE(', ' || p.name2, '') AS name
            FROM enigma.personstories ps
            JOIN enigma.people p ON ps.personid = p.personid
            WHERE ps.storyid = %s
            ORDER BY p.name1, p.name2
        """, (story_id,))

        # Get tags
        article['tags'] = execute_query("""
            SELECT st.catid, c.name
            FROM enigma.storytags st
            JOIN enigma.categories c ON st.catid = c.id
            WHERE st.storyid = %s
            ORDER BY c.name
        """, (story_id,))

    return render_template('dbpub/articles.html',
                         articles=articles_data,
                         person_id=person_id)


@bp.route('/articlesyear.asp')
def articles_year():
    """
    Articles by publication year

    Query params:
    - y: year (default current year)

    Shows all Webb-site articles published in a specific year
    """
    from datetime import date
    year = get_int('y', date.today().year)

    # Query articles for this year
    articles_data = execute_query("""
        SELECT s.storyid, s.title, s.summary, s.storydate, s.url, s.url2, s.url2text
        FROM enigma.stories s
        WHERE s.sourceid = 1
          AND EXTRACT(YEAR FROM s.storydate) = %s
          AND s.pubdate <= CURRENT_TIMESTAMP
        ORDER BY s.storydate DESC
    """, (year,))

    # Get related entities for each article
    for article in articles_data:
        story_id = article['storyid']

        # Get organizations mentioned
        article['orgs'] = execute_query("""
            SELECT ps.personid, o.name1
            FROM enigma.personstories ps
            JOIN enigma.organisations o ON ps.personid = o.personid
            WHERE ps.storyid = %s
            ORDER BY o.name1
        """, (story_id,))

        # Get people mentioned
        article['people'] = execute_query("""
            SELECT ps.personid,
                   p.name1 || COALESCE(', ' || p.name2, '') AS name
            FROM enigma.personstories ps
            JOIN enigma.people p ON ps.personid = p.personid
            WHERE ps.storyid = %s
            ORDER BY p.name1, p.name2
        """, (story_id,))

        # Get tags
        article['tags'] = execute_query("""
            SELECT st.catid, c.name
            FROM enigma.storytags st
            JOIN enigma.categories c ON st.catid = c.id
            WHERE st.storyid = %s
            ORDER BY c.name
        """, (story_id,))

    return render_template('dbpub/articlesyear.html',
                         year=year,
                         articles=articles_data)


@bp.route('/artlinks.asp')
def artlinks():
    """
    Article links - shows organizations, people, and tags for a specific article

    Query params:
    - s: storyID

    Shows all entities and tags associated with an article
    """
    story_id = get_int('s', 0)

    if not story_id:
        return "Story ID required", 400

    # Get article details
    article_data = execute_query("""
        SELECT s.storyid, s.title, s.summary, s.storydate, s.url, s.url2, s.url2text,
               sr.sourcename, s.sourceid,
               sn.storyid AS snid, sn.titleEN, sn.titleTC
        FROM enigma.stories s
        LEFT JOIN enigma.sources sr ON s.sourceid = sr.sourceid
        LEFT JOIN enigma.sfcnews sn ON s.storyid = sn.storyid
        WHERE s.storyid = %s
    """, (story_id,))

    if not article_data:
        return "Article not found", 404

    article = article_data[0]

    # Get organizations mentioned
    orgs_data = execute_query("""
        SELECT ps.personid, o.name1, o.cname
        FROM enigma.personstories ps
        JOIN enigma.organisations o ON ps.personid = o.personid
        WHERE ps.storyid = %s
        ORDER BY o.name1
    """, (story_id,))

    # Get people mentioned
    people_data = execute_query("""
        SELECT ps.personid,
               p.name1 || COALESCE(', ' || p.name2, '') AS name,
               p.cname
        FROM enigma.personstories ps
        JOIN enigma.people p ON ps.personid = p.personid
        WHERE ps.storyid = %s
        ORDER BY p.name1, p.name2
    """, (story_id,))

    # Get tags
    tags_data = execute_query("""
        SELECT st.catid, c.name
        FROM enigma.storytags st
        JOIN enigma.categories c ON st.catid = c.id
        WHERE st.storyid = %s
        ORDER BY c.name
    """, (story_id,))

    return render_template('dbpub/artlinks.html',
                         story_id=story_id,
                         article=article,
                         orgs=orgs_data,
                         people=people_data,
                         tags=tags_data)


@bp.route('/cat.asp')
def cat():
    """
    Article category browser - shows subcategories and member organizations

    Query params:
    - c: category ID

    Shows hierarchical category tree and category members
    Tables used: webcattree view, webcatmembers view
    """
    cat_id = get_int('c', 1)

    # Get category name
    cat_result = execute_query("""
        SELECT name FROM enigma.categories WHERE id = %s
    """, (cat_id,))

    if not cat_result:
        return "Category not found", 404

    cat_name = cat_result[0]['name']

    # Get subcategories
    subcats = execute_query("""
        SELECT childid, childname
        FROM enigma.webcattree
        WHERE parentid = %s
        ORDER BY childname
    """, (cat_id,))

    # Get category members (organizations)
    members = execute_query("""
        SELECT personid, name1
        FROM enigma.webcatmembers
        WHERE category = %s
        ORDER BY name1
    """, (cat_id,))

    return render_template('dbpub/cat.html',
                         cat_id=cat_id,
                         cat_name=cat_name,
                         subcategories=subcats,
                         members=members)


@bp.route('/subject.asp')
def subject():
    """
    Articles by subject tag

    Query params:
    - c: category ID (subject tag)

    Shows all articles tagged with a specific subject
    Tables used: storytags, stories, categories
    """
    cat_id = get_int('c', 0)

    if not cat_id:
        return "Category ID required", 400

    # Get category name
    cat_result = execute_query("""
        SELECT name FROM enigma.categories WHERE id = %s
    """, (cat_id,))

    if not cat_result:
        return "Subject not found", 404

    subject_name = cat_result[0]['name']

    # Get articles with this tag
    articles_data = execute_query("""
        SELECT s.title, s.storyid, s.storydate, s.url, s.summary,
               s.sourceid, sr.sourcename, s.url2, s.url2text, s.image,
               sn.storyid AS snid
        FROM enigma.storytags st
        JOIN enigma.stories s ON st.storyid = s.storyid
        LEFT JOIN enigma.sources sr ON s.sourceid = sr.sourceid
        LEFT JOIN enigma.sfcnews sn ON st.storyid = sn.storyid
        WHERE st.catid = %s
          AND s.pubdate <= CURRENT_TIMESTAMP
        ORDER BY s.storydate DESC
    """, (cat_id,))

    # Get related entities for each article
    for article in articles_data:
        story_id = article['storyid']

        # Get organizations mentioned
        article['orgs'] = execute_query("""
            SELECT ps.personid, o.name1
            FROM enigma.personstories ps
            JOIN enigma.organisations o ON ps.personid = o.personid
            WHERE ps.storyid = %s
            ORDER BY o.name1
        """, (story_id,))

        # Get people mentioned
        article['people'] = execute_query("""
            SELECT ps.personid,
                   p.name1 || COALESCE(', ' || p.name2, '') AS name
            FROM enigma.personstories ps
            JOIN enigma.people p ON ps.personid = p.personid
            WHERE ps.storyid = %s
            ORDER BY p.name1, p.name2
        """, (story_id,))

        # Get other tags
        article['tags'] = execute_query("""
            SELECT st.catid, c.name
            FROM enigma.storytags st
            JOIN enigma.categories c ON st.catid = c.id
            WHERE st.storyid = %s
            ORDER BY c.name
        """, (story_id,))

    return render_template('dbpub/subject.html',
                         cat_id=cat_id,
                         subject_name=subject_name,
                         articles=articles_data)


# HK Solicitors
@bp.route('/HKsols.asp')
def hk_sols():
    """
    HK solicitors in law firms - port of HKsols.asp
    Lists all current HK solicitors associated with HK law firms

    Query params:
    - p: role filter (1=Partner, 2=Consultant, 3=Solicitor, 5=Proprietor, 0=All)
    - sort: sorting column

    Tables used: enigma.lsposts, enigma.lsppl, enigma.lsorgs, enigma.lsroles, enigma.organisations, enigma.people
    """
    from flask import current_app

    p = get_int('p', 0)
    sort_param = request.args.get('sort', 'admup')

    # Get role title
    role_sql = ""
    if p > 0:
        role_sql = f" AND ps.post = {p}"

    # Build sort order
    sort_map = {
        'humup': "pName,oName",
        'humdn': "pName DESC,oName",
        'orgup': "oName,LStxt,pName",
        'orgdn': "oName,admHK,pName",
        'admdn': "admHK DESC,pName",
        'admup': "admHK,pName,oName",
        'ageup': "age,pName,oName",
        'agedn': "age DESC,pName,oName",
        'rolup': "LStxt,pName,oName",
        'roldn': "LStxt DESC,oName,pName"
    }
    ob = sort_map.get(sort_param, "admHK,pName,oName")

    # Query solicitors
    solicitors = []
    try:
        solicitors = execute_query(f"""
            SELECT
                CONCAT(EXTRACT(YEAR FROM p.admHK), '-',
                       LPAD(EXTRACT(MONTH FROM p.admHK), 2, '0')) AS admHK,
                o.personID AS orgID, o.name1 AS oName,
                ppl.personID AS pID,
                CONCAT(COALESCE(ppl.name1,''),
                       CASE WHEN ppl.name2 IS NOT NULL THEN CONCAT(', ', ppl.name2) ELSE '' END,
                       CASE WHEN ppl.cName IS NOT NULL THEN CONCAT(' ', ppl.cName) ELSE '' END) AS pName,
                lr.LStxt,
                EXTRACT(YEAR FROM CURRENT_DATE) - ppl.YOB AS age
            FROM enigma.lsposts ps
            JOIN enigma.lsppl lp ON ps.lsppl = lp.lsid
            JOIN enigma.lsorgs lo ON ps.lsorg = lo.lsid
            JOIN enigma.lsroles lr ON ps.post = lr.id
            JOIN enigma.organisations o ON lo.personID = o.PersonID
            JOIN enigma.people ppl ON lp.personID = ppl.personID
            JOIN enigma.lsppl p ON lp.lsid = p.lsid
            WHERE NOT ps.dead {role_sql}
            ORDER BY {ob}
        """)
    except Exception as ex:
        current_app.logger.error(f"Error querying HK sols: {ex}")

    return render_template('dbpub/hk_sols.html',
                         p=p, solicitors=solicitors, sort=sort_param)


@bp.route('/HKsolfirms.asp')
def hk_sol_firms():
    """
    HK law firms - port of HKsolfirms.asp
    Lists all current HK law firms with solicitor counts by role

    Query params:
    - d: snapshot date (defaults to today)
    - sort: sorting column

    Tables used: enigma.lsposts, enigma.lsorgs, enigma.organisations
    """
    from flask import current_app

    d = request.args.get('d', str(date.today()))
    sort_param = request.args.get('sort', 'totdn')

    # Build sort order
    sort_map = {
        'orgup': "name1", 'orgdn': "name1 DESC",
        'partup': "partner,tot,name1", 'partdn': "partner DESC,tot DESC,name1",
        'solup': "sol,tot,name1", 'soldn': "sol DESC,tot DESC,name1",
        'conup': "con,tot,name1", 'condn': "con DESC,tot DESC,name1",
        'propup': "prop,tot,name1", 'propdn': "prop DESC,tot DESC,name1",
        'totup': "tot,name1", 'totdn': "tot DESC,name1"
    }
    ob = sort_map.get(sort_param, "tot DESC,name1")

    # Query law firms
    firms = []
    totals = {'partner': 0, 'con': 0, 'sol': 0, 'prop': 0, 'tot': 0}
    try:
        firms = execute_query(f"""
            SELECT lo.personID, o.name1,
                   COUNT(lp.lsppl) AS tot,
                   SUM(CASE WHEN lp.post = 1 THEN 1 ELSE 0 END) AS partner,
                   SUM(CASE WHEN lp.post = 2 THEN 1 ELSE 0 END) AS con,
                   SUM(CASE WHEN lp.post = 3 THEN 1 ELSE 0 END) AS sol,
                   SUM(CASE WHEN lp.post = 5 THEN 1 ELSE 0 END) AS prop
            FROM enigma.lsposts lp
            JOIN enigma.lsorgs lo ON lp.lsorg = lo.lsid
            JOIN enigma.organisations o ON lo.personID = o.personID
            WHERE lp.firstSeen < %s::date + INTERVAL '1 day'
              AND (NOT lp.dead OR lp.lastSeen >= %s)
            GROUP BY lo.personID, o.name1
            ORDER BY {ob}
        """, (d, d))

        # Calculate totals
        result = execute_query("""
            SELECT COUNT(lsppl) AS tot,
                   SUM(CASE WHEN post = 1 THEN 1 ELSE 0 END) AS partner,
                   SUM(CASE WHEN post = 2 THEN 1 ELSE 0 END) AS con,
                   SUM(CASE WHEN post = 3 THEN 1 ELSE 0 END) AS sol,
                   SUM(CASE WHEN post = 5 THEN 1 ELSE 0 END) AS prop
            FROM enigma.lsposts lp
            WHERE lp.firstSeen < %s::date + INTERVAL '1 day'
              AND (NOT lp.dead OR lp.lastSeen >= %s)
              AND lp.post <> 4
        """, (d, d))
        if result:
            totals = result[0]

    except Exception as ex:
        current_app.logger.error(f"Error querying HK sol firms: {ex}")

    return render_template('dbpub/hk_sol_firms.html',
                         firms=firms, totals=totals, d=d, sort=sort_param)


@bp.route('/HKsolsmoves.asp')
def hk_sols_moves():
    """
    HK solicitors job moves - port of HKsolsmoves.asp
    Shows recent moves in HK law firms (last 30 days)

    Query params:
    - sort: sorting column

    Tables used: enigma.directorships, enigma.lsppl, enigma.lsorgs, enigma.organisations, enigma.people, enigma.positions, enigma.lsroles
    """
    from flask import current_app

    sort_param = request.args.get('sort', 'orgup')

    # Build sort order
    sort_map = {
        'orgup': "oName,pName,LSrole DESC",
        'orgdn': "oName DESC,pName,LSrole DESC",
        'solup': "pName,oName,LSrole DESC",
        'soldn': "pName DESC,oName,LSrole DESC",
        'datdn': "relDate DESC,pName,oName",
        'datup': "relDate,pName,oName"
    }
    ob = sort_map.get(sort_param, "oName,pName,LSrole DESC")

    # Query recent moves
    moves = []
    try:
        moves = execute_query(f"""
            SELECT DISTINCT
                d.company AS orgID, d.director AS pID,
                CONCAT(COALESCE(p.name1,''),
                       CASE WHEN p.name2 IS NOT NULL THEN CONCAT(', ', p.name2) ELSE '' END,
                       CASE WHEN p.cName IS NOT NULL THEN CONCAT(' ', p.cName) ELSE '' END) AS pName,
                o.name1 AS oName,
                CONCAT(EXTRACT(YEAR FROM d.apptDate), '-',
                       LPAD(EXTRACT(MONTH FROM d.apptDate), 2, '0'),
                       CASE WHEN d.apptAcc = 2 THEN '' ELSE CONCAT('-', LPAD(EXTRACT(DAY FROM d.apptDate), 2, '0')) END) AS appt,
                CONCAT(EXTRACT(YEAR FROM d.resDate), '-',
                       LPAD(EXTRACT(MONTH FROM d.resDate), 2, '0'),
                       CASE WHEN d.resAcc = 2 THEN '' ELSE CONCAT('-', LPAD(EXTRACT(DAY FROM d.resDate), 2, '0')) END) AS res,
                lr.LStxt,
                COALESCE(d.resDate, d.apptDate) AS relDate
            FROM enigma.directorships d
            JOIN enigma.lsppl lp ON d.director = lp.personID
            JOIN enigma.lsorgs lo ON d.company = lo.personID
            JOIN enigma.organisations o ON d.company = o.personID
            JOIN enigma.people p ON d.director = p.PersonID
            JOIN enigma.positions pn ON d.positionID = pn.positionID
            JOIN enigma.lsroles lr ON pn.LSrole = lr.ID
            WHERE d.resDate >= CURRENT_DATE - INTERVAL '30 days'
               OR d.apptDate >= CURRENT_DATE - INTERVAL '30 days'
            ORDER BY {ob}
        """)
    except Exception as ex:
        current_app.logger.error(f"Error querying HK sols moves: {ex}")

    return render_template('dbpub/hk_sols_moves.html',
                         moves=moves, sort=sort_param)


@bp.route('/HKsolemps.asp')
def hk_sol_emps():
    """
    Non-law firm employers with HK solicitors - port of HKsolemps.asp
    Lists employers of HK solicitors that are not law firms

    Query params:
    - sort: sorting column

    Tables used: enigma.lsjobs, enigma.lsemps, enigma.organisations
    """
    from flask import current_app

    sort_param = request.args.get('sort', 'cntdn')

    # Build sort order
    sort_map = {
        'orgup': "name1",
        'orgdn': "name1 DESC",
        'cntup': "cnt,name1",
        'cntdn': "cnt DESC,name1"
    }
    ob = sort_map.get(sort_param, "cnt DESC,name1")

    # Query employers
    employers = []
    total = 0
    try:
        employers = execute_query(f"""
            SELECT o.name1, o.personID, COUNT(*) AS cnt
            FROM enigma.lsjobs j
            JOIN enigma.lsemps e ON j.empID = e.ID
            JOIN enigma.organisations o ON e.personID = o.personID
            WHERE NOT j.dead
            GROUP BY e.personID, o.name1, o.personID
            ORDER BY {ob}
        """)

        # Calculate total
        for emp in employers:
            total += emp['cnt']

    except Exception as ex:
        current_app.logger.error(f"Error querying HK sol emps: {ex}")

    return render_template('dbpub/hk_sol_emps.html',
                         employers=employers, total=total, sort=sort_param)


# Website URLs
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
@bp.route('/domicile.asp')
def domicile():
    """
    Distribution of listed companies by domicile

    Query params:
    - e: exchange (m=Main Board, g=GEM, a=All)
    - sort: sorting column

    Shows count and percentage of listed companies by jurisdiction
    """
    e = request.args.get('e', 'a')
    sort_param = request.args.get('sort', 'cntdn')

    # Exchange filter
    exchange_filters = {
        'g': ('20', 'GEM'),
        'm': ('1', 'Main Board'),
        'a': ('1, 20', 'Main Board and GEM')
    }
    ex_str, title_suffix = exchange_filters.get(e, ('1, 20', 'Main Board and GEM'))

    # Sort order mapping
    sort_mappings = {
        'cntup': 'cnt',
        'cntdn': 'cnt DESC',
        'domup': 'domname',
        'domdn': 'domname DESC'
    }
    ob = sort_mappings.get(sort_param, 'cnt DESC')

    # Get total count for percentage calculation
    total = execute_query(f"""
        SELECT COUNT(*) AS total
        FROM enigma.listedcoshk
        WHERE stockexid IN ({ex_str})
    """)[0]['total']

    # Query domiciles with company counts
    domiciles_data = execute_query(f"""
        SELECT d.id,
               d.fullname AS domname,
               COUNT(l.issuer) AS cnt
        FROM enigma.listedcoshk l
        JOIN enigma.organisations o ON l.issuer = o.personid
        JOIN enigma.domiciles d ON o.domicile = d.id
        WHERE l.stockexid IN ({ex_str})
        GROUP BY d.id, d.fullname
        ORDER BY {ob}
    """)

    # Add percentage to each row
    for row in domiciles_data:
        row['pct'] = (row['cnt'] * 100.0 / total) if total > 0 else 0

    return render_template('dbpub/domicile.html',
                         domiciles_data=domiciles_data,
                         e=e,
                         sort_param=sort_param,
                         title=f"Domicile of HK {title_suffix} listed companies",
                         total=total)


@bp.route('/domicilecos.asp')
def domicilecos():
    """
    Companies from a specific domicile

    Query params:
    - dom: domicile ID
    - e: exchange (m=Main Board, g=GEM, a=All)
    - sort: sorting column

    Shows list of listed companies from specified jurisdiction
    """
    dom = get_int('dom', 1)
    e = request.args.get('e', 'a')
    sort_param = request.args.get('sort', 'nameup')

    # Exchange filter
    exchange_filters = {
        'g': ('20', 'GEM'),
        'm': ('1', 'Main Board'),
        'a': ('1, 20', 'HK')
    }
    ex_str, title_prefix = exchange_filters.get(e, ('1, 20', 'HK'))

    # Get domicile name
    domicile_result = execute_query("""
        SELECT friendly FROM enigma.domiciles WHERE id = %s
    """, (dom,))

    if not domicile_result:
        return "Domicile not found", 404

    dom_name = domicile_result[0]['friendly']

    # Sort order mapping
    sort_mappings = {
        'namedn': 'name DESC',
        'nameup': 'name',
        'incdup': 'incdate, name',
        'incddn': 'incdate DESC, name',
        'scup': 'sc',
        'scdn': 'sc DESC'
    }
    ob = sort_mappings.get(sort_param, 'name')

    # Get all domiciles for dropdown
    all_domiciles = execute_query("""
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
    """)

    # Get companies from this domicile
    companies_data = execute_query(f"""
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
    """, (dom,))

    return render_template('dbpub/domicilecos.html',
                         companies_data=companies_data,
                         all_domiciles=all_domiciles,
                         dom=dom,
                         dom_name=dom_name,
                         e=e,
                         sort_param=sort_param,
                         title=f"{title_prefix}-listed companies domiciled in {dom_name}")


@bp.route('/domicilechange.asp')
def domicile_change():
    """
    Companies that have changed domicile

    Shows companies redomiciled by continuation or scheme of arrangement
    """
    sort_param = request.args.get('sort', 'datedn')

    # Sort order mapping
    sort_mappings = {
        'newup': 'newdom, datechanged DESC',
        'newdn': 'newdom DESC, datechanged DESC',
        'oldup': 'olddom, datechanged DESC',
        'olddn': 'olddom DESC, datechanged DESC',
        'dateup': 'datechanged, name1',
        'datedn': 'datechanged DESC, name1',
        'namup': 'name1, datechanged DESC',
        'namdn': 'name1 DESC, datechanged DESC'
    }
    ob = sort_mappings.get(sort_param, 'datechanged DESC, name1')

    # Query domicile changes with old and new domiciles
    changes_data = execute_query(f"""
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
    """)

    return render_template('dbpub/domicile_change.html',
                         changes_data=changes_data,
                         sort_param=sort_param)


# Name changes
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

    Tables used: enigma.directorships, enigma.listedcoshk, enigma.people, enigma.positions
    """
    from flask import current_app

    d = request.args.get('d', str(date.today()))
    snap_year = int(d[:4]) if d else date.today().year

    # Query distribution of directors per company
    distribution = []
    try:
        distribution = execute_query("""
            WITH company_counts AS (
                SELECT
                    d.company,
                    COUNT(*) AS numSeats,
                    SUM(CASE WHEN p.sex = 'F' THEN 1 ELSE 0 END) AS femSeats,
                    AVG(p.YOB) AS avg_yob
                FROM enigma.directorships d
                JOIN enigma.positions pn ON d.positionID = pn.positionID
                JOIN enigma.listedcoshk lc ON d.company = lc.issuer
                JOIN enigma.people p ON d.director = p.personID
                WHERE pn.rank = 1
                  AND (d.apptDate IS NULL OR d.apptDate <= %s)
                  AND (d.resDate IS NULL OR d.resDate > %s)
                GROUP BY d.company
            )
            SELECT
                numSeats,
                COUNT(*) AS numCos,
                SUM(femSeats) AS femSeats,
                AVG(avg_yob) AS yob_avg
            FROM company_counts
            GROUP BY numSeats
            ORDER BY numSeats
        """, (d, d))

        # Get total company count
        total_cos_result = execute_query("""
            SELECT COUNT(DISTINCT issuer) AS cnt
            FROM enigma.listedcoshk
        """)
        total_cos = total_cos_result[0]['cnt'] if total_cos_result else 0

    except Exception as ex:
        current_app.logger.error(f"Error querying dirs per listco distribution: {ex}")
        total_cos = 0

    return render_template('dbpub/dirs_per_listco_hk.html',
                         distribution=distribution, d=d, snap_year=snap_year,
                         total_cos=total_cos)


@bp.route('/DirsHKDistnPeople.asp')
def dirs_hk_distn_people():
    """
    Distribution of HK-listed directorships per person - port of DirsHKDistnPeople.asp
    Shows how many people hold 1, 2, 3... directorships

    Query params:
    - d: snapshot date (defaults to today)

    Tables used: enigma.directorships, enigma.listedcoshk, enigma.people, enigma.positions
    """
    from flask import current_app

    d = request.args.get('d', str(date.today()))

    # Query distribution of directorships per person
    distribution = []
    try:
        distribution = execute_query("""
            WITH person_counts AS (
                SELECT
                    d.director,
                    COUNT(DISTINCT d.company) AS numSeats,
                    MAX(p.sex) AS sex
                FROM enigma.directorships d
                JOIN enigma.positions pn ON d.positionID = pn.positionID
                JOIN enigma.listedcoshk lc ON d.company = lc.issuer
                JOIN enigma.people p ON d.director = p.personID
                WHERE pn.rank = 1
                  AND (d.apptDate IS NULL OR d.apptDate <= %s)
                  AND (d.resDate IS NULL OR d.resDate > %s)
                GROUP BY d.director
            )
            SELECT
                numSeats,
                COUNT(*) AS numPeople,
                SUM(CASE WHEN sex = 'F' THEN 1 ELSE 0 END) AS female
            FROM person_counts
            GROUP BY numSeats
            ORDER BY numSeats
        """, (d, d))

    except Exception as ex:
        current_app.logger.error(f"Error querying dirs HK distn people: {ex}")

    return render_template('dbpub/dirs_hk_distn_people.html',
                         distribution=distribution, d=d)


@bp.route('/DirsHKAgeDistn.asp')
def dirs_hk_age_distn():
    """
    Distribution of HK-listed directors by age - port of DirsHKAgeDistn.asp
    Shows how many directors were born in each year

    Query params:
    - d: snapshot date (defaults to today)
    - sort: YOBup or YOBdn

    Tables used: enigma.directorships, enigma.listedcoshk, enigma.people, enigma.positions
    """
    from flask import current_app

    d = request.args.get('d', str(date.today()))
    sort_param = request.args.get('sort', 'YOBup')
    snap_year = int(d[:4]) if d else date.today().year

    # Build sort order
    ob = "p.YOB DESC" if sort_param == "YOBdn" else "p.YOB"

    # Query age distribution
    distribution = []
    try:
        distribution = execute_query(f"""
            WITH director_counts AS (
                SELECT
                    d.director,
                    p.YOB,
                    p.sex,
                    COUNT(DISTINCT d.company) AS seats
                FROM enigma.directorships d
                JOIN enigma.positions pn ON d.positionID = pn.positionID
                JOIN enigma.listedcoshk lc ON d.company = lc.issuer
                JOIN enigma.people p ON d.director = p.personID
                WHERE pn.rank = 1
                  AND (d.apptDate IS NULL OR d.apptDate <= %s)
                  AND (d.resDate IS NULL OR d.resDate > %s)
                GROUP BY d.director, p.YOB, p.sex
            )
            SELECT
                YOB,
                COUNT(*) AS dirs,
                SUM(seats) AS seats,
                SUM(CASE WHEN sex = 'F' THEN 1 ELSE 0 END) AS female,
                SUM(CASE WHEN sex = 'F' THEN seats ELSE 0 END) AS femSeats
            FROM director_counts
            GROUP BY YOB
            ORDER BY {ob}
        """, (d, d))

    except Exception as ex:
        current_app.logger.error(f"Error querying dirs HK age distn: {ex}")

    return render_template('dbpub/dirs_hk_age_distn.html',
                         distribution=distribution, d=d, snap_year=snap_year,
                         sort=sort_param)


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
    from webbsite.asp_helpers import get_int
    from flask import Response
    import io

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
    import re
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
              AND (d.resdate IS NULL OR d.resdate > %s)
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
              AND (d.resdate IS NULL OR d.resdate > %s)
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
          AND d.resdate IS NULL
        ORDER BY name
        LIMIT 100
    """

    try:
        results = execute_query(sql)
    except Exception as ex:
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
              AND (d.resdate IS NULL OR d.resdate > %s)
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


# ============================================================================
# Stub routes (to be implemented)
# ============================================================================

@bp.route('/adviserships.asp')
def adviserships():
    """Organizations where this entity acts as an adviser (stub)"""
    person_id = get_int('p', 0)
    return f"<h2>Adviserships</h2><p>Route stub - person_id: {person_id}</p><p><a href='/dbpub/orgdata.asp?p={person_id}'>Back to Key Data</a></p>"


@bp.route('/SFColicrec.asp')
def sfcolicrec():
    """SFC license records for an organization (stub)"""
    person_id = get_int('p', 0)
    return f"<h2>SFC Licenses</h2><p>Route stub - person_id: {person_id}</p><p><a href='/dbpub/orgdata.asp?p={person_id}'>Back to Key Data</a></p>"


@bp.route('/ESSraw.asp')
def essraw():
    """Employment Support Subsidy raw data (stub)"""
    person_id = get_int('p', 0)
    return f"<h2>ESS Raw Data</h2><p>Route stub - person_id: {person_id}</p><p><a href='/dbpub/orgdata.asp?p={person_id}'>Back to Key Data</a></p>"


@bp.route('/complain.asp')
def complain():
    """Complaint form for regulatory organizations (stub)"""
    person_id = get_int('p', 0)
    return f"<h2>Complain</h2><p>Route stub - person_id: {person_id}</p><p><a href='/dbpub/orgdata.asp?p={person_id}'>Back to Key Data</a></p>"


@bp.route('/hpu.asp')
def hpu():
    """Daily price history (stub)"""
    issue_id = get_int('i', 0)
    sort_param = request.args.get('sort', 'datedn')
    return f"<h2>Daily Prices</h2><p>Route stub - issue_id: {issue_id}, sort: {sort_param}</p><p><a href='/dbpub/buybacks.asp?i={issue_id}'>Back to Buybacks</a></p>"


# Helpers to import
from webbsite.asp_helpers import get_int, get_str
