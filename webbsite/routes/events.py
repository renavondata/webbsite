"""
Events route - Direct port from events.asp
Corporate actions (dividends, rights issues, etc.)
"""
from flask import Blueprint, render_template, request
from webbsite.db import execute_query
from webbsite.asp_helpers import get_int, get_str

bp = Blueprint('events', __name__)


@bp.route('/events.asp')
def events():
    """Display corporate events/actions - port of events.asp"""
    # Get parameters
    i = get_int('i', 0)  # issueID
    sc = get_str('sc', '')  # stock code
    sort = get_str('sort', 'annddn')
    n = ''  # stock name
    p = 0   # personID (issuer)

    # If stock code provided, look up issueID using SCissue() logic from ASP
    # Original SQL: SELECT IFNULL((SELECT issueID FROM enigma.stockListings WHERE stockExID IN(1,20,22,23,38,71) AND stockCode=sc ORDER BY firstTradeDate DESC LIMIT 1),0)
    if sc and not i:
        sql = """
            SELECT COALESCE(
                (SELECT issueid FROM enigma.stocklistings
                 WHERE stockexid IN (1,20,22,23,38,71) AND stockcode = %s
                 ORDER BY firsttradedate DESC LIMIT 1),
                0
            ) AS issueid
        """
        result = execute_query(sql, (sc,))
        if result:
            i = result[0]['issueid']

    # Get stock details if we have an issueID - using issueName() logic from ASP
    # Original SQL: SELECT Name1,typeShort,MSdateAcc(expmat,expAcc)exp,personID,coupon,floating,IFNULL(currency,'HKD') curr
    #               FROM issue i JOIN (organisations,sectypes st) ON issuer=personID AND i.typeID=st.typeID
    #               LEFT JOIN currencies c ON i.SEHKcurr=c.ID WHERE ID1=...
    if i:
        sql = """
            SELECT o.name1, st.typeshort, i.expmat, i.expacc, o.personid, i.coupon, i.floating,
                   COALESCE(c.currency, 'HKD') AS curr
            FROM enigma.issue i
            JOIN enigma.organisations o ON i.issuer = o.personid
            JOIN enigma.sectypes st ON i.typeid = st.typeid
            LEFT JOIN enigma.currencies c ON i.sehkcurr = c.id
            WHERE i.id1 = %s
        """
        result = execute_query(sql, (i,))
        if result:
            row = result[0]
            # Build stock name like the ASP does
            n = row.get('name1', '') + ': '
            if row.get('floating'):
                n += ' Floating'
            n += ' ' + row.get('typeshort', '')
            if row.get('curr'):
                n += ' ' + row['curr']
            if row.get('coupon'):
                n += ' ' + str(row['coupon']) + '%'
            # TODO: Add expiry date formatting if needed
            p = row.get('personid', 0)
        else:
            i = 0
            p = 0

    # Determine sort order (lowercased for PostgreSQL)
    sort_options = {
        'anndup': 'announced,exdate,yearend',
        'annddn': 'announced DESC,exdate DESC,yearend DESC',
        'evntup': 'change,announced DESC,yearend DESC',
        'evntdn': 'change DESC,announced DESC,yearend DESC',
        'exdtdn': 'exdate DESC,announced DESC,yearend DESC',
        'exdtup': 'exdate,announced,yearend',
    }
    ob = sort_options.get(sort, 'announced DESC,exdate DESC,yearend DESC')
    if sort not in sort_options:
        sort = 'annddn'

    # Get events for this issue
    # Original ASP SQL: SELECT * FROM events JOIN capchangetypes ON eventType=CapChangeType LEFT JOIN currencies ON currID=ID WHERE issueID=...
    events_list = []
    if i > 0:
        sql = f"""
            SELECT e.*, c.change, c.capchangetype, cur.currency
            FROM enigma.events e
            JOIN enigma.capchangetypes c ON e.eventtype = c.capchangetype
            LEFT JOIN enigma.currencies cur ON e.currid = cur.id
            WHERE e.issueid = %s
            ORDER BY {ob}
        """
        events_list = execute_query(sql, (i,))

    return render_template('dbpub/events.html',
                         i=i,
                         n=n,
                         p=p,
                         sort=sort,
                         events=events_list)
