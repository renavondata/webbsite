# Webb-site Tech Stack

## Programming Languages

### VB.NET (Visual Basic .NET)
- **Version:** .NET Framework (Console App targeting .NET Framework)
- **Platform:** x64 compilation required
- **IDE:** Visual Studio 2022 or later
- **Purpose:** All data scraping and processing modules

**Key Libraries:**
- **Microsoft ADODB** (Version 7.0.3300.0) - Database connectivity
  - Must set "Copy Local" = True
  - Must set "Embed Interop Types" = False
- **System.Net.Mail** - Email error reporting
- **System.Net.WebClient** - HTTP requests and web scraping
- **Custom Modules:**
  - ScraperKit.vb - Shared utility library
  - JSONkit.vb - JSON parsing

### Classic ASP (VBScript)
- **Version:** Classic ASP (pre-.NET)
- **Runtime:** IIS (Internet Information Services)
- **Purpose:** Web interface for querying and displaying data

**Configuration Requirements:**
- Enable Parent Paths: True (for "../" includes)
- Send Errors to Browser: True (development only)

### SQL
- **Database:** MySQL 8.0.37 (recommended) or 8.4.5 LTS
- **Avoid:** MySQL 9.x Innovation series (breaks compatibility)
- **ODBC Driver:** MySQL ODBC 8.4.0 Unicode Driver

## Database Technology

### MySQL Configuration

**Version Requirements:**
- MySQL 8.0.37 (current) or 8.4.5 LTS
- AVOID MySQL 9.x Innovation series

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
- Master: Windows 10 PC (HK) - runs scrapers
- Slave: Windows Server 2016 (USA) - serves web traffic

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
- **Purpose:** Database editing frontend
- **File Format:** .accdb files
- **Note:** Binary files excluded from git (.gitignore)

## Operating System Requirements

### Production/Development
- **Windows 10/11** or **Windows Server 2016+**
- Required for:
  - Visual Studio 2022
  - IIS for Classic ASP
  - MySQL ODBC drivers
  - Microsoft Access frontend

### Repository Management
- Can be browsed/edited on Linux
- Full development requires Windows environment

## Key Dependencies

### VB.NET References
Each module requires:
1. Microsoft ADODB (Assemblies/Extensions) v7.0.3300.0
2. ScraperKit (Projects/Solution)
3. JSONkit (Projects/Solution) - some modules only

### ODBC Data Source Names (DSNs)
**Master Server - User DSNs:**
- enigmaMySQL (localhost, database=enigma)
- CCASS (localhost, database=ccass)

**Slave Server - System DSNs:**
- enigmaMySQL (localhost, database=enigma)
- CCASSserver (localhost, database=ccass)
- conAuto (master server, database=enigma)
- mailvote (localhost, database=mailvote)

## Scheduling
Scrapers run on Windows Task Scheduler with different frequencies:
- **Daily:** Quotes (22:00), CCASS (04:00), SFC (03:00), GetFinancialReports (02:30)
- **Hourly:** HKflights, UKCH (continuous operation)
- **Weekly:** housing (Fridays 20:00)
- **Manual only:** Treasury

See `VB.net files/Suggested run times.md` for complete schedule.
