"""
Database routes - Direct port from dbpub/default.asp
Main database homepage and related pages
"""
from flask import Blueprint, render_template, request
from datetime import date

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

    # TODO: Query database when available
    # Query would be:
    # SELECT StockCode, issueID, typeShort, typeLong, Name1, PersonID,
    #        FirstTradeDate, totRet, CAGret, CAGrel
    # FROM stocklistings JOIN (issue, organisations, sectypes)
    # WHERE (FirstTradeDate <= d OR NULL) AND (DelistDate > d OR NULL)
    #   AND StockExID filtering by e param
    #   AND typeID filtering by t param
    # ORDER BY sort_param

    # Mock data structure
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

    # TODO: Query database when available
    # Query would be:
    # SELECT StockCode, typeShort, typeLong, issueID, Name1, PersonID,
    #        FirstTradeDate, FinalTradeDate, DelistDate, Reason,
    #        TradeLife (calculated as days between FirstTradeDate and FinalTradeDate / 365.2425)
    # FROM stocklistings JOIN (issue, organisations, sectypes)
    #      LEFT JOIN dlreasons
    # WHERE DelistDate <= NOW()
    #   AND StockExID filtering by e param
    #   AND typeID filtering by t param
    # ORDER BY sort_param

    # Mock data structure
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

    # TODO: Query database when available
    # Query would be:
    # SELECT * FROM WebListings
    # WHERE stockCode = code_padded AND DelistDate < NOW()
    # ORDER BY DelistDate
    #
    # WebListings is likely a VIEW joining stocklistings, issue, organisations

    # Mock data structure
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

    # TODO: Complex query - requires organization details, stock codes,
    # directors, advisers, shareholdings, corporate events, etc.
    # This is a MAJOR page that needs significant work

    # Mock data
    org_data = {
        'personID': person_id,
        'name': 'Loading...',
        'message': 'Database not yet loaded. This page requires complex queries across multiple tables.'
    }

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

    # Determine sort order
    sort_orders = {
        'advup': 'Adv, AddDate, Role',
        'advdn': 'Adv DESC, AddDate, Role',
        'rolup': 'Role, Adv, AddDate',
        'roldn': 'Role DESC, Adv, AddDate',
        'addup': 'AddDate, Adv, Role',
        'adddn': 'AddDate DESC, Adv, Role',
        'remup': 'RemDate, Adv, AddDate, Role',
        'remdn': 'RemDate DESC, Adv, AddDate, Role'
    }
    ob = sort_orders.get(sort_param, 'Adv, AddDate, Role')
    if sort_param not in sort_orders:
        sort_param = 'advup'

    # TODO: Query database when available
    # Query would be:
    # SELECT adviser, adviserName, role, addDate, remDate
    # FROM adviserships
    # WHERE company = person_id
    # AND (addDate IS NULL OR addDate <= d)
    # AND (hide='N' OR remDate IS NULL OR remDate > d)
    # AND (NOT u OR remDate IS NULL OR remDate != '1000-01-01')
    # ORDER BY ob

    # Mock data
    org_name = f"Organization {person_id}"
    adviserships = []

    return render_template('dbpub/advisers.html',
                         person_id=person_id,
                         org_name=org_name,
                         adviserships=adviserships,
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

    # Determine sort order
    sort_orders = {
        'namup': 'Dir, ApptDate',
        'namdn': 'Dir DESC, ApptDate',
        'appup': 'ApptDate, Dir',
        'appdn': 'ApptDate DESC, Dir',
        'resup': 'ResDate, Dir',
        'resdn': 'ResDate DESC, Dir',
        'posup': 'posShort, Dir, ApptDate',
        'posdn': 'posShort DESC, Dir, ApptDate'
    }
    ob = sort_orders.get(sort_param, 'Dir, ApptDate')
    if sort_param not in sort_orders:
        sort_param = 'namup'

    # TODO: Query database when available
    # Query would be grouped by rank:
    # SELECT d.director, personName, positionID, posShort, posLong,
    #        apptDate, resDate, rank
    # FROM directorships d
    # JOIN people p ON d.director = p.personID
    # JOIN positions pos ON d.positionID = pos.positionID
    # WHERE d.company = person_id
    # AND (apptDate IS NULL OR apptDate <= d)
    # AND (hide='N' OR resDate IS NULL OR resDate > d)
    # AND (NOT u OR resDate IS NULL OR resDate != '1000-01-01')
    # ORDER BY rank, ob

    # Mock data
    org_name = f"Organization {person_id}"
    directorships_by_rank = {}

    return render_template('dbpub/officers.html',
                         person_id=person_id,
                         org_name=org_name,
                         directorships_by_rank=directorships_by_rank,
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

    # TODO: Query database when available
    # Query would be:
    # SELECT eventID, `change`, exDate, Name1, typeShort, events.issueID, new, old, adjust, stockCode
    # FROM events
    # JOIN issue ON events.issueID = issue.ID1
    # JOIN organisations ON issue.issuer = organisations.PersonID
    # JOIN capchangetypes ON events.eventType = capchangetypes.CapChangeType
    # JOIN sectypes ON issue.typeID = sectypes.typeID
    # JOIN stocklistings ON issue.ID1 = stocklistings.issueID
    # WHERE cancelDate IS NULL
    #   AND stockExID {e_str}
    #   AND (firstTradeDate IS NULL OR firstTradeDate <= exDate)
    #   AND (delistDate IS NULL OR delistDate > exDate)
    #   AND eventType {sql}
    # ORDER BY {ob}

    # Mock data
    events = []

    return render_template('dbpub/splits.html',
                         title=title,
                         events=events,
                         sort=sort_param,
                         e=e,
                         t=t)
