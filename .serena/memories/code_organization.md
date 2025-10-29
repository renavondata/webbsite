# Code Organization Guide

## Overview

As of Oct 28, 2025, the Webb-site Flask application uses a modular blueprint architecture. The previously monolithic `dbpub.py` (14,832 lines, 172 routes) was refactored into 15 focused sub-modules for better maintainability.

## Directory Structure

```
webbsite/
├── __init__.py                    # Flask app factory, blueprint registration
├── config.py                      # Environment variables, database config
├── db.py                          # Database connection helpers
├── asp_helpers.py                 # ASP compatibility functions (get_int, get_str, etc.)
│
├── routes/
│   ├── search.py                  # 2 routes - Company/person search (working)
│   ├── pages.py                   # 13 routes - Static content pages (stubs)
│   ├── contact.py                 # 1 route - Contact form (stub)
│   │
│   ├── ccass/                     # CCASS routes (95% complete - 18/19 working)
│   │   ├── __init__.py
│   │   ├── bigchanges.py          # Big ownership changes
│   │   ├── concentration.py       # Market concentration analysis
│   │   ├── participants.py        # CCASS participant directory
│   │   ├── holdings.py            # Holdings data
│   │   └── session.py             # Session state management
│   │
│   ├── articles/                  # Article system
│   │   ├── __init__.py
│   │   └── routes.py              # Article display, categories, tags
│   │
│   ├── dbpub/                     # Database public pages (15 sub-modules)
│   │   ├── __init__.py            # Blueprint registration
│   │   ├── statistics.py          # 85 routes - Stats, incorporations, directors
│   │   ├── corporate.py           # 7 routes - Company data pages
│   │   ├── incorporations.py      # 14 routes - Registration calendars
│   │   ├── transport.py           # 12 routes - Vehicle/traffic data
│   │   ├── sfc.py                 # 6 routes - SFC licensee data
│   │   ├── solicitors.py          # 4 routes - Law society data
│   │   ├── sdi.py                 # 6 routes - Significant dealer info
│   │   ├── buybacks.py            # 3 routes - Share buyback analysis
│   │   ├── short_selling.py       # 4 routes - Short position data
│   │   ├── events.py              # 3 routes - Corporate actions
│   │   ├── articles.py            # 5 routes - Story management
│   │   ├── market_data.py         # 4 routes - Prices, quotes, returns
│   │   ├── listings.py            # 3 routes - Listed/delisted companies
│   │   ├── people.py              # 1 route - Natural person data
│   │   └── index.py               # 1 route - dbpub home (stub)
│   │
│   ├── webbmail/                  # User personalization (DEFERRED - 17 stubs)
│   │   └── routes.py
│   │
│   ├── vote/                      # Polling system (DEFERRED - 6 stubs)
│   │   └── routes.py
│   │
│   ├── pollman/                   # Poll management (DEFERRED - 7 stubs)
│   │   └── routes.py
│   │
│   ├── mailman/                   # Mailing lists (DEFERRED - 4 stubs)
│   │   └── routes.py
│   │
│   └── dbeditor/                  # Database editing (DEFERRED - 53 stubs)
│       └── routes.py
│
└── templates/                     # Jinja2 templates
    ├── base.html                  # Base layout
    ├── header.html                # Navigation
    ├── footer.html                # Footer
    ├── dbpub/                     # Database page templates
    ├── ccass/                     # CCASS templates
    └── articles/                  # Article templates
```

## Blueprint Architecture

### Core Application (`__init__.py`)

The Flask app factory pattern:
```python
def create_app():
    app = Flask(__name__)
    app.config.from_object('webbsite.config.Config')
    
    # Register blueprints
    from webbsite.routes import search, pages, contact
    from webbsite.routes.dbpub import dbpub_bp
    from webbsite.routes.ccass import ccass_bp
    from webbsite.routes.articles import articles_bp
    # ... etc
    
    app.register_blueprint(search.bp)
    app.register_blueprint(dbpub_bp, url_prefix='/dbpub')
    app.register_blueprint(ccass_bp, url_prefix='/ccass')
    
    return app
```

### dbpub Module Organization

The dbpub routes are organized by **functional domain**, not alphabetically. Each module contains related routes that share:
- Similar data sources (same tables)
- Common business logic
- Related user workflows

#### Module Breakdown

**1. statistics.py (85 routes)** - Largest module
- Incorporation/dissolution statistics (HK, UK, foreign)
- Calendar views (year/month/day drill-down)
- Director statistics (board composition, directorship counts)
- Auditor statistics (auditor changes, Big 4 tracking)
- Survival analysis (company longevity)
- Annual/monthly aggregations
- Status: 63 working, 22 stubs

**2. corporate.py (7 routes)** - Core company pages
- orgdata.asp - Company profile (main detail page)
- advisers.asp - Corporate advisors (auditors, solicitors, etc.)
- officers.asp - Directors and officers
- splits.asp - Stock splits/consolidations
- positions.asp - Director positions history
- govac.asp - Government accounts lookup
- govac2.asp - Government accounts detail
- Status: 6 working, 1 stub

**3. incorporations.py (14 routes)** - Registration calendars
- HK domestic registrations (calendar views)
- HK foreign registrations (calendar views)
- UK registrations (calendar views)
- Dissolution/departure calendars
- Type filters, domicile filters
- Historical data (1663-present for UK)
- Status: 14 working, 0 stubs

**4. transport.py (12 routes)** - Vehicle/traffic data
- Vehicle registrations (new/used)
- Traffic accidents
- Parking spaces
- Ferry statistics
- Multi-year aggregations
- Status: 11 working, 1 stub

**5. sfc.py (6 routes)** - SFC licensee data
- Licensed persons directory
- Responsible officers
- Activities breakdown
- Firm listings
- Historical licensing data
- Status: 6 working, 0 stubs

**6. solicitors.py (4 routes)** - Law society data
- Solicitor directory
- Law firm directory
- Admission statistics
- Firm movement tracking
- Status: 4 working, 0 stubs

**7. sdi.py (6 routes)** - Significant dealer info
- SDI reportable positions
- Position history
- Dealer analysis
- Stock-specific views
- Status: 5 working, 1 stub

**8. buybacks.py (3 routes)** - Share buyback analysis
- Individual stock buybacks
- Time-based summaries
- Calendar views
- Split adjustment handling
- Status: 3 working, 0 stubs

**9. short_selling.py (4 routes)** - Short position data
- Short position tracking
- Historical short interest
- Stock-specific analysis
- Status: 3 working, 1 stub

**10. events.py (3 routes)** - Corporate actions
- Events calendar
- Dividend history
- Rights issues, bonus issues
- Status: 3 working, 0 stubs

**11. articles.py (5 routes)** - Content management
- Story listings
- Tag management
- Category filtering
- Article search
- Status: 1 working, 4 stubs

**12. market_data.py (4 routes)** - Prices and quotes
- Stock prices
- Historical quotes
- Total returns calculations
- Index data
- Status: 4 working, 0 stubs

**13. listings.py (3 routes)** - Listed companies
- Currently listed stocks
- Delisted stocks
- Listing history
- Status: 3 working, 0 stubs

**14. people.py (1 route)** - Natural persons
- natperson.asp - Individual person profiles
- Status: 1 working, 0 stubs

**15. index.py (1 route)** - Home page
- dbpub/ landing page
- Status: 0 working, 1 stub

## Adding New Routes

### Step 1: Choose the Right Module

Ask these questions:
1. **What data does it query?** (Choose module with similar tables)
2. **What workflow does it support?** (Group related user tasks)
3. **How many routes are already in the module?** (Prefer smaller modules if equal fit)

**Examples:**
- New incorporation stat → `statistics.py`
- New company detail page → `corporate.py`
- New CCASS analysis → `ccass/` sub-directory
- New article feature → `articles.py`

### Step 2: Add Route to Module

```python
# In webbsite/routes/dbpub/statistics.py (for example)

@bp.route('/newroute.asp')
def new_route():
    """Brief description of what this route does.
    
    ASP equivalent: dbpub/newroute.asp
    """
    # Get parameters
    param = get_int(request.args.get('p'), 0)
    
    # Query database
    with get_db_connection() as conn:
        data = conn.execute("""
            SELECT ... FROM enigma.table
            WHERE condition = %s
        """, (param,)).fetchall()
    
    # Render template
    return render_template('dbpub/newroute.html', data=data)
```

### Step 3: Create Template

```html
<!-- In webbsite/templates/dbpub/newroute.html -->
{% extends "base.html" %}

{% block title %}Page Title{% endblock %}

{% block content %}
<h1>Page Heading</h1>
<!-- Content here -->
{% endblock %}
```

### Step 4: Test

```bash
# Local testing
uv run flask run --port 5000

# Visit http://localhost:5000/dbpub/newroute.asp
```

### Step 5: Commit and Deploy

```bash
git add webbsite/routes/dbpub/statistics.py
git add webbsite/templates/dbpub/newroute.html
git commit -m "feat: Add newroute.asp - brief description"
git push origin master
# Auto-deploys to Render.com via CI/CD
```

## Module Selection Guidelines

### Choose statistics.py if:
- Aggregating data by time periods (annual, monthly)
- Creating statistical summaries
- Building calendar views
- Analyzing trends over time

### Choose corporate.py if:
- Displaying company profile information
- Showing corporate relationships
- Listing company officers or advisors
- Detail pages for specific companies

### Choose incorporations.py if:
- Calendar-based registration views
- Incorporation/dissolution analysis
- Domicile-based filtering
- Historical registration data

### Create new module if:
- Functionality doesn't fit existing modules
- Module would grow beyond ~100 routes
- Distinct data domain (new schema/tables)
- Separate business logic area

## Blueprint Registration

Blueprints are registered in two places:

**1. Module `__init__.py`:**
```python
# webbsite/routes/dbpub/__init__.py
from flask import Blueprint

bp = Blueprint('dbpub', __name__)

# Import routes from sub-modules
from webbsite.routes.dbpub import statistics
from webbsite.routes.dbpub import corporate
# ... etc
```

**2. App Factory:**
```python
# webbsite/__init__.py
from webbsite.routes.dbpub import dbpub_bp

app.register_blueprint(dbpub_bp, url_prefix='/dbpub')
```

## URL Routing

**Route patterns:**
- `/dbpub/route.asp` → routes in `routes/dbpub/*.py`
- `/ccass/route.asp` → routes in `routes/ccass/*.py`
- `/route.asp` → routes in `routes/*.py` (root level)

**Backwards compatibility:**
All routes use `.asp` extension to maintain URL compatibility with original ASP site.

## Common Patterns

### Database Query Pattern
```python
from webbsite.db import get_db_connection

with get_db_connection() as conn:
    result = conn.execute("SELECT ...", (param,)).fetchone()
    results = conn.execute("SELECT ...", (param,)).fetchall()
```

### Parameter Handling Pattern
```python
from webbsite.asp_helpers import get_int, get_str, get_bool

person_id = get_int(request.args.get('p'))  # Required
page = get_int(request.args.get('page'), 1)  # Optional with default
search = get_str(request.args.get('q'), '')  # String with default
```

### Template Rendering Pattern
```python
return render_template(
    'dbpub/template.html',
    data=data,
    param=param,
    title="Page Title"
)
```

### Error Handling Pattern
```python
if not person_id:
    return render_template('error.html', 
        message="Missing required parameter: p"), 400
```

## Testing

**Manual testing:**
```bash
# Start local server
uv run flask run --port 5000

# Test route
curl http://localhost:5000/dbpub/route.asp?p=123
```

**Automated testing:**
```bash
# Run test suite
uv run python tests/test_routes.py --verbose --route routename
```

## File Naming Conventions

**Route files:** `lowercase_with_underscores.py`
- statistics.py ✅
- StatisticsRoutes.py ❌

**Template files:** `lowercase.html` (match ASP filename)
- incHKannual.html ✅ (matches incHKannual.asp)
- inc_hk_annual.html ❌

**Blueprint names:** `module_bp` pattern
- dbpub_bp ✅
- dbpubBlueprint ❌

## Benefits of Current Organization

**Maintainability:**
- Smaller files easier to navigate (avg 150-600 lines vs 14,832)
- Related functionality grouped together
- Easier to find routes by topic

**Collaboration:**
- Multiple developers can work on different modules
- Reduced merge conflicts
- Clear module ownership

**Performance:**
- Faster IDE loading/indexing
- Quicker file searches
- Better code completion

**Scalability:**
- Easy to add new modules
- Can split modules if they grow too large
- Natural organization for new features

## Future Considerations

**Potential new modules:**
- `charts.py` - Highcharts/Highstock visualizations (if many added)
- `csv_exports.py` - CSV export routes (if extracting from main modules)
- `government.py` - Government-specific data (Treasury, HKMA, etc.)

**Refactoring candidates:**
- statistics.py is large (85 routes) - could split by subdomain:
  - `statistics/incorporations.py`
  - `statistics/directors.py`
  - `statistics/auditors.py`

**Testing priorities:**
- Add tests for each module
- Integration tests across modules
- Performance benchmarks per module
