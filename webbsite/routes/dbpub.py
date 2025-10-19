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

    Tables used: stocklistings, issue, organisations, sectypes
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

    # Build ORDER BY clause based on sort parameter
    order_by_map = {
        'namedn': 'o.Name1 DESC',
        'codeup': 'sl.StockCode',
        'codedn': 'sl.StockCode DESC',
        'typeup': 'st.typeShort, o.Name1',
        'typedn': 'st.typeShort DESC, o.Name1',
        'datedn': 'sl.FirstTradeDate DESC, o.Name1',
        'dateup': 'sl.FirstTradeDate, o.Name1',
        'nameup': 'o.Name1, sl.StockCode'  # default
    }
    order_by = order_by_map.get(sort_param, order_by_map['nameup'])

    # Build exchange filter
    exchange_filters = {
        'm': 'sl.StockExID = 1',      # Main Board
        'g': 'sl.StockExID = 20',     # GEM
        's': 'sl.StockExID = 22',     # Secondary
        'r': 'sl.StockExID = 23',     # REIT
        'c': 'sl.StockExID = 38',     # CIS
        'a': 'sl.StockExID IN (1, 20, 22)'  # All HK
    }
    exchange_filter = exchange_filters.get(e, exchange_filters['a'])

    # Build security type filter
    type_filters = {
        'r': 'i.typeID = 2',          # Rights
        'w': 'i.typeID = 1',          # Warrants
        'h': 'i.typeID = 6',          # H-shares
        's': 'i.typeID NOT IN (1, 2, 40, 41, 46)'  # Regular shares/units
    }
    type_filter = type_filters.get(t, type_filters['s'])

    # Query for listed stocks
    # Note: Simplified without total returns calculations for now
    # totRet, CAGRet, CAGRel functions need to be ported from MySQL
    sql = f"""
        SELECT
            sl.StockCode,
            sl.issueID,
            st.typeShort,
            st.typeLong,
            o.Name1,
            o.PersonID,
            sl.FirstTradeDate
        FROM stockListings sl
        JOIN issue i ON sl.issueID = i.ID1
        JOIN organisations o ON i.issuer = o.personID
        JOIN secTypes st ON i.typeID = st.typeID
        WHERE (sl.FirstTradeDate IS NULL OR sl.FirstTradeDate <= %s)
          AND (sl.DelistDate IS NULL OR sl.DelistDate > %s)
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

    Tables used: stocklistings, issue, organisations, sectypes, dlreasons
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
        'namedn': 'o.Name1 DESC',
        'codeup': 'sl.StockCode',
        'codedn': 'sl.StockCode DESC',
        'typeup': 'st.typeShort, o.Name1',
        'typedn': 'st.typeShort DESC, o.Name1',
        'fdatedn': 'sl.FirstTradeDate DESC, o.Name1',
        'fdateup': 'sl.FirstTradeDate, o.Name1',
        'ldatedn': 'sl.FinalTradeDate DESC, o.Name1',
        'ldateup': 'sl.FinalTradeDate, o.Name1',
        'ddatedn': 'sl.DelistDate DESC, o.Name1',
        'ddateup': 'sl.DelistDate, o.Name1',
        'lifeup': 'TradeLife, o.Name1',
        'lifedn': 'TradeLife DESC, o.Name1',
        'rsnup': 'dl.Reason, o.Name1',
        'rsndn': 'dl.Reason DESC, o.Name1',
        'nameup': 'o.Name1, sl.StockCode'  # default
    }
    order_by = order_by_map.get(sort_param, order_by_map['nameup'])

    # Build exchange filter
    exchange_filters = {
        'm': 'sl.StockExID = 1',
        'g': 'sl.StockExID = 20',
        's': 'sl.StockExID = 22',
        'r': 'sl.StockExID = 23',
        'c': 'sl.StockExID = 38',
        'a': 'sl.StockExID IN (1, 20, 22)'
    }
    exchange_filter = exchange_filters.get(e, exchange_filters['a'])

    # Build security type filter
    type_filters = {
        'r': 'i.typeID = 2',
        'w': 'i.typeID = 1',
        'h': 'i.typeID = 6',
        's': 'i.typeID NOT IN (1, 2, 40, 41, 46)'
    }
    type_filter = type_filters.get(t, type_filters['s'])

    # Query for delisted stocks
    # TradeLife calculation: PostgreSQL date arithmetic instead of MySQL to_days()
    sql = f"""
        SELECT
            sl.StockCode,
            st.typeShort,
            st.typeLong,
            sl.issueID,
            o.Name1,
            o.PersonID,
            sl.FirstTradeDate,
            sl.FinalTradeDate,
            sl.DelistDate,
            dl.Reason,
            CASE
                WHEN sl.FirstTradeDate IS NULL OR sl.FinalTradeDate IS NULL THEN NULL
                ELSE ((sl.FinalTradeDate - sl.FirstTradeDate) + 1) / 365.2425
            END AS TradeLife
        FROM stockListings sl
        JOIN issue i ON sl.issueID = i.ID1
        JOIN organisations o ON i.issuer = o.personID
        JOIN secTypes st ON i.typeID = st.typeID
        LEFT JOIN dlreasons dl ON sl.reasonID = dl.reasonID
        WHERE sl.DelistDate <= CURRENT_DATE
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
            o.Name1 AS Org,
            o.personID AS OrgID,
            st.typeShort AS SecType,
            sl.FirstTradeDate,
            sl.FinalTradeDate,
            sl.DelistDate,
            dl.Reason
        FROM stockListings sl
        JOIN issue i ON sl.issueID = i.ID1
        JOIN organisations o ON i.issuer = o.personID
        JOIN secTypes st ON i.typeID = st.typeID
        LEFT JOIN dlreasons dl ON sl.reasonID = dl.reasonID
        WHERE sl.StockCode = %s
          AND sl.DelistDate < CURRENT_DATE
        ORDER BY sl.DelistDate
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


@bp.route('/orgdata.asp')
def orgdata():
    """
    Port of dbpub/orgdata.asp
    Company/organization data page - COMPLEX, HIGH PRIORITY

    Query params:
    - p: personID of organization

    This is one of the most important pages - shows comprehensive company data
    including directors, shareholdings, corporate events, financial reports, etc.

    Tables used: organisations, issue, stocklistings, directorships, and many more
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
        current_app.logger.error(f"Error in orgdata.asp (basic info): {type(ex).__name__}: {ex}", exc_info=True)
        return "Database error", 500

    # Get stock listings (if any)
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
        listings = []
        for row in listings_result:
            listings.append({
                'StockCode': row['stockcode'],
                'issueID': row['issueid'],
                'typeShort': row['typeshort'],
                'FirstTradeDate': row['firsttradedate'],
                'DelistDate': row['delistdate'],
                'listingName': row['listingname']
            })
        org_data['listings'] = listings
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error in orgdata.asp (listings): {type(ex).__name__}: {ex}", exc_info=True)
        org_data['listings'] = []

    # Get current directors (simplified - current only, not full history)
    # Using right-open interval: period includes "from" date, excludes "until" date
    directors_sql = """
        SELECT
            p.personID,
            p.Name1,
            p.Name2,
            pos.position,
            d.from_date,
            d.until
        FROM directorships d
        JOIN persons p ON d.personID = p.personID
        JOIN positions pos ON d.positionID = pos.positionID
        WHERE d.orgID = %s
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
        current_app.logger.error(f"Error in orgdata.asp (directors): {type(ex).__name__}: {ex}", exc_info=True)
        org_data['directors'] = []

    # Get recent events (limit 20)
    events_sql = """
        SELECT
            e.eventID,
            e.eventDate,
            e.exDate,
            ct.capChange,
            e.details
        FROM events e
        JOIN capChangeTypes ct ON e.changeType = ct.typeID
        WHERE e.personID = %s
        ORDER BY e.eventDate DESC
        LIMIT 20
    """

    try:
        events_result = execute_query(events_sql, (person_id,))
        events = []
        for row in events_result:
            events.append({
                'eventID': row['eventid'],
                'eventDate': row['eventdate'],
                'exDate': row['exdate'],
                'capChange': row['capchange'],
                'details': row['details']
            })
        org_data['events'] = events
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error in orgdata.asp (events): {type(ex).__name__}: {ex}", exc_info=True)
        org_data['events'] = []

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

    Tables used: adviserships, organisations, roles
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
        org_result = execute_query("SELECT Name1 FROM organisations WHERE personID = %s", (person_id,))
        org_name = org_result[0]['name1'] if org_result else "Unknown"
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error getting org name for advisers.asp: {ex}")
        org_name = "Unknown"

    # Build date filter for adviserships (using addDate/remDate with accuracy)
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
                            WHEN p.Name2 IS NOT NULL THEN p.Name1 || ', ' || p.Name2
                            ELSE p.Name1
                        END
                    ELSE o.Name1
                END
            ) AS AdvName,
            r.roleID,
            r.role,
            a.addDate,
            a.remDate
        FROM adviserships a
        JOIN roles r ON a.roleID = r.roleID
        LEFT JOIN persons p ON a.personID = p.personID AND p.isPerson = TRUE
        LEFT JOIN organisations o ON a.personID = o.personID AND o.isPerson = FALSE
        WHERE a.orgID = %s
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
                            WHEN p.Name2 IS NOT NULL THEN p.Name1 || ', ' || p.Name2
                            ELSE p.Name1
                        END
                    ELSE o.Name1
                END
            ) AS AdvName,
            r.roleID,
            r.role,
            a.addDate
        FROM adviserships a
        JOIN roles r ON a.roleID = r.roleID
        LEFT JOIN persons p ON a.personID = p.personID AND p.isPerson = TRUE
        LEFT JOIN organisations o ON a.personID = o.personID AND o.isPerson = FALSE
        WHERE a.orgID = %s
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

    Tables used: directorships, people, positions, rank
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
        org_result = execute_query("SELECT Name1 FROM organisations WHERE personID = %s", (person_id,))
        org_name = org_result[0]['name1'] if org_result else "Unknown"
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error getting org name for officers.asp: {ex}")
        org_name = "Unknown"

    # Build date filter for directorships (right-open interval logic)
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

    # Query directorships grouped by rank
    # Note: Simplified - using COALESCE to handle both people and organisations as directors
    sql = f"""
        SELECT
            r.rankID,
            r.RankText,
            d.personID AS director,
            COALESCE(
                CASE
                    WHEN p.personID IS NOT NULL THEN
                        CASE
                            WHEN p.Name2 IS NOT NULL THEN p.Name1 || ', ' || p.Name2
                            ELSE p.Name1
                        END
                    ELSE o.Name1
                END
            ) AS PersonName,
            pos.posShort,
            pos.posLong,
            p.sex,
            p.YOB,
            d.from_date,
            d.until
        FROM directorships d
        JOIN positions pos ON d.positionID = pos.positionID
        JOIN rank r ON pos.rank = r.rankID
        LEFT JOIN persons p ON d.personID = p.personID AND p.isPerson = TRUE
        LEFT JOIN organisations o ON d.personID = o.personID AND o.isPerson = FALSE
        WHERE d.orgID = %s
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

    Tables used: events, issue, organisations, capchangetypes, sectypes, stocklistings
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
        SELECT e.eventID, e.change, e.exDate, o.Name1, st.typeShort,
               e.issueID, e.new, e.old, e.adjust, sl.stockCode
        FROM events e
        JOIN issue i ON e.issueID = i.ID1
        JOIN organisations o ON i.issuer = o.PersonID
        JOIN capchangetypes ct ON e.eventType = ct.CapChangeType
        JOIN secTypes st ON i.typeID = st.typeID
        JOIN stockListings sl ON i.ID1 = sl.issueID
        WHERE e.cancelDate IS NULL
          AND sl.stockExID {e_str}
          AND (sl.FirstTradeDate IS NULL OR sl.FirstTradeDate <= e.exDate)
          AND (sl.DelistDate IS NULL OR sl.DelistDate > e.exDate)
          AND e.eventType {sql}
        ORDER BY {ob}
    """

    try:
        results = execute_query(query)
        events = []
        for row in results:
            events.append({
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
        events = []

    return render_template('dbpub/splits.html',
                         title=title,
                         events=events,
                         sort=sort_param,
                         e=e,
                         t=t)


@bp.route('/positions.asp')
def positions():
    """
    Director positions across all companies - port of positions.asp

    Query params:
    - p: personID of the person/director
    - sort: sorting column (orgup/orgdn, posup/posdn, appup/appdn, resup/resdn)
    - hide: Y=current only, N=show history

    Tables used: directorships, positions, organisations, rank

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
        current_app.logger.error(f"Error fetching person name for positions: {type(ex).__name__}: {ex}", exc_info=True)
        person_name = f"Person {person_id}"
        is_person = True

    # Query directorships grouped by rank
    # Note: Simplified - no total returns, no complex date range filtering
    try:
        # Get all ranks with positions
        ranks = execute_query("""
            SELECT DISTINCT r.rankid, r.ranktext
            FROM enigma.directorships d
            JOIN enigma.positions pos ON d.positionid = pos.positionid
            JOIN enigma.rank r ON pos.rank = r.rankid
            WHERE d.personid = %s
              AND {date_filter}
            ORDER BY r.rankid
        """.format(date_filter=date_filter), (person_id,))

        # For each rank, get the directorships
        positions_by_rank = []
        for rank_row in ranks:
            rank_id = rank_row['rankid']
            rank_text = rank_row['ranktext']

            directorships = execute_query(f"""
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

            if directorships:
                positions_by_rank.append({
                    'rank_id': rank_id,
                    'rank_text': rank_text,
                    'directorships': directorships
                })
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in positions query: {ex}")
        positions_by_rank = []

    return render_template('dbpub/positions.html',
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

    Tables used: sholdings, ownerprof, people, organisations

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

    Tables used: sholdings, organisations, issue
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
    - i: issueID
    - sc: stock code (alternative)
    - from: start date
    - to: end date

    Tables used: ccass.quotes, issue, events (for splits)
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
    - i: issueID
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
    - i: issueID
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
    """SFC licensed persons and firms"""
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
    """Short selling positions"""
    issue_id = get_int('i', 0)
    # TODO: Query short positions
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
    """Short positions on a specific date"""
    d = request.args.get('d', str(date.today()))
    # TODO: Query short positions
    shorts = []
    return render_template('dbpub/shortdate.html', d=d, shorts=shorts)


@bp.route('/shortnotes.asp')
def short_notes():
    """Short selling notes"""
    return render_template('dbpub/short_notes.html')


# Events and distributions
@bp.route('/events.asp')
def events():
    """
    Corporate events for a stock - port of events.asp
    Shows dividends, splits, rights issues, etc.

    Query params:
    - i: issueID
    - sc: stock code (alternative)
    - sort: sorting column (annddn/anndup, evntup/evntdn, exdtdn/exdtup)

    Tables used: events, capchangetypes, currencies, issue, organisations
    """
    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')
    sort_param = request.args.get('sort', 'annddn')

    # Look up issueID from stock code if provided
    if stock_code and not issue_id:
        try:
            result = execute_query("""
                SELECT issueID
                FROM stocklistings
                WHERE stockCode = %s AND DelistDate IS NULL
                ORDER BY FirstTradeDate DESC
                LIMIT 1
            """, (stock_code,))
            if result and len(result) > 0:
                issue_id = result[0][0]
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error looking up stock code for events: {ex}")

    # Get stock/company name
    stock_name = ""
    person_id = 0
    if issue_id:
        try:
            result = execute_query("""
                SELECT o.name1, o.personID
                FROM issue i
                JOIN organisations o ON i.issuer = o.personID
                WHERE i.ID1 = %s
            """, (issue_id,))
            if result and len(result) > 0:
                stock_name = result[0][0]
                person_id = result[0][1]
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error getting stock name for events: {ex}")
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

    # Query events
    events_list = []
    if issue_id:
        try:
            events_list = execute_query(f"""
                SELECT
                    e.eventID,
                    e.Announced,
                    e.yearEnd,
                    ct.Change,
                    e.price,
                    e.priceHKD,
                    e.new,
                    e.old,
                    e.exDate,
                    e.distDate,
                    e.notes,
                    e.cancelDate,
                    c.Currency,
                    e.FXdate
                FROM events e
                JOIN capchangetypes ct ON e.eventType = ct.CapChangeType
                LEFT JOIN currencies c ON e.currID = c.ID
                WHERE e.issueID = %s
                ORDER BY {{ob}}
            """.format(ob=ob), (issue_id,))
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error querying events: {ex}")
            events_list = []

    return render_template('dbpub/events.html',
                         issue_id=issue_id,
                         person_id=person_id,
                         stock_name=stock_name,
                         events=events_list,
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
    """All domiciles with company counts"""
    # TODO: Query domiciles
    domiciles = []
    return render_template('dbpub/domicilecos.html', domiciles=domiciles)


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

    # Query listings by market and year
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
                         months=results,
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
    Webb-site League Table of HK-listed directorships
    Shows people with most HK-listed directorships
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
        WHERE e.eventtypeid IN (8, 9)  -- 8=rights issue, 9=open offer
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
                         events=results,
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
    Distribution of directorships per person
    Shows how many people have 1, 2, 3... directorships
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

    # Query distribution of directorships per person
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
            dirs as directorships,
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

    Tables used: listedcoshk, listedcoshkever, organisations, personstories
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
            JOIN enigma.organisations o ON lc.issuer = o.personID
            JOIN enigma.personstories ps ON lc.issuer = ps.personID
            WHERE {where_clause}
            ORDER BY name
        """
        listed_companies = execute_query(listed_query)

        # HK-delisted companies (no personstories join - shows all, not just with articles)
        delisted_query = f"""
            SELECT DISTINCT lce.issuer, o.name1 AS name
            FROM enigma.listedcoshkever lce
            JOIN enigma.organisations o ON lce.issuer = o.personID
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


# Helpers to import
from webbsite.asp_helpers import get_int, get_str
