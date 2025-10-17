# Webb-site Architecture Overview

## System Overview

The Webb-site platform is a **multi-tier financial data system** that collects, processes, stores, and publishes Hong Kong stock market data with a focus on beneficial ownership tracking and corporate governance.

### Key Capabilities

1. **Automated Data Collection** - 15+ scrapers collecting data from HKEX, SFC, Companies Registry, Law Society, etc.
2. **Historical Data Archive** - 35 years of company data (1990-2025), price data since 1994, CCASS data since 2007
3. **Beneficial Ownership Tracking** - Daily CCASS holdings showing who really owns HK stocks
4. **Public Query Interface** - Web-based access to ownership trees, corporate events, director networks
5. **Database Editing System** - Role-based access control for maintaining data quality

## High-Level Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                    DATA SOURCES                              │
│  HKEX │ SFC │ Companies Registry │ Law Society │ UK CH │... │
└────────────────────┬────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│               SCRAPING LAYER (VB.NET)                        │
│  Quotes │ CCASS │ SFC │ CR │ UKCH │ FinancialReports │...   │
│  ├─ ScraperKit.vb (shared utilities)                         │
│  ├─ Scheduled via Task Scheduler                             │
│  └─ Error handling via ErrMail                               │
└────────────────────┬────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│            DATA LAYER (MySQL 8.0)                            │
│  ┌──────────┬──────────┬──────────┬──────────┬──────────┐   │
│  │ enigma   │  ccass   │ private  │  iplog   │mailvote  │   │
│  │          │          │ (master) │ (slave)  │ (slave)  │   │
│  │ 35 years │ holdings │  keys    │ bot      │  users   │   │
│  │ companies│ quotes   │          │ tracking │ polls    │   │
│  │ persons  │ calendar │          │          │          │   │
│  └──────────┴──────────┴──────────┴──────────┴──────────┘   │
│                                                               │
│  Master (HK) ─── replication ───> Slave (USA)                │
└────────────────────┬────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│          WEB LAYER (Classic ASP / IIS)                       │
│  ┌──────────┬──────────┬──────────┬──────────┬──────────┐   │
│  │ dbpub/   │ ccass/   │webbmail/ │ vote/    │dbeditor/ │   │
│  │ holders  │ holdings │ mystocks │ polls    │ wsroles  │   │
│  │ events   │ bigchg   │ alerts   │          │ editing  │   │
│  │ quotes   │ analysis │          │          │          │   │
│  └──────────┴──────────┴──────────┴──────────┴──────────┘   │
│  ├─ functions1.asp (shared utilities)                        │
│  ├─ authentic.asp (authentication)                           │
│  └─ cookiechk.asp (persistent login)                         │
└────────────────────┬────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│              EDITING LAYER (Access)                          │
│  Enigma.accdb - Database editing interface                   │
│  ├─ Forms for data entry (directors, adviserships, etc.)     │
│  ├─ VBA modules (HKU ownership analysis)                     │
│  └─ Connects via MySQL User DSNs                             │
└─────────────────────────────────────────────────────────────┘
```

## Component Details

### 1. Scraping Layer

**Purpose:** Automated data collection from external sources

**Technology:** VB.NET Console Applications (.NET Framework 4.8, x64)

**Key Scrapers:**
- **Quotes.vb** - Daily stock quotes, dividends, splits, HSI Total Return Index
- **CCASS.vb** - CCASS beneficial ownership holdings (critical - data deleted by HKEX after 1 year)
- **GetFinancialReports.vb** - Downloads PDFs of annual/interim reports from HKEX
- **SFC.vb** - SFC licensee database (Representatives and Responsible Officers)
- **HKlawSoc.vb** - Law Society solicitor admissions and firm changes
- **CR.vb** - Companies Registry filings
- **UKCH.vb** - UK Companies House data via API (continuous operation)
- **Treasury.vb** - Government Accounts Explorer (manual operation)

**Shared Library:**
- **ScraperKit.vb** - Web requests (GetWeb3, Download2), database helpers (DBdate, DBint), error handling (ErrMail), string utilities (Apos, CleanStr)
- **JSONkit.vb** - JSON parsing (self-developed)

**Scheduling:**
- Windows Task Scheduler with time-based triggers
- Critical dependency: CCASS must run after Quotes (checks MBquotesDate and GEMquotesDate logs)
- See [scrapers/scheduling.md](../scrapers/scheduling.md) for detailed schedule

**Error Handling:**
- ErrMail() sends error notifications via SMTP
- Logging to enigma.log table (GetLog/PutLog functions)
- Rate limiting and retry logic in ScraperKit

### 2. Data Layer

**Purpose:** Persistent storage of 35 years of financial data

**Technology:** MySQL 8.0.37 (or 8.4.5 LTS), InnoDB engine

**Architecture:**
- **Master server** (Assistant3, Windows 10, Hong Kong) - Runs scrapers, stores private data
- **Slave server** (Webb-site, Windows Server 2016, USA) - Public access, mirrors enigma/ccass

**Schemas:**

1. **enigma** (~2GB, 35 years of data)
   - Companies (organisations table)
   - People (persons table)
   - Securities (issue, stockListings)
   - Corporate events (events table)
   - Directorships, adviserships, ownership
   - Financial reports metadata
   - Content management (stories, storytags)
   - See [database/enigma-schema.md](../database/enigma-schema.md)

2. **ccass** (~8GB, must fit in RAM)
   - holdings (by issueID, partID, atDate)
   - parthold (reverse index for participant queries)
   - quotes (daily prices since 1994)
   - dailylog (summary statistics)
   - bigchanges (significant ownership changes)
   - See [database/ccass-schema.md](../database/ccass-schema.md)

3. **private** (master only)
   - keys table (scraper API keys, wskey for encryption)
   - Not replicated to public server

4. **iplog** (slave only)
   - visitors (IP rate limiting, Captcha triggers)
   - submit (contact form spam prevention)

5. **mailvote** (slave only)
   - livelist (user accounts)
   - persist (persistent login tokens)
   - polls (polling system)
   - See [database/mailvote-schema.md](../database/mailvote-schema.md)

**Critical Configuration:**
```ini
div_precision_increment = 8          # Total returns precision
character-set-server = utf8mb4        # Chinese characters
innodb_ft_min_token_size = 2          # Short names like "Au"
innodb_buffer_pool_size = 20G         # CCASS must fit in RAM
activate_all_roles_on_login = ON      # wsroles system
```

### 3. Web Layer

**Purpose:** Public query interface and user interaction

**Technology:** Classic ASP (VBScript), IIS, ADODB

**Directory Structure:**

**dbpub/** - Public database queries
- **holders.asp** - Ownership trees (recursive holdersGen() subroutine)
- **events.asp** - Corporate events timeline
- **quotes.asp** - Price history and dividends
- **directors.asp** - Director search and networks
- **functions1.asp** - Shared utilities (BotChk, formatting, date functions)

**ccass/** - CCASS-specific queries
- **holdings.asp** - Holdings history for a stock
- **bigchanges.asp** - Significant ownership changes
- **participant.asp** - Holdings across all stocks for a participant

**webbmail/** - User personalization
- **mystocks.asp** - Watchlist
- **mysdi.asp** - SDI alerts
- **mybigchanges.asp** - Ownership change alerts
- **authentic.asp** - Shared authentication module

**dbeditor/** - Database editing (requires login)
- **useradmin.asp** - wsroles user administration
- **story.asp** - Content management (publish articles)
- **prepMaster.inc** - Connection helpers

**templates/** - Shared components
- **footerdb.asp**, **footerws.asp** - Page footers
- **topart.asp**, **tailart.asp** - Article templates
- **cookiechk.asp** - Persistent login validation

**Key Features:**
- Recursive ownership tree generation (handles circular ownership)
- CSV export capabilities
- Cross-holdings and complex ownership structures
- ADODB connections via System/User DSNs

### 4. Editing Layer

**Purpose:** Manual data entry and quality control

**Technology:** Microsoft Access 2021 (.accdb), VBA

**Key Features:**
- **Forms** - Data entry for directors, adviserships, shareholdings, events
- **VBA Modules** - Ownership analysis (HKU academic project, profileSnaps routine)
- **Queries** - Complex data validation and reporting
- **Connection** - User DSNs to master MySQL server

**Security:**
- Connects with user's own MySQL credentials
- Triggers detect username, look up in wsroles, enforce privilege checks
- See [web/editing-system.md](../web/editing-system.md)

## Data Flow Examples

### Daily Quote Update
```
1. Quotes.vb runs at 22:00 Mon-Fri
   ├─ Scrapes HKEX Daily Quotations Sheet
   ├─ Updates ccass.quotes, ccass.pquotes
   ├─ Processes dividends → enigma.events
   ├─ Calculates total returns → SetAdjAll()
   └─ Updates enigma.log: MBquotesDate, GEMquotesDate

2. CCASS.vb runs at 04:00 Tue-Sat
   ├─ Checks quotes are up-to-date (reads MBquotesDate)
   ├─ Scrapes CCASS holdings from HKEX
   ├─ Updates ccass.holdings, ccass.parthold
   ├─ Identifies significant changes → BigChange()
   └─ Updates ccass.dailylog, ccass.bigchanges
```

### Ownership Query
```
1. User visits holders.asp?stockCode=0001
   ├─ Page authenticates via cookiechk.asp (if logged in)
   ├─ Queries enigma.issue → get issueID
   ├─ Queries ccass.holdings → top holders
   ├─ Calls holdersGen() recursively to build ownership tree
   │   ├─ Queries enigma.sholdings for each holder
   │   ├─ Follows chains up to ultimate controllers
   │   └─ Handles circular ownership (tracks visited nodes)
   └─ Renders HTML table with ownership percentages
```

### Database Editing
```
1. Editor opens Enigma.accdb form
   ├─ Connects to master MySQL via User DSN (e.g., "David")
   ├─ Enters new directorship in form
   └─ Saves record

2. MySQL BEFORE INSERT trigger fires
   ├─ Calls insertUserID('directorships', NEW.userID)
   ├─ Stored procedure identifies connection user ("David")
   ├─ Looks up user in wsroles → users table
   ├─ Checks maxRankLive('directorships', userID) >= 1
   ├─ Permits insert if authorized
   └─ Raises error if not authorized
```

## Security Model

### Database Access Control

**wsroles system** (enigma schema):
- **wsroles** table - MySQL credentials for each role (AES encrypted with wskey)
- **wsroletabs** table - Tables accessible by each role
- **wsprivs** table - User rankings in each role (0-255, higher = more privileged)
- **users** table - Links userID to mailvote.livelist

**Trigger-based enforcement:**
- BEFORE INSERT: `insertUserID(tablename, userID)`
- BEFORE UPDATE: `updUserID(tablename, old.userID, new.userID)`
- Functions: `hasRole(roleID, userID)`, `maxRank(tablename, userID)`, `maxRankLive(tablename, userID)`

**Privilege escalation:**
- Ranking 128+ can add users or adjust rankings of lower-ranked users
- Downgrade to rank 0 to let everyone correct their entries
- Set live=FALSE when removing from role (preserves userID history)

### Web Authentication

**Mailvote schema:**
- **livelist** table - User accounts (email = username)
- Password storage: SHA-256(CONCAT(password, salt)) with 16-byte random salt
- Email verification: 72-hour token expiry
- Persistent login: 30-day token in "keep" cookie, SHA-256 hash stored in persist table

**Authentication flow:**
1. Login via login.asp → validate password hash
2. Generate 22-character BASE64 token
3. Store SHA-256(token) in persist table
4. Send token in cookie
5. cookiechk.asp validates on each page load
6. Logout deletes all persist records (logs out all devices)

### Bot Protection

**iplog schema:**
- **visitors** table - Tracks hits per IP per day
- BotChk() function (functions1.asp) triggers Captcha at 100 hits/day
- **submit** table - Limits contact form submissions per IP

## Design Principles

1. **Data Permanence** - Never delete historical data, use right-open intervals (fromDate, untilDate)
2. **Auditability** - Every edit tracked by userID, timestamp
3. **Performance** - CCASS schema must fit in RAM (~8GB buffer pool minimum)
4. **Reliability** - CCASS data is unrecoverable if missed (HKEX deletes immediately on delisting)
5. **Accessibility** - All data freely available under CC-BY 4.0 license
6. **Transparency** - Source code and schemas published for reproducibility

## Scalability Considerations

**Current Limitations:**
- Single-threaded VB.NET scrapers
- Classic ASP single-threaded per request
- Master-slave replication (single write node)
- Windows-only deployment

**Optimization Strategies:**
- CCASS dual-table design (holdings/parthold) for index efficiency
- Only record holdings changes (~25% change daily), not unchanged rows
- Full-text indexes with innodb_ft_min_token_size=2 for short Chinese names
- Recursive ownership queries cached at application level (future)

## Technology Decisions

**Why VB.NET?**
- Historical: David Webb's preferred language
- Strong typing, good database support
- Visual Studio debugging

**Why Classic ASP?**
- Historical: Predates modern frameworks
- Simple deployment on IIS
- Direct ADODB access to MySQL

**Why MySQL?**
- Historical: Free, good performance
- InnoDB foreign keys and triggers
- Full-text search capabilities

**Why Access frontend?**
- Historical: Familiar to non-developers
- Rapid form development
- Good MySQL connectivity via ODBC

**Migration Path:** See [modernization-roadmap.md](../modernization-roadmap.md) for cloud-native alternatives.

## Related Documentation

- [Database Setup](../database/setup.md) - MySQL installation and configuration
- [Scraper Overview](../scrapers/overview.md) - Data collection architecture
- [Editing System](../web/editing-system.md) - wsroles security details
- [Modernization Roadmap](../modernization-roadmap.md) - Cloud migration plan

---

*This architecture evolved over 35 years of continuous operation. While some choices reflect legacy constraints, the system has successfully preserved Hong Kong financial transparency data that would otherwise be lost.*
