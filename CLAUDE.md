# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

The Webb-site codebase is a multi-tier financial data platform that scrapes, processes, and publishes Hong Kong stock market data. It consists of:

1. **VB.NET scraping modules** - Automated data collection from various HK sources (HKEX, SFC, Companies Registry, etc.)
2. **MySQL databases** - Core data storage across multiple schemas (enigma, ccass, private, iplog, mailvote)
3. **Classic ASP web interface** - Public-facing query and reporting system (BEING MIGRATED TO FLASK)
4. **Access frontend** - Database editing system for manual data management

## Modernization in Progress (Oct 2025)

**URGENT:** The original Webb-site.com dedicated server shuts down **October 31, 2025**. An emergency migration is underway to preserve public access to 35 years of Hong Kong financial data.

### New Technology Stack

**Frontend Migration (Priority 1 - Oct 31 deadline):**
- Classic ASP → **Flask + Jinja2 + HTMX** (Python 3.11+)
- MySQL replica → **PostgreSQL on Render.com** (managed cloud database)
- Dedicated server → **Render.com Web Service** (cloud platform)

**Backend (Deferred - continues operating):**
- VB.NET scrapers continue running on Windows backend
- Weekly database dumps uploaded to Google Drive
- Automated import to Render PostgreSQL

### Current Migration Status (Oct 19, 2025)

**✅ Completed:**
- Flask application structure with 192 routes created
- PostgreSQL database imported locally (all tables, indexes, functions)
- **24 routes fully working** with SQL implementation (MVP target exceeded!)
- Templates and CSS extracted from legacy ASP
- ASP helper functions ported to Python (asp_helpers.py)

**⚠️ In Progress:**
- 165 skeleton routes need SQL implementation
- Deployment to Render.com staging environment
- Performance testing and optimization

**❌ Not Started:**
- 109 specialty routes not yet created
- Production deployment and domain setup

**Working Routes:**
- Core search: searchorgs.asp, searchpeople.asp
- Stock data: prices.asp, quotes.asp, events.asp, listed.asp, delisted.asp, code.asp
- Company data: orgdata.asp, advisers.asp, officers.asp, splits.asp, positions.asp
- Articles: All article routes (index, individual articles)
- CCASS: bigchanges.asp, bigchangesissue.asp, bigchangespart.asp, cconc.asp, cparticipants.asp, ipstakes.asp, choldings.asp

See `docs/modernization-roadmap.md` for complete migration plan.

## License and Attribution

The Webb-site datasets and software are released under **Creative Commons CC-BY 4.0 license** - free for commercial or non-commercial use with attribution. Data are provided "as is" without liability.

Users are encouraged to:
- Mirror this repository on their own servers with public access
- Build upon these datasets and make them freely available
- Acknowledge Webb-site.com as the source when republishing

See `Copyright and disclaimer.md` for full details.

## Building VB.NET Scrapers

### Development Environment

The scrapers are built using **Visual Studio 2022** (or later) on Windows:

1. Import configuration: Use the `.vsconfig` file in `VB.net files/` folder with Visual Studio Installer
2. Project type: **Console App (.NET Framework)** for command-line applications
3. Platform: Compile all modules to **x64** platform
4. Solution structure: Each module should be in its own Project under a common Solution (e.g., "Enigma")

### Required References

For most modules, add these references via Reference Manager:

1. **Microsoft ADODB** (Assemblies/Extensions)
   - Version: 7.0.3300.0
   - Set "Copy Local" = **True**
   - Set "Embed Interop Types" = **False**

2. **ScraperKit** and **JSONkit** (Projects/Solution)
   - Most modules import ScraperKit
   - Some modules also use JSONkit for JSON parsing

See `VB.net files/Notes on compiling the VB.net code.md` for detailed compilation instructions.

## Scraper Scheduling

Scrapers run on different schedules based on data source update frequency:

| Scraper | Schedule | Notes |
|---------|----------|-------|
| **Quotes** | 22:00 Mon-Fri | Must run before CCASS |
| **CCASS** | 04:00 Tue-Sat | Captures previous-day changes, depends on Quotes |
| **GetFinancialReports** | 02:30 Mon-Sat | HKEX cut-off 23:00, no Saturday filings |
| **SFC** | 03:00 Tue-Sat | |
| **HKlawSoc** | 23:00 Mon-Fri | |
| **HKEXdata** | 17:00 Mon-Fri | |
| **Listing** | 18:20 Mon-Fri | |
| **SDI** | 18:00 Mon-Fri | |
| **LandReg** | 18:30 Mon-Fri | |
| **CR** | 18:30 Weekdays | HK Companies Registry files published weekly |
| **HKMA** | 18:15 Mon-Fri | |
| **Transport** | 19:00 Mon-Fri | |
| **Quarantine** | 19:00 Daily | |
| **housing** | 20:00 Fridays | |
| **ImmD** | 11:30 Daily | Immigration data |
| **BuyBacks** | 10:45 Weekdays | **Requires logged-in session** for old-format .XLS |
| **HKflights** | Hourly | |
| **UKCH** | Continuous | Updates 14,160 oldest records (~1 hour), checks for new companies, repeats |
| **Treasury** | Manual only | Government Accounts Explorer - complex manual process |

**Critical Dependencies:**
- CCASS must run after Quotes completes (checks MBquotesDate and GEMquotesDate logs)
- Missing a day of CCASS data for delisted stocks is unrecoverable (HKEX deletes immediately)

See `VB.net files/Suggested run times.md` for detailed scheduling recommendations.

## MySQL Configuration

### Version Requirements

- **Recommended:** MySQL 8.0.37 (current) or 8.4.5 LTS
- **Avoid:** MySQL 9.x Innovation series (breaks compatibility, moves fast)
- **ODBC Driver:** MySQL ODBC 8.4.0 Unicode Driver (last in 8.x series)

### Critical MySQL Settings (my.ini)

Required for correct operation:

```ini
# Precision for total returns calculations
div_precision_increment = 8

# Character set for multibyte Chinese characters
character-set-server = utf8mb4
collation-server = utf8mb4_unicode_ci

# Full-text index settings for short Chinese names (e.g., "Au")
innodb_ft_min_token_size = 2
innodb_ft_enable_stopword = 0

# Role activation
activate_all_roles_on_login = ON
```

### Performance Settings

Recommended for 32GB RAM master server:

```ini
innodb_buffer_pool_size = 20G        # Up to 80% of RAM
innodb_redo_log_capacity = 2G
innodb_flush_log_at_trx_commit = 0
innodb_log_buffer_size = 1M
innodb_thread_concurrency = 17
innodb_buffer_pool_instances = 8
innodb_file_per_table = 1
sort_buffer_size = 256K
```

**Note:** CCASS schema must be resident in RAM for reasonable speed (~45 min runtime on 32GB machine).

### DSN Configuration

**Master Server (Assistant3) - User DSNs:**

- **enigmaMySQL**: localhost, Database=enigma, User=David (or your master user), "Return matched rows"
- **CCASS**: localhost, Database=ccass, User=David, "Return matched rows"

**Slave Server (Webb-site) - System DSNs:**

- **enigmaMySQL**: localhost, Database=enigma, User=Web
- **CCASSserver**: localhost, Database=ccass, User=Web
- **conAuto**: master server domain, Database=enigma, User=auto, "Return matched rows"
- **mailvote**: localhost, Database=mailvote, User=Web, "Return matched rows"

**Editor PCs on LAN - User DSNs:**

- **EnigmaMySQL**: Master server IP/name, Database=enigma, User=<local MySQL account>, "Return matched rows"
- **CCASS**: Master server IP/name, Database=ccass, User=<local MySQL account>, "Return matched rows"

See `Setting up the Webb-site database/Setting up the Webb-site Database.md` for complete setup instructions.

### Schema Restoration

For schemas with triggers (Enigma), restore in this order to prevent triggers from altering data:

1. Structure file
2. Data file
3. Triggers file

**Definer Issue:** Create MySQL user "David" with global privileges before loading schemas (all stored procedures/functions/views were defined by this user, not root).

### IIS/ASP Configuration

In Windows Internet Information Services:

- **Enable Parent Paths**: True (required for "../" includes between directories)
- **Send Errors to Browser**: True (development server only, not production)

## Database Architecture

### Master-Slave Replication

The system uses multiple MySQL databases with replication between private (master) and public (slave) servers:

- **Master (Assistant3):** Windows 10 PC in HK - runs scrapers, stores private data
- **Slave (Webb-site):** Windows Server 2016 in USA - mirrors data for public access

Single-server setup is possible but requires careful backups.

### Schemas

- **enigma** - Main database containing companies, persons, securities, events, financial reports
- **ccass** - CCASS (Central Clearing and Settlement System) holdings data tracking beneficial ownership
- **private** - Private keys and credentials (master only, not replicated)
- **iplog** - IP address logging and bot protection (slave only)
- **mailvote** - User authentication, polling system, newsletter (slave only)

Key architectural patterns:
- SQL grants are separated between master and slave configurations
- Database schemas are versioned with date suffixes (e.g., enigma251011)
- All tables use InnoDB engine (not myISAM)

## Schema Details

### CCASS Schema

The CCASS schema tracks beneficial ownership through Hong Kong's Central Clearing and Settlement System. Historical data extends back to 2007-06-26 (unlike HKEX which only shows 1 year).

**Key Tables:**

- **holdings** - Primary key: (issueID, partID, atDate) - optimized for analyzing holder changes in a stock
- **parthold** - Primary key: (partID, issueID, atDate) - optimized for analyzing participant holdings across stocks
- **dailylog** - Daily summaries including concentration metrics (top 5, top 10)
- **quotes** - Historic prices/volumes from Daily Quotations Sheets since 1994-01-03
- **pquotes** - Parallel trading quotes (during splits/consolidations)
- **calendar** - Settlement calendar mapping tradeDate to settleDate (normally T+2)
- **specialdays** - Public holidays, bad weather days, early closures
- **shortnames** - Stock short-names from SEHK Daily Quotations Sheets
- **bigchanges** - Significant ownership changes tracked by BigChange() function

**Design Decisions:**

- Two-table design (holdings/parthold) because single table with multiple indexes was too slow due to fragmentation
- Space optimization: only record changes, not unchanged holdings (~25% change daily)
- On delisting date, final holdings set to zero as stock removed from CCASS

**Dependencies on Enigma Schema:**

- issue table (security details)
- organisations table (issuer details)
- secTypes table (security type classification)
- stockListings table (historical stock codes - HKEX recycles codes)
- listings table (board details: 1=Main Board, 20=GEM, 23=REITs)

See `CCASS schema/Notes on the CCASS schema.md` for detailed documentation.

### Enigma Schema

The Enigma schema is the core database containing 35 years of Hong Kong listed company data (1990-2025).

**Naming Conventions:**

Organizations:
- name1 must be unique
- Append domicile code (2-3 letters), incorporation date, or dissolution date for disambiguation
- namehash column (MD5 of normalized name) maintained by trigger using orgHash() function

People:
- (name1, name2) pair must be unique (name2 can be null for single-word names)
- Auto-differentiation adds unique identifiers (SFCID, date of birth) when needed
- English given name first: "Chan, David Chi Keung" not "Chan, Chi Keung David"
- Married females: maiden name last: "Lam Cheng, Yuet Ngor" not "Cheng Lam, Yuet Ngor"
- Simplified names (dn1, dn2) maintained by triggers for quick searching
- 5-letter namestem maintained by triggers for Access form typing

**Core Tables:**

**directorships** - Corporate officers (directors, supervisors, managers, judges, statutory board members)
- Uses right-open interval: period includes "from" date, excludes "until" date
- Each entry has positionID linking to positions table
- positions table includes status (Executive/Non-executive/INED) and rank (0=Supervisory, 1=Main Board)
- SFC licensee positions (positionID 394/395 for Rep/RO) auto-maintained by SFC.vb
- Law Society positions auto-maintained by HKlawSoc.vb with LSrole field
- UK company officers auto-maintained by UKCH.vb via Companies House API

**adviserships** - Corporate advisors
- Continuing roles (auditors) vs one-time roles (Independent Financial Advisers)
- For annual report advisers: use date of full-year results publication
- For deal IFAs under Takeovers Code: appointment date (role begins immediately)
- For Listing Rules IFAs: date of shareholder circular

**Ownership Analysis Tables** (HKU academic project):
- ownerprof - Ownership profile of each company at snapshot dates
- ownerstks - Ultimate controllers with economic interest percentages
- sholdings - Shareholding records
- Computed by VBA code in Access Enigma.accdb "HKU" module (profileSnaps routine)
- Recursive algorithm traces up/down ownership trees

**Committee Analysis Tables** (academic project):
- comeets - Board committee meetings and attendance
- comex - Committee executives
- compos - Committee positions
- coms - Committee details (Audit, Nomination, Remuneration)
- snaplogs - Progress logging for data entry team

**Content Management System:**
- stories - Articles/reports with source, title, date, summary
- sources - Publication sources (sourceID=1 is Webb-site.com)
- personstories - Person/organization tags for stories
- storytags - Topic tags for stories
- categories - Topic classification
- cattree - Hierarchical topic structure
- sfcnews - Archived SFC announcements (English/Chinese JSON packages)

**SFC Licensee Database:**
- Maintained by SFC.vb (runs daily)
- Tracks Representative/Responsible Officer status across activities
- If person is both RO and Rep, RO outranks (recorded as RO in directorships)

**Law Society Database:**
- Maintained by HKlawSoc.vb (runs daily)
- Tracks solicitors in private practice at law firms and employers
- Data shown to nearest month due to registration lag
- lsemps table links personID to employer organizations (manual matching required)

See `Enigma schema/Notes on the Enigma schema.md` for comprehensive documentation.

### Private Schema (Master Only)

Single table **keys** containing:
- Private keys for VB.NET programs
- Email connection data for error reporting (ErrMail)
- UK API keys
- **wskey** - Encryption key for MySQL passwords in wsroles table

See `Setting up the Webb-site database/master private schema structure 250423.sql`.

### Mailvote Schema (Slave Only)

**User Account System:**

- **livelist** - User accounts identified by email address
- Password security: SHA-256 hash with 16-byte random salt
- Token-based email verification (72-hour expiry)
- Persistent login tokens (up to 30 days) stored in **persist** table
- Token security: 22-character BASE64-encoded MD5, SHA-256 hashed for storage

**Polling System:**

Tables for Webb-site opinion polls (structure only in dump, no data)

**Configuration:**

- **keys** table - Server configuration values (mail server login, Captcha keys, MasterHost domain)

**Authentication Flow:**

1. Login: Hash password with CONCAT(password, salt), compare with stored hash
2. Persistent login: Generate token, store SHA-256 hash in persist table, send token in "keep" cookie
3. Return visit: cookiechk.asp validates token hash and expiry
4. Logout: Delete all persist records for user (logs out all devices)

See `Mailvote schema and login system/Notes on the Webb-site login system.md`.

### Iplog Schema (Slave Only)

Bot protection and spam prevention:

- **visitors** - Tracks IP hits per day, triggers Captcha at 100-hit limit (BotChk function in functions1.asp)
- **submit** - Limits contact form submissions per IP (spam prevention)

Note: Captcha becoming less effective against AI/human labor, may need hard limits instead.

See `iplog schema/Notes on iplog schema.md`.

## VB.NET Scraping Modules

Located in `VB.net files/`, these are console applications that scrape and update data sources:

### Core Modules

- **ScraperKit.vb** - Shared utility library for all scrapers. Contains web scraping functions (GetWeb3, Download2), database helpers (DBdate, DBint), error handling (ErrMail), and string utilities (Apos, CleanStr)
- **Quotes.vb** - Main quotes scraper (HKEX data, foreign dividends, short positions, HSI TRI). Main entry: GetQuotesUpdate(), SetAdjAll() for total returns calculations
- **CCASS.vb** - CCASS holdings scraper. Main entry point: GetCCASS() which runs daily updates. Uses GetAllHoldingsAtDate() and BigChange() to track ownership changes
- **HKEXdata.vb** - HKEX API interactions and data extraction
- **Listing.vb** - New listings and delisting tracking
- **GetFinancialReports.vb** - Downloads and processes company financial reports
- **JSONkit.vb** - JSON parsing utilities (self-developed)

### Other Scrapers

- **SFC.vb** - Securities and Futures Commission licensee data
- **CR.vb** - Companies Registry data
- **UKCH.vb** - UK Companies House data (continuous operation via API)
- **Treasury.vb** - Government treasury data (manual operation)
- **HKlawSoc.vb** - Hong Kong Law Society data (solicitors, firms, admissions, moves)
- **persons.vb** - Person and organization entity management
- **Buybacks.vb** - Share buyback tracking
- **SDI.vb** - Significant Dealer Information
- **Quarantine.vb** - COVID-19 quarantine data
- **Transport.vb** - Transportation statistics
- **housing.vb** - Public housing data
- **HKflights.vb** - Flight data
- **LandReg.vb** - Land registry data
- **ImmD.vb** - Immigration Department data
- **HKMA.vb** - Hong Kong Monetary Authority data
- **GetJudgments.vb** - Legal judgment scraping

### Execution Pattern

All scrapers follow similar patterns:
1. Check logs (GetLog/PutLog) to determine what data needs updating
2. Connect to databases using Open* functions (OpenEnigma, OpenCCASS, etc.)
3. Scrape data using ScraperKit web functions with cookie handling
4. Process and clean data using utility functions
5. Update database via SQL commands
6. Send error emails (ErrMail) on failures
7. Log completion status

## Classic ASP Web Interface

Located in `Webb-site ASP files/`, organized by function:

- **dbpub/** - Public database query pages (holders.asp, events.asp, quotes.asp, etc.)
  - **functions1.asp** - Core function library (database helpers, date functions, formatting)
  - **navbars.asp** - Navigation menus
  - **holders.asp** - Recursive ownership tree generation via holdersGen() subroutine
- **ccass/** - CCASS-specific queries (holdings history, big changes, participant analysis)
- **webbmail/** - User personalization and email alerts (mystocks.asp, mysdi.asp, mybigchanges.asp)
  - **authentic.asp** - Shared authentication module
  - **login.asp** - User login page
- **vote/** - Polling and voting system
  - **pollfunctions.asp** - Poll utilities
- **dbeditor/** - Database editing interfaces (requires authentication)
  - **prepMaster.inc** - Connection helpers for master database
  - **useradmin.asp** - User administration for wsroles system
  - **story.asp** - Content management (publish articles with tags)
- **templates/** - Shared header/footer components
  - **footerdb.asp** - Database page footer
  - **footerws.asp** - Webb-site footer
  - **topart.asp** - Article header (looks up story from stories table)
  - **tailart.asp** - Article footer (displays tags)
  - **cookiechk.asp** - Persistent login token validation
- **contact/** - Contact forms (spam-protected via iplog)
- **mailman/** - Mailing list management
- **pollman/** - Poll management

### ASP Architecture Notes

- Uses ADODB for database connections via DSNs
- Recursive ownership tree generation in holders.asp via holdersGen() function
- CSV export capabilities throughout (pricesCSV.asp, govacCSV.asp, etc.)
- Handles cross-holdings and circular ownership structures
- Complex sorting and aggregation for hierarchical data displays (sortVisHold subroutine)

## Authentication & Security

### Web Editing System

Custom user/privilege system to avoid proliferation of MySQL users:

**Core Tables (in Enigma schema):**

- **wsroles** - MySQL user/password pairs for each role, encrypted with AES using wskey from private.keys
- **wsroletabs** - Tables editable by each role (tables can belong to multiple roles)
- **wsprivs** - User rankings (0-255) in each role, live status
- **users** - Editor accounts (userID links to mailvote.livelist)

**Privilege Enforcement:**

MySQL triggers on editable tables call stored procedures:
- **insertUserID(tablename, new.userID)** - BEFORE INSERT: validates user has write privilege
- **updUserID(tablename, old.userID, new.userID)** - BEFORE UPDATE: validates user has rank ≥ existing record's userID
- No userID check on DELETE (must guard in server-side code)

**MySQL Functions:**

- **hasRole(roleID, userID)** - Check if user has access to all tables for a role
- **maxRank(tablename, userID)** - Find max ranking across all user's roles for table
- **maxRankLive(tablename, userID)** - Like maxRank but only live privileges

**VBScript Functions (prepMaster.inc):**

- **rankingRs(rs, uRank)** - Check if user can edit recordset row
- **prepRole(roleID, conRole, conRs, userID, uRank)** - Establish connection using wsrole credentials
- **prepMaster** - Direct connection using user's own MySQL credentials (for restricted pages)

**Access Frontend Integration:**

Local users (David, Cynthia) connect via user DSNs without sending userID. Triggers detect connection username, look up in wsroles, then users table, proceed with privilege checks.

**User Administration:**

- Ranking 128+ can add users or adjust rankings of lower-ranked users in their role
- Downgrade to rank 0 to let everyone correct their entries
- Set live=FALSE when removing from role (preserves userID history)

See `Webb-site editing system/Notes on Webb-site database editing system.md`.

## Key Data Relationships

- **issueID** - Core identifier linking securities across all systems
- **personID** - Universal identifier for persons and organizations
- **stockCode** - HKEX stock code (note: handles temporary counters for suspended stocks)
- **partID** - CCASS participant identifier
- **eventID** - Corporate action/event identifier

The system tracks:
- Beneficial ownership through CCASS holdings
- Corporate actions (dividends, splits, rights issues)
- Director and shareholder changes
- Cross-border company structures (HK, UK domiciles)
- Professional relationships (auditors, solicitors, SFC licensees)

## Special Handling

### Date Conversions
- Use MSdate() function to convert VB.NET dates to MySQL format
- CCASS uses settlement calendar (calendar table with tradeDate/settleDate mapping)
- Timezone handling: all dates stored in Hong Kong time

### Currency Handling
- Multi-currency support via currpair and forexrates tables
- Automatic conversion of foreign dividends to HKD equivalents (ConvDistE function in Quotes.vb)
- Cross-rate calculations when direct pairs unavailable (e.g., USD div to CNY via USDHKD/CNYHKD)

### Temporary Stock Codes (Parallel Trading)
- System tracks parallel/temporary counters for suspended stocks (e.g., during rights issues)
- shortNames table maintains historical code mappings with fromDate/toDate
- CCASS queries must account for settlement lag when stocks trade on temporary counters
- Note: HKEX announced abolition in 2008 but still hasn't implemented (16+ years later)

## Logging and Monitoring

Scrapers use a logging system to track execution:
- GetLog(key) / PutLog(key, value) functions access enigma.log table
- Keys like "CCASSdateDone", "MBquotesDate", "GEMquotesDate" track last successful run
- Email alerts sent via ErrMail() on failures
- Rate limiting and retry logic built into web request functions

## Code Style Conventions

VB.NET modules use:
- Option Compare Text (case-insensitive string comparisons)
- Option Explicit On (require variable declarations)
- Functional approach: heavy use of pure functions for data transformation
- Single-letter variable names (e, i, x, y) common in older code
- Apos() function for SQL string escaping (doubles apostrophes)

ASP code uses:
- VBScript syntax
- Hungarian notation (rs for recordsets, con for connections)
- Recursive subroutines for hierarchical data structures

## Flask Migration (October 2025)

The Classic ASP web interface is being migrated to Flask/Python to enable cloud deployment.

### Flask Application Structure

```
webbsite/
├── app.py                    # Entry point, creates Flask app
├── webbsite/
│   ├── __init__.py          # Flask app factory
│   ├── config.py            # Environment variables
│   ├── db.py                # Database helpers (SQLAlchemy)
│   ├── asp_helpers.py       # ASP compatibility functions
│   ├── routes/              # Route blueprints
│   │   ├── search.py        # Company/person search
│   │   ├── quotes.py        # Stock quotes
│   │   ├── events.py        # Corporate actions
│   │   ├── dbpub.py         # Database pages (75 routes)
│   │   ├── ccass.py         # CCASS pages (18 routes)
│   │   ├── articles.py      # Articles (3 routes)
│   │   └── ...              # Other route modules
│   └── templates/           # Jinja2 templates
│       ├── base.html        # Base template
│       ├── header.html      # Navigation
│       └── ...              # Page templates
└── requirements.txt         # Python dependencies
```

### ASP → Flask Migration Patterns

**Database Queries:**
```python
# Classic ASP Pattern:
# Set rs = con.Execute("SELECT * FROM organisations WHERE personID=" & id)

# Flask Pattern:
from webbsite.db import get_db_connection

with get_db_connection() as conn:
    org = conn.execute(
        "SELECT * FROM enigma.organisations WHERE personID = %s",
        (person_id,)
    ).fetchone()
```

**Parameter Handling:**
```python
# Classic ASP: Request.QueryString("p")
# Flask: from webbsite.asp_helpers import get_int, get_str

person_id = get_int(request.args.get('p'))
search_term = get_str(request.args.get('q'))
```

**SQL Escaping:**
```python
# Classic ASP: Apos() function doubles apostrophes
# Flask: Use parameterized queries (psycopg2 handles escaping)

# WRONG (SQL injection vulnerable):
# query = f"SELECT * FROM table WHERE name = '{user_input}'"

# CORRECT:
query = "SELECT * FROM table WHERE name = %s"
result = conn.execute(query, (user_input,))
```

### PostgreSQL Conversion Notes

**Database Functions Ported:**
- `everListCo(personID)` - Check if organization was ever listed
- Other MySQL functions converted to PostgreSQL equivalents

**Key Differences from MySQL:**
- Modulo operator: `%` → `MOD()` function in queries
- Full-text search: Uses PostgreSQL `to_tsvector()` and `to_tsquery()`
- Date arithmetic: Uses PostgreSQL interval syntax
- Schema qualification: All tables prefixed with schema name (`enigma.organisations`, `ccass.holdings`)

**Connection Details:**
- Local development: `postgresql://postgres:@localhost:5432/enigma_pg`
- Production: Environment variable `DATABASE_URL` on Render.com

### Flask Helper Functions (asp_helpers.py)

Ported from Classic ASP functions1.asp:
- `get_int(value, default=None)` - Safe integer parsing
- `get_str(value, default='')` - String parameter extraction
- `get_bool(value)` - Boolean parameter parsing
- `apos(text)` - SQL escaping (deprecated - use parameterized queries)
- `rem_space(text)` - Whitespace normalization
