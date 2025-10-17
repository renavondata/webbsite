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

## Architecture

**Multi-tier System:**
1. **VB.NET Scraping Modules** - Automated data collection from various HK sources
2. **MySQL Databases** - Core data storage across multiple schemas
3. **Classic ASP Web Interface** - Public-facing query and reporting system
4. **Access Frontend** - Database editing system for manual data management

**Master-Slave Replication:**
- **Master Server (Assistant3):** Windows 10 PC in HK - runs scrapers, stores private data
- **Slave Server (Webb-site):** Windows Server 2016 in USA - mirrors data for public access

## Key Components

### Database Schemas
- **enigma** - Main database: companies, persons, securities, events, financial reports
- **ccass** - CCASS holdings data tracking beneficial ownership (historical back to 2007-06-26)
- **private** - Private keys and credentials (master only, not replicated)
- **iplog** - IP address logging and bot protection (slave only)
- **mailvote** - User authentication, polling, newsletter (slave only)

### VB.NET Scrapers (24 modules)
Core modules: Quotes, CCASS, HKEXdata, Listing, GetFinancialReports, SFC, CR (Companies Registry), UKCH (UK Companies House), HKlawSoc

Support modules: ScraperKit (shared utilities), JSONkit (JSON parsing)

### Classic ASP Web Interface
- **dbpub/** - Public database query pages
- **ccass/** - CCASS-specific queries
- **webbmail/** - User personalization and email alerts
- **dbeditor/** - Database editing interfaces (authenticated)
- **templates/** - Shared header/footer components

## Data Relationships

- **issueID** - Core identifier linking securities across all systems
- **personID** - Universal identifier for persons and organizations
- **stockCode** - HKEX stock code
- **partID** - CCASS participant identifier
- **eventID** - Corporate action/event identifier

## Development Environment

This repository is designed for development on **Windows** systems due to:
- Visual Studio 2022 requirement for VB.NET scrapers
- IIS requirement for Classic ASP testing
- MySQL ODBC driver dependencies
- Access frontend (.accdb files)

However, the codebase can be browsed and edited on Linux systems like the current environment.
