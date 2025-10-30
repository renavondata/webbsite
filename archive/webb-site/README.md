# Webb-site.com Archive - October 29-30, 2025

**Emergency preservation archive created 1-2 days before server shutdown (Oct 31, 2025)**

## Archive Statistics

- **Archive Date:** October 29-30, 2025 (22:49 GMT - 09:00 GMT)
- **Source:** https://webb-site.com (original dedicated server, pre-shutdown)
- **Unique Routes:** 98+ distinct .asp files
- **Total Pages:** 1,979 HTML snapshots (including parameter variations)
- **Total Size:** 204 MB
- **Coverage:** ~34% of estimated 284 total routes

### Archive Components

**Manual Targeted Archives:**
- **dbpub/**: 708 files (73MB) - Targeted samples of key routes with specific parameters
- **ccass/**: 14 files (8.1MB) - CCASS holdings data for sample stocks

**Intelligent Discovery (wget --mirror --level=2):**
- **crawl/**: 628 files (67MB) - Organically discovered routes by following site navigation
- **Discovered:** 98 unique route patterns from dbpub/ home page links

The intelligent crawl approach nearly doubled unique route coverage (53→98) by letting the site's own navigation reveal valid parameter combinations instead of guessing parameters.

## Purpose

This archive preserves working ASP page output from the original Webb-site.com server before its October 31, 2025 shutdown. The archived HTML serves as:

1. **Ground truth reference** - Compare Flask migration output against original ASP
2. **Test fixtures** - Use for pytest tests to ensure Flask matches ASP behavior
3. **Documentation** - Understand original page structure, data formatting, SQL patterns
4. **Fallback** - Reference if Flask route is broken or incomplete

## Contents

### Directory Structure

```
archive/webb-site/
├── README.md              # This file
├── INVENTORY.txt          # Complete list of archived files (legacy - manual archive only)
├── UNIQUE_ROUTES.txt      # Unique route types from manual archive (legacy)
├── CRAWLED_ROUTES.txt     # 98 unique routes discovered by intelligent crawl
├── dbpub/                 # Manual archive: database query pages (708 files, 73MB)
├── ccass/                 # Manual archive: CCASS holdings pages (14 files, 8.1MB)
├── dbpub_crawled/         # Consolidated crawl results (628 files, 57MB)
├── ccass_crawled/         # Placeholder for CCASS crawl (empty)
├── crawl/                 # Raw wget output (628 files, 67MB)
├── ground_truth/          # Reserved for curated test fixtures
└── test/                  # Initial test archive
```

### Coverage by Category

#### Core Search & Browse (5 routes)
- `searchorgs.asp` - Organization search
- `searchpeople.asp` - Person search
- `dbpub/` - Database home page
- `listed.asp` - Listed companies (1.2MB)
- `delisted.asp` - Delisted companies (444KB)

#### Stock Data Routes (6 routes × 5 stocks = 30 pages)
Sample stocks: 1 (CKH), 5 (HSBC), 700 (Tencent), 1299 (AIA), 9988 (Alibaba)
- `quotes.asp` - Stock quotes (some failed)
- `events.asp` - Corporate actions
- `orgdata.asp` - Company details
- `officers.asp` - Directors and officers
- `advisers.asp` - Auditors and advisers
- `positions.asp` - Shareholdings

#### CCASS Routes (6 routes + variations = 14 pages)
- `ccass/` - CCASS home
- `choldings.asp` - Current holdings
- `bigchanges.asp` - Significant changes
- `cconchist.asp` - Concentration history
- `ctothist.asp` - Total holdings history
- `cparticipants.asp` - Participant list
- `bigchangespart.asp` - Changes by participant

#### Statistical Routes (20+ routes)
**Incorporation/Dissolution:**
- `incHKmonth.asp` - HK inc by month
- `incHKannual.asp` - HK inc annual
- `incHKcaltype.asp` - HK inc by type (1.7MB!)
- `disHKcaltype.asp` - HK dissolution by type
- `oldestHKcos.asp` - Oldest HK companies
- `cosperdomHK.asp` - Companies per domicile
- `regHKannual.asp` - HK registration annual
- `disFcal.asp` - Foreign dissolution
- `incFcal.asp` - Foreign incorporation (412KB)
- `incUKcaltype.asp` - UK inc by type (1.6MB)
- `domregHK.asp` - HK domicile registration

**Director Statistics:**
- `boardcomp.asp` - Board composition
- `dirsHKPerPerson.asp` - Directorships per person
- `auditorchanges.asp` - Auditor changes
- `DirsHKAgeDistn.asp` - Directors age distribution
- `DirsHKDistnPeople.asp` - Directors distribution people
- `DirsPerListcoHKdstn.asp` - Directors per listco
- `FDirsPerListcoHKdstn.asp` - Female directors
- `bornday.asp` - Born on this day
- `bornyear.asp` - Born in this year

**Market Data:**
- `buybacks.asp` - Share buybacks
- `buybackstime.asp` - Buybacks by time
- `mcap.asp` - Market capitalization
- `str.asp` - Short term returns
- `alltotrets.asp` - All total returns
- `gemgrads.asp` - GEM graduates

#### Professional Data (8 routes)
- `sfclicensees.asp` - SFC licensees
- `sfcactivity.asp` - SFC activity
- `solicitors.asp` - Solicitors
- `lawfirms.asp` - Law firms
- `adviserships.asp` - Adviserships
- `auditornotes.asp` - Auditor notes

#### Transport & Misc (8 routes)
- `veengine.asp` - Vehicle engines
- `vefuel.asp` - Vehicle fuel types
- `veage.asp` - Vehicle age
- `traffic.asp` - Traffic stats
- `parking.asp` - Parking stats
- `domicile.asp` - Domicile
- `domicilechange.asp` - Domicile changes
- `domicilecos.asp` - Domicile companies
- `FAQW.asp` - FAQ Webb
- `FAQWWW.asp` - FAQ WWW
- `complain.asp` - Complain page

## What's NOT Archived

Due to time constraints before Oct 31 shutdown, the following were NOT archived:

### Not Captured (Estimated ~190 routes)
- **Authentication routes** (34): login, signup, user profiles, personalization
- **Database editing** (53): Admin interfaces for data management
- **Articles** (20+): News articles and stories (preserved on Archive.org)
- **Complex specialty routes**: Recursive ownership trees, advanced charting
- **Parameter variations**: Only 5 sample stocks captured, not all 3000+ companies
- **Date ranges**: Only current data, not historical date parameters

### Failed Downloads
Some pages returned HTTP errors during archiving:
- `quotes.asp?sc=1` - May require different parameters
- `incHKsurvive.asp` - 404 or access error
- Various other parameter combinations

## Usage Examples

### Comparing Flask vs ASP Output

```python
# tests/test_ground_truth.py
def test_listed_companies_matches_asp():
    """Verify Flask listed.asp matches archived ASP output"""

    # Get Flask output
    flask_resp = client.get("/dbpub/listed.asp")

    # Load archived ASP output
    with open("archive/webb-site/dbpub/listed.html") as f:
        asp_html = f.read()

    # Compare (after normalizing dynamic elements)
    assert normalize_html(flask_resp.data) == normalize_html(asp_html)
```

### Using as Reference During Development

```bash
# Open archived page in browser to see original layout/data
firefox archive/webb-site/dbpub/listed.html

# Compare table structure
grep -A 10 "<table" archive/webb-site/dbpub/listed.html

# Extract SQL logic from ASP comments (if preserved)
grep -i "SQL\|SELECT\|FROM" archive/webb-site/dbpub/orgdata_sc1.html
```

### Serving Locally

```bash
# Serve archive via HTTP for easy browsing
cd archive/webb-site
python3 -m http.server 8000

# Open in browser: http://localhost:8000/dbpub/
```

## Archive Process

### Tools Used
- `curl` - HTTP client for downloading pages
- `bash` scripts - Orchestration and bulk downloads
- Parameter sampling - 5 stocks, 5 companies, 3 CCASS samples

### Archiving Strategy
1. **Breadth-first** - Prioritized unique .asp files over parameter depth
2. **0.5s delay** - Polite to server (didn't want to hammer it before shutdown)
3. **Error handling** - Continued on failures, logged errors
4. **Two-phase** - Core routes first, then extended routes

### Scripts
- `archive_routes.sh` - Core 71 pages (search, stock data, CCASS)
- `archive_routes_extended.sh` - Additional 24 pages (statistics, specialty)

## Known Issues & Limitations

### Missing Parameter Coverage
- Only 5 sample stocks (of 3000+ companies)
- Only current date (no historical date ranges)
- Only successful pages (some had HTTP errors)

### Data Currency
- Archive captured Oct 29, 2025 data
- Database had Oct 11, 2025 data (18 days stale)
- Some pages may show stale/incomplete data

### HTML Only
- CSS/images/JS not fully captured
- Some linked resources may 404
- Intended for HTML structure reference, not full visual reproduction

### ASP Logic Not Preserved
- Only HTML output captured, not source ASP code
- ASP source code separately preserved in `Webb-site ASP files/` directory
- Cannot see server-side logic from HTML alone

## Maintenance Notes

### After Oct 31, 2025
Once the original server is offline, this archive becomes the **only reference** for ASP output.

### If More Archiving Needed
To archive additional routes before Oct 31:

```bash
# Add route to archive_routes_extended.sh
save_page "$BASE/dbpub/newroute.asp" "$OUT/dbpub/newroute.html" "Description"

# Run script
bash archive_routes_extended.sh

# Update inventory
find archive/webb-site -name "*.html" > INVENTORY.txt
```

### Comparing New Routes
When implementing new Flask routes:

1. Check `UNIQUE_ROUTES.txt` - is ASP version archived?
2. If yes: Use as reference for expected output format
3. If no: Implement based on ASP source code + database structure

## License & Attribution

**Original Data:** © David M. Webb 1998-2025, Webb-site.com
**Archive:** Created for preservation purposes under CC-BY 4.0
**Usage:** Free for reference, comparison, testing, documentation

When using this archive, acknowledge:
- "ASP output preserved from Webb-site.com (Oct 29, 2025)"
- Link to https://webb-site.com (Archive.org after Oct 31)

## Related Files

- `/Webb-site ASP files/` - Original ASP source code
- `/webbsite/templates/` - Flask/Jinja2 templates (migration)
- `/webbsite/routes/` - Flask routes (migration)
- `/tests/` - pytest tests comparing Flask vs ASP output
- `CLAUDE.md` - Full migration documentation

## Historical Context

This archive was created during an emergency migration of Webb-site.com from a dedicated Windows/IIS server to cloud-hosted Flask/PostgreSQL on Render.com. The original server shut down on October 31, 2025 after 27 years of continuous operation.

**Webb-site.com milestones:**
- 1998: Founded by David M. Webb
- 2007: CCASS data collection began (June 26)
- 2025: Emergency cloud migration (October 1-31)
- 2025: Server shutdown (October 31)
- 2025: New site live at Render.com (October 22 - 9 days early!)

This archive preserves the working reference implementation from the original site's final days.

---

**Archive created:** October 29, 2025 22:49 GMT
**Archived by:** Claude Code (automated scripts)
**For:** Webb-site Flask migration project
**Contact:** See project README.md for maintainer information
