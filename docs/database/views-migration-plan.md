# MySQL Views Migration to PostgreSQL

## Summary
Migrate 61 remaining MySQL views to PostgreSQL:
- **Enigma schema**: 58 views (4 already ported)
- **CCASS schema**: 3 views (none ported yet)

## Current Status

### Already Ported to PostgreSQL

**Enigma schema** (4 out of 62 views):
- ✅ `listedcoshk`
- ✅ `listedcoshkever`
- ✅ `webholders3`
- ✅ `webholdings3`

**CCASS schema**: No views found (need to migrate all 3)

### Still Need to Migrate

**Enigma schema** (58 views remaining):
- auditorchanges
- buybacksadj
- currentlistedshareshk
- dirnocname
- entall, entdetails, entlive
- hkdelisted, hklistedordsever, hklistedordsnow
- hkmarketcapperstock, hkstocksbyboardlot
- inedhk, inedhkdistncos, inedhkdistnpeople, inedhkperco, inedhkperperson, inednow
- issuedlatest, issuedlatestdate
- issuers2003, issues2003, issuesforhku
- lasthlddate, lastmreturn
- listedcoshkadv, listedcoshkall
- listedfirsttrade, listingsforhku
- lookupadviser, lookupposition, lookuprelationship, lookuprole
- missingage, missingdistdate, missingexent
- st1cos, st1dates, st2cos, st2dates, st4cos, st4dates
- stockcodes1000
- webadv, webadvships, webbuybacks
- webcatmembers, webcattree, webcountadvbyrole
- webcurrlisted, webdelisted
- webdirs, webdirships, webdocs
- webincats, webissues, weblistings, weborgs

**CCASS schema** (3 views):
- holdingsperdate
- latestholdings
- maxdate

**Total remaining: 61 views** (58 enigma + 3 ccass)

## Phase 1: Extract View Definitions from MySQL Dumps

### 1.1 Create Extraction Script
**File**: `database/migrations/extract_views.py`

```python
#!/usr/bin/env python3
"""Extract view definitions from MySQL dump files."""
import re
import sys
from pathlib import Path

def extract_views(sql_file):
    """Extract CREATE VIEW statements from MySQL dump."""
    with open(sql_file, 'r', encoding='utf-8') as f:
        content = f.read()

    # Find all view definitions (between "Final view structure" comments)
    # Pattern matches the actual CREATE VIEW statement
    pattern = r'/\*!50001 CREATE.*?VIEW `(\w+)` AS (.*?) \*/;'
    views = re.findall(pattern, content, re.DOTALL)

    return views

def main():
    if len(sys.argv) < 2:
        print("Usage: python extract_views.py <schema>")
        print("  schema: enigma or ccass")
        sys.exit(1)

    schema = sys.argv[1]

    # Find the SQL structure file
    if schema == 'enigma':
        sql_file = Path("Enigma schema/enigmaStructure-2025-10-11- 000.sql")
    elif schema == 'ccass':
        sql_file = Path("CCASS schema/ccassStructure-2025-10-11- 600.sql")
    else:
        print(f"Unknown schema: {schema}")
        sys.exit(1)

    if not sql_file.exists():
        print(f"File not found: {sql_file}")
        sys.exit(1)

    views = extract_views(sql_file)

    print(f"Found {len(views)} views in {schema} schema:\n")
    for view_name, definition in views:
        print(f"-- View: {view_name}")
        # Show first 200 chars of definition
        clean_def = ' '.join(definition.split())[:200]
        print(f"   {clean_def}...")
        print()

if __name__ == '__main__':
    main()
```

### 1.2 Extract to Separate Files
Run extraction to create individual view files for review:
```bash
cd /home/g/Sync/git/webbsite
python database/migrations/extract_views.py enigma > database/migrations/enigma_views_raw.txt
python database/migrations/extract_views.py ccass > database/migrations/ccass_views_raw.txt
```

## Phase 2: Convert MySQL Syntax to PostgreSQL

### 2.1 Key Syntax Conversions

**Remove MySQL-specific directives:**
- `/*!50001 ... */` wrapper comments
- `ALGORITHM=UNDEFINED`
- `DEFINER=\`user\`@\`host\``
- `SQL SECURITY DEFINER`
- Character set directives (`SET character_set_client`, etc.)

**Identifier quoting:**
- MySQL backticks → PostgreSQL double quotes (or remove for standard names)
- `` `tableName` `` → `"tableName"` or `tablename`
- Prefer lowercase unquoted names for PostgreSQL standard compliance

**Schema qualification:**
- Add schema prefix to all table/view references
- `organisations` → `enigma.organisations`
- `holdings` → `ccass.holdings`
- Cross-schema references: `enigma.issue`, `ccass.quotes`, etc.

**Function conversions:**
- MySQL `IFNULL(a, b)` → PostgreSQL `COALESCE(a, b)`
- MySQL `CONCAT(a, b, c)` → PostgreSQL `CONCAT(a, b, c)` (same) or `a || b || c`
- Verify custom functions exist: `everListCo()`, `STOCKCODETHEN()`, `SPLITADJ()`, `MSdateAcc()`

**NULL ordering:**
- MySQL `ORDER BY NULL` → PostgreSQL remove or use `ORDER BY (SELECT NULL)`
- This is typically used to disable default ordering in MySQL

**Column aliases:**
- MySQL allows unquoted mixed-case aliases: `AS Count(holding)`
- PostgreSQL needs quotes for non-standard names: `AS "Count(holding)"`
- Or normalize to lowercase: `AS count_holding`

### 2.2 Conversion Script Template
**File**: `database/migrations/convert_mysql_views.py`

```python
#!/usr/bin/env python3
"""Convert MySQL view definitions to PostgreSQL syntax."""
import re
import sys

def convert_view(mysql_sql, view_name, schema):
    """Convert single view from MySQL to PostgreSQL."""

    # Remove MySQL wrapper comments
    sql = re.sub(r'/\*!.*?\*/', '', mysql_sql)

    # Remove DEFINER clause
    sql = re.sub(r'DEFINER=`[^`]+`@`[^`]+`\s+', '', sql)

    # Remove SQL SECURITY DEFINER
    sql = re.sub(r'SQL SECURITY DEFINER\s+', '', sql)

    # Replace backticks with nothing (standard identifiers)
    # Note: May need manual review for mixed-case identifiers
    sql = sql.replace('`', '')

    # Convert IFNULL to COALESCE
    sql = re.sub(r'\bifnull\s*\(', 'COALESCE(', sql, flags=re.IGNORECASE)

    # Handle ORDER BY NULL
    sql = re.sub(r'ORDER BY NULL', '', sql, flags=re.IGNORECASE)

    # Clean up whitespace
    sql = sql.strip()

    # Format as PostgreSQL CREATE VIEW
    pg_sql = f"-- View: {view_name}\n"
    pg_sql += f"CREATE OR REPLACE VIEW {schema}.{view_name} AS\n"
    pg_sql += f"{sql};\n"

    return pg_sql

def main():
    # This is a template - actual conversion needs manual review
    # for schema qualification and complex expressions
    print("This script provides conversion helpers.")
    print("Manual review required for:")
    print("  - Schema qualification (table.column references)")
    print("  - Custom function calls")
    print("  - Column alias quoting")
    print("  - View dependencies")

if __name__ == '__main__':
    main()
```

### 2.3 Manual Conversion Required

Due to complexity, **recommend manual conversion** with script assistance:
- Schema qualification requires knowledge of table vs column names
- Custom function dependencies need verification
- View dependency ordering critical for success
- Testing needed for each view

## Phase 3: Handle View Dependencies

### 3.1 Identify Dependencies

Some views reference other views - must create in correct order:

**Known dependencies:**
- `latestholdings` depends on `maxdate` → create `maxdate` first
- `webholdings3` depends on `lasthlddate` → need to check if `lasthlddate` exists
- `auditorchanges` depends on `listedcoshkall` → check order
- Various `web*` views may depend on other views

### 3.2 Dependency Resolution Strategy

1. **Parse each view** to find referenced views (vs tables)
2. **Build dependency graph** - which views depend on which
3. **Topological sort** to determine creation order
4. **Create independent views first**, then dependent ones
5. **Use `CREATE OR REPLACE`** to allow re-running script

### 3.3 Simple Approach

For 61 views, manual dependency tracking is feasible:
1. Create all views that only reference tables
2. Create views that reference first-level views
3. Continue until all views created

## Phase 4: Generate Migration Files

### 4.1 File Structure

Create organized SQL files:

**`database/migrations/ccass_views.sql`** (Start here - only 3 views, simpler)
```sql
-- CCASS Schema Views Migration
-- Generated from MySQL dump: ccassStructure-2025-10-11-600.sql
-- Total: 3 views
-- Date: 2025-10-20

SET search_path TO ccass, public;

-- View: maxdate
-- No dependencies
CREATE OR REPLACE VIEW ccass.maxdate AS
SELECT partID, issueID, MAX(atDate) AS "Max(atDate)"
FROM ccass.holdings
GROUP BY partID, issueID;

-- View: holdingsperdate
-- No dependencies
CREATE OR REPLACE VIEW ccass.holdingsperdate AS
SELECT atDate AS "Atdate", COUNT(holding) AS "Count(holding)"
FROM ccass.holdings
GROUP BY atDate
ORDER BY atDate;

-- View: latestholdings
-- Depends on: maxdate
CREATE OR REPLACE VIEW ccass.latestholdings AS
SELECT h.partID, h.issueID, h.holding, h.atDate
FROM ccass.maxdate m
JOIN ccass.holdings h ON (
    m."Max(atDate)" = h.atDate
    AND m.issueID = h.issueID
    AND m.partID = h.partID
)
WHERE h.holding > 0;
```

**`database/migrations/enigma_views.sql`**
```sql
-- Enigma Schema Views Migration
-- Generated from MySQL dump: enigmaStructure-2025-10-11-000.sql
-- Total: 58 views (4 already exist, 58 to create)
-- Date: 2025-10-20

SET search_path TO enigma, public;

-- ============================================================
-- SECTION 1: Independent views (no view dependencies)
-- ============================================================

-- View: auditorchanges
-- Used by: auditorchanges.asp page
CREATE OR REPLACE VIEW enigma.auditorchanges AS
SELECT
    adviserships."Company",
    adviserships."Adviser",
    MSdateAcc(adviserships."AddDate", adviserships."AddAcc") AS "add",
    MSdateAcc(adviserships."RemDate", adviserships."RemAcc") AS "rem",
    COALESCE(adviserships."RemDate", adviserships."AddDate") AS "SortDate",
    listedcoshkall.name AS "CoName",
    organisations."Name1" AS "AdvName"
FROM enigma.organisations
JOIN enigma.listedcoshkall ON (listedcoshkall.personID = adviserships."Company")
JOIN enigma.adviserships ON (organisations."PersonID" = adviserships."Adviser")
WHERE adviserships."Role" = 0;

-- ... (continue with remaining 57 views)

-- ============================================================
-- SECTION 2: Dependent views (reference other views)
-- ============================================================

-- View: webholdings3
-- Depends on: lasthlddate
CREATE OR REPLACE VIEW enigma.webholdings3 AS
-- ... definition here

```

### 4.2 Application Script

**`database/migrations/apply_views.sh`**
```bash
#!/bin/bash
# Apply view migrations to PostgreSQL
# Usage: ./apply_views.sh [database-url]

set -e  # Exit on error

DB_URL="${1:-${DATABASE_URL:-postgresql://postgres:@localhost:5432/enigma_pg}}"

echo "==================================="
echo "MySQL Views Migration to PostgreSQL"
echo "==================================="
echo "Database: $DB_URL"
echo ""

echo "Step 1: Applying CCASS views (3 views)..."
psql "$DB_URL" -f database/migrations/ccass_views.sql
if [ $? -eq 0 ]; then
    echo "✅ CCASS views created successfully"
else
    echo "❌ CCASS views failed"
    exit 1
fi

echo ""
echo "Step 2: Applying Enigma views (58 views)..."
psql "$DB_URL" -f database/migrations/enigma_views.sql
if [ $? -eq 0 ]; then
    echo "✅ Enigma views created successfully"
else
    echo "❌ Enigma views failed"
    exit 1
fi

echo ""
echo "==================================="
echo "Views migration complete!"
echo "==================================="
echo ""
echo "Verification commands:"
echo "  psql $DB_URL -c '\\dv ccass.*'"
echo "  psql $DB_URL -c '\\dv enigma.*'"
echo "  psql $DB_URL -c 'SELECT COUNT(*) FROM ccass.latestholdings;'"
echo "  psql $DB_URL -c 'SELECT COUNT(*) FROM enigma.listedcoshkall;'"
```

Make executable:
```bash
chmod +x database/migrations/apply_views.sh
```

## Phase 5: Manual Conversion Workflow

### 5.1 For Each View

1. **Extract** MySQL definition from dump file
   - Enigma: lines 8693+ in `enigmaStructure-2025-10-11- 000.sql`
   - CCASS: lines 1306+ in `ccassStructure-2025-10-11- 600.sql`

2. **Clean** - Remove MySQL wrappers and directives
   - Strip `/*!50001 ... */` wrappers
   - Remove `DEFINER`, `SQL SECURITY DEFINER`, `ALGORITHM`
   - Remove character set directives

3. **Convert** - Apply syntax transformations
   - Backticks → quotes or remove
   - `IFNULL` → `COALESCE`
   - `ORDER BY NULL` → remove

4. **Qualify** - Add schema prefixes to table references
   - `organisations` → `enigma.organisations`
   - `holdings` → `ccass.holdings`
   - Leave column names unqualified

5. **Quote aliases** - Fix column aliases if needed
   - `AS Max(atDate)` → `AS "Max(atDate)"`
   - Or normalize: `AS max_atdate`

6. **Test** - Create in local PostgreSQL
   ```bash
   psql postgres://postgres:@localhost:5432/enigma_pg
   ```

7. **Verify** - Compare results with MySQL (while webb-site.com accessible)
   ```sql
   -- PostgreSQL
   SELECT COUNT(*) FROM ccass.latestholdings;

   -- MySQL (for comparison)
   SELECT COUNT(*) FROM ccass.latestholdings;
   ```

### 5.2 Priority Order

**Phase A: CCASS Views** (Start here - only 3, simpler)
1. `maxdate` - independent
2. `holdingsperdate` - independent
3. `latestholdings` - depends on maxdate

**Phase B: High Priority Enigma Views** (used by Flask app)
4. `listedcoshkall` - used in search/listing pages
5. `listedcoshkadv` - used in listing pages
6. `webcurrlisted` - currently listed companies
7. `webdelisted` - delisted companies
8. `webissues` - used in web queries
9. `weborgs` - used in web queries
10. `webdirs` - directors for web display
11. `webdirships` - directorships for web display
12. `webadv` - advisers for web display
13. `webadvships` - adviserships for web display

**Phase C: Supporting Views** (referenced by other views)
14. `lasthlddate` - dependency for webholdings3
15. `lastmreturn` - used in returns calculations
16. `lookupadviser`, `lookupposition`, `lookuprelationship`, `lookuprole` - lookup tables

**Phase D: Analytics Views** (lower priority)
17. `inedhk*` - independent director statistics (7 views)
18. `hk*` - HK stock statistics (7 views)
19. `st*cos`, `st*dates` - Shell Transport tracking (6 views)
20. `missing*` - data quality views (3 views)
21. Remaining `web*` views
22. Research views (`issuesforhku`, `listingsforhku`, `issuers2003`, `issues2003`)

## Phase 6: Testing

### 6.1 Local Testing

```bash
# Apply views
./database/migrations/apply_views.sh

# Verify views exist
psql postgres://postgres:@localhost:5432/enigma_pg -c "\dv ccass.*"
psql postgres://postgres:@localhost:5432/enigma_pg -c "\dv enigma.*"

# Count views
psql postgres://postgres:@localhost:5432/enigma_pg -c "
SELECT schemaname, COUNT(*)
FROM pg_views
WHERE schemaname IN ('enigma', 'ccass')
GROUP BY schemaname;"

# Test each view with SELECT COUNT(*)
psql postgres://postgres:@localhost:5432/enigma_pg -c "SELECT COUNT(*) FROM ccass.latestholdings;"
psql postgres://postgres:@localhost:5432/enigma_pg -c "SELECT COUNT(*) FROM enigma.listedcoshkall;"
psql postgres://postgres:@localhost:5432/enigma_pg -c "SELECT COUNT(*) FROM enigma.webcurrlisted;"

# Test with sample data
psql postgres://postgres:@localhost:5432/enigma_pg -c "SELECT * FROM ccass.latestholdings LIMIT 5;"
```

### 6.2 Compare with MySQL (if accessible)

While webb-site.com MySQL is still accessible, compare results:

```bash
# MySQL counts
mysql -h <host> -u <user> enigma -e "SELECT COUNT(*) FROM listedcoshkall;"

# PostgreSQL counts
psql postgres://postgres:@localhost:5432/enigma_pg -c "SELECT COUNT(*) FROM enigma.listedcoshkall;"

# Should match or be very close (allowing for recent data changes)
```

### 6.3 Flask Integration Testing

Check if any Flask routes query these views directly:

```bash
cd webbsite
grep -r "FROM enigma\\.web" routes/
grep -r "FROM ccass\\." routes/
grep -r "JOIN enigma\\.listed" routes/
```

If views are queried, test those Flask routes:
```bash
flask run
# Visit pages that use views
# Check for errors in console
```

## Phase 7: Deployment to Render PostgreSQL

### 7.1 Pre-Deployment Checklist

- [ ] All views tested locally
- [ ] No syntax errors
- [ ] View dependencies resolved
- [ ] Custom functions verified (`everListCo`, etc.)
- [ ] Flask app tested with views
- [ ] Migration scripts ready

### 7.2 Apply to Render PostgreSQL

```bash
# Get Render database URL from dashboard
# Format: postgresql://user:pass@host/dbname

export DATABASE_URL="postgresql://user:pass@dpg-xxxxx.render.com/enigma"

# Apply migrations
./database/migrations/apply_views.sh "$DATABASE_URL"

# Or apply manually
psql "$DATABASE_URL" -f database/migrations/ccass_views.sql
psql "$DATABASE_URL" -f database/migrations/enigma_views.sql
```

### 7.3 Verify Production

```bash
# Check views exist
psql "$DATABASE_URL" -c "\dv ccass.*"
psql "$DATABASE_URL" -c "\dv enigma.*"

# Count views
psql "$DATABASE_URL" -c "
SELECT schemaname, COUNT(*)
FROM pg_views
WHERE schemaname IN ('enigma', 'ccass')
GROUP BY schemaname;"

# Test critical views
psql "$DATABASE_URL" -c "SELECT COUNT(*) FROM enigma.listedcoshkall;"
psql "$DATABASE_URL" -c "SELECT COUNT(*) FROM ccass.latestholdings;"
psql "$DATABASE_URL" -c "SELECT * FROM enigma.webcurrlisted LIMIT 5;"
```

### 7.4 Post-Deployment Testing

1. Visit deployed Flask app on Render
2. Test pages that use views:
   - Company listings
   - CCASS analysis pages
   - Director/adviser pages
3. Check application logs for errors
4. Monitor database query performance

## Phase 8: Documentation

### 8.1 Create Migration Record

**File**: `docs/database/views-migration-status.md`

Track progress:

```markdown
# Views Migration Status

## CCASS Schema (3 views)
- [x] maxdate - 2025-10-20
- [x] holdingsperdate - 2025-10-20
- [x] latestholdings - 2025-10-20

## Enigma Schema (62 views)

### Already Ported (4 views)
- [x] listedcoshk - (existing)
- [x] listedcoshkever - (existing)
- [x] webholders3 - (existing)
- [x] webholdings3 - (existing)

### High Priority (13 views)
- [ ] listedcoshkall
- [ ] listedcoshkadv
- [ ] webcurrlisted
- [ ] webdelisted
- [ ] webissues
- [ ] weborgs
- [ ] webdirs
- [ ] webdirships
- [ ] webadv
- [ ] webadvships
- [ ] lasthlddate
- [ ] lastmreturn
- [ ] lookupadviser

### Medium Priority (20+ views)
- [ ] ... (list all)

### Low Priority Analytics (20+ views)
- [ ] ... (list all)
```

### 8.2 Document Known Issues

Track conversion issues encountered:

```markdown
## Conversion Issues

### Custom Functions
- `MSdateAcc()` - Not yet ported to PostgreSQL
  - Used in: auditorchanges, others
  - Action: Port function or inline logic

- `STOCKCODETHEN()` - Not yet ported
  - Used in: buybacksadj
  - Action: Port function

### View Dependencies
- `latestholdings` requires `maxdate` - Resolved
- `webholdings3` requires `lasthlddate` - Pending

### Column Aliases
- Some views use non-standard aliases like `Count(holding)`
- PostgreSQL requires quotes: `"Count(holding)"`
- Alternative: normalize to lowercase
```

## Custom Functions to Verify/Port

From view definitions, these MySQL functions need verification:

1. **`everListCo(personID)`** - ✅ Already ported (per roadmap)
   - Check if organization was ever listed
   - Location: `database/migrations/enigma_everListCo.sql`

2. **`STOCKCODETHEN(issueID, date)`** - ❓ Need to check
   - Get stock code at specific date
   - Used in: buybacksadj

3. **`SPLITADJ(issueID, date)`** - ❓ Need to check
   - Split adjustment factor at date
   - Used in: buybacksadj, possibly others

4. **`MSdateAcc(date, accuracy)`** - ❓ Need to check
   - Format date with accuracy indicator
   - Used in: auditorchanges

Check existing functions:
```bash
psql postgres://postgres:@localhost:5432/enigma_pg -c "
SELECT routine_name, routine_schema
FROM information_schema.routines
WHERE routine_schema IN ('enigma', 'ccass', 'public')
ORDER BY routine_schema, routine_name;"
```

## Troubleshooting

### Common Errors

**Error: relation does not exist**
- Cause: Missing schema qualification
- Fix: Add schema prefix: `enigma.tablename`

**Error: column reference is ambiguous**
- Cause: Column exists in multiple tables in JOIN
- Fix: Qualify column: `table.column`

**Error: function does not exist**
- Cause: Custom MySQL function not ported
- Fix: Port function or inline logic

**Error: syntax error near "..."**
- Cause: MySQL-specific syntax
- Fix: Convert to PostgreSQL equivalent

**Error: view depends on another view**
- Cause: Creating dependent view before dependency
- Fix: Reorder view creation

### Testing Individual Views

```sql
-- Test view creation
CREATE OR REPLACE VIEW ccass.test_view AS
SELECT * FROM ccass.holdings LIMIT 10;

-- Check if view works
SELECT * FROM ccass.test_view;

-- Drop test view
DROP VIEW IF EXISTS ccass.test_view;
```

## Execution Checklist

### Preparation
- [ ] Create `database/migrations/` directory structure
- [ ] Write extraction script (`extract_views.py`)
- [ ] Extract raw MySQL view definitions
- [ ] Create conversion helper script (`convert_mysql_views.py`)
- [ ] Verify custom functions exist in PostgreSQL

### CCASS Views (Start Here - 30 mins)
- [ ] Convert `maxdate` view
- [ ] Convert `holdingsperdate` view
- [ ] Convert `latestholdings` view (depends on maxdate)
- [ ] Create `ccass_views.sql` file
- [ ] Test CCASS views locally
- [ ] Document in status file

### High Priority Enigma Views (2-3 hours)
- [ ] Convert 13 high-priority views
- [ ] Test each view locally
- [ ] Add to `enigma_views.sql` file
- [ ] Update status documentation

### Remaining Enigma Views (3-4 hours)
- [ ] Convert remaining 45 views
- [ ] Handle dependencies
- [ ] Test all views
- [ ] Complete `enigma_views.sql` file

### Deployment
- [ ] Create `apply_views.sh` script
- [ ] Test on local PostgreSQL
- [ ] Apply to Render PostgreSQL
- [ ] Verify in production
- [ ] Test Flask app with views

### Documentation
- [ ] Complete `views-migration-status.md`
- [ ] Document known issues
- [ ] Update main roadmap
- [ ] Add notes to CLAUDE.md if needed

## Estimated Effort

- **CCASS views**: 30 minutes (simple, only 3)
- **High-priority Enigma views**: 2-3 hours (13 views, need testing)
- **Remaining Enigma views**: 3-4 hours (45 views, less critical)
- **Testing & deployment**: 1-2 hours
- **Documentation**: 30 minutes

**Total: 7-10 hours** spread over 2-4 sessions

## Next Steps

1. **Start with CCASS** - Only 3 views, simpler, good learning exercise
2. **Verify custom functions** - Check which MySQL functions need porting
3. **Convert high-priority views** - Focus on views used by Flask app
4. **Test incrementally** - Don't wait until all 61 views are done
5. **Deploy early** - Get CCASS + high-priority views to production ASAP
6. **Finish remaining views** - Complete at a comfortable pace

## References

- MySQL dump files:
  - `Enigma schema/enigmaStructure-2025-10-11- 000.sql`
  - `CCASS schema/ccassStructure-2025-10-11- 600.sql`
- PostgreSQL database: `postgresql://postgres:@localhost:5432/enigma_pg`
- Render database: (get URL from Render dashboard)
- Existing function migration: `database/migrations/enigma_everListCo.sql`
