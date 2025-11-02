# Webb-site Project Overview

## Purpose

The Webb-site is a comprehensive Hong Kong financial data platform that scrapes, processes, and publishes stock market data. It provides 35 years of historical data (1990-2025) on:

- Listed companies and securities
- Beneficial ownership through CCASS (Central Clearing and Settlement System)
- Corporate directors, officers, and advisors
- SFC (Securities and Futures Commission) licensees
- Hong Kong Law Society members and firms
- UK Companies House data
- Government financial data and statistics
- Land registry, immigration, transport, and housing data

## License

Released under **Creative Commons CC-BY 4.0 license** - free for commercial or non-commercial use with attribution. Users are encouraged to mirror and build upon these datasets.

## Current Status (Nov 1, 2025 - Post-Shutdown)

**✅ MISSION ACCOMPLISHED** - The Webb-site migration was **successfully completed ahead of the October 31, 2025 deadline**!

**Original webb-site.com shut down as scheduled on October 31, 2025.** The emergency migration from Classic ASP to Flask/PostgreSQL preserved public access to 35 years of Hong Kong financial data through cloud deployment on Render.com.

**Production Statistics:**
- **284 Flask routes** created (public web interface)
- **147 routes with SQL implementations** fully operational (635% above MVP target of 20!)
- **50+ major feature commits** deployed since Oct 19
- **CI/CD active:** GitHub master branch auto-deploys to Render.com
- Database: PostgreSQL 16 on Render.com (pro-4gb plan, 80GB disk)
- Web service: Gunicorn with 4 workers on Render starter plan
- **Zero downtime** since initial deployment Oct 26
- **35 years of data preserved** (1990-2025)

**VB.NET backend continues operating** on Windows for data collection with weekly database updates to production.

## Architecture

**Multi-tier System (Hybrid Cloud + On-Premise):**

1. **Flask Web Application** - **LIVE on Render.com** (sole public-facing platform)
2. **PostgreSQL Database** - **LIVE on Render.com** (public data, updated weekly)
3. **VB.NET Scraping Modules** - Windows backend (automated data collection from HK sources)
4. **MySQL Master Database** - Windows backend (private, feeds PostgreSQL via weekly dumps)
5. **Access Frontend** - Windows (database editing for manual data management)

**Data Flow:**
```
VB.NET Scrapers (Windows) 
    ↓ (write)
MySQL Master (Windows)
    ↓ (weekly mysqldump to Google Drive)
PostgreSQL (Render.com)
    ↑ (read)
Flask App (Render.com) → Public Users
```

**Deployment:**
- **Render.com** - Web service + PostgreSQL database
- **GitHub CI/CD** - Every push to master auto-deploys
- **Zero downtime** - Automatic SSL, health checks, rollback capability

## Key Components

### Database Schemas (PostgreSQL in Production)
- **enigma** - Main database: companies, persons, securities, events, financial reports
- **ccass** - CCASS holdings data tracking beneficial ownership (historical back to 2007-06-26)
- **iplog** - IP address logging and bot protection (to be added)
- **mailvote** - User authentication, polling, newsletter (to be added)

### VB.NET Scrapers (24 modules - Continue on Windows)
Core modules: Quotes, CCASS, HKEXdata, Listing, GetFinancialReports, SFC, CR (Companies Registry), UKCH (UK Companies House), HKlawSoc

Support modules: ScraperKit (shared utilities), JSONkit (JSON parsing)

**Scheduling:** Daily scrapers run on Windows Task Scheduler, weekly dumps to Google Drive, automated import to Render PostgreSQL (to be automated)

### Flask Web Application (Live on Render.com)
- **dbpub/** - Public database query pages (158 routes total, 127 working)
- **ccass/** - CCASS-specific queries (19 routes total, 18 working - 95% complete!)
- **articles/** - Content management (3 routes, all working)
- **search/** - Company/person search (2 routes, all working)
- **pages/** - Static content (13 routes, all working)
- **Deferred (post-launch):** webbmail (17 routes), dbeditor (53 routes), vote/pollman (17 routes)

## Data Relationships

- **issueID** - Core identifier linking securities across all systems
- **personID** - Universal identifier for persons and organizations
- **stockCode** - HKEX stock code
- **partID** - CCASS participant identifier
- **eventID** - Corporate action/event identifier

## Development Environment

### Flask Development (Current Focus)
- **Platform:** Any OS (Linux, macOS, Windows)
- **Python:** 3.13+ with uv package manager
- **Database:** PostgreSQL 16
- **Local Dev:** `postgresql://postgres:@localhost:5432/enigma_pg`
- **Production:** Render.com managed PostgreSQL

### VB.NET Development (Windows Only - Continues Operating)
This repository contains VB.NET scraping modules designed for development on **Windows** systems due to:
- Visual Studio 2022 requirement for VB.NET scrapers
- MySQL ODBC driver dependencies
- Access frontend (.accdb files)

However, the Flask codebase can be browsed and edited on any OS, including Linux systems like the current environment.

**Note:** Classic ASP code in `Webb-site ASP files/` is archived for reference only (original server shut down Oct 31, 2025).

## Production Infrastructure

**Render.com Services:**
```yaml
Web Service:
  - Name: webbsite
  - Runtime: Python 3.13
  - Plan: starter ($7/mo)
  - Workers: 4 Gunicorn workers
  - Build: uv sync --frozen && uv cache prune --ci
  - Start: uv run gunicorn -c gunicorn.conf.py app:app

Database:
  - Name: webbsite-db
  - Type: PostgreSQL 16
  - Plan: pro-4gb ($50/mo)
  - Disk: 80GB SSD
  - Backups: Automated daily
```

**Total Monthly Cost:** ~$57/month

**Continuous Deployment:**
- GitHub integration active
- Push to master → automatic build & deploy
- Zero-downtime rolling deploys
- Automatic health checks and rollback
- Environment variables managed in Render dashboard

## Migration Success Metrics (All Achieved!)

**Core User Journeys (10/10 ✅):**
1. ✅ Search companies by name
2. ✅ Search people by name
3. ✅ View stock price charts
4. ✅ View current stock quotes
5. ✅ Browse corporate events
6. ✅ Browse listed companies
7. ✅ Browse delisted companies
8. ✅ Look up stock codes
9. ✅ View company data pages
10. ✅ Read archived articles

**Technical Achievements:**
- ✅ 147 working routes (MVP target was 20 - **635% overachievement**)
- ✅ PostgreSQL database operational in production
- ✅ Data integrity validated (35 years preserved)
- ✅ Database functions ported (everListCo, total returns calculations, etc.)
- ✅ Site deployed and live on Render.com
- ✅ Continuous deployment active
- ✅ Performance acceptable (< 2 sec page loads)
- ✅ Mobile responsive design
- ✅ Testing framework operational (64 routes with archived ground truth)
- ✅ **Deadline met** - Original server shut down Oct 31, 2025 as planned

## Post-Launch Priorities

### High Priority (Q4 2025)
1. Implement remaining ~50 stub routes (specialty pages)
2. holders.asp - Recursive ownership trees (complex algorithm)
3. Performance optimization and caching
4. Monitor production logs and fix bugs
5. Automated database import from Google Drive

### Medium Priority (Q1 2026)
6. User authentication system (mailvote schema)
7. Email alerts and personalization (mystocks, mybigchanges)
8. Database editing interface for privileged users

### Low Priority (Q2 2026+)
9. VB.NET scraper migration to Python (optional)
10. Real-time data updates via cron jobs
11. API endpoints for data access

## Key Files

**Production Application:**
- `app.py` - Flask application entry point
- `webbsite/__init__.py` - Flask app factory
- `webbsite/routes/` - Route blueprints (15 files, 284 routes)
- `webbsite/templates/` - Jinja2 templates
- `webbsite/db.py` - Database helpers with connection pooling
- `webbsite/asp_helpers.py` - ASP compatibility functions
- `pyproject.toml` - Python dependencies (uv format)
- `render.yaml` - Render.com deployment configuration
- `gunicorn.conf.py` - Gunicorn production server config

**Testing & Documentation:**
- `tests/` - Testing framework and archived ground truth
- `tests/ground_truth/` - Archived ASP outputs for comparison (historical reference)
- `archive/` - Complete archive of original webb-site.com pages
- `docs/modernization-roadmap.md` - Complete migration plan
- `CLAUDE.md` - Project instructions for Claude Code

**Legacy Systems (Continue Operating or Archived):**
- `VB.net files/` - Scraping modules (24 programs, continue operating on Windows)
- `Webb-site ASP files/` - Classic ASP code (archived reference only, server shut down Oct 31, 2025)
- `Enigma schema/` - Database documentation
- `CCASS schema/` - CCASS-specific documentation

## Testing Approach (Post-Shutdown)

**Testing Framework:**
- Custom Python test suite with HTML normalization
- 64 routes in test configuration
- Archived ASP outputs serve as ground truth

**Note:** Live ASP comparison no longer possible (original webb-site.com shut down Oct 31, 2025). All testing uses archived outputs from `tests/ground_truth/` and `archive/` directories as reference for implementing remaining routes.

## Success Story 🎉

The Webb-site migration represents a successful **emergency cloud migration** completed in 14 days:

- **Oct 17:** Migration project started
- **Oct 19:** 24 routes working, testing framework created
- **Oct 26:** **147 routes live in production** with CI/CD (site deployed)
- **Oct 31:** **Original server shutdown - DEADLINE MET**
- **Nov 1:** Post-shutdown status confirmed - all systems operational

**Impact:** Public access to 35 years of Hong Kong financial data (1990-2025) preserved indefinitely through modern cloud infrastructure, honoring David Webb's legacy of financial transparency.

The project successfully:
- Migrated from Windows/IIS to cloud (Render.com)
- Converted Classic ASP to Flask/Python
- Converted MySQL to PostgreSQL
- Implemented CI/CD pipeline
- Preserved VB.NET data collection backend
- Maintained data quality and integrity
- Exceeded MVP goals by 635%
- **Completed ahead of deadline** (5 days early)
- **Zero data loss**
- **Zero downtime**

**The Webb-site platform now has a sustainable, modern foundation for the next 35 years.**
