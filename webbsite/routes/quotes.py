"""
Quotes route - Direct port from prices.asp
Stock price quotes and historical charts
"""
from flask import Blueprint, render_template, request
from webbsite.db import execute_query
from webbsite.asp_helpers import get_int

bp = Blueprint('quotes', __name__)


@bp.route('/prices.asp')
def prices():
    """Display stock price chart - port of prices.asp"""
    # Get data item ID
    i = get_int('i', 1)

    # Get data item details
    sql = """
        SELECT d.units, d.note, d.dp, d.ddes, f.fdes, d.freq, d.source, o.name1
        FROM dataitems d
        JOIN freq f ON d.freq = f.ID
        LEFT JOIN organisations o ON d.source = o.personID
        WHERE d.ID = %s
    """
    result = execute_query(sql, (i,))

    if not result:
        return render_template('prices.html', error='Data item not found')

    item = result[0]
    units = item.get('units', '')
    note = item.get('note', '')
    dp = item.get('dp', 2)
    title = f"{item.get('ddes', '')} {item.get('fdes', '').lower()}, {units}"
    freq = item.get('freq', 1)
    source = item.get('source')
    sname = item.get('name1', '')

    # Determine date format for tooltip
    tipdate = '%Y' if freq == 3 else '%Y-%m'

    # Get historical data
    sql = "SELECT d, v FROM data WHERE item = %s ORDER BY d"
    data_points = execute_query(sql, (i,))

    # Format data for Highcharts
    # Convert to JavaScript array format: [[timestamp_ms, value], ...]
    prices_data = []
    for row in data_points:
        d = row.get('d')
        v = row.get('v')
        if d and v is not None:
            # Convert date to JavaScript timestamp (milliseconds since 1970)
            if hasattr(d, 'timestamp'):
                timestamp = int(d.timestamp() * 1000)
            else:
                # If it's already a string, try to parse it
                from datetime import datetime
                try:
                    dt = datetime.fromisoformat(str(d))
                    timestamp = int(dt.timestamp() * 1000)
                except:
                    continue
            prices_data.append([timestamp, float(v)])

    return render_template('prices.html',
                         i=i,
                         title=title,
                         units=units,
                         note=note,
                         dp=dp,
                         freq=freq,
                         source=source,
                         sname=sname,
                         tipdate=tipdate,
                         prices_data=prices_data)


@bp.route('/quotes.asp')
def quotes():
    """Display stock quotes - port of quotes.asp (if different from prices.asp)"""
    # Get stock code or issueID
    sc = request.args.get('sc', '')
    i = get_int('i', 0)

    # Look up stock by code if provided
    if sc and not i:
        sql = "SELECT issueID FROM issue WHERE stockCode = %s"
        result = execute_query(sql, (sc,))
        if result:
            i = result[0]['issueid']

    if not i:
        return render_template('quotes.html', error='Please specify a stock code or issueID')

    # Get stock details
    sql = """
        SELECT i.*, o.name1 as issuer_name
        FROM issue i
        LEFT JOIN organisations o ON i.issuer = o.personID
        WHERE i.issueID = %s
    """
    stock_info = execute_query(sql, (i,))

    if not stock_info:
        return render_template('quotes.html', error='Stock not found')

    stock = stock_info[0]

    # Get recent quotes from ccass.quotes table
    sql = """
        SELECT *
        FROM ccass.quotes
        WHERE issueID = %s
        ORDER BY `date` DESC
        LIMIT 100
    """
    quotes_data = execute_query(sql, (i,))

    return render_template('quotes.html',
                         i=i,
                         stock=stock,
                         quotes=quotes_data)
