# Renavon Hong Kong Database

## Data Attribution

**This database contains data originally compiled by [Webb-site.com](https://webb-site.com), founded and operated by the late David M. Webb MBE, who ran it from 1998.**

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

1. **PostgreSQL database** - Core data storage: 35 years of Hong Kong financial records
   (schemas `enigma` + `ccass`)
2. **Flask web interface** - Public-facing query and reporting system, a faithful port of the
   original Classic ASP site
3. **Data pipelines** - Collection is being revived as
   [renavon-monorepo](https://github.com/renavondata/renavon-monorepo) Scrapy pipelines that feed
   fresh data back into this database (the original VB.NET scrapers are retired — see the
   *Historical system* note in `CLAUDE.md`)

## Technology Stack

**Current production:**
- **App**: Flask + Jinja2 (Python 3.13, managed with `uv`), served by gunicorn under systemd
- **Database**: self-hosted PostgreSQL 17 (localhost-only) on a DigitalOcean droplet
- **Edge/TLS**: Caddy terminates TLS; Cloudflare fronts the site with an aggressive edge cache

See `deploy/README.md` for the full hosting topology and `CLAUDE.md` for architecture.

**Historical system** (retired late 2025, preserved in David Webb's Google Drive release and in
this repo's git history): Classic ASP web pages, MySQL 8.0 databases, and the VB.NET scrapers that
collected the data on Windows.

## Quick Start

### For Users

**Live site**: <https://webbsite.renavon.com>

**Data access**:
- Search companies and individuals
- Track CCASS beneficial ownership changes
- View corporate actions and stock prices
- Analyze board compositions and adviser networks

### For Developers

**Prerequisites:**
- Python 3.13 and [`uv`](https://docs.astral.sh/uv/)
- PostgreSQL 14+ with the `enigma`/`ccass` schemas loaded

**Local development:**
```bash
git clone https://github.com/renavondata/webbsite.git
cd webbsite

uv sync                                   # install dependencies from the lockfile
export DATABASE_URL="postgresql://postgres:@localhost:5432/enigma_pg"
uv run flask run                          # dev server on http://127.0.0.1:5000
```

The database is a *derived artifact*: restore it from the `pg_dump` archive in Cloudflare R2, or
rebuild from the canonical Google Drive release — `deploy/README.md` has the commands.

## Documentation

- **[CLAUDE.md](CLAUDE.md)** - architecture, the enigma/ccass data model, and the data-revival plan
- **[deploy/README.md](deploy/README.md)** - hosting topology, deploy flow, data rebuild
- **[docs/database/enigma-schema.md](docs/database/enigma-schema.md)** - core schema (companies,
  persons, events; 35 years)
- **[docs/database/ccass-schema.md](docs/database/ccass-schema.md)** - CCASS holdings and
  beneficial-ownership tracking

Original scrapers, schema dumps, and the Classic ASP source are preserved in David Webb's canonical
**Google Drive release** (CC-BY 4.0) and in this repo's git history; ongoing data collection is
tracked in the [renavon-monorepo](https://github.com/renavondata/renavon-monorepo) revival roadmap.

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
