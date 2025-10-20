"""
Prices route - Direct port from prices.asp
Economic data charts (CPI, import prices, etc.)
"""
from flask import Blueprint, render_template, request
from webbsite.db import execute_query
from webbsite.asp_helpers import get_int

bp = Blueprint('prices', __name__)


@bp.route('/prices.asp')
def prices():
    """Display stock price chart - port of prices.asp"""
    # Get data item ID
    i = get_int('i', 1)

    # Get data item details
    # Original ASP SQL: SELECT units,note,dp,ddes,fdes,freq,source,name1 FROM dataitems d JOIN freq f ON d.freq=f.ID LEFT JOIN organisations o ON d.source=o.personID WHERE d.ID=
    sql = """
        SELECT d.units, d.note, d.dp, d.ddes, f.fdes, d.freq, d.source, o.name1
        FROM enigma.dataitems d
        JOIN enigma.freq f ON d.freq = f.id
        LEFT JOIN enigma.organisations o ON d.source = o.personid
        WHERE d.id = %s
    """
    result = execute_query(sql, (i,))

    if not result:
        return render_template('dbpub/prices.html', error='Data item not found')

    item = result[0]
    units = item.get('units') or ''
    note = item.get('note') or ''
    dp = item.get('dp') or 2
    ddes = item.get('ddes') or ''
    fdes = item.get('fdes') or ''
    title = f"{ddes} {fdes.lower()}, {units}"
    freq = item.get('freq') or 1
    source = item.get('source')
    sname = item.get('name1') or ''

    # Determine date format for tooltip
    tipdate = '%Y' if freq == 3 else '%Y-%m'

    # Get historical data
    # Original ASP SQL: SELECT d,v FROM data WHERE item= ORDER BY d
    sql = "SELECT d, v FROM enigma.data WHERE item = %s ORDER BY d"
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

    return render_template('dbpub/prices.html',
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
