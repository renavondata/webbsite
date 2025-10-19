"""
Utility functions ported from Classic ASP functions1.asp
Direct ports to maintain compatibility with ASP logic
"""
from datetime import datetime, date
from flask import request
import re
import html


# ===== REQUEST PARAMETER HELPERS =====

def get_int(name, default=0):
    """Get integer from request args, similar to ASP getInt()"""
    val = request.args.get(name, '')
    if not val or not val.lstrip('-').isdigit():
        return default
    try:
        return max(min(int(val), 32767), -32768)
    except (ValueError, OverflowError):
        return default


def get_str(name, default=''):
    """Get string from request args"""
    return request.args.get(name, default)


def get_dbl(name, default=0.0):
    """Get float from request args"""
    val = request.args.get(name, '')
    if not val:
        return default
    try:
        return float(val)
    except ValueError:
        return default


def get_bool(name):
    """Get boolean from request args"""
    val = request.args.get(name, '')
    return val in ('1', 'true', 'True')


# ===== STRING HELPERS =====

def apos(s):
    """Escape single quotes for SQL (though parameterized queries are preferred)"""
    if s is None:
        return ''
    return str(s).replace("'", "''")


def rem_space(s):
    """Remove extra spaces, similar to ASP remSpace()"""
    if not s:
        return ''
    s = s.strip()
    s = s.replace('\r', '')
    s = s.replace('\n', '')
    while '  ' in s:
        s = s.replace('  ', ' ')
    return s


def html_ent(s):
    """Escape HTML entities to prevent XSS"""
    if s is None:
        return ''
    return html.escape(str(s))


# ===== DATE FORMATTING =====

def ms_date(d):
    """Convert date to MySQL format YYYY-MM-DD"""
    if d is None:
        return ''
    if isinstance(d, str):
        return d
    if isinstance(d, (datetime, date)):
        return d.strftime('%Y-%m-%d')
    return ''


def ms_date_time(d):
    """Convert datetime to MySQL format YYYY-MM-DD HH:MM:SS"""
    if d is None:
        return ''
    if isinstance(d, str):
        return d
    if isinstance(d, datetime):
        return d.strftime('%Y-%m-%d %H:%M:%S')
    if isinstance(d, date):
        return d.strftime('%Y-%m-%d 00:00:00')
    return ''


def force_date(d):
    """Format date as d-MMM-YYYY, e.g. 17-Oct-2025"""
    if not d:
        return ''
    if isinstance(d, str):
        try:
            d = datetime.fromisoformat(d)
        except:
            return d
    if isinstance(d, (datetime, date)):
        return d.strftime('%-d-%b-%Y')  # Unix format, Windows uses %#d
    return ''


def date_str(d, accuracy=None):
    """
    Format date based on accuracy
    accuracy: 1,4=year only, 2,5=month-year, 3=U, None=full date
    """
    if not d:
        return ''
    if isinstance(d, str):
        try:
            d = datetime.fromisoformat(d)
        except:
            return d

    if accuracy in (1, 4):
        return str(d.year)
    elif accuracy in (2, 5):
        return f"{d.strftime('%b')}-{d.year}"
    elif accuracy == 3:
        return 'U'
    else:
        return force_date(d)


# ===== NUMBER FORMATTING =====

def int_str(n):
    """Format integer with commas, return nbsp if null"""
    if n is None:
        return '&nbsp;'
    try:
        return f"{int(n):,}"
    except (ValueError, TypeError):
        return '&nbsp;'


def pc_str(p):
    """Format as percentage, return nbsp if null"""
    if p is None or p == 0:
        return '&nbsp;'
    try:
        return f"{float(p):.2%}"
    except (ValueError, TypeError):
        return '&nbsp;'


def digits(p, n):
    """
    Format number to n significant digits
    n=5: 12,345 or 123.45 or 0.1234
    n=4: 1,234 or 123.4 or 0.123
    """
    if p is None or p == 0:
        return '-'
    try:
        p = float(p)
        int_part = abs(int(p))
        int_len = len(str(int_part))
        decimals = max(0, n - int_len)
        formatted = f"{p:,.{decimals}f}"
        return formatted
    except (ValueError, TypeError):
        return '-'


def sig(p):
    """Format to 4 significant digits"""
    return digits(p, 4)


def sig2(p):
    """Format to 5 significant digits"""
    return digits(p, 5)


# ===== HTML GENERATION HELPERS =====

def make_select(name, value, options_str, auto_submit=False):
    """
    Generate HTML select dropdown
    options_str: comma-separated "val1,text1,val2,text2,..."
    """
    onchange = "this.form.submit()" if auto_submit else ""
    return make_select_onch(name, value, options_str, onchange)


def make_select_onch(name, value, options_str, onchange=''):
    """Generate HTML select with custom onchange"""
    if value is None:
        value = ''
    value = str(value)

    parts = options_str.split(',')
    html = f"<select id='{name}' name='{name}'"
    if onchange:
        html += f" onchange='{onchange}'"
    html += ">"

    # Options come in pairs: value, text
    for i in range(0, len(parts), 2):
        opt_val = parts[i] if i < len(parts) else ''
        opt_text = parts[i+1] if i+1 < len(parts) else ''
        selected = ' selected' if opt_val == value else ''
        html += f"<option value='{opt_val}'{selected}>{opt_text}</option>"

    html += "</select>"
    return html


def checkbox(name, value, auto_submit=False):
    """Generate HTML checkbox"""
    checked = ' checked' if value else ''
    onchange = " onchange='this.form.submit()'" if auto_submit else ''
    return f"<input type='checkbox' name='{name}' id='{name}' value='1'{checked}{onchange}>"


def checked(condition):
    """Return ' checked' if condition is True"""
    return ' checked' if condition else ''


def selected(condition):
    """Return ' selected' if condition is True"""
    return ' selected' if condition else ''


def tick(b):
    """Return check mark if True"""
    return '&#10004;' if b else ''


# ===== SQL HELPERS (for compatibility, prefer parameterized queries) =====

def apq(s):
    """Return 'NULL' for empty/null, or quoted string for SQL"""
    if s == '' or s is None:
        return 'NULL'
    return f"'{apos(s)}'"


def sqv(v):
    """
    Prepare value for SQL INSERT/UPDATE
    Empty strings become NULL, strings are quoted, numbers are not
    """
    if v == '' or v is None:
        return 'NULL'
    elif isinstance(v, bool):
        return '1' if v else '0'
    elif isinstance(v, (int, float)):
        return str(v)
    elif isinstance(v, (datetime, date)):
        return f"'{ms_date(v)}'"
    else:
        return f"'{apos(v)}'"


# ===== MISC HELPERS =====

def iif(condition, true_val, false_val):
    """Inline if - similar to ASP IIF()"""
    return true_val if condition else false_val


def if_null(value, default):
    """Return default if value is None"""
    return default if value is None else value


def max_val(*args):
    """Return maximum value"""
    return max(args)


def min_val(*args):
    """Return minimum value"""
    return min(args)


def sp_date(d):
    """Return nbsp or date string - useful for table cells"""
    if not d or d == '':
        return '&nbsp;'
    return ms_date(d)


def yn(v):
    """Convert boolean to Y/N"""
    if v:
        return 'Y'
    return 'N'


# ===== DATABASE LOOKUP HELPERS =====

def find_stock():
    """
    Use input 'sc' (stock code) or 'i' (issueID) to return (issue_id, issue_name, person_id)
    Port of ASP findStock() function
    """
    from webbsite.db import execute_query

    # Try stock code first
    stock_code = get_int('sc', 0)
    if stock_code > 0:
        issue_id = sc_issue(stock_code)
    else:
        issue_id = get_int('i', 0)
        if issue_id == 0:
            issue_id = get_int('issue', 0)  # legacy links

    issue_name, person_id = issue_name_func(issue_id)
    return issue_id, issue_name, person_id


def sc_issue(stock_code):
    """
    Return the issueID of most recent issue to use this stock code, or 0 if none
    Port of ASP SCissue() function
    """
    from webbsite.db import execute_query

    try:
        result = execute_query("""
            SELECT COALESCE((
                SELECT issueID
                FROM enigma.stockListings
                WHERE stockExID IN (1,20,22,23,38,71)
                  AND stockCode = %s
                ORDER BY firstTradeDate DESC
                LIMIT 1
            ), 0) as issue_id
        """, (stock_code,))

        if result and len(result) > 0:
            return int(result[0]['issue_id'])
        return 0
    except Exception:
        return 0


def issue_name_func(issue_id):
    """
    Return (issue_name, person_id) for an issue
    Returns ("Stock not found. ", 0) if not found
    Port of ASP issueName() function
    """
    from webbsite.db import execute_query

    if not issue_id or issue_id == 0:
        return "Stock not found. ", 0

    try:
        # Query to get issue details
        result = execute_query("""
            SELECT
                o.Name1,
                st.typeShort,
                CASE
                    WHEN i.expAcc = 1 OR i.expAcc = 4 THEN CAST(EXTRACT(YEAR FROM i.expmat) AS TEXT)
                    WHEN i.expAcc = 2 OR i.expAcc = 5 THEN
                        TO_CHAR(i.expmat, 'Mon-YYYY')
                    WHEN i.expAcc = 3 THEN 'U'
                    ELSE TO_CHAR(i.expmat, 'DD-Mon-YYYY')
                END as exp,
                o.personID,
                i.coupon,
                i.floating,
                COALESCE(c.currency, 'HKD') as curr
            FROM enigma.issue i
            JOIN enigma.organisations o ON i.issuer = o.personID
            JOIN enigma.sectypes st ON i.typeID = st.typeID
            LEFT JOIN enigma.currencies c ON i.SEHKcurr = c.ID
            WHERE i.ID1 = %s
        """, (issue_id,))

        if not result or len(result) == 0:
            return "Stock not found. ", 0

        row = result[0]
        name = row['name1'] + ": "

        if row['floating']:
            name += " Floating"

        name += " " + row['typeshort']

        if row['curr'] and row['curr'] != '':
            name += " " + row['curr']

        if row['coupon'] is not None:
            name += f" {row['coupon']}%"

        if row['exp'] and row['exp'] != '':
            name += " due " + row['exp']

        return name, row['personid']

    except Exception:
        return "Stock not found. ", 0


# ===== NAVIGATION HELPERS =====

def mobile(n):
    """
    Warning that columns may disappear on mobile
    n is the lowest number of colHide used on the page
    Port of ASP mobile() function
    """
    return f"<p class='widthAlert{n}'>Some data are hidden to fit your display.<span class='portrait'> Rotate?</span></p>"


def btn(button_id, url, text, target_id):
    """
    Generate navigation button HTML - active or link
    Port of ASP btn() function
    """
    if button_id == target_id:
        return f"<li class='livebutton'>{text}</li>"
    else:
        return f"<li><a href='{url}'>{text}</a></li>"


def write_nav(val, param_values, labels, base_url):
    """
    Write a navigation bar with buttons linking to a common URL with 1 parameter
    val: current value (active button)
    param_values: comma-separated list of parameter values
    labels: comma-separated list of button labels
    base_url: base URL with querystring to which parameter is appended
    Port of ASP writeNav() function
    """
    btns = write_btns(val, param_values, labels, base_url)
    return f"<ul class='navlist'>{btns}</ul><div class='clear'></div>"


def write_btns(val, param_values, labels, base_url):
    """
    Generate button list elements without ul wrapper
    Port of ASP writeBtns() function
    """
    p_list = param_values.split(',')
    l_list = labels.split(',')

    # Try to convert val to int if numeric
    if str(val).isdigit():
        val = int(val)

    html = ''
    for i, p_val in enumerate(p_list):
        if i >= len(l_list):
            break

        # Try to convert parameter to int for comparison
        compare_val = p_val
        if p_val.isdigit() and isinstance(val, int):
            compare_val = int(p_val)

        if compare_val == val:
            html += f"<li class='livebutton'>{l_list[i]}</li>"
        else:
            html += f"<li><a href='{base_url}{p_val}'>{l_list[i]}</a></li>"

    return html


# ===== ADDITIONAL FORMATTING HELPERS =====

def month_end(month, year):
    """Return last day of month"""
    import calendar
    return calendar.monthrange(year, month)[1]


def date_ymd(year, month=0, day=0):
    """Produce ISO date format or partial date from year/month/day"""
    result = str(year)
    if month > 0:
        result = f"{year}-{month:02d}"
        if day > 0:
            result = f"{year}-{month:02d}-{day:02d}"
    return result


def last_id(con):
    """
    Get last inserted ID (for after INSERT)
    PostgreSQL version - use RETURNING clause instead when possible
    """
    # In PostgreSQL, use RETURNING id_column in INSERT instead
    # This is here for compatibility but not recommended
    from webbsite.db import execute_query
    result = execute_query("SELECT lastval() as last_id")
    if result and len(result) > 0:
        return result[0]['last_id']
    return 0


def norm_url(url):
    """Normalize URL - convert https to http, add http:// prefix if missing"""
    if not url or url == '':
        return None

    if url.startswith('https'):
        return 'http' + url[5:]
    elif not url.startswith('http'):
        return 'http://' + url
    else:
        return url


def col_sum(arr, col_index):
    """Sum column of a 2D array"""
    total = 0
    for row in arr:
        if col_index < len(row):
            val = row[col_index]
            if isinstance(val, (int, float)):
                total += val
            elif isinstance(val, str) and val.replace('.', '').replace('-', '').isdigit():
                total += float(val)
    return total


def arr_sum(arr):
    """Sum a 1D array"""
    total = 0
    for val in arr:
        if isinstance(val, (int, float)):
            total += val
    return total
