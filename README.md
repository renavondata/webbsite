# Webb-site Repository

## From David M Webb MBE

> Read the [COPYRIGHT](COPYRIGHT) file first! Then explore the "Setting up the Webb-site database" folder.
>
> Carpe diem!
>
> David M Webb MBE

## Mission

This repository preserves and maintains **David Webb's Hong Kong financial transparency platform** - a 35-year archive of Hong Kong stock market data, corporate governance records, and beneficial ownership tracking.

Our purpose is to:

- **Preserve** David Webb's legacy of financial transparency and corporate governance activism
- **Maintain** the continuous operation of data collection and publication systems
- **Modernize** the platform for deployment on modern cloud infrastructure
- **Ensure** public access to Hong Kong financial data remains free and open

## What is Webb-site?

The Webb-site platform is a comprehensive multi-tier financial data system tracking:

- **CCASS holdings** - Beneficial ownership data from Hong Kong's Central Clearing system (2007-present)
- **Stock quotes and corporate actions** - Historical price data and dividends since 1994
- **Company officers and advisors** - Directors, auditors, legal advisors across 35 years
- **SFC licensees** - Securities and Futures Commission registered professionals
- **Cross-border structures** - Hong Kong and UK company relationships
- **Financial reports** - Automated collection from HKEX announcements

### System Components

1. **VB.NET scrapers** - 15+ automated data collectors from HKEX, SFC, Companies Registry, etc.
2. **MySQL databases** - 5 schemas (enigma, ccass, private, iplog, mailvote) with 35 years of data
3. **Classic ASP web interface** - Public query system for holdings, ownership trees, events
4. **Access frontend** - Database editing system with role-based access control

## Current Status

**Production**: Windows-based system running VB.NET scrapers on scheduled tasks, IIS hosting Classic ASP pages, master-slave MySQL replication between Hong Kong and USA servers.

**In Progress**: Migration to cloud-native architecture (Python scrapers, modern web framework, containerized deployment) for operation on platforms like Render.com or AWS.

## Quick Start

### For Users

Browse the documentation:
1. Start with [COPYRIGHT](COPYRIGHT) - License and attribution
2. Read [docs/architecture/overview.md](docs/architecture/overview.md) - System architecture
3. Review [docs/database/setup.md](docs/database/setup.md) - Database setup guide

### For Developers

**Prerequisites:**
- MySQL 8.0.37+ (or 8.4.5 LTS)
- For legacy scrapers: Visual Studio 2022, Windows 10+
- For new development: Python 3.11+, Docker

**Database Setup:**
1. Install MySQL with configuration from [docs/database/setup.md](docs/database/setup.md)
2. Restore schemas from `CCASS schema/`, `Enigma schema/`, etc.
3. Configure DSNs or connection strings per [docs/database/setup.md](docs/database/setup.md)

**See detailed setup instructions in [docs/database/setup.md](docs/database/setup.md)**

## Documentation

Comprehensive documentation is available in the [`docs/`](docs/) folder:

### Architecture & Design
- [Architecture Overview](docs/architecture/overview.md) - System design and data flow
- [Technology Stack](docs/architecture/technology-stack.md) - Current and target technologies

### Database
- [Database Setup Guide](docs/database/setup.md) - MySQL configuration and schema restoration
- [CCASS Schema](docs/database/ccass-schema.md) - Beneficial ownership tracking system
- [Enigma Schema](docs/database/enigma-schema.md) - Core company and person data (35 years)
- [Mailvote Schema](docs/database/mailvote-schema.md) - User authentication and polling
- [Iplog Schema](docs/database/iplog-schema.md) - Bot protection and rate limiting
- [MySQL Configuration](docs/database/mysql-configuration.md) - Critical MySQL settings

### Scrapers
- [Scraper Overview](docs/scrapers/overview.md) - Data collection architecture
- [Compilation Guide](docs/scrapers/compilation.md) - Building VB.NET scrapers
- [Scheduling](docs/scrapers/scheduling.md) - Scraper run times and dependencies
- [Scraper Reference](docs/scrapers/reference.md) - Individual scraper documentation

### Web Interface
- [ASP Architecture](docs/web/asp-architecture.md) - Classic ASP structure and patterns
- [Editing System](docs/web/editing-system.md) - Database editing and access control
- [Authentication](docs/web/authentication.md) - Login and security system

### Migration & Modernization
- [Modernization Roadmap](docs/modernization-roadmap.md) - High-level priorities
- [Cloud Migration Roadmap](docs/migration/cloud-roadmap.md) - Detailed migration plan

## Data & Licensing

All Webb-site datasets and software are released under the **Creative Commons CC-BY 4.0 license** - free for commercial or non-commercial use with attribution.

Users are encouraged to:
- Mirror this repository on their own servers with public access
- Build upon these datasets and make them freely available
- Acknowledge Webb-site.com as the source when republishing

Data are provided "as is" without liability. See [COPYRIGHT](COPYRIGHT) for full terms.

## Contributing

This project honors David Webb's commitment to transparency and public interest. Contributions that support these values are welcome:

- Bug fixes and maintenance
- Documentation improvements
- Modernization efforts (Python scrapers, cloud deployment, modern web interface)
- Data quality improvements

Please ensure all contributions:
- Maintain data integrity and historical accuracy
- Preserve public access and CC-BY 4.0 licensing
- Include appropriate attribution

## Project History

Created by **David M Webb MBE**, Hong Kong's leading corporate governance activist and independent investor, who has tracked Hong Kong market data since 1990. This repository represents his life's work making financial data freely accessible to promote market transparency.

## Contact & Links

- Original site: [Webb-site.com](https://webb-site.com) (legacy platform)
- License: [CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/)
- Documentation: [docs/](docs/)

---

*Carpe diem!*
