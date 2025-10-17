# Webb-site Documentation

Comprehensive documentation for the Webb-site Hong Kong financial transparency platform.

## Quick Navigation

### Getting Started
- [../README.md](../README.md) - Project overview and quick start
- [../COPYRIGHT](../COPYRIGHT) - License and attribution (CC-BY 4.0)
- [database/setup.md](database/setup.md) - **Start here** for setting up the system

### Architecture & Design
- [architecture/overview.md](architecture/overview.md) - System architecture and design principles
- [architecture/data-flow.md](architecture/data-flow.md) - How data flows through the system
- [architecture/technology-stack.md](architecture/technology-stack.md) - Current and target technologies

### Database Documentation
- [database/setup.md](database/setup.md) - MySQL setup, configuration, DSNs, replication
- [database/mysql-configuration.md](database/mysql-configuration.md) - Critical MySQL settings reference
- [database/ccass-schema.md](database/ccass-schema.md) - CCASS holdings and beneficial ownership
- [database/enigma-schema.md](database/enigma-schema.md) - Core schema (companies, persons, events, 35 years)
- [database/mailvote-schema.md](database/mailvote-schema.md) - User accounts, authentication, polling
- [database/iplog-schema.md](database/iplog-schema.md) - IP logging and bot protection

### Data Collection (Scrapers)
- [scrapers/overview.md](scrapers/overview.md) - Scraper architecture and patterns
- [scrapers/compilation.md](scrapers/compilation.md) - Building VB.NET scrapers (Visual Studio setup)
- [scrapers/scheduling.md](scrapers/scheduling.md) - Run times, dependencies, critical schedules
- [scrapers/reference.md](scrapers/reference.md) - Individual scraper documentation

### Web Interface
- [web/asp-architecture.md](web/asp-architecture.md) - Classic ASP structure and organization
- [web/editing-system.md](web/editing-system.md) - Database editing system (wsroles)
- [web/authentication.md](web/authentication.md) - User login and persistent sessions

### Migration & Modernization
- [modernization-roadmap.md](modernization-roadmap.md) - **High-level priorities** for cloud migration
- [migration/cloud-roadmap.md](migration/cloud-roadmap.md) - Detailed phase-by-phase migration plan
- [migration/phase-1-foundation.md](migration/phase-1-foundation.md) - First phase implementation

## Documentation by Task

### I want to...

**Set up a development environment**
1. [database/setup.md](database/setup.md) - Install MySQL and configure
2. [database/mysql-configuration.md](database/mysql-configuration.md) - Critical settings
3. Restore schemas from `../CCASS schema/`, `../Enigma schema/`, etc.
4. [scrapers/compilation.md](scrapers/compilation.md) - Build VB.NET scrapers (if needed)

**Understand the data model**
1. [architecture/overview.md](architecture/overview.md) - System overview
2. [database/enigma-schema.md](database/enigma-schema.md) - Core entities and relationships
3. [database/ccass-schema.md](database/ccass-schema.md) - Ownership tracking

**Run the scrapers**
1. [scrapers/overview.md](scrapers/overview.md) - How scrapers work
2. [scrapers/compilation.md](scrapers/compilation.md) - Build the code
3. [scrapers/scheduling.md](scrapers/scheduling.md) - When and in what order to run
4. [scrapers/reference.md](scrapers/reference.md) - Specific scraper details

**Deploy the web interface**
1. [web/asp-architecture.md](web/asp-architecture.md) - Understand the structure
2. [web/authentication.md](web/authentication.md) - Set up login system
3. [database/setup.md](database/setup.md) - Configure DSNs for IIS

**Migrate to the cloud**
1. [modernization-roadmap.md](modernization-roadmap.md) - **Start here** for priorities
2. [migration/cloud-roadmap.md](migration/cloud-roadmap.md) - Detailed plan
3. [architecture/overview.md](architecture/overview.md) - Understand current architecture

**Contribute to the project**
1. [../README.md](../README.md) - Contributing guidelines
2. [architecture/overview.md](architecture/overview.md) - System design
3. [modernization-roadmap.md](modernization-roadmap.md) - Where help is needed

## Documentation Standards

All documentation in this repository follows these principles:

1. **Accuracy** - Reflects actual implementation, not idealized versions
2. **Clarity** - Written for developers unfamiliar with the codebase
3. **Completeness** - Includes gotchas, dependencies, and critical details
4. **Maintenance** - Updated when code changes

## File Organization

```
docs/
├── README.md (this file)
├── modernization-roadmap.md
├── architecture/
│   ├── overview.md
│   ├── data-flow.md
│   └── technology-stack.md
├── database/
│   ├── setup.md
│   ├── mysql-configuration.md
│   ├── ccass-schema.md
│   ├── enigma-schema.md
│   ├── mailvote-schema.md
│   └── iplog-schema.md
├── scrapers/
│   ├── overview.md
│   ├── compilation.md
│   ├── scheduling.md
│   └── reference.md
├── web/
│   ├── asp-architecture.md
│   ├── editing-system.md
│   └── authentication.md
└── migration/
    ├── cloud-roadmap.md
    └── phase-1-foundation.md
```

## Additional Resources

- Schema SQL files: `../CCASS schema/`, `../Enigma schema/`, etc.
- Source code: `../VB.net files/`, `../Webb-site ASP files/`
- Database setup scripts: `../Setting up the Webb-site database/`

---

**Note**: Some documentation files referenced here are planned but not yet created. This is part of the ongoing documentation consolidation effort.
