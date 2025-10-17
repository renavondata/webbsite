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
