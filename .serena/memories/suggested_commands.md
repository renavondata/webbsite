# Suggested Commands for Webb-site Development

## Important Note

This project is designed for **Windows development** with Visual Studio 2022, IIS, and MySQL. Many operations require a Windows environment. The commands below are Linux equivalents for repository management and code exploration.

## Repository Management

### Git Operations
```bash
# View repository status
git status

# View recent commits
git log --oneline -10

# Create feature branch
git checkout -b feature/your-feature-name

# Stage changes
git add <file>

# Commit changes
git commit -m "description"

# Push to remote
git push origin <branch-name>
```

## File Exploration

### Find Files
```bash
# Find all VB.NET files
find "VB.net files" -name "*.vb"

# Find all ASP files
find "Webb-site ASP files" -name "*.asp"

# Find SQL schema files
find . -name "*.sql"

# Find Access database files (excluded from git)
find . -name "*.accdb" -o -name "*.mdb"
```

### Search Code
```bash
# Search for function definitions in VB.NET
grep -r "Function " "VB.net files/" --include="*.vb"

# Search for subroutines in VB.NET
grep -r "Sub " "VB.net files/" --include="*.vb"

# Search for ASP functions
grep -r "Function " "Webb-site ASP files/" --include="*.asp"

# Search for database connections
grep -r "openEnigma" "Webb-site ASP files/" --include="*.asp"

# Search for specific scraper by name
grep -r "GetCCASS" "VB.net files/"
```

### List Directory Contents
```bash
# List main project structure
ls -la

# List VB.NET scrapers
ls -la "VB.net files/"

# List ASP pages in dbpub
ls -la "Webb-site ASP files/dbpub/"

# List schema folders
ls -la "Enigma schema/"
ls -la "CCASS schema/"
```

## Documentation Commands

### View Key Documentation
```bash
# View comprehensive project guide
cat CLAUDE.md

# View copyright and license
cat "Copyright and disclaimer.md"

# View VB.NET compilation notes
cat "VB.net files/Notes on compiling the VB.net code.md"

# View scraper scheduling
cat "VB.net files/Suggested run times.md"

# View database setup guide
cat "Setting up the Webb-site database/Setting up the Webb-site Database.md"
```

### View Code Samples
```bash
# View ScraperKit utilities
cat "VB.net files/ScraperKit.vb" | head -200

# View ASP functions library
cat "Webb-site ASP files/dbpub/functions1.asp" | head -200

# View CCASS scraper main file
cat "VB.net files/CCASS.vb" | head -100
```

## Windows-Only Development Commands

The following operations **require Windows environment**:

### Visual Studio Operations (Windows)
```powershell
# Open Visual Studio with configuration
# Import VB.net files/.vsconfig using Visual Studio Installer

# Create new Console App (.NET Framework) project
# Platform: x64
# Add References:
#   - Microsoft ADODB 7.0.3300.0 (Assemblies/Extensions)
#     Set "Copy Local" = True, "Embed Interop Types" = False
#   - ScraperKit (Projects/Solution)
#   - JSONkit (Projects/Solution) for some modules

# Build solution
msbuild /p:Configuration=Release /p:Platform=x64
```

### MySQL Operations (Windows/Linux)
```bash
# Connect to MySQL
mysql -u root -p

# Import schema structure
mysql -u root -p < "Enigma schema/enigma251011/structure.sql"

# Import schema data
mysql -u root -p < "Enigma schema/enigma251011/data.sql"

# Import triggers (must be last)
mysql -u root -p < "Enigma schema/enigma251011/triggers.sql"

# Check database status
mysql -u root -p -e "SHOW DATABASES;"
mysql -u root -p -e "USE enigma; SHOW TABLES;"
```

### IIS Setup (Windows Only)
```powershell
# Configure IIS Application Pool
# Set "Enable Parent Paths" = True
# Set "Send Errors to Browser" = True (dev only)

# Create DSNs using ODBC Data Source Administrator:
# - enigmaMySQL (User DSN)
# - CCASS (User DSN)
# - mailvote (System DSN for web server)
```

### Task Scheduler (Windows Only)
```powershell
# Schedule scrapers using Windows Task Scheduler
# See "VB.net files/Suggested run times.md" for timing

# Example: Run Quotes scraper daily at 22:00
# Task Action: <path-to-exe>/Quotes.exe
# Trigger: Daily at 22:00 Mon-Fri
```

## Code Analysis

### Count Lines of Code
```bash
# Count VB.NET lines
find "VB.net files" -name "*.vb" -exec wc -l {} + | tail -1

# Count ASP lines
find "Webb-site ASP files" -name "*.asp" -exec wc -l {} + | tail -1

# Count all code
find . \( -name "*.vb" -o -name "*.asp" -o -name "*.sql" \) -exec wc -l {} + | tail -1
```

### Identify Dependencies
```bash
# Find modules that import ScraperKit
grep -l "ScraperKit" "VB.net files/"*.vb

# Find modules that use JSONkit
grep -l "JSONkit" "VB.net files/"*.vb

# Find ASP pages that use functions1
grep -l "functions1.asp" "Webb-site ASP files/dbpub/"*.asp
```

## Testing and Validation

### Schema Validation (MySQL)
```sql
-- Check Enigma schema tables
USE enigma;
SHOW TABLES;
SELECT COUNT(*) FROM organisations;
SELECT COUNT(*) FROM persons;

-- Check CCASS schema
USE ccass;
SHOW TABLES;
SELECT COUNT(*) FROM holdings;
SELECT COUNT(*) FROM parthold;

-- Verify triggers exist
SHOW TRIGGERS FROM enigma;
```

### Data Integrity Checks
```sql
-- Check for orphaned records
SELECT COUNT(*) FROM enigma.directorships d 
LEFT JOIN enigma.persons p ON d.personID = p.personID 
WHERE p.personID IS NULL;

-- Check CCASS data completeness
SELECT MAX(atDate) as latest_ccass_date FROM ccass.holdings;

-- Verify quotes up to date
SELECT MAX(date) as latest_quotes FROM ccass.quotes;
```

## Common Workflows

### Setting Up New Development Machine (Windows Required)
1. Install Visual Studio 2022 with `.vsconfig` components
2. Install MySQL 8.0.37 or 8.4.5 LTS
3. Install MySQL ODBC 8.4.0 Unicode Driver
4. Configure MySQL with settings from CLAUDE.md
5. Import database schemas (structure → data → triggers)
6. Configure ODBC DSNs
7. Install IIS and configure ASP settings
8. Clone repository
9. Open VB.NET modules in Visual Studio
10. Add references (ADODB, ScraperKit, JSONkit)
11. Build for x64 platform

### Running Scrapers (Windows)
1. Ensure MySQL is running
2. Verify DSNs are configured
3. Run scraper executable from command line or Task Scheduler
4. Check email for error reports
5. Verify log table for completion status

### Making Code Changes
1. Edit VB.NET or ASP files
2. For VB.NET: rebuild in Visual Studio
3. For ASP: changes take effect immediately (interpreted)
4. Test changes
5. Commit to git

## System-Specific Commands (Linux)

```bash
# File operations
ls          # List directory contents
cd          # Change directory
pwd         # Print working directory
cat         # View file contents
head        # View first N lines
tail        # View last N lines
less        # Page through file
cp          # Copy files
mv          # Move/rename files
rm          # Remove files

# Search operations
grep        # Search file contents
find        # Find files by name/pattern
locate      # Locate files by name

# Text processing
sed         # Stream editor
awk         # Text processing
wc          # Word/line count

# Comparison
diff        # Compare files
```

Note: Use Serena's symbolic tools for navigating code rather than manual grep/find operations.
