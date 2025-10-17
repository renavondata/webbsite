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


@bp.route('/positions.asp')
def positions():
    """
    Director positions across all companies

    Query params:
    - p: personID
    - sort: sorting column
    - hide: Y=current only, N=show history

    Tables used: directorships, positions, organisations
    """
    person_id = get_int('p', 0)
    sort_param = request.args.get('sort', 'appdn')
    hide = request.args.get('hide', 'Y')

    if not person_id:
        return "PersonID required", 400

    # TODO: Query all directorships for person across companies
    directorships = []

    return render_template('dbpub/positions.html',
                         person_id=person_id,
                         directorships=directorships,
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
    """Corporate events for a company"""
    person_id = get_int('p', 0)
    # TODO: Query events
    events = []
    return render_template('dbpub/events.html', person_id=person_id, events=events)


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


# Helpers to import
from webbsite.asp_helpers import get_int, get_str
