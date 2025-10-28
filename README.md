# Renavon Hong Kong Database

## Data Attribution

**This database contains data originally compiled by [Webb-site.com](https://webb-site.com), founded and operated by David M. Webb MBE since 1998.**

David Webb generously released the Webb-site database schemas and scrapers as open source in October 2025 under the Creative Commons CC-BY 4.0 license. We gratefully acknowledge his 35-year contribution to transparency in Hong Kong's financial markets.

> Read the [COPYRIGHT](COPYRIGHT) file for full attribution and licensing information.

## Mission

Renavon Hong Kong Database preserves and provides public access to a comprehensive archive of Hong Kong financial market data spanning over 35 years. This platform promotes transparency, accountability, and independent research in Hong Kong's capital markets.

Our purpose is to:

- **Preserve** 35 years of Hong Kong financial data for public access
- **Maintain** freely accessible database query tools
- **Support** research, journalism, and public interest analysis
- **Honor** the CC-BY 4.0 license by proper attribution to Webb-site.com

## What Data is Included?

The Renavon platform provides access to:

- **CCASS holdings** - Beneficial ownership data from Hong Kong's Central Clearing system (2007-present)
- **Stock quotes and corporate actions** - Historical price data and dividends since 1994
- **Company officers and advisors** - Directors, auditors, legal advisors across 35 years
- **SFC licensees** - Securities and Futures Commission registered professionals
- **Cross-border structures** - Hong Kong and UK company relationships
- **Financial reports** - Automated collection from HKEX announcements
- **Law Society records** - Hong Kong solicitor admissions and firm positions

### What is NOT Included

**Editorial content** from Webb-site Reports (articles, analysis, and opinions published 1998-2025) remains copyright David M. Webb and is NOT included in this repository or covered by the CC-BY 4.0 license.

Where this site references Webb-site articles, links direct to [Archive.org](https://web.archive.org/web/*/webb-site.com/articles/) preserved copies for historical reference only.

## System Components

1. **Data scrapers** - Automated collectors from HKEX, SFC, Companies Registry, Law Society, etc.
2. **PostgreSQL database** - Core data storage with 35 years of financial records
3. **Flask web interface** - Public-facing query and reporting system
4. **Legacy VB.NET scrapers** - Original data collection modules (being modernized)

## Technology Stack

**Current Production** (as of October 2025):
- **Frontend**: Flask + Jinja2 + HTMX (Python 3.11+)
- **Database**: PostgreSQL 16 on Render.com (managed cloud database)
- **Hosting**: Render.com Web Service (cloud platform)
- **Backend scrapers**: VB.NET modules (continue operating on Windows backend)

**Legacy Components** (being phased out):
- Classic ASP web pages
- MySQL 8.0.37 databases
- Windows Server 2016 IIS hosting

## Quick Start

### For Users

**Live Site**: [Browse the database](https://renavon.com) (replace with actual URL when deployed)

**Data Access**:
- Search companies and individuals
- Track CCASS beneficial ownership changes
- View corporate actions and stock prices
- Analyze board compositions and adviser networks

### For Developers

**Prerequisites:**
- PostgreSQL 14+ (or MySQL 8.0.37+ for legacy setup)
- Python 3.11+
- For legacy scrapers: Visual Studio 2022, Windows 10+

**Local Development:**
```bash
# Clone repository
git clone https://github.com/yourusername/webbsite.git
cd webbsite

# Install Python dependencies
pip install -r requirements.txt

# Configure database connection
export DATABASE_URL="postgresql://user:pass@localhost:5432/enigma_pg"

# Run Flask development server
flask run
```

**Database Setup:**
1. Install PostgreSQL (or MySQL for legacy compatibility)
2. Restore schemas from database dump files
3. Configure connection strings in `.env` file

**See detailed setup instructions in the repository documentation**

## Documentation

Comprehensive documentation is available in this repository:

### Database
- CCASS Schema documentation - Beneficial ownership tracking
- Enigma Schema documentation - Core company and person data
- Database setup guides

### Scrapers
- Scraper overview and architecture
- VB.NET compilation guide
- Scheduling and dependencies

### Web Interface
- Flask application structure
- ASP compatibility helpers
- Authentication system (for future features)

## Data & Licensing

### License

The **database structure, data compilation, and software** are released under **Creative Commons Attribution 4.0 International (CC-BY 4.0)** license.

**You are free to:**
- Share — copy and redistribute the data
- Adapt — remix, transform, and build upon the data for any purpose, including commercially

**Under the following terms:**
- **Attribution** — Credit Webb-site.com as the original compiler, provide a link to CC-BY 4.0 license, and indicate changes made

**Suggested Attribution**: "Data from Renavon Hong Kong Database, originally compiled by Webb-site.com | CC-BY 4.0"

### Disclaimer

Data is provided "as is" without warranty. While we strive for accuracy, we make no guarantees about completeness, reliability, or suitability for any purpose.

**Not investment advice.** This database is for informational and research purposes only.

## Data Sources

All data is sourced from publicly available sources including:
- Hong Kong Exchanges and Clearing (HKEX)
- Securities and Futures Commission (SFC)
- Companies Registry Hong Kong
- Companies House UK
- Hong Kong Law Society
- Hong Kong Monetary Authority (HKMA)
- Other government and regulatory bodies

## Contributing

This is a data preservation project. Contributions are welcome for:
- Bug fixes and error corrections
- Database query improvements
- Additional data sources (with proper licensing)
- Documentation improvements

Please ensure contributions respect the CC-BY 4.0 license and maintain attribution to Webb-site.com.

## Support

For questions or issues:
- Open a GitHub issue
- Contact via website form (link TBD)

## Acknowledgments

**Primary Attribution**: This database would not exist without David M. Webb's 35 years of meticulous data collection, analysis, and advocacy for transparency in Hong Kong's financial markets. We are deeply grateful for his decision to release this invaluable resource under an open license.

**Data Sources**: We thank all the public agencies and regulators who make their data available to the public.

**Open Source Community**: This project builds on countless open source tools and libraries.

---

**For more information about David Webb and the original Webb-site.com, see:** https://webb-site.com/pages/aboutus.asp (archived at Archive.org)
