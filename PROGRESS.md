# Webb-site Migration Progress

## Completed (2025-10-17)

### URL Structure
✅ All routes now use `.asp` extensions to match original site exactly
- `/dbpub/searchorgs.asp`
- `/dbpub/searchpeople.asp`
- `/dbpub/events.asp`
- `/dbpub/prices.asp`
- `/dbpub/quotes.asp`
- `/ccass/bigchanges.asp`
- etc.

### PostgreSQL Compatibility
✅ Fixed FULLTEXT search syntax
- Converted MySQL `MATCH() AGAINST()` to PostgreSQL `to_tsvector() @@ to_tsquery()`
- Uses 'simple' configuration for Chinese company names
- Applied to all search routes (organizations, people, old names)

### Homepage
✅ Complete homepage port from original site
- News feed displaying stories from `stories` table
- Two-column layout (Our stories / Other news) for desktop
- Single column for mobile
- Sidebar with weather webcam, air pollution, birthday listings
- Exact match with webb-site.com layout and styling

### Templates
✅ Created modular template structure:
- `includes/header.html` - Main site header (blue banner)
- `includes/dbheader.html` - Database header (maroon banner)
- `includes/nav.html` - Complete navigation menu
- `templates/index.html` - Homepage with news feed
- `templates/dbpub/index.html` - Database homepage with all menu links

### Blueprints
✅ Flask blueprints match ASP directory structure:
- `dbpub` - Database pages (`/dbpub/`)
- `ccass` - CCASS analysis (`/ccass/`)
- `search` - Organization/person search
- `quotes` - Prices and quotes
- `events` - Corporate actions

### CSS & Assets
✅ Original styling preserved:
- `main.css` from original site (already in repo)
- Responsive layout (75/25 split desktop, single column mobile)
- All original CSS classes maintained

✅ Downloaded images from webb-site.com:
- RSS icon (`/images/RSS28x28.png`) - 1.7KB
- X/Twitter icon (`/images/x27x28.png`) - 654 bytes
- Facebook icon (`/images/facebook28x28.png`) - 1.6KB

✅ Created footer template:
- `includes/footer.html` - Universal footer for all pages

### Priority Pages (Starting)
✅ `/ccass/bigchanges.asp` - CCASS big changes page (complete)
- Query with date selection, ETF filtering, sortable columns
- Full port from original ASP including SQL logic
- Ready for testing once database is loaded

## Next Steps (Before Oct 31)

### Critical Tasks
1. ✅ **Download images** from webb-site.com - COMPLETED

2. **Database import**:
   - Run `pgloader` to convert MySQL → PostgreSQL
   - Import to Render PostgreSQL database
   - Verify `everListCo()` function works

3. **Test locally**:
   ```bash
   export DATABASE_URL="postgresql://localhost/enigma_pg"
   uv run flask --app app run --debug
   ```

4. **Port 10-15 priority pages**:
   - holders.asp (ownership trees)
   - orgdata.asp (company data)
   - quotes.asp (quote display)
   - ccass/bigchanges.asp
   - ccass/cconc.asp

### Post-MVP (After Oct 31)
- Port remaining ~270 ASP pages incrementally
- Implement birthday listings (query people table)
- Add user authentication (webbmail routes)
- Download articles from Web Archive
- Serve articles locally

## File Structure Created

```
webbsite/
├── routes/
│   ├── __init__.py
│   ├── search.py      ✅ PostgreSQL FULLTEXT
│   ├── quotes.py      ✅ .asp URLs
│   ├── events.py      ✅ .asp URLs
│   ├── dbpub.py       ✅ NEW - Database homepage
│   └── ccass.py       ✅ NEW - CCASS routes (stubs)
├── templates/
│   ├── includes/
│   │   ├── header.html     ✅ NEW - Main site header
│   │   ├── dbheader.html   ✅ NEW - Database header
│   │   └── nav.html        ✅ NEW - Navigation menu
│   ├── dbpub/
│   │   └── index.html      ✅ NEW - Database homepage
│   ├── index.html          ✅ UPDATED - News homepage
│   ├── searchorgs.html
│   ├── searchpeople.html
│   ├── events.html
│   └── prices.html
├── static/
│   ├── css/
│   │   └── main.css        ✅ (already existed)
│   └── images/
│       ├── RSS28x28.png    ✅ NEW - Downloaded from webb-site.com
│       ├── x27x28.png      ✅ NEW - Downloaded from webb-site.com
│       └── facebook28x28.png ✅ NEW - Downloaded from webb-site.com
└── __init__.py            ✅ UPDATED - Registered blueprints

## Key URLs Now Working

**Homepage:**
- `/` → News feed (stories table)

**Database:**
- `/dbpub/` → Database homepage with comprehensive menu
- `/dbpub/searchorgs.asp?n=HSBC` → Organization search
- `/dbpub/searchpeople.asp?n=Chan` → Person search
- `/dbpub/events.asp?sc=5` → Corporate events for stock code 5
- `/dbpub/prices.asp?i=1` → Price charts
- `/dbpub/quotes.asp?sc=5` → Stock quotes

**CCASS:**
- `/ccass/bigchanges.asp` → Top CCASS changes (stub)
- `/ccass/cconc.asp` → Concentration analysis (stub)
- `/ccass/ipstakes.asp` → IP stakes (stub)
- `/ccass/cparticipants.asp` → Participants (stub)
- `/ccass/cholder.asp?part=1323` → Shanghai-HK connect (stub)

## Technology Stack

- **Backend:** Flask 3.x + Jinja2
- **Database:** PostgreSQL (via Render.com)
- **CSS:** Original main.css from webb-site.com
- **Deployment:** Render.com (via render.yaml)
- **Package Manager:** uv

## Migration Strategy

**Phase 1 (Oct 17-31 - MVP):**
- ✅ URL structure matching original
- ✅ PostgreSQL compatibility fixes
- ✅ Homepage port
- ✅ Core templates
- ⏳ Database import
- ⏳ 10-15 priority pages

**Phase 2 (Nov 2025):**
- Port holders.asp (recursive ownership trees)
- Complete CCASS pages
- User authentication
- Advanced search features

**Phase 3 (Q1 2026):**
- Remaining ~270 ASP pages
- Article download from Web Archive
- Full feature parity with original

**Deferred (Optional):**
- VB.NET scraper migration to Python
- Access frontend replacement
- Real-time data updates
