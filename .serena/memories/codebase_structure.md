# Codebase Structure

## Root Directory Layout

```
webbsite/
├── .claude/                          # Claude Code configuration
├── .serena/                          # Serena AI configuration and memories
├── .git/                             # Git repository data
├── Access front end/                 # Microsoft Access database editor
├── CCASS schema/                     # CCASS holdings database schema
│   └── ccass251011/                  # Dated schema version (2025-10-11)
├── Enigma schema/                    # Main database schema
│   └── enigma251011/                 # Dated schema version (2025-10-11)
├── iplog schema/                     # Bot protection database
├── Mailvote schema and login system/ # User authentication database
├── Setting up the Webb-site database/# Database setup guides and SQL
├── VB.net files/                     # VB.NET scraping modules
├── Webb-site ASP files/              # Classic ASP web interface
├── Webb-site editing system/         # Database editing system docs
├── CLAUDE.md                         # Comprehensive project guide
├── Copyright and disclaimer.md       # CC-BY 4.0 license
├── README.txt                        # Brief project introduction
└── .gitignore                        # Git exclusions
```

## VB.NET Scrapers (`VB.net files/`)

### Core Scraper Modules (24 files)

**Foundation:**
- `ScraperKit.vb` - **Shared utility library** (imported by all scrapers)
  - Web scraping: `GetWeb3()`, `Download2()`
  - Database helpers: `DBdate()`, `DBint()`, `Apos()`
  - Error handling: `ErrMail()`
  - String utilities: `CleanStr()`, `CleanName()`
- `JSONkit.vb` - JSON parsing utilities (self-developed)

**Critical Daily Scrapers:**
- `Quotes.vb` - Main quotes scraper (HKEX data, dividends, short positions, HSI TRI)
  - Entry: `GetQuotesUpdate()`, `SetAdjAll()` for total returns
- `CCASS.vb` - CCASS holdings scraper (beneficial ownership tracking)
  - Entry: `GetCCASS()`, uses `GetAllHoldingsAtDate()` and `BigChange()`
- `GetFinancialReports.vb` - Downloads company financial reports from HKEX
- `SFC.vb` - Securities and Futures Commission licensee data

**Corporate Data:**
- `HKEXdata.vb` - HKEX API interactions
- `Listing.vb` - New listings and delistings
- `Buybacks.vb` - Share buyback tracking (requires logged-in session)
- `SDI.vb` - Significant Dealer Information

**Professional Registries:**
- `HKlawSoc.vb` - Hong Kong Law Society (solicitors, firms, admissions)
- `CR.vb` - Companies Registry data (HK)
- `UKCH.vb` - UK Companies House (continuous operation via API)

**Government Data:**
- `Treasury.vb` - Government treasury data (manual operation only)
- `HKMA.vb` - Hong Kong Monetary Authority
- `LandReg.vb` - Land registry data

**Statistics:**
- `Transport.vb` - Transportation statistics
- `housing.vb` - Public housing data
- `HKflights.vb` - Flight data (hourly)
- `Quarantine.vb` - COVID-19 quarantine data (historical)
- `ImmD.vb` - Immigration Department data

**Support:**
- `persons.vb` - Person and organization entity management
- `GetJudgments.vb` - Legal judgment scraping

### Documentation
- `Notes on compiling the VB.net code.md` - Visual Studio setup
- `Suggested run times.md` - Scraper scheduling guide
- `.vsconfig` - Visual Studio 2022 configuration (import with VS Installer)

### Module Dependencies
```
All scrapers import:
  └── ScraperKit.vb (foundation)
      
Some scrapers also import:
  └── JSONkit.vb (JSON parsing)
```

### Typical Scraper Structure
```vb
Option Compare Text
Option Explicit On
Imports ScraperKit    ' or Imports JSONkit for JSON modules

Module ModuleName
    Sub Main()
        ' 1. Check logs to determine what needs updating
        Dim lastRun = GetLog("keyName")
        
        ' 2. Connect to databases
        Call OpenEnigma(con)
        
        ' 3. Scrape data using ScraperKit functions
        Dim html = GetWeb3(url, cookies)
        
        ' 4. Process and clean data
        ' 5. Update database via SQL
        ' 6. Log completion
        Call PutLog("keyName", value)
        
        ' 7. Error handling via ErrMail
    End Sub
End Module
```

## Classic ASP Web Interface (`Webb-site ASP files/`)

### Directory Structure
```
Webb-site ASP files/
├── dbpub/          # Public database query pages (150+ files)
│   ├── functions1.asp      # Core function library
│   ├── navbars.asp         # Navigation menus
│   ├── holders.asp         # Ownership tree generation
│   ├── quotes.asp          # Stock quotes
│   ├── events.asp          # Corporate events
│   ├── prices.asp          # Price history
│   └── [140+ other pages]
├── ccass/          # CCASS-specific queries
│   ├── holdings history
│   ├── big changes
│   └── participant analysis
├── webbmail/       # User personalization
│   ├── authentic.asp       # Authentication module
│   ├── login.asp           # User login
│   ├── mystocks.asp        # Watchlist
│   └── email alerts
├── dbeditor/       # Database editing (authenticated)
│   ├── prepMaster.inc      # Master DB connection
│   ├── useradmin.asp       # User administration
│   └── story.asp           # Content management
├── templates/      # Shared components
│   ├── footerdb.asp        # Database page footer
│   ├── footerws.asp        # Webb-site footer
│   ├── topart.asp          # Article header
│   ├── tailart.asp         # Article footer
│   └── cookiechk.asp       # Persistent login tokens
├── vote/           # Polling system
│   └── pollfunctions.asp
├── pollman/        # Poll management
├── mailman/        # Mailing list management
└── contact/        # Contact forms (spam-protected)
```

### Key ASP Files

**Core Libraries:**
- `functions1.asp` - **Most important file**
  - Database helpers: `openEnigma()`, `closeCon()`
  - Date functions, formatting
  - Authentication: `login()`, `cookiechk()`
  - Bot protection: `BotChk()`
  
**Critical Pages:**
- `holders.asp` - Recursive ownership tree generation (`holdersGen()` subroutine)
- `authentic.asp` - Shared authentication module
- `prepMaster.inc` - Connection helpers for master database editing

### ASP Page Structure
```asp
<%
' 1. Include shared libraries
<!--#include file="functions1.asp"-->

' 2. Authenticate if needed
Call login()

' 3. Open database connection
Dim con, rs
Call openEnigma(con)

' 4. Execute queries
Set rs = con.Execute("SELECT ...")

' 5. Display results in HTML
Do While Not rs.EOF
    ' Output data
    rs.MoveNext
Loop

' 6. Close connections
Call closeCon(con)
%>
```

## Database Schemas

### Enigma Schema (`Enigma schema/enigma251011/`)

**Structure (Expected files in dated folder):**
- Structure file - table definitions
- Data file - table data
- Triggers file - trigger definitions

**Load Order:** Structure → Data → Triggers (important!)

**Key Tables (selection):**
- `organisations` - Companies and organizations
  - Unique `name1`, `namehash` (MD5)
- `persons` - People
  - Unique `(name1, name2)` pair
  - Simplified names: `dn1`, `dn2`
- `directorships` - Corporate officers
  - Right-open intervals: includes `from`, excludes `until`
- `adviserships` - Corporate advisors
- `issue` - Securities
- `stockListings` - Historical stock codes
- `secTypes` - Security types
- `holdings` (ownership analysis)
- `dirships` (directorship analysis)
- `stories` - Articles/reports
- `personstories` - Story tags
- `log` - Scraper progress tracking

### CCASS Schema (`CCASS schema/ccass251011/`)

**Key Tables:**
- `holdings` - Primary key: `(issueID, partID, atDate)`
  - Optimized for analyzing holder changes in a stock
- `parthold` - Primary key: `(partID, issueID, atDate)`
  - Optimized for analyzing participant holdings across stocks
- `dailylog` - Daily summaries with concentration metrics
- `quotes` - Historic prices/volumes since 1994-01-03
- `pquotes` - Parallel trading quotes
- `calendar` - Settlement calendar (tradeDate → settleDate, normally T+2)
- `specialdays` - Holidays, bad weather, early closures
- `shortnames` - Stock short-names from quotations sheets
- `bigchanges` - Significant ownership changes

**Design Pattern:** Two-table design for performance (holdings/parthold)

### Private Schema (`Setting up the Webb-site database/`)

**Single Table:**
- `keys` - Private keys, API keys, email credentials, wskey

**Note:** Master server only, not replicated

### Mailvote Schema

**User System:**
- `livelist` - User accounts (email, SHA-256 password hash)
- `persist` - Persistent login tokens (30-day expiry)

**Polling:**
- Poll tables (structure only in dump)

**Configuration:**
- `keys` - Server config (mail server, Captcha, MasterHost)

### Iplog Schema

**Bot Protection:**
- `visitors` - IP hits per day (Captcha at 100-hit limit)
- `submit` - Contact form rate limiting

## Database Editing System (`Webb-site editing system/`)

**Documentation for custom authentication:**
- Notes on authentication system
- Privilege enforcement via triggers
- Role-based access control

**Key Tables (in Enigma schema):**
- `wsroles` - MySQL user/password pairs (AES encrypted)
- `wsroletabs` - Tables editable by each role
- `wsprivs` - User rankings in roles
- `users` - Editor accounts (links to mailvote.livelist)

## Documentation Files

### Root Level
- `CLAUDE.md` - **Comprehensive 500+ line project guide**
  - Tech stack, architecture, schemas
  - Building VB.NET scrapers
  - MySQL configuration
  - ASP interface
  - Authentication system
  - Data relationships
  - Scheduling
- `Copyright and disclaimer.md` - CC-BY 4.0 license
- `README.txt` - Brief introduction
- `.gitignore` - Excludes SQL data files, .accdb, .docx, etc.

### Setup Guides
- `Setting up the Webb-site database/Setting up the Webb-site Database.md`
- Schema-specific notes in each schema folder

## Excluded from Git (`.gitignore`)

**Large Files:**
- SQL data dumps: `*/[a-z]*[0-9]{6}/*Data*.sql`
- Access databases: `*.accdb`, `*.mdb`
- Word documents: `*.docx` (markdown versions included)

**Development:**
- `.claude/` directory
- `.vscode/`, `.vs/`
- OS files: `.DS_Store`, `Thumbs.db`, `desktop.ini`

## Key Relationships Between Components

```
VB.NET Scrapers
    ↓ (write data)
MySQL Databases (Master)
    ↓ (replication)
MySQL Databases (Slave)
    ↑ (read data)
Classic ASP Pages
    ↓ (display)
Web Browsers
```

**Authentication Flow:**
```
User → login.asp → mailvote.livelist (verify password)
                → mailvote.persist (store token)
                → cookiechk.asp (validate on return)
```

**Editing Flow:**
```
Editor → dbeditor pages → prepMaster.inc → wsroles (get credentials)
                                          → wsprivs (check ranking)
                                          → MySQL triggers (enforce privileges)
```

**Data Flow Example (CCASS):**
```
1. Quotes.vb runs 22:00 → updates ccass.quotes table
2. CCASS.vb runs 04:00 → checks MBquotesDate log
                       → scrapes HKEX CCASS data
                       → updates ccass.holdings, ccass.parthold
                       → calls BigChange() for significant changes
3. ASP pages query ccass.holdings → display ownership trees
```

## Navigation Tips

**To find:**
- Scraper logic → `VB.net files/<module>.vb`
- Web query page → `Webb-site ASP files/dbpub/<page>.asp`
- Shared functions → `VB.net files/ScraperKit.vb` or `Webb-site ASP files/dbpub/functions1.asp`
- Database structure → `<schema> schema/<dated folder>/`
- Setup instructions → `Setting up the Webb-site database/`
- Complete guide → `CLAUDE.md`

**To understand:**
- How scraping works → Read `ScraperKit.vb` then any scraper
- How web interface works → Read `functions1.asp` then any query page
- How authentication works → `Webb-site editing system/` docs
- How ownership tracking works → `CCASS schema/Notes on the CCASS schema.md`
