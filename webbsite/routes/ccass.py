"""
CCASS routes - Webb-site CCASS Analysis System
Direct port from ccass/*.asp files
"""
from flask import Blueprint, render_template, request
from datetime import datetime
from webbsite.db import execute_query
from webbsite.asp_helpers import get_int, get_str, get_bool, ms_date

bp = Blueprint('ccass', __name__)


@bp.route('/bigchanges.asp')
def bigchanges():
    """Top CCASS changes - port of bigchanges.asp"""
    sort_param = request.args.get('sort', 'chgdn')
    etf = get_bool('etf')  # Whether to include unit ETFs, default no
    d = request.args.get('d', '')  # Date parameter

    # SQL WHERE clause for ETF filtering
    sqletf = "" if etf else " AND o.orgType<>4"

    # Get latest CCASS date if none specified
    # TODO: Get from log table when database is loaded
    # d = execute_query("SELECT getLog('CCASSdateDone')")[0][0] if not d else d
    if not d:
        d = '2025-10-17'  # Placeholder until database loaded

    # Get max settlement date <= requested date
    try:
        result = execute_query("""
            SELECT MAX(settleDate)
            FROM ccass.calendar
            WHERE settleDate <= %s
        """, (d,))
        if result and result[0][0]:
            d = ms_date(result[0][0])
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error getting settlement date for bigchanges: {ex}")
        # Use provided date if query fails

    # Determine sort order
    sort_orders = {
        'nameup': 'name1, stkchg DESC',
        'namedn': 'name1 DESC, stkchg',
        'partup': 'partName, stkchg DESC',
        'partdn': 'partName DESC, stkchg',
        'chgdn': 'stkchg DESC, name1, partName',
        'chgup': 'stkchg, name1, partName',
        'scup': 'stockCode, stkchg DESC',
        'scdn': 'stockCode DESC, stkchg'
    }
    ob = sort_orders.get(sort_param, 'stkchg DESC')
    if sort_param not in sort_orders:
        sort_param = 'chgdn'

    # Query bigchanges
    try:
        changes = execute_query(f"""
            SELECT b.issueID, b.partID, stkchg, prevDate,
                   o.name1, p.partName,
                   (SELECT stockCode
                    FROM enigma.stocklistings
                    WHERE issueID=b.issueID AND toDate IS NULL
                    ORDER BY fromDate DESC LIMIT 1) AS stockCode,
                   s.typeShort
            FROM ccass.bigchanges b
            JOIN enigma.issue i ON b.issueID=i.ID1
            JOIN enigma.organisations o ON i.issuer=o.personID
            JOIN ccass.participants p ON b.partID=p.partID
            JOIN enigma.secTypes s ON i.typeID=s.typeID
            WHERE b.atDate=%s{sqletf}
            ORDER BY {ob}
        """, (d,))
    except Exception as e:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error in bigchanges query: {e}")
        changes = []

    return render_template('ccass/bigchanges.html',
                         changes=changes,
                         d=d,
                         etf=etf,
                         sort=sort_param)


@bp.route('/cconc.asp')
def cconc():
    """
    CCASS concentration analysis - port of cconc.asp
    Shows concentration of holdings in top 5, top 10 participants

    Query params:
    - d: date (default: latest CCASS date)
    - etf: include ETFs (default: false)
    - sort: sorting column

    Tables used: ccass.dailylog, issue, organisations, issuedshares, sectypes
    """
    sort_param = request.args.get('sort', 'cp5dn')
    etf = get_bool('etf')  # Whether to include unit ETFs, default no
    d = request.args.get('d', '')

    # SQL WHERE clause for ETF filtering
    sqletf = "" if etf else " AND o.orgType<>4"

    # Get latest CCASS date if none specified
    # TODO: Get from log table when database is loaded
    if not d:
        d = '2025-10-17'  # Placeholder until database loaded

    # Determine sort order
    sort_orders = {
        'nameup': 'Name1',
        'namedn': 'Name1 DESC',
        'cp5up': 'cp5',
        'cp5dn': 'cp5 DESC',
        'cp10up': 'cp10',
        'cp10dn': 'cp10 DESC',
        'cp10ipdn': 'cp10ip DESC',
        'cp10ipup': 'cp10ip',
        'stakdn': 'stake DESC',
        'stakup': 'stake',
        'scup': 'stockCode',
        'scdn': 'stockCode DESC'
    }
    ob = sort_orders.get(sort_param, 'cp5 DESC')
    if sort_param not in sort_orders:
        sort_param = 'cp5dn'

    # Query concentration data from dailylog
    # Note: Need to join with issuedshares to get outstanding shares as of snapshot date
    try:
        concentrations = execute_query(f"""
            SELECT
                d.issueID,
                o.name1,
                st.typeShort,
                CAST(d.c5 AS NUMERIC) / NULLIF(d.CIPhldg + d.intermedhldg, 0) AS cp5,
                CAST(d.c10 AS NUMERIC) / NULLIF(d.CIPhldg + d.intermedhldg, 0) AS cp10,
                (SELECT stockCode
                 FROM enigma.stocklistings
                 WHERE issueID = d.issueID AND DelistDate IS NULL
                 ORDER BY FirstTradeDate DESC LIMIT 1) AS stockCode,
                CAST(d.c10 + d.NCIPhldg AS NUMERIC) / NULLIF(d.CIPhldg + d.IntermedHldg + d.NCIPHldg, 0) AS cp10ip,
                CAST(d.CIPhldg + d.IntermedHldg + d.NCIPHldg AS NUMERIC) / NULLIF(iss.outstanding, 0) AS stake
            FROM ccass.dailylog d
            JOIN enigma.issue i ON d.issueID = i.ID1
            JOIN enigma.organisations o ON i.issuer = o.personID
            JOIN enigma.secTypes st ON i.typeID = st.typeID
            JOIN (
                SELECT issueID, MAX(atDate) AS maxDate
                FROM enigma.issuedshares
                WHERE atDate <= %s
                GROUP BY issueID
            ) t3 ON d.issueID = t3.issueID
            JOIN enigma.issuedshares iss ON t3.issueID = iss.issueID AND t3.maxDate = iss.atDate
            WHERE d.atDate = %s{sqletf}
              AND d.c5 > 0
              AND d.CIPhldg + d.intermedhldg > 0
            ORDER BY {ob}
        """, (d, d))
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in cconc query: {ex}")
        concentrations = []

    title = f"CCASS concentration on {d}"

    return render_template('ccass/cconc.html',
                         concentrations=concentrations,
                         title=title,
                         d=d,
                         etf=etf,
                         sort=sort_param)


@bp.route('/ipstakes.asp')
def ipstakes():
    """CCASS Investor Participant stakes - port of ipstakes.asp"""
    # TODO: Implement IP stakes
    return render_template('ccass/ipstakes.html')


@bp.route('/cparticipants.asp')
def cparticipants():
    """
    CCASS participants list - port of cparticipants.asp
    Simple table of all CCASS participants who have had holdings

    Query params:
    - sort: sorting column (nameup/namedn, ccidup/cciddn)

    Tables used: ccass.participants
    """
    sort_param = request.args.get('sort', 'nameup')

    # Determine sort order
    sort_orders = {
        'nameup': 'partName',
        'namedn': 'partName DESC',
        'ccidup': 'CCASSID, partName',
        'cciddn': 'CCASSID DESC, partName DESC'
    }
    ob = sort_orders.get(sort_param, 'partName')
    if sort_param not in sort_orders:
        sort_param = 'nameup'

    # TODO: Query database when available
    # Query would be:
    # SELECT CCASSID, partName, partID
    # FROM ccass.participants
    # WHERE hadHoldings = True
    # ORDER BY ob

    # Mock data structure
    participants = []

    return render_template('ccass/cparticipants.html',
                         participants=participants,
                         sort=sort_param)


@bp.route('/cholder.asp')
def cholder():
    """
    Holdings by participant - port of cholder.asp
    Shows all stocks held by a specific CCASS participant

    Query params:
    - part: partID (e.g., 1323=Shanghai-HK connect, 1456=Shenzhen-HK connect)
    - d: date
    - z: show zero holdings (default: false)
    - sort: sorting column

    Tables used: ccass.holdings/parthold, participants, issue, organisations
    """
    part = get_int('part', 0)
    d = request.args.get('d', '')
    z = get_bool('z')  # Show zero/former holdings
    sort_param = request.args.get('sort', 'holddn')

    if not d:
        d = '2025-10-17'  # Placeholder

    # Determine sort order
    sort_orders = {
        'nameup': 'name1',
        'namedn': 'name1 DESC',
        'scup': 'stockCode',
        'scdn': 'stockCode DESC',
        'holdup': 'holding',
        'holddn': 'holding DESC'
    }
    ob = sort_orders.get(sort_param, 'holding DESC')
    if sort_param not in sort_orders:
        sort_param = 'holddn'

    # TODO: Query database when available
    # Query would be:
    # SELECT issueID, holding, stockCode, name1, personID
    # FROM ccass.parthold p
    # JOIN issue i ON p.issueID = i.ID1
    # JOIN organisations o ON i.issuer = o.personID
    # WHERE partID = part AND atDate = d
    # AND (z OR holding > 0)
    # ORDER BY ob

    # Get participant name
    # SELECT partName FROM ccass.participants WHERE partID = part

    # Mock data
    participant_name = "Loading..." if part else "No participant selected"
    holdings = []

    return render_template('ccass/cholder.html',
                         part=part,
                         participant_name=participant_name,
                         holdings=holdings,
                         d=d,
                         z=z,
                         sort=sort_param)


@bp.route('/choldings.asp')
def choldings():
    """
    Holdings for a specific issue - port of choldings.asp
    Shows all CCASS participants holding a specific stock

    Query params:
    - i: issueID
    - sc: stock code (alternative to issueID)
    - d: date
    - z: show zero holdings (default: false)
    - sort: sorting column

    Tables used: ccass.holdings, participants, issue, dailylog, issuedshares
    """
    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')
    d = request.args.get('d', '')
    z = get_bool('z')  # Show zero/former holdings
    sort_param = request.args.get('sort', 'holddn')

    if not d:
        d = '2025-10-17'  # Placeholder

    # Determine sort order
    sort_orders = {
        'nameup': 'partName',
        'namedn': 'partName DESC',
        'ccidup': 'CCASSID, partName',
        'cciddn': 'CCASSID DESC, partName',
        'holdup': 'holding, partName',
        'holddn': 'holding DESC, partName'
    }
    ob = sort_orders.get(sort_param, 'holding DESC, partName')
    if sort_param not in sort_orders:
        sort_param = 'holddn'

    # TODO: Query database when available
    # Query would be:
    # SELECT h.partID, h.holding, p.partName, p.CCASSID, h.atDate
    # FROM ccass.holdings h
    # JOIN ccass.participants p ON h.partID = p.partID
    # WHERE h.issueID = issue_id AND h.atDate = d
    # AND (z OR h.holding > 0)
    # ORDER BY ob
    #
    # Also query dailylog for summary stats and issuedshares for outstanding shares

    # Mock data
    stock_name = "Loading..." if issue_id else "No stock selected"
    holdings = []
    summary = {}

    return render_template('ccass/choldings.html',
                         issue_id=issue_id,
                         stock_name=stock_name,
                         holdings=holdings,
                         summary=summary,
                         d=d,
                         z=z,
                         sort=sort_param)


@bp.route('/bigchangesissue.asp')
def bigchangesissue():
    """
    Big changes in CCASS holders for a specific stock

    Query params:
    - i: issueID
    - sc: stock code (alternative to issueID)
    - sort: sorting column

    Tables used: ccass.bigchanges, ccass.participants
    """
    issue_id = request.args.get('i', type=int, default=0)
    stock_code = request.args.get('sc', '')
    sort_param = request.args.get('sort', 'datedn')

    # Sort order mapping
    sort_orders = {
        'datedn': 'atDate DESC, stkchg DESC',
        'dateup': 'atDate, stkchg',
        'partup': 'partName, atDate DESC',
        'partdn': 'partName DESC, atDate',
        'chgdn': 'abs(stkchg) DESC, partName',
        'chgup': 'abs(stkchg), partName'
    }
    ob = sort_orders.get(sort_param, 'atDate DESC, stkchg DESC')
    if sort_param not in sort_orders:
        sort_param = 'datedn'

    # TODO: If stock_code provided, look up issueID from stocklistings
    # TODO: Look up stock name from organisations table

    stock_name = f"Stock {issue_id}" if issue_id > 0 else "No stock specified"
    person_id = 0  # TODO: Get from issue table

    # TODO: Query database when available
    # Query would be:
    # SELECT b.partID, stkchg, b.atDate, prevDate, partName
    # FROM ccass.bigchanges b
    # JOIN ccass.participants p ON b.partID = p.partID
    # WHERE issueID = issue_id
    # ORDER BY {ob}

    # Mock data
    changes = []

    return render_template('ccass/bigchangesissue.html',
                         issue_id=issue_id,
                         stock_name=stock_name,
                         person_id=person_id,
                         changes=changes,
                         sort=sort_param)


@bp.route('/bigchangespart.asp')
def bigchangespart():
    """
    Big changes for a specific CCASS participant

    Query params:
    - part: partID of participant
    - sort: sorting column

    Tables used: ccass.bigchanges, ccass.participants, issue, organisations
    """
    part_id = request.args.get('part', type=int, default=0)
    sort_param = request.args.get('sort', 'datedn')

    # Sort order mapping
    sort_orders = {
        'datedn': 'atDate DESC, stkchg DESC',
        'dateup': 'atDate, stkchg',
        'stckup': 'name1, atDate DESC',
        'stckdn': 'name1 DESC, atDate',
        'chgdn': 'abs(stkchg) DESC, name1',
        'chgup': 'abs(stkchg), name1'
    }
    ob = sort_orders.get(sort_param, 'atDate DESC, stkchg DESC')
    if sort_param not in sort_orders:
        sort_param = 'datedn'

    # TODO: Look up participant name and CCASSID
    part_name = f"Participant {part_id}" if part_id > 0 else "No participant specified"

    # TODO: Query database when available
    # Query would be:
    # SELECT b.issueID, stkchg, b.atDate, prevDate, o.name1, i.typeShort,
    #        (SELECT stockCode FROM enigma.stocklistings
    #         WHERE issueID=b.issueID AND toDate IS NULL
    #         ORDER BY fromDate DESC LIMIT 1) AS stockCode
    # FROM ccass.bigchanges b
    # JOIN enigma.issue i ON b.issueID = i.ID1
    # JOIN enigma.organisations o ON i.issuer = o.personID
    # JOIN enigma.sectypes s ON i.typeID = s.typeID
    # WHERE b.partID = part_id
    # ORDER BY {ob}

    # Mock data
    changes = []

    return render_template('ccass/bigchangespart.html',
                         part_id=part_id,
                         part_name=part_name,
                         changes=changes,
                         sort=sort_param)


@bp.route('/chistory.asp')
def chistory():
    """
    CCASS holdings history with Highstock chart - port of chistory.asp

    Query params:
    - i: issueID
    - sc: stock code (alternative)
    - part: partID of participant
    - s: show mode (0=chart & table, 1=chart only, 2=table only)
    - a: adjust for splits (0/1)
    - p: use price on (0=trade date, 1=holding date)
    - o: include rows with no change (0/1)

    Tables used: ccass.holdings, ccass.quotes, ccass.participants, ccass.calendar

    This is a COMPLEX page with:
    - Highstock.js charting
    - Complex SQL for split adjustments
    - Dual-axis chart (holdings and price)
    - Multiple display options
    """
    issue_id = request.args.get('i', type=int, default=0)
    stock_code = request.args.get('sc', '')
    part_id = request.args.get('part', type=int, default=0)
    s = request.args.get('s', type=int, default=0)  # Show mode
    a = request.args.get('a', type=int, default=1)  # Adjust splits
    p = request.args.get('p', type=int, default=0)  # Price date
    o = request.args.get('o', type=int, default=0)  # Include no-change rows

    # TODO: Look up stock name, participant name
    stock_name = f"Stock {issue_id}" if issue_id > 0 else "No stock specified"
    part_name = f"Participant {part_id}" if part_id > 0 else "No participant specified"

    # TODO: Complex query with split adjustments
    # See original ASP for 4 different SQL queries depending on (a, p) combinations:
    # 1. Adjusted holdings, price on holding date
    # 2. Adjusted holdings, price on trading date
    # 3. Unadjusted holdings, price on holding date
    # 4. Unadjusted holdings, price on trading date
    #
    # Query joins: ccass.holdings, ccass.quotes, ccass.calendar
    # Uses splitAdj() function and outstanding() function
    # Fills in missing dates with previous values

    # Mock data for chart
    price_data = []  # [[timestamp, price], ...]
    holdings_data = []  # [[timestamp, shares], ...]
    table_data = []  # For table display

    return render_template('ccass/chistory.html',
                         issue_id=issue_id,
                         stock_name=stock_name,
                         part_id=part_id,
                         part_name=part_name,
                         price_data=price_data,
                         holdings_data=holdings_data,
                         table_data=table_data,
                         s=s,
                         a=a,
                         p=p,
                         o=o)


@bp.route('/CCASSnotes.asp')
def ccass_notes():
    """CCASS system notes and explanations"""
    return render_template('ccass/ccass_notes.html')


@bp.route('/cconchist.asp')
def cconchist():
    """
    CCASS concentration history with chart

    Query params:
    - i: issueID
    - sc: stock code

    Tables used: ccass.dailylog
    """
    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')

    # TODO: Query concentration history (top 5, top 10 over time)
    # TODO: Generate Highstock chart
    history = []

    return render_template('ccass/cconchist.html',
                         issue_id=issue_id,
                         stock_code=stock_code,
                         history=history)


@bp.route('/ctothist.asp')
def ctothist():
    """
    CCASS total holdings history

    Query params:
    - i: issueID
    - sc: stock code

    Tables used: ccass.dailylog, issue
    """
    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')

    # TODO: Query total CIP/NCIP holdings over time
    history = []

    return render_template('ccass/ctothist.html',
                         issue_id=issue_id,
                         stock_code=stock_code,
                         history=history)


@bp.route('/custhist.asp')
def custhist():
    """
    Custodian holdings history

    Query params:
    - i: issueID
    - sc: stock code

    Tables used: ccass.dailylog
    """
    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')

    # TODO: Query custodian holdings over time
    history = []

    return render_template('ccass/custhist.html',
                         issue_id=issue_id,
                         stock_code=stock_code,
                         history=history)


@bp.route('/ncipchg.asp')
def ncipchg():
    """
    Non-CIP holding changes

    Query params:
    - d: date
    - sort: sorting column

    Tables used: ccass.holdings (NCIP category)
    """
    d = request.args.get('d', '')
    sort_param = request.args.get('sort', 'chgdn')

    if not d:
        d = '2025-10-17'  # Placeholder

    # TODO: Query NCIP changes
    changes = []

    return render_template('ccass/ncipchg.html',
                         d=d,
                         sort=sort_param,
                         changes=changes)


@bp.route('/nciphist.asp')
def nciphist():
    """
    Non-CIP holdings history for a stock

    Query params:
    - i: issueID
    - sc: stock code

    Tables used: ccass.dailylog
    """
    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')

    # TODO: Query NCIP holdings over time
    history = []

    return render_template('ccass/nciphist.html',
                         issue_id=issue_id,
                         stock_code=stock_code,
                         history=history)


@bp.route('/portchg.asp')
def portchg():
    """
    Portfolio changes for a participant

    Query params:
    - part: partID
    - d: date

    Tables used: ccass.holdings
    """
    part_id = get_int('part', 0)
    d = request.args.get('d', '')

    if not d:
        d = '2025-10-17'  # Placeholder

    # TODO: Query portfolio changes
    changes = []

    return render_template('ccass/portchg.html',
                         part_id=part_id,
                         d=d,
                         changes=changes)


@bp.route('/reghist.asp')
def reghist():
    """
    Regional trading history (Connect schemes)

    Query params:
    - i: issueID
    - sc: stock code

    Tables used: ccass.holdings (Connect participants)
    """
    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')

    # TODO: Query holdings by Shanghai/Shenzhen Connect
    # partID 1323 = Shanghai-HK Connect
    # partID 1456 = Shenzhen-HK Connect
    history = []

    return render_template('ccass/reghist.html',
                         issue_id=issue_id,
                         stock_code=stock_code,
                         history=history)


@bp.route('/brokhist.asp')
def brokhist():
    """
    Broker holdings history

    Query params:
    - i: issueID
    - sc: stock code
    - part: partID (specific broker)

    Tables used: ccass.holdings (broker category)
    """
    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')
    part_id = get_int('part', 0)

    # TODO: Query broker holdings over time
    history = []

    return render_template('ccass/brokhist.html',
                         issue_id=issue_id,
                         stock_code=stock_code,
                         part_id=part_id,
                         history=history)
