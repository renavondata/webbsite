"""
Events route - Direct port from events.asp
Corporate actions (dividends, rights issues, etc.)
"""
from flask import Blueprint, render_template, request
from webbsite.db import execute_query
from webbsite.asp_helpers import get_int, get_str

bp = Blueprint('events', __name__)


@bp.route('/events')
def events():
    """Display corporate events/actions - port of events.asp"""
    # Get parameters
    i = get_int('i', 0)  # issueID
    sc = get_str('sc', '')  # stock code
    sort = get_str('sort', 'annddn')
    n = ''  # stock name
    p = 0   # personID (issuer)

    # If stock code provided, look up issueID
    if sc and not i:
        sql = "SELECT issueID FROM issue WHERE stockCode = %s"
        result = execute_query(sql, (sc,))
        if result:
            i = result[0]['issueid']

    # Get stock details if we have an issueID
    if i:
        sql = """
            SELECT i.*, o.name1, o.personID
            FROM issue i
            JOIN organisations o ON i.issuer = o.personID
            WHERE issueID = %s
        """
        result = execute_query(sql, (i,))
        if result:
            n = result[0].get('name1', f'Stock code {sc}')
            p = result[0].get('personid', 0)

    # Determine sort order
    sort_options = {
        'anndup': 'announced,exDate,yearEnd',
        'annddn': 'announced DESC,exDate DESC,yearEnd DESC',
        'evntup': '`Change`,announced DESC,yearEnd DESC',
        'evntdn': '`Change` DESC,announced DESC,yearEnd DESC',
        'exdtdn': 'exDate DESC,announced DESC,yearEnd DESC',
        'exdtup': 'exDate,announced,yearEnd',
    }
    ob = sort_options.get(sort, 'announced DESC,exDate DESC,yearEnd DESC')
    if sort not in sort_options:
        sort = 'annddn'

    # Get events for this issue
    events_list = []
    if i > 0:
        sql = f"""
            SELECT e.*, c.Change, c.CapChangeType, cur.Currency, e.price, e.priceHKD
            FROM events e
            JOIN capchangetypes c ON e.eventType = c.CapChangeType
            LEFT JOIN currencies cur ON e.currID = cur.ID
            WHERE e.issueID = %s
            ORDER BY {ob}
        """
        events_list = execute_query(sql, (i,))

    return render_template('events.html',
                         i=i,
                         n=n,
                         p=p,
                         sort=sort,
                         events=events_list)
