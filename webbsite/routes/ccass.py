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
    except Exception:
        pass  # Use provided date if query fails

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
        changes = []
        error = str(e)

    return render_template('ccass/bigchanges.html',
                         changes=changes,
                         d=d,
                         etf=etf,
                         sort=sort_param)


@bp.route('/cconc.asp')
def cconc():
    """CCASS concentration analysis - port of cconc.asp"""
    # TODO: Implement concentration analysis
    return render_template('ccass/cconc.html')


@bp.route('/ipstakes.asp')
def ipstakes():
    """CCASS Investor Participant stakes - port of ipstakes.asp"""
    # TODO: Implement IP stakes
    return render_template('ccass/ipstakes.html')


@bp.route('/cparticipants.asp')
def cparticipants():
    """CCASS participants and holdings - port of cparticipants.asp"""
    # TODO: Implement participants list
    return render_template('ccass/cparticipants.html')


@bp.route('/cholder.asp')
def cholder():
    """Holdings by participant - port of cholder.asp"""
    part = get_int('part', 0)
    # TODO: Implement participant holdings
    # For part=1323: Shanghai-HK connect
    # For part=1456: Shenzhen-HK connect
    return render_template('ccass/cholder.html', part=part)
