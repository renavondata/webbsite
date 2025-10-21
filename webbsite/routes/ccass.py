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
            JOIN enigma.issue i ON b.issueID=i.id1
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
                 WHERE issueid = d.issueID AND delistdate IS NULL
                 ORDER BY FirstTradeDate DESC LIMIT 1) AS stockCode,
                CAST(d.c10 + d.NCIPhldg AS NUMERIC) / NULLIF(d.CIPhldg + d.IntermedHldg + d.NCIPHldg, 0) AS cp10ip,
                CAST(d.CIPhldg + d.IntermedHldg + d.NCIPHldg AS NUMERIC) / NULLIF(iss.outstanding, 0) AS stake
            FROM ccass.dailylog d
            JOIN enigma.issue i ON d.issueID = i.id1
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
    """
    CCASS Investor Participant stakes - port of ipstakes.asp

    Query params:
    - d: date (default: latest CCASS date)
    - sort: sorting column

    Tables used: ccass.dailylog, ccass.quotes, issue, organisations, issuedshares, sectypes
    """
    sort_param = request.args.get('sort', 'ipsdn')
    d = request.args.get('d', '')

    # Get latest CCASS date if not specified
    if not d:
        try:
            result = execute_query("SELECT MAX(atDate) FROM ccass.dailylog")
            if result and result[0][0]:
                d = ms_date(result[0][0])
            else:
                d = '2025-10-17'  # Fallback
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error getting latest CCASS date: {ex}")
            d = '2025-10-17'

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
        from flask import current_app
        current_app.logger.error(f"Error getting settlement date: {ex}")

    # Sort order mapping
    sort_orders = {
        'nipcup': 'NCIPcnt, stockName',
        'nipcdn': 'NCIPcnt DESC, stockName',
        'cipcup': 'CIPcnt, stockName',
        'cipcdn': 'CIPcnt DESC, stockName',
        'ipcup': 'IPcnt, stockName',
        'ipcdn': 'IPcnt DESC, stockName',
        'nipsup': 'NCIPstake, stockName',
        'nipsdn': 'NCIPstake DESC, stockName',
        'cipsup': 'CIPstake, stockName',
        'cipsdn': 'CIPstake DESC, stockName',
        'ipsup': 'IPstake',
        'ipsdn': 'IPstake DESC',
        'nameup': 'stockName',
        'namedn': 'stockName DESC',
        'codeup': 'stockCode',
        'codedn': 'stockCode DESC',
        'vlndn': 'vln DESC, stockName',
        'vlnup': 'vln, stockName'
    }
    ob = sort_orders.get(sort_param, 'IPstake DESC, stockName')
    if sort_param not in sort_orders:
        sort_param = 'ipsdn'

    # Query IP stakes
    try:
        stakes_result = execute_query(f"""
            SELECT o.Name1 || ':' || st.typeshort AS stockName,
                   i.id1 AS issueID,
                   (SELECT stockCode FROM enigma.stocklistings
                    WHERE issueid = i.id1 AND delistdate IS NULL
                    ORDER BY FirstTradeDate DESC LIMIT 1) AS stockCode,
                   dl.NCIPcnt,
                   dl.CIPcnt,
                   dl.NCIPcnt + dl.CIPcnt AS IPcnt,
                   dl.NCIPhldg / s.outstanding AS NCIPstake,
                   dl.CIPhldg / s.outstanding AS CIPstake,
                   (dl.NCIPhldg + dl.CIPhldg) / s.outstanding AS IPstake,
                   CASE WHEN q.susp THEN
                       (SELECT closing FROM ccass.quotes
                        WHERE atDate <= %s AND issueid = dl.issueID AND closing <> 0
                        ORDER BY atDate DESC LIMIT 1)
                   ELSE q.closing
                   END * (dl.NCIPhldg + dl.CIPhldg) / 1000000 AS vln
            FROM ccass.dailylog dl
            JOIN enigma.issue i ON i.id1 = dl.issueID
            JOIN ccass.quotes q ON q.issueID = dl.issueID AND q.atDate = dl.atDate
            JOIN enigma.organisations o ON i.issuer = o.personid
            JOIN enigma.issuedshares s ON s.issueID = dl.issueID
            JOIN enigma.secTypes st ON st.typeID = i.typeID
            JOIN (SELECT issueID, MAX(atDate) AS MaxIssueDate
                  FROM enigma.issuedshares
                  WHERE atDate <= %s
                  GROUP BY issueID) t4 ON s.issueID = t4.issueID AND s.atDate = t4.MaxIssueDate
            WHERE dl.atDate = %s
            ORDER BY {ob}
        """, (d, d, d))

        stakes = []
        for row in stakes_result:
            stakes.append({
                'stockName': row['stockname'],
                'issueID': row['issueid'],
                'stockCode': row['stockcode'],
                'NCIPcnt': row['ncipcnt'],
                'CIPcnt': row['cipcnt'],
                'IPcnt': row['ipcnt'],
                'NCIPstake': row['ncipstake'],
                'CIPstake': row['cipstake'],
                'IPstake': row['ipstake'],
                'vln': row['vln']
            })
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in ipstakes query: {ex}", exc_info=True)
        stakes = []

    return render_template('ccass/ipstakes.html',
                         stakes=stakes,
                         d=d,
                         sort=sort_param)


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

    # Query CCASS participants who have had holdings
    try:
        result = execute_query(f"""
            SELECT CCASSID, partName, partID
            FROM ccass.participants
            WHERE hadHoldings = TRUE
            ORDER BY {ob}
        """)

        participants = []
        for row in result:
            participants.append({
                'CCASSID': row['ccassid'],
                'partName': row['partname'],
                'partID': row['partid']
            })
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in cparticipants query: {ex}", exc_info=True)
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

    Tables used: ccass.parthold, participants, issue, organisations, stocklistings
    """
    from flask import current_app

    part = get_int('part', 0)
    d = request.args.get('d', '')
    z = get_bool('z')  # Show zero/former holdings
    sort_param = request.args.get('sort', 'stakdn')

    # Get latest CCASS date if none specified
    if not d:
        try:
            result = execute_query("SELECT value FROM enigma.log WHERE key='CCASSdateDone'")
            if result and result[0]['value']:
                d = result[0]['value']
            else:
                d = '2025-10-17'  # Fallback
        except:
            d = '2025-10-17'

    # Get max settlement date <= requested date
    try:
        result = execute_query("""
            SELECT MAX(settleDate)
            FROM ccass.calendar
            WHERE settleDate <= %s
        """, (d,))
        if result and result[0]['max']:
            d = ms_date(result[0]['max'])
    except Exception as ex:
        current_app.logger.error(f"Error getting settlement date for cholder: {ex}")

    # Get participant details
    participant_name = "No participant selected"
    participant_ccassid = None
    person_id = None
    is_org = False

    if part > 0:
        try:
            result = execute_query("""
                SELECT partName, personID, CCASSID
                FROM ccass.participants
                WHERE partID = %s
            """, (part,))
            if result:
                participant_name = result[0]['partname']
                person_id = result[0]['personid']
                participant_ccassid = result[0]['ccassid']
                # Check if organization (simplified - could query organisations table)
                is_org = person_id is not None
        except Exception as ex:
            current_app.logger.error(f"Error getting participant: {ex}")
            participant_name = "Unknown participant"

    # Determine sort order
    sort_orders = {
        'nameup': 'name1, stake DESC',
        'namedn': 'name1 DESC, stake DESC',
        'partup': 'partName, stake DESC',
        'partdn': 'partName DESC, stake DESC',
        'chgdn': 'stake DESC, name1',
        'chgup': 'stake, name1',
        'stakdn': 'stake DESC, name1',
        'stakup': 'stake, name1',
        'codeup': 'lastCode, stake DESC',
        'codedn': 'lastCode DESC, stake DESC',
        'holdup': 'holding, name1',
        'holddn': 'holding DESC, name1',
        'valndn': 'valn DESC, name1',
        'valnup': 'valn, name1',
        'datedn': 'atDate DESC, name1',
        'dateup': 'atDate, name1'
    }
    ob = sort_orders.get(sort_param, 'stake DESC, name1')
    if sort_param not in sort_orders:
        sort_param = 'stakdn'

    # Build WHERE clause for zero holdings filter
    holding_filter = "" if z else "AND ph.holding <> 0"

    # Query holdings
    holdings = []
    if part > 0:
        try:
            sql = f"""
                SELECT ph.issueID, ph.holding, ph.atDate,
                       o.name1, o.personID,
                       st.typeShort,
                       (SELECT sl.stockCode
                        FROM enigma.stocklistings sl
                        WHERE sl.issueID = ph.issueID
                          AND sl.toDate IS NULL
                        ORDER BY sl.fromDate DESC
                        LIMIT 1) AS lastCode,
                       CASE WHEN ph.holding > 0 AND os.shares > 0
                            THEN ph.holding / os.shares
                            ELSE 0
                       END AS stake,
                       CASE WHEN q.closing > 0
                            THEN ph.holding * q.closing
                            ELSE 0
                       END AS valn,
                       CASE WHEN q.susp OR sl2."2ndCtr"
                            THEN TRUE
                            ELSE FALSE
                       END AS susp
                FROM ccass.parthold ph
                JOIN enigma.issue i ON ph.issueID = i.id1
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                LEFT JOIN enigma.issuedshares os ON ph.issueID = os.issueID
                    AND ph.atDate = os.atDate
                LEFT JOIN ccass.quotes q ON ph.issueID = q.issueID
                    AND ph.atDate = q.atDate
                LEFT JOIN enigma.stocklistings sl2 ON ph.issueID = sl2.issueID
                    AND ph.atDate >= sl2.fromDate
                    AND (sl2.toDate IS NULL OR ph.atDate < sl2.toDate)
                WHERE ph.partID = %s
                  AND ph.atDate = %s
                  {holding_filter}
                ORDER BY {ob}
            """
            results = execute_query(sql, (part, d))

            for row in results:
                holdings.append({
                    'issueID': row['issueid'],
                    'holding': row['holding'],
                    'atDate': row['atdate'],
                    'name1': row['name1'],
                    'personID': row['personid'],
                    'typeShort': row['typeshort'],
                    'lastCode': row['lastcode'],
                    'stake': row['stake'],
                    'valn': row['valn'],
                    'susp': row['susp']
                })
        except Exception as ex:
            current_app.logger.error(f"Error querying holdings for participant {part}: {ex}")
            holdings = []

    return render_template('ccass/cholder.html',
                         part=part,
                         participant_name=participant_name,
                         participant_ccassid=participant_ccassid,
                         person_id=person_id,
                         is_org=is_org,
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

    # Look up stock name and personID
    stock_name = "No stock specified"
    person_id = 0
    if issue_id > 0:
        try:
            result = execute_query("""
                SELECT o.name1 || ':' || st.typeShort AS stockName, o.personID
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                WHERE i.id1 = %s
            """, (issue_id,))
            if result:
                stock_name = result[0]['stockname']
                person_id = result[0]['personid']
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error looking up stock: {ex}")
            stock_name = f"Stock {issue_id}"

    # Get latest CCASS date for this issue
    if issue_id > 0 and d:
        try:
            result = execute_query("""
                SELECT MAX(atDate) AS maxDate
                FROM ccass.dailylog
                WHERE issueid = %s AND atDate <= %s
            """, (issue_id, d))
            if result and result[0]['maxdate']:
                d = ms_date(result[0]['maxdate'])
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error getting CCASS date: {ex}")

    # Query summary data from dailylog
    summary = {}
    if issue_id > 0 and d:
        try:
            result = execute_query("""
                SELECT NCIPhldg, NCIPcnt, BrokHldg, CustHldg, CIPHldg, intermedHldg
                FROM ccass.dailylog
                WHERE issueid = %s AND atDate <= %s
                ORDER BY atDate DESC
                LIMIT 1
            """, (issue_id, d))
            if result:
                summary = {
                    'NCIPhldg': float(result[0]['nciphldg']) if result[0]['nciphldg'] else 0,
                    'NCIPcnt': float(result[0]['ncipcnt']) if result[0]['ncipcnt'] else 0,
                    'BrokHldg': float(result[0]['brokhldg']) if result[0]['brokhldg'] else 0,
                    'CustHldg': float(result[0]['custhldg']) if result[0]['custhldg'] else 0,
                    'CIPHldg': float(result[0]['ciphldg']) if result[0]['ciphldg'] else 0,
                    'intermedHldg': float(result[0]['intermedhldg']) if result[0]['intermedhldg'] else 0
                }
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error getting summary data: {ex}")

    # Get issued shares as of date
    issued = 0
    if issue_id > 0 and d:
        try:
            result = execute_query("""
                SELECT outstanding
                FROM enigma.issuedshares
                WHERE issueid = %s AND atDate <= %s
                ORDER BY atDate DESC
                LIMIT 1
            """, (issue_id, d))
            if result and result[0]['outstanding']:
                issued = float(result[0]['outstanding'])
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error getting issued shares: {ex}")

    # Query detailed holdings (latest for each participant)
    holdings = []
    if issue_id > 0 and d:
        # Build WHERE clause for zero holdings filter
        zero_filter = "" if z else " AND h.holding <> 0"

        try:
            holdings_result = execute_query(f"""
                SELECT h.partID, h.holding, h.atDate, p.partName, p.CCASSID
                FROM ccass.holdings h
                JOIN (
                    SELECT partID AS MDpartID, MAX(atDate) AS maxDate
                    FROM ccass.holdings
                    WHERE issueid = %s AND atDate <= %s
                    GROUP BY MDpartID
                ) AS t2 ON h.partID = t2.MDpartID AND h.atDate = t2.maxDate
                JOIN ccass.participants p ON p.partID = h.partID
                WHERE h.issueID = %s{zero_filter}
                ORDER BY {ob}
            """, (issue_id, d, issue_id))

            for row in holdings_result:
                holdings.append({
                    'partID': row['partid'],
                    'holding': float(row['holding']) if row['holding'] else 0,
                    'atDate': row['atdate'],
                    'partName': row['partname'],
                    'CCASSID': row['ccassid']
                })
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error in choldings query: {ex}", exc_info=True)

    return render_template('ccass/choldings.html',
                         issue_id=issue_id,
                         stock_name=stock_name,
                         person_id=person_id,
                         holdings=holdings,
                         summary=summary,
                         issued=issued,
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

    # If stock_code provided, look up issueID from stocklistings
    if stock_code and not issue_id:
        try:
            result = execute_query("""
                SELECT issueID FROM enigma.stocklistings
                WHERE stockCode = %s AND delistdate IS NULL
                ORDER BY FirstTradeDate DESC LIMIT 1
            """, (stock_code.zfill(5),))
            if result:
                issue_id = result[0]['issueid']
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error looking up stock code: {ex}")

    # Look up stock name from organisations table
    stock_name = "No stock specified"
    person_id = 0
    if issue_id > 0:
        try:
            result = execute_query("""
                SELECT o.Name1, o.personID
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                WHERE i.id1 = %s
            """, (issue_id,))
            if result:
                stock_name = result[0]['name1']
                person_id = result[0]['personid']
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error looking up stock name: {ex}")
            stock_name = f"Stock {issue_id}"

    # Query bigchanges for this issue
    try:
        changes_result = execute_query(f"""
            SELECT b.partID, b.stkchg, b.atDate, b.prevDate, p.partName
            FROM ccass.bigchanges b
            JOIN ccass.participants p ON b.partID = p.partID
            WHERE b.issueID = %s
            ORDER BY {ob}
        """, (issue_id,))

        changes = []
        for row in changes_result:
            changes.append({
                'partID': row['partid'],
                'stkchg': row['stkchg'],
                'atDate': row['atdate'],
                'prevDate': row['prevdate'],
                'partName': row['partname']
            })
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in bigchangesissue query: {ex}", exc_info=True)
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

    # Look up participant name and person
    part_name = "No participant specified"
    person_id = 0
    if part_id > 0:
        try:
            result = execute_query("""
                SELECT partName, personID
                FROM ccass.participants
                WHERE partID = %s
            """, (part_id,))
            if result:
                part_name = result[0]['partname']
                person_id = result[0]['personid'] if result[0]['personid'] else 0
        except Exception as ex:
            from flask import current_app
            current_app.logger.error(f"Error looking up participant: {ex}")
            part_name = f"Participant {part_id}"

    # Query bigchanges for this participant (excluding ETFs, abs(stkchg) >= 5%)
    try:
        changes_result = execute_query(f"""
            SELECT b.issueID, b.stkchg, b.atDate, b.prevDate,
                   o.name1 || ':' || st.typeShort AS issueName,
                   (SELECT stockCode FROM enigma.stocklistings
                    WHERE issueid = b.issueID
                      AND (delistdate IS NULL OR delistdate > b.atDate)
                      AND (FirstTradeDate IS NULL OR FirstTradeDate <= b.atDate)
                    ORDER BY FirstTradeDate DESC LIMIT 1) AS stockCode
            FROM ccass.bigchanges b
            JOIN enigma.issue i ON b.issueID = i.id1
            JOIN enigma.organisations o ON i.issuer = o.personID
            JOIN enigma.secTypes st ON i.typeID = st.typeID
            WHERE b.partID = %s
              AND o.orgType <> 4
              AND ABS(b.stkchg) >= 0.05
            ORDER BY {ob}
        """, (part_id,))

        changes = []
        for row in changes_result:
            changes.append({
                'issueID': row['issueid'],
                'stkchg': row['stkchg'],
                'atDate': row['atdate'],
                'prevDate': row['prevdate'],
                'issueName': row['issuename'],
                'stockCode': row['stockcode']
            })
    except Exception as ex:
        from flask import current_app
        current_app.logger.error(f"Error in bigchangespart query: {ex}", exc_info=True)
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
    CCASS concentration history - port of cconchist.asp
    Shows concentration percentages (top 5, top 10 holders) over time

    Query params:
    - i: issueID
    - sc: stock code
    - sort: sorting column

    Tables used: ccass.dailylog, enigma.issuedshares
    """
    from flask import current_app

    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')
    sort_param = request.args.get('sort', 'datedn')

    # Lookup stock if stock code provided
    if not issue_id and stock_code:
        try:
            result = execute_query("""
                SELECT issueID FROM enigma.stocklistings
                WHERE stockCode = %s AND toDate IS NULL
                ORDER BY fromDate DESC LIMIT 1
            """, (stock_code,))
            if result:
                issue_id = result[0]['issueid']
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock code: {ex}")

    # Get stock name and person
    stock_name = "No stock specified"
    person_id = 0
    if issue_id > 0:
        try:
            result = execute_query("""
                SELECT o.name1, o.personID
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                WHERE i.id1 = %s
            """, (issue_id,))
            if result:
                stock_name = result[0]['name1']
                person_id = result[0]['personid']
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock: {ex}")

    # Determine sort order
    sort_orders = {
        'cp5up': 'cp5',
        'cp5dn': 'cp5 DESC',
        'cp10up': 'cp10',
        'cp10dn': 'cp10 DESC',
        'cp10ipup': 'cp10ip',
        'cp10ipdn': 'cp10ip DESC',
        'dateup': 'atDate',
        'datedn': 'atDate DESC',
        'stakup': 'stake',
        'stakdn': 'stake DESC'
    }
    ob = sort_orders.get(sort_param, 'atDate DESC')
    if sort_param not in sort_orders:
        sort_param = 'datedn'

    # Query concentration history
    history = []
    if issue_id > 0:
        try:
            sql = f"""
                SELECT
                    d.atDate,
                    d.c5 / (d.CIPhldg + d.intermedHldg) AS cp5,
                    d.c10 / (d.CIPhldg + d.intermedHldg) AS cp10,
                    (d.c10 + d.NCIPhldg) / (d.CIPhldg + d.intermedHldg + d.NCIPhldg) AS cp10ip,
                    issue_dates.issuedate,
                    stakes.stake
                FROM ccass.dailylog d
                CROSS JOIN LATERAL (
                    SELECT MAX(i.atDate) AS issuedate
                    FROM enigma.issuedshares i
                    WHERE i.atDate <= d.atDate AND i.issueID = %s
                ) issue_dates
                LEFT JOIN LATERAL (
                    SELECT (d.CIPhldg + d.intermedHldg + d.NCIPhldg)::NUMERIC / outstanding AS stake
                    FROM enigma.issuedshares
                    WHERE atDate = issue_dates.issuedate AND issueid = %s
                ) stakes ON true
                WHERE d.issueID = %s
                  AND d.c5 > 0
                  AND d.CIPhldg + d.intermedHldg > 0
                ORDER BY {ob}
            """
            results = execute_query(sql, (issue_id, issue_id, issue_id))

            for row in results:
                history.append({
                    'atDate': row['atdate'],
                    'cp5': row['cp5'],
                    'cp10': row['cp10'],
                    'cp10ip': row['cp10ip'],
                    'stake': row['stake']
                })
        except Exception as ex:
            current_app.logger.error(f"Error querying concentration history: {ex}")
            history = []

    return render_template('ccass/cconchist.html',
                         issue_id=issue_id,
                         stock_code=stock_code,
                         stock_name=stock_name,
                         person_id=person_id,
                         history=history,
                         sort=sort_param)


@bp.route('/ctothist.asp')
def ctothist():
    """
    CCASS total holdings history - port of ctothist.asp
    Shows total CIP+NCIP+Custodian holdings over time

    Query params:
    - i: issueID
    - sc: stock code
    - sort: sorting column
    - o: include rows with no change (0/1)

    Tables used: ccass.dailylog, enigma.issuedshares
    """
    from flask import current_app

    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')
    sort_param = request.args.get('sort', 'datedn')
    o = get_bool('o')  # Include rows with no holding change

    # Lookup stock if stock code provided
    if not issue_id and stock_code:
        try:
            result = execute_query("""
                SELECT issueID FROM enigma.stocklistings
                WHERE stockCode = %s AND toDate IS NULL
                ORDER BY fromDate DESC LIMIT 1
            """, (stock_code,))
            if result:
                issue_id = result[0]['issueid']
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock code: {ex}")

    # Get stock name
    stock_name = "No stock specified"
    person_id = 0
    if issue_id > 0:
        try:
            result = execute_query("""
                SELECT o.name1, o.personID
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                WHERE i.id1 = %s
            """, (issue_id,))
            if result:
                stock_name = result[0]['name1']
                person_id = result[0]['personid']
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock: {ex}")

    # Determine sort order
    if sort_param == 'dateup':
        ob = 'atDate'
    else:
        ob = 'atDate DESC'
        sort_param = 'datedn'

    # Query total holdings history
    history = []
    if issue_id > 0:
        try:
            sql = f"""
                SELECT
                    NCIPhldg + intermedHldg + CIPHldg AS holding,
                    NCIPcnt + intermedcnt + CIPcnt AS holders,
                    atDate,
                    (SELECT MAX(i.atDate)
                     FROM enigma.issuedshares i
                     WHERE i.atDate <= d.atDate AND i.issueID = %s) AS maxDate,
                    (SELECT outstanding
                     FROM enigma.issuedshares
                     WHERE issueid = %s AND atDate = maxDate) AS shares
                FROM ccass.dailylog d
                WHERE issueid = %s
                ORDER BY {ob}
            """
            results = execute_query(sql, (issue_id, issue_id, issue_id))

            prev_holding = None
            for row in results:
                holding = row['holding']
                change = holding - prev_holding if prev_holding is not None else None

                # Include based on filter
                if o or change is None or change != 0:
                    history.append({
                        'atDate': row['atdate'],
                        'holding': holding,
                        'change': change,
                        'holders': row['holders'],
                        'shares': row['shares'],
                        'stake': (holding / row['shares'] if row['shares'] and row['shares'] > 0 else None)
                    })

                prev_holding = holding

        except Exception as ex:
            current_app.logger.error(f"Error querying total holdings history: {ex}")
            history = []

    return render_template('ccass/ctothist.html',
                         issue_id=issue_id,
                         stock_code=stock_code,
                         stock_name=stock_name,
                         person_id=person_id,
                         history=history,
                         sort=sort_param,
                         o=o)


@bp.route('/custhist.asp')
def custhist():
    """
    Custodian (Custodian/Pledgee) holdings history - port of custhist.asp

    Query params:
    - i: issueID
    - sc: stock code
    - o: include rows with no change

    Tables used: ccass.dailylog
    """
    from flask import current_app

    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')
    o = get_bool('o')  # Include no-change rows

    # Lookup stock if stock code provided
    if not issue_id and stock_code:
        try:
            result = execute_query("""
                SELECT issueID FROM enigma.stocklistings
                WHERE stockCode = %s AND toDate IS NULL
                ORDER BY fromDate DESC LIMIT 1
            """, (stock_code,))
            if result:
                issue_id = result[0]['issueid']
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock code: {ex}")

    # Get stock name
    stock_name = "No stock specified"
    person_id = 0
    if issue_id > 0:
        try:
            result = execute_query("""
                SELECT o.name1, o.personID
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                WHERE i.id1 = %s
            """, (issue_id,))
            if result:
                stock_name = result[0]['name1']
                person_id = result[0]['personid']
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock: {ex}")

    # Query custodian holdings history
    history = []
    if issue_id > 0:
        try:
            sql = """
                SELECT
                    intermedHldg AS holding,
                    intermedcnt AS holders,
                    atDate,
                    (SELECT MAX(i.atDate)
                     FROM enigma.issuedshares i
                     WHERE i.atDate <= d.atDate AND i.issueID = %s) AS maxDate,
                    (SELECT outstanding
                     FROM enigma.issuedshares
                     WHERE issueid = %s AND atDate = maxDate) AS shares
                FROM ccass.dailylog d
                WHERE issueid = %s
                ORDER BY atDate DESC
            """
            results = execute_query(sql, (issue_id, issue_id, issue_id))

            prev_holding = None
            for row in results:
                holding = row['holding']
                change = holding - prev_holding if prev_holding is not None else None

                if o or change is None or change != 0:
                    history.append({
                        'atDate': row['atdate'],
                        'holding': holding,
                        'change': change,
                        'holders': row['holders'],
                        'shares': row['shares'],
                        'stake': (holding / row['shares'] if row['shares'] and row['shares'] > 0 else None)
                    })

                prev_holding = holding

        except Exception as ex:
            current_app.logger.error(f"Error querying custodian holdings history: {ex}")
            history = []

    return render_template('ccass/custhist.html',
                         issue_id=issue_id,
                         stock_code=stock_code,
                         stock_name=stock_name,
                         person_id=person_id,
                         history=history,
                         o=o)


@bp.route('/ncipchg.asp')
def ncipchg():
    """
    Non-CIP (Non-Collateralised Investor Participant) holding changes
    Shows changes in unnamed investor participant holdings between two dates

    Query params:
    - d1: start date
    - d: end date (d2)
    - z: show unchanged holdings (default: false)
    - sort: sorting column

    Tables used: ccass.dailylog, ccass.quotes, enigma.issue, enigma.organisations
    """
    from flask import current_app

    d1 = request.args.get('d1', '')
    d2 = request.args.get('d', '')
    z = get_bool('z')  # Show unchanged holdings
    sort_param = request.args.get('sort', 'valcdn')

    # Get latest CCASS date if none specified
    if not d2:
        try:
            result = execute_query("SELECT value FROM enigma.log WHERE key='CCASSdateDone'")
            if result and result[0]['value']:
                d2 = result[0]['value']
            else:
                d2 = '2025-10-17'
        except:
            d2 = '2025-10-17'

    # Default d1 to day before d2 if not specified
    if not d1:
        try:
            from datetime import datetime, timedelta
            d2_date = datetime.strptime(d2, '%Y-%m-%d')
            d1 = (d2_date - timedelta(days=1)).strftime('%Y-%m-%d')
        except:
            d1 = '2025-10-16'

    # Get max settlement dates
    try:
        result = execute_query("""
            SELECT MAX(settleDate) FROM ccass.calendar WHERE settleDate <= %s
        """, (d1,))
        if result and result[0]['max']:
            d1 = ms_date(result[0]['max'])
    except Exception as ex:
        current_app.logger.error(f"Error getting settlement date for d1: {ex}")

    # Determine sort order
    sort_orders = {
        'codeup': 'stockCode, stockName',
        'codedn': 'stockCode DESC, stockName',
        'nameup': 'stockName',
        'namedn': 'stockName DESC',
        'holddn': 'holding DESC, stockName',
        'holdup': 'holding, stockName',
        'chngdn': 'hldchg DESC, stockName',
        'chngup': 'hldchg, stockName',
        'stakdn': 'stake DESC, stockName',
        'stakup': 'stake, stockName',
        'stkcdn': 'stkchg DESC, stockName',
        'stkcup': 'stkchg, stockName',
        'valcdn': 'valchg DESC, stockName',
        'valcup': 'valchg, stockName',
        'hchgdn': 'cntchg DESC, stkchg DESC, stockName',
        'hchgup': 'cntchg, stkchg, stockName'
    }
    ob = sort_orders.get(sort_param, 'valchg DESC, stockName')
    if sort_param not in sort_orders:
        sort_param = 'valcdn'

    # Build WHERE clause for unchanged holdings filter
    change_filter = "" if z else "AND hldchg <> 0"

    # Query NCIP changes
    changes = []
    try:
        # Get NCIP holdings at both dates and calculate changes
        sql = f"""
            WITH ncip1 AS (
                SELECT issueID, NCIPhldg AS holding, NCIPcnt AS holders
                FROM ccass.dailylog
                WHERE atDate = %s
            ),
            ncip2 AS (
                SELECT issueID, NCIPhldg AS holding, NCIPcnt AS holders
                FROM ccass.dailylog
                WHERE atDate = %s
            )
            SELECT
                COALESCE(n2.issueID, n1.issueID) AS issueID,
                COALESCE(n2.holding, 0) AS holding,
                COALESCE(n2.holding, 0) - COALESCE(n1.holding, 0) AS hldchg,
                COALESCE(n2.holders, 0) - COALESCE(n1.holders, 0) AS cntchg,
                CASE WHEN os.shares > 0
                     THEN COALESCE(n2.holding, 0)::NUMERIC / os.shares
                     ELSE 0
                END AS stake,
                CASE WHEN os.shares > 0
                     THEN (COALESCE(n2.holding, 0) - COALESCE(n1.holding, 0))::NUMERIC / os.shares
                     ELSE 0
                END AS stkchg,
                (COALESCE(n2.holding, 0) - COALESCE(n1.holding, 0)) * COALESCE(q.closing, 0) AS valchg,
                (SELECT sl.stockCode
                 FROM enigma.stocklistings sl
                 WHERE sl.issueID = COALESCE(n2.issueID, n1.issueID)
                   AND sl.toDate IS NULL
                 ORDER BY sl.fromDate DESC
                 LIMIT 1) AS stockCode,
                o.name1 || ':' || st.typeShort AS stockName,
                CASE WHEN q.susp OR sl2."2ndCtr"
                     THEN TRUE
                     ELSE FALSE
                END AS susp
            FROM ncip1 n1
            FULL OUTER JOIN ncip2 n2 ON n1.issueID = n2.issueID
            JOIN enigma.issue i ON COALESCE(n2.issueID, n1.issueID) = i.id1
            JOIN enigma.organisations o ON i.issuer = o.personID
            JOIN enigma.secTypes st ON i.typeID = st.typeID
            LEFT JOIN enigma.issuedshares os ON COALESCE(n2.issueID, n1.issueID) = os.issueID
                AND os.atDate = %s
            LEFT JOIN ccass.quotes q ON COALESCE(n2.issueID, n1.issueID) = q.issueID
                AND q.atDate = %s
            LEFT JOIN enigma.stocklistings sl2 ON COALESCE(n2.issueID, n1.issueID) = sl2.issueID
                AND %s >= sl2.fromDate
                AND (sl2.toDate IS NULL OR %s < sl2.toDate)
            WHERE COALESCE(n2.holding, 0) <> 0 OR COALESCE(n1.holding, 0) <> 0
              {change_filter}
            ORDER BY {ob}
        """
        results = execute_query(sql, (d1, d2, d2, d2, d2, d2))

        for row in results:
            changes.append({
                'issueID': row['issueid'],
                'stockCode': row['stockcode'],
                'stockName': row['stockname'],
                'holding': row['holding'],
                'hldchg': row['hldchg'],
                'cntchg': row['cntchg'],
                'stake': row['stake'],
                'stkchg': row['stkchg'],
                'valchg': row['valchg'],
                'susp': row['susp']
            })
    except Exception as ex:
        current_app.logger.error(f"Error querying NCIP changes: {ex}")
        changes = []

    return render_template('ccass/ncipchg.html',
                         d1=d1,
                         d2=d2,
                         z=z,
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
    Portfolio changes for a participant - simplified implementation

    Query params:
    - part: partID
    - d: date

    Tables used: ccass.parthold
    """
    from flask import current_app

    part_id = get_int('part', 0)
    d = request.args.get('d', '')

    # Get latest CCASS date if none specified
    if not d:
        try:
            result = execute_query("SELECT value FROM enigma.log WHERE key='CCASSdateDone'")
            if result and result[0]['value']:
                d = result[0]['value']
            else:
                d = '2025-10-17'
        except:
            d = '2025-10-17'

    # Get participant name
    participant_name = "No participant selected"
    if part_id > 0:
        try:
            result = execute_query("""
                SELECT partName FROM ccass.participants WHERE partID = %s
            """, (part_id,))
            if result:
                participant_name = result[0]['partname']
        except Exception as ex:
            current_app.logger.error(f"Error getting participant: {ex}")

    # Query portfolio changes (simplified - shows holdings on date)
    changes = []
    if part_id > 0:
        try:
            sql = """
                SELECT ph.issueID, ph.holding,
                       o.name1 || ':' || st.typeShort AS stockName,
                       (SELECT sl.stockCode
                        FROM enigma.stocklistings sl
                        WHERE sl.issueID = ph.issueID AND sl.toDate IS NULL
                        ORDER BY sl.fromDate DESC LIMIT 1) AS stockCode
                FROM ccass.parthold ph
                JOIN enigma.issue i ON ph.issueID = i.id1
                JOIN enigma.organisations o ON i.issuer = o.personID
                JOIN enigma.secTypes st ON i.typeID = st.typeID
                WHERE ph.partID = %s AND ph.atDate = %s
                  AND ph.holding > 0
                ORDER BY ph.holding DESC
            """
            results = execute_query(sql, (part_id, d))

            for row in results:
                changes.append({
                    'issueID': row['issueid'],
                    'stockCode': row['stockcode'],
                    'stockName': row['stockname'],
                    'holding': row['holding']
                })
        except Exception as ex:
            current_app.logger.error(f"Error querying portfolio: {ex}")
            changes = []

    return render_template('ccass/portchg.html',
                         part_id=part_id,
                         participant_name=participant_name,
                         d=d,
                         changes=changes)


@bp.route('/reghist.asp')
def reghist():
    """
    Regional trading history (Connect schemes) - port of reghist.asp
    Shows Shanghai-HK and Shenzhen-HK Connect holdings over time

    Query params:
    - i: issueID
    - sc: stock code

    Tables used: ccass.parthold
    """
    from flask import current_app

    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')

    # Shanghai-HK Connect partID = 1323
    # Shenzhen-HK Connect partID = 1456

    # Lookup stock if stock code provided
    if not issue_id and stock_code:
        try:
            result = execute_query("""
                SELECT issueID FROM enigma.stocklistings
                WHERE stockCode = %s AND toDate IS NULL
                ORDER BY fromDate DESC LIMIT 1
            """, (stock_code,))
            if result:
                issue_id = result[0]['issueid']
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock code: {ex}")

    # Get stock name
    stock_name = "No stock specified"
    person_id = 0
    if issue_id > 0:
        try:
            result = execute_query("""
                SELECT o.name1, o.personID
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                WHERE i.id1 = %s
            """, (issue_id,))
            if result:
                stock_name = result[0]['name1']
                person_id = result[0]['personid']
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock: {ex}")

    # Query Connect holdings history
    history = []
    if issue_id > 0:
        try:
            sql = """
                SELECT
                    ph.atDate,
                    SUM(CASE WHEN ph.partID = 1323 THEN ph.holding ELSE 0 END) AS shanghai_holding,
                    SUM(CASE WHEN ph.partID = 1456 THEN ph.holding ELSE 0 END) AS shenzhen_holding
                FROM ccass.parthold ph
                WHERE ph.issueID = %s
                  AND ph.partID IN (1323, 1456)
                GROUP BY ph.atDate
                ORDER BY ph.atDate DESC
            """
            results = execute_query(sql, (issue_id,))

            for row in results:
                history.append({
                    'atDate': row['atdate'],
                    'shanghai_holding': row['shanghai_holding'],
                    'shenzhen_holding': row['shenzhen_holding']
                })
        except Exception as ex:
            current_app.logger.error(f"Error querying Connect holdings: {ex}")
            history = []

    return render_template('ccass/reghist.html',
                         issue_id=issue_id,
                         stock_code=stock_code,
                         stock_name=stock_name,
                         person_id=person_id,
                         history=history)


@bp.route('/brokhist.asp')
def brokhist():
    """
    Broker holdings history - port of brokhist.asp
    Shows broker participant holdings over time

    Query params:
    - i: issueID
    - sc: stock code
    - sort: dateup or datedn (default: datedn)

    Tables used: ccass.dailylog, enigma.issuedshares
    """
    from flask import current_app

    issue_id = get_int('i', 0)
    stock_code = get_str('sc', '')
    sort = get_str('sort', 'datedn')

    # Lookup stock if stock code provided
    if not issue_id and stock_code:
        try:
            result = execute_query("""
                SELECT issueID FROM enigma.stocklistings
                WHERE stockCode = %s AND toDate IS NULL
                ORDER BY fromDate DESC LIMIT 1
            """, (stock_code,))
            if result:
                issue_id = result[0]['issueid']
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock code: {ex}")

    # Get stock name
    stock_name = "No stock specified"
    person_id = 0
    if issue_id > 0:
        try:
            result = execute_query("""
                SELECT o.name1, o.personID
                FROM enigma.issue i
                JOIN enigma.organisations o ON i.issuer = o.personID
                WHERE i.id1 = %s
            """, (issue_id,))
            if result:
                stock_name = result[0]['name1']
                person_id = result[0]['personid']
        except Exception as ex:
            current_app.logger.error(f"Error looking up stock: {ex}")

    # Query broker holdings history with issued shares
    history = []
    if issue_id > 0:
        try:
            # Determine sort order
            order_by = "atDate" if sort == "dateup" else "atDate DESC"

            # Query matches ASP logic:
            # SELECT BrokHldg AS holding, atDate,
            #   (SELECT Max(atDate) FROM issuedshares WHERE atDate<=d.atDate AND issueID=i) AS maxDate,
            #   (SELECT outstanding FROM issuedshares WHERE issueID=i AND atDate=maxDate) AS shares
            # FROM ccass.dailylog d WHERE issueID=i ORDER BY atDate DESC
            sql = f"""
                SELECT
                    d.BrokHldg AS holding,
                    d.atDate,
                    (SELECT MAX(i.atDate)
                     FROM enigma.issuedshares i
                     WHERE i.atDate <= d.atDate AND i.issueID = %s) AS max_date,
                    (SELECT i2.outstanding
                     FROM enigma.issuedshares i2
                     WHERE i2.issueID = %s
                     AND i2.atDate = (SELECT MAX(i3.atDate)
                                      FROM enigma.issuedshares i3
                                      WHERE i3.atDate <= d.atDate AND i3.issueID = %s)) AS shares
                FROM ccass.dailylog d
                WHERE d.issueID = %s
                ORDER BY {order_by}
            """
            results = execute_query(sql, (issue_id, issue_id, issue_id, issue_id))

            # Calculate changes between holdings (matches ASP loop logic)
            last_holding = None
            for idx, row in enumerate(results):
                holding = float(row['holding']) if row['holding'] is not None else 0

                if sort == "dateup":
                    # When sorting ascending, change is current minus previous
                    change = (holding - last_holding) if last_holding is not None else None
                    last_holding = holding
                else:
                    # When sorting descending, look ahead to next row
                    if idx + 1 < len(results):
                        next_holding = float(results[idx + 1]['holding']) if results[idx + 1]['holding'] is not None else 0
                        change = holding - next_holding
                    else:
                        change = None

                history.append({
                    'at_date': row['atdate'],
                    'holding': holding,
                    'change': change,
                    'shares': float(row['shares']) if row['shares'] is not None else None,
                    'max_date': row['max_date']
                })
        except Exception as ex:
            current_app.logger.error(f"Error querying broker holdings: {ex}")
            history = []

    return render_template('ccass/brokhist.html',
                         issue_id=issue_id,
                         stock_code=stock_code,
                         stock_name=stock_name,
                         person_id=person_id,
                         sort=sort,
                         history=history)
