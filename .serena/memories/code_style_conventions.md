# Code Style and Conventions

## Flask/Python (Production Platform)

### Module Structure
```python
"""Module docstring explaining purpose."""

from flask import Blueprint, request, render_template
from webbsite.db import get_db_connection
from webbsite.asp_helpers import get_int, get_str, get_bool

bp = Blueprint('module_name', __name__, url_prefix='/prefix')

@bp.route('/route_name')
def route_name():
    """Route docstring explaining functionality."""
    # Implementation
    pass
```

### Naming Conventions

**Functions and Routes:**
- snake_case for Python functions: `get_int()`, `get_str()`, `rem_space()`
- Route URLs match ASP filenames: `/dbpub/searchorgs`, `/ccass/bigchanges`

**Variables:**
- snake_case: `person_id`, `issue_id`, `stock_code`
- Descriptive names preferred over single letters
- SQL query variables: `query`, `params`, `result`

**Database Fields:**
- camelCase preserved from original schema: `issueID`, `personID`, `atDate`
- Use column names exactly as in PostgreSQL schema

### Code Patterns

**Parameter Extraction:**
```python
from webbsite.asp_helpers import get_int, get_str, get_bool

person_id = get_int(request.args.get('p'))
search_term = get_str(request.args.get('q'))
show_all = get_bool(request.args.get('all'))
```

**Database Queries (ALWAYS use parameterized queries):**
```python
with get_db_connection() as conn:
    result = conn.execute(
        "SELECT * FROM enigma.organisations WHERE personID = %s",
        (person_id,)
    ).fetchone()
```

**Error Handling:**
- Use try/except for expected errors
- Log errors to stderr (captured by Render.com)
- Return user-friendly error messages

**Functional Programming:**
- Prefer functional approach over imperative
- Use list comprehensions and map/filter where appropriate
- Minimize side effects
- Example: `[row['name'] for row in results]`

### Comments and Docstrings
```python
def route_name():
    """Brief description of what route does.
    
    Query Parameters:
        p (int): Person ID
        q (str): Search query
        all (bool): Show all results
    
    Returns:
        Rendered template with results.
    """
    # Implementation comments explain "why" not "what"
    pass
```

## VB.NET Modules (Windows Backend)

### Module Structure
```vb
Option Compare Text        ' Case-insensitive string comparisons
Option Explicit On         ' Require variable declarations
Imports System.Net.Mail
Imports System.IO

Public Module ModuleName
    ' Code here
End Module
```

### Naming Conventions

**Functions and Subroutines:**
- PascalCase for public functions: `GetWeb3()`, `ErrMail()`, `CleanStr()`
- Descriptive names for utility functions: `DBdate()`, `DBint()`, `Apos()`

**Variables:**
- Short single-letter names common in older code: `e`, `i`, `x`, `y`
- Descriptive names for complex data: `cookies`, `Buffer`, `tries`
- Type suffixes not required (type inference used)

**Database Fields:**
- camelCase for multi-word fields: `issueID`, `personID`, `stockCode`
- Single word lowercase when appropriate: `name`, `date`, `rank`

### Code Patterns

**String Escaping:**
```vb
Function Apos(s As String) As String
    'escape apostrophe for SQL
    If s = "" Then Apos = "" Else Apos = Replace(s, "'", "''")
End Function
```

**Database Field Conversion:**
```vb
Function DBdate(f As ADODB.Field) As Date
    If IsDBNull(f.Value) Then Return Nothing Else Return CDate(f.Value)
End Function
```

**Error Handling:**
- Use `On Error Resume Next` for expected errors
- Email errors using `ErrMail(subject, Err, detail)`
- Log completion using `PutLog(key, value)`

**Functional Programming:**
- Prefer functional approach over imperative
- Heavy use of pure functions for data transformation
- Minimize side effects where possible

### Comments
- Single-line comments using apostrophe: `'comment here`
- Placed above code or at end of line
- Explain "why" not "what" for non-obvious code

## Classic ASP (RETIRED - Archived Reference Only)

**Status:** Classic ASP code is archived for reference only. Original webb-site.com shut down October 31, 2025. ASP files preserved in repository for:
- Reference when implementing Flask routes
- Historical documentation
- Understanding original business logic

**Do NOT modify ASP files unless:**
- Correcting historical documentation
- Clarifying original implementation for Flask migration
- Updating comments for clarity

### File Structure
- **functions1.asp** - Core function library (reference for Flask asp_helpers.py)
- **navbars.asp** - Navigation menus (reference for Flask templates)
- Page-specific logic in individual .asp files

### Naming Conventions

**Functions:**
- camelCase: `eMailCheck()`, `fileName()`, `currPage()`
- Descriptive names: `openEnigma()`, `closeCon()`, `writeNav()`

**Variables:**
- Short names for loop counters: `x`, `i`
- Descriptive names for data: `con` (connection), `rs` (recordset), `parts` (array)

**Hungarian Notation (Common):**
- `rs` - Recordset
- `con` - Connection
- `e` - Error or email address
- `s` - String

### Code Patterns

**IIF Function (VBScript custom):**
```vbscript
Function IIF(c,a,b)
    'both a and b evaluated before passing
    If c Then IIF=a Else IIF=b
End Function
```

**Database Connections:**
```vbscript
Dim con
Call openEnigma(con)
' ... use connection ...
Call closeCon(con)
```

**Recursive Subroutines:**
- Used for hierarchical data (ownership trees in holders.asp)
- Function `holdersGen()` - recursive ownership tree generation

### Comments
- Single-line comments: `'comment`
- Explain business logic and database relationships
- Note performance considerations for complex queries

## SQL Code (PostgreSQL Production)

### Naming Conventions

**Tables:**
- lowercase plural for data tables: `holdings`, `quotes`, `directorships`
- lowercase singular for lookup tables: `calendar`, `positions`

**Columns:**
- camelCase for multi-word: `issueID`, `personID`, `atDate`
- lowercase single word: `name`, `rank`, `val`
- Suffix with date type: `fromDate`, `toDate`, `atDate`

**Stored Procedures/Functions:**
- camelCase: `insertUserID()`, `hasRole()`, `maxRank()`
- Descriptive action verbs

### Design Patterns

**Right-Open Intervals:**
- Period includes "from" date, excludes "until" date
- Example: directorships table uses `from` and `until` dates
- `until` IS NULL means position is current

**Unique Constraints:**
Organizations:
- `name1` must be unique
- Append domicile code, incorporation date, or dissolution date for disambiguation
- `namehash` column (MD5 of normalized name) maintained by trigger

People:
- `(name1, name2)` pair must be unique
- English given name first: "Chan, David Chi Keung"
- Simplified names (`dn1`, `dn2`) maintained by triggers

**Triggers:**
- Maintain computed columns (namehash, simplified names)
- Enforce privilege checks (insertUserID, updUserID)
- Use stored procedures for complex logic

### PostgreSQL Specifics
- Schema qualification required: `enigma.organisations`, `ccass.holdings`
- Modulo operator: Use `MOD()` function instead of `%`
- Full-text search: Use `to_tsvector()` and `to_tsquery()`
- Date arithmetic: Use PostgreSQL interval syntax
- String concatenation: Use `||` operator

## General Principles

1. **Functional over Imperative:** Prefer functional programming where possible (per user instructions)
2. **Defensive Checks:** Always check for NULL/None before using database values
3. **Logging:** Use log tables to track scraper progress and detect failures (VB.NET)
4. **Error Reporting:** Email errors immediately using ErrMail function (VB.NET)
5. **Character Encoding:** Use UTF-8 for all text to support Chinese characters
6. **Date Handling:** Use MSdate() function to convert VB.NET dates to MySQL format
7. **SQL Injection Prevention:** 
   - Flask: Use parameterized queries (psycopg2 handles escaping)
   - VB.NET: Use Apos() function to escape strings
8. **Performance:** Connection pooling in Flask, CCASS schema optimization for PostgreSQL

## File Organization

**Flask (Production):**
- Routes organized in blueprints: `webbsite/routes/`
- 15 route modules by function: `statistics.py`, `corporate.py`, `ccass.py`, etc.
- Templates in: `webbsite/templates/`
- Helpers in: `webbsite/asp_helpers.py`, `webbsite/db.py`

**VB.NET (Windows Backend):**
- One module per file: `CCASS.vb`, `Quotes.vb`, `SFC.vb`
- Shared utilities in: `ScraperKit.vb`, `JSONkit.vb`
- No solution (.sln) files in repository (individual modules)

**ASP (Archived):**
- Organized by function in subdirectories: `dbpub/`, `ccass/`, `webbmail/`
- Shared functions in: `functions1.asp`, `navbars.asp`
- Templates in: `templates/` directory
- **For reference only** - not for production use

**SQL:**
- Schema dumps in dated folders: `enigma251011/`, `ccass251011/`
- Separate files for structure, data, triggers
- Load order: structure → data → triggers
