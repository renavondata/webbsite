# Webb-site Tech Stack

## Legacy Stack (Being Phased Out)

### Programming Languages

#### VB.NET (Visual Basic .NET)
- **Version:** .NET Framework (Console App targeting .NET Framework)
- **Platform:** x64 compilation required
- **IDE:** Visual Studio 2022 or later
- **Purpose:** All data scraping and processing modules (CONTINUING TO OPERATE)

**Key Libraries:**
- **Microsoft ADODB** (Version 7.0.3300.0) - Database connectivity
  - Must set "Copy Local" = True
  - Must set "Embed Interop Types" = False
- **System.Net.Mail** - Email error reporting
- **System.Net.WebClient** - HTTP requests and web scraping
- **Custom Modules:**
  - ScraperKit.vb - Shared utility library
  - JSONkit.vb - JSON parsing

#### Classic ASP (VBScript)
- **Version:** Classic ASP (pre-.NET)
- **Runtime:** IIS (Internet Information Services)
- **Purpose:** Web interface for querying and displaying data (BEING MIGRATED TO FLASK)

**Configuration Requirements:**
- Enable Parent Paths: True (for "../" includes)
- Send Errors to Browser: True (development only)

### Legacy Database

#### MySQL
- **Database:** MySQL 8.0.37 (recommended) or 8.4.5 LTS
- **Avoid:** MySQL 9.x Innovation series (breaks compatibility)
- **ODBC Driver:** MySQL ODBC 8.4.0 Unicode Driver

**Critical Settings (my.ini):**
```ini
# Precision for total returns calculations
div_precision_increment = 8

# Character set for multibyte Chinese characters
character-set-server = utf8mb4
collation-server = utf8mb4_unicode_ci

# Full-text index for short Chinese names
innodb_ft_min_token_size = 2
innodb_ft_enable_stopword = 0

# Role activation
activate_all_roles_on_login = ON
```

**Storage Engine:** InnoDB (all tables, not myISAM)

**Replication:** Master-slave replication between:
- Master: Windows 10 PC (HK) - runs scrapers (CONTINUES)
- Slave: Windows Server 2016 (USA) - serves web traffic (SHUTTING DOWN OCT 31)

---

## New Stack (Oct 2025 Migration)

### Python Web Framework

#### Flask 3.0+
- **Framework:** Flask with Jinja2 templates
- **WSGI Server:** Gunicorn (production)
- **Purpose:** Replacement for Classic ASP web interface

**Key Dependencies:**
```
Flask>=3.0
psycopg2-binary>=2.9
SQLAlchemy>=2.0
gunicorn>=21.0
```

**Application Structure:**
```
webbsite/
├── app.py                    # Entry point
├── webbsite/
│   ├── __init__.py          # Flask app factory
│   ├── config.py            # Environment variables
│   ├── db.py                # Database connection management
│   ├── asp_helpers.py       # ASP compatibility functions
│   ├── routes/              # Route blueprints
│   │   ├── search.py        # Company/person search
│   │   ├── quotes.py        # Stock quotes
│   │   ├── events.py        # Corporate actions
│   │   ├── dbpub.py         # Database pages
│   │   ├── ccass.py         # CCASS pages
│   │   └── articles.py      # Articles
│   └── templates/           # Jinja2 templates
└── requirements.txt
```

**ASP Compatibility Functions (asp_helpers.py):**
- `get_int(value, default=None)` - Safe integer parsing
- `get_str(value, default='')` - String parameter extraction
- `get_bool(value)` - Boolean parameter parsing
- `rem_space(text)` - Whitespace normalization

### PostgreSQL Database

#### PostgreSQL 16
- **Deployment:** Render.com Managed PostgreSQL
- **Driver:** psycopg2-binary
- **Purpose:** Replacement for MySQL public replica

**Schemas:**
- `enigma` - Main database (companies, persons, securities, events)
- `ccass` - CCASS holdings and beneficial ownership data

**Connection:**
- Local dev: `postgresql://postgres:@localhost:5432/enigma_pg`
- Production: `DATABASE_URL` environment variable (Render.com)

**Key Differences from MySQL:**
- Modulo operator: `%` → `MOD()` function
- Full-text search: `to_tsvector()` and `to_tsquery()`
- Schema qualification required: `enigma.organisations`, `ccass.holdings`
- Ported functions: `everListCo()`, etc.

### Cloud Platform

#### Render.com
- **Web Service:** Python runtime with auto-scaling
- **Database:** Managed PostgreSQL with automated backups
- **Deployment:** GitHub integration with zero-downtime deploys
- **Configuration:** `render.yaml` (Infrastructure as Code)

**Architecture:**
```yaml
services:
  - type: web
    name: webbsite-web
    runtime: python
    buildCommand: pip install -r requirements.txt
    startCommand: gunicorn -w 4 -b 0.0.0.0:$PORT app:app

  - type: pgsql
    name: webbsite-db
    plan: standard
    databaseName: enigma
```

**Data Update Workflow:**
1. VB.NET scrapers run on Windows (HK time zone)
2. Weekly mysqldump to Google Drive
3. Automated script downloads dump
4. pg_restore imports to Render PostgreSQL
5. Flask site queries updated data

---

## Development Tools

### Visual Studio 2022
**Components Required** (see .vsconfig):
- CoreEditor and Workload.CoreEditor
- .NET Framework 4.8 SDK
- .NET Framework 4.7.2 TargetingPack
- TypeScript support
- JavaScript/TypeScript diagnostics
- Roslyn compiler and language services
- NuGet package manager
- SQL CLR
- Debugger and diagnostic tools
- IntelliCode

### Microsoft Access
- **Purpose:** Database editing frontend (CONTINUES ON WINDOWS)
- **File Format:** .accdb files
- **Note:** Binary files excluded from git (.gitignore)

### Python Development
- **Python Version:** 3.11+
- **Package Manager:** pip
- **Virtual Environment:** venv or virtualenv recommended

---

## Operating System Requirements

### Legacy Development
- **Windows 10/11** or **Windows Server 2016+**
- Required for:
  - Visual Studio 2022
  - IIS for Classic ASP
  - MySQL ODBC drivers
  - Microsoft Access frontend

### Flask Development
- **Any OS:** Linux, macOS, Windows
- Python 3.11+ required
- PostgreSQL client tools recommended

---

## Key Dependencies

### VB.NET References
Each module requires:
1. Microsoft ADODB (Assemblies/Extensions) v7.0.3300.0
2. ScraperKit (Projects/Solution)
3. JSONkit (Projects/Solution) - some modules only

### Python Requirements
```
Flask>=3.0
Jinja2>=3.1
psycopg2-binary>=2.9
SQLAlchemy>=2.0
gunicorn>=21.0
python-dotenv>=1.0
```

---

## Scheduling

### VB.NET Scrapers (CONTINUES)
Runs on Windows Task Scheduler:
- **Daily:** Quotes (22:00), CCASS (04:00), SFC (03:00), GetFinancialReports (02:30)
- **Hourly:** HKflights, UKCH (continuous operation)
- **Weekly:** housing (Fridays 20:00)
- **Manual only:** Treasury

### Database Updates (NEW)
- **Frequency:** Weekly (acceptable for public access)
- **Method:** Automated Google Drive → Render PostgreSQL import
- **Latency:** Up to 7 days (acceptable for historical data)

---

## Migration Status

**✅ Completed:**
- Flask application with 24 working routes
- PostgreSQL database imported locally
- Templates and CSS ported
- Helper functions ported

**⚠️ In Progress:**
- 165 skeleton routes need SQL implementation
- Render.com deployment
- Performance testing

**❌ Not Started:**
- 109 specialty routes
- Production launch
- Domain setup

See `migration_progress` memory and `docs/modernization-roadmap.md` for details.
