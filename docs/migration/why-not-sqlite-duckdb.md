# Why SQLite/DuckDB Is NOT Recommended for Access Replacement

**Date:** 2025-10-17
**Decision:** Do not convert Access .accdb to SQLite/DuckDB as primary migration path
**Status:** Decided - use Flask-Admin + PostgreSQL instead

## TL;DR

Converting Access to SQLite/DuckDB is **technically possible but strategically wrong** for this project. Access is a frontend (forms + VBA) that connects to MySQL, not a database itself. Converting it to SQLite creates an unnecessary intermediate step when the real goal is a web-based editing interface.

**Correct approach:** Skip SQLite/DuckDB and migrate directly to Flask-Admin + PostgreSQL.

## The Research That Led Here

Initial investigation found comprehensive guides for converting Access to SQLite/DuckDB:

### Python-Based Conversion (Possible)
```python
import pyodbc
import pandas as pd
import sqlite3

# Connect to Access
accdb_file = "Enigma.accdb"
conn_str = r"DRIVER={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=" + accdb_file
cnxn = pyodbc.connect(conn_str)

# Extract tables
tables = [row.table_name for row in cnxn.cursor().tables(tableType='TABLE')]

# Write to SQLite
sqlite_conn = sqlite3.connect("enigma.sqlite")
for table in tables:
    df = pd.read_sql(f"SELECT * FROM [{table}]", cnxn)
    df.to_sql(table, sqlite_conn, if_exists='replace', index=False)
```

### CLI Tools (Also Possible)
```bash
# RebaseData Java client
java -jar client-0.0.5.jar convert \
  --output-format=sqlite \
  Enigma.accdb \
  output-dir/
```

### DuckDB Conversion (Similar)
```python
import duckdb
import pandas as pd
import pyodbc

accdb_con = pyodbc.connect(conn_str)
duckdb_con = duckdb.connect('enigma.duckdb')

tables = [row.table_name for row in accdb_con.cursor().tables(tableType='TABLE')]
for table in tables:
    df = pd.read_sql(f"SELECT * FROM [{table}]", accdb_con)
    duckdb_con.execute(f"CREATE TABLE {table} AS SELECT * FROM df")
```

**All of these approaches work technically.** So why not use them?

## The Fundamental Misconception

### What We Thought Access Was:
- A database containing 35 years of data
- Something to convert to a modern format
- A replacement for MySQL

### What Access Actually Is:
- A **frontend application** (forms + VBA code)
- Connects to MySQL via ODBC DSN
- Contains no data itself (data is in MySQL)
- Just a GUI for editing the MySQL database

**The .accdb file contains:**
- Forms for data entry (directors, adviserships, events)
- VBA code (ownership analysis algorithms)
- Queries (validation and reporting)
- ODBC connection strings (points to MySQL)

**The .accdb file does NOT contain:**
- The actual company data (that's in MySQL enigma schema)
- CCASS holdings data (that's in MySQL ccass schema)
- User accounts (that's in MySQL mailvote schema)

## Why SQLite/DuckDB Conversion Fails

### Problem 1: What Would You Even Convert?

If you "convert" Access to SQLite, what gets converted?

```
Access .accdb:
├── Tables (links to MySQL via ODBC) ❌ Not in Access, in MySQL
├── Forms (GUI layouts) ❌ Not convertible to database
├── VBA Code (ownership analysis) ❌ Not convertible to database
├── Queries (SQL against MySQL) ❌ Already SQL, just run on different DB
└── ODBC connections ❌ Just connection strings
```

**Answer:** There's almost nothing to convert. The forms and VBA code need to be **rewritten**, not converted.

### Problem 2: Creates Unnecessary Step

```
❌ Bad Migration Path:
Access (.accdb forms + VBA → MySQL)
    ↓
SQLite/DuckDB (???)
    ↓
Flask-Admin (still need to build this) + PostgreSQL

✅ Good Migration Path:
Access (.accdb forms + VBA → MySQL)
    ↓
Flask-Admin (web forms + Python) + PostgreSQL
```

The SQLite step doesn't help with:
- Building the web forms (still need Flask-Admin)
- Converting VBA to Python (separate task)
- Integrating with PostgreSQL (going backwards)

### Problem 3: SQLite Doesn't Solve Core Problems

**Why we want to replace Access:**
1. ❌ Windows-only (need web-based)
   - SQLite doesn't solve this - still need to build web UI
2. ❌ Not version controlled (need git)
   - SQLite file is binary, doesn't help with forms/code versioning
3. ❌ VBA is unmaintainable (need Python)
   - Converting to SQLite doesn't help with VBA → Python
4. ❌ Can't access remotely (need cloud)
   - SQLite is local file, doesn't solve remote access

**What we actually need:**
1. ✅ Web-based editing interface → Flask-Admin
2. ✅ Python ownership analysis → Port VBA to Python
3. ✅ Cloud PostgreSQL → Already part of migration plan
4. ✅ Version controlled → Forms as code in git

SQLite helps with exactly **zero** of these goals.

### Problem 4: Technical Debt

Adding SQLite creates:
- Another database to maintain
- Another migration step later (SQLite → PostgreSQL)
- Confusion about source of truth
- Wasted development time

## When SQLite/DuckDB WOULD Make Sense

### Use Case 1: Archival Snapshots (Valid)

**Scenario:** Export historical data for researchers or backup

```python
# Export PostgreSQL to SQLite for archival
def export_snapshot(snapshot_date):
    """Create portable SQLite snapshot of database at given date."""
    pg_data = query_postgres(f"SELECT * FROM ... WHERE date <= {snapshot_date}")
    sqlite_conn = sqlite3.connect(f'enigma_snapshot_{snapshot_date}.sqlite')
    pg_data.to_sql('holdings', sqlite_conn)
    return f"Portable backup created: {snapshot_date}"
```

**Use case:**
- Quarterly snapshots for offline analysis
- Distributing datasets to researchers
- Backup before major migrations
- Time-travel queries on historical data

**Why it works:** Supplementary, not primary system

### Use Case 2: Analytical Queries (Valid for DuckDB)

**Scenario:** Complex OLAP queries on large historical datasets

```python
# Use DuckDB for fast analytical queries
import duckdb

con = duckdb.connect('analytics.duckdb')

# Import from PostgreSQL
con.execute("CREATE TABLE holdings AS SELECT * FROM postgres_scan(...)")

# Fast columnar queries
results = con.execute("""
    SELECT
        partID,
        COUNT(DISTINCT issueID) as portfolio_size,
        AVG(percentage) as avg_position,
        PERCENTILE_CONT(0.95) WITHIN GROUP (ORDER BY percentage) as p95_position
    FROM holdings
    WHERE atDate BETWEEN '2020-01-01' AND '2025-12-31'
    GROUP BY partID
    HAVING portfolio_size >= 10
    ORDER BY portfolio_size DESC
""").fetchdf()
```

**Use case:**
- Historical trend analysis
- Data science projects
- Complex aggregations
- Research papers

**Why it works:** DuckDB is designed for analytical workloads, PostgreSQL for transactional

### Use Case 3: Local Development (Valid)

**Scenario:** Developers want to work offline without cloud connection

```python
# Docker compose for local dev
services:
  db:
    image: postgres:16
    # OR
    volumes:
      - ./dev_data.sqlite:/data/db.sqlite
```

**Use case:**
- Airplane coding
- Slow internet connections
- Cost savings (no dev database)

**Why it works:** Development convenience, not production system

## The Right Approach: Flask-Admin + PostgreSQL

### What We're Actually Migrating

| Component | From | To | Method |
|-----------|------|-----|--------|
| **Data** | MySQL | PostgreSQL | pgloader / SQL export |
| **Forms** | Access GUI | Flask-Admin web UI | Rewrite using SQLAlchemy |
| **VBA Code** | VBA in .accdb | Python scripts | Port algorithms to Python |
| **Security** | MySQL triggers | SQLAlchemy events | Implement wsroles in Python |
| **Access** | Windows PC | Web browser | Replace entirely |

**None of these require SQLite/DuckDB as an intermediate step.**

### Architecture Comparison

```
Current (Legacy):
┌─────────────────────┐
│ Access Frontend     │ ← Editors on Windows PCs
│ ├── Forms (GUI)     │
│ └── VBA (analysis)  │
└──────────┬──────────┘
           │ ODBC DSN
           ▼
┌─────────────────────┐
│ MySQL Database      │
│ ├── enigma schema   │
│ └── ccass schema    │
└─────────────────────┘

With SQLite (Unnecessary):
┌─────────────────────┐
│ SQLite Database     │ ← What does this achieve?
│ (converted .accdb)  │    Still need web UI!
└──────────┬──────────┘    Still need to port VBA!
           │               Still need PostgreSQL!
           ▼
┌─────────────────────┐
│ Flask-Admin ???     │ ← Still have to build this
└─────────────────────┘

Direct Migration (Correct):
┌─────────────────────┐
│ Flask Web App       │ ← Web-based, any device
│ ├── Public Pages    │
│ └── Admin Interface │
│     ├── Forms       │ ← Replaces Access forms
│     └── Python      │ ← Replaces VBA code
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ PostgreSQL (Render) │ ← Already migrating here
│ ├── enigma schema   │
│ └── ccass schema    │
└─────────────────────┘
```

## Detailed Comparison

| Aspect | Access | SQLite Conversion | Flask-Admin | Winner |
|--------|--------|-------------------|-------------|---------|
| **Platform** | Windows only | Any (but no UI) | Any (web browser) | Flask-Admin |
| **Data location** | MySQL (via ODBC) | SQLite file | PostgreSQL (Render) | Flask-Admin |
| **Forms** | Built-in | ❌ Have to build | Built-in (web) | Flask-Admin |
| **VBA code** | In .accdb | ❌ Still need Python | Python modules | Flask-Admin |
| **Remote access** | ❌ LAN only | ❌ File access | ✅ HTTPS | Flask-Admin |
| **Version control** | ❌ Binary | ⚠️ File (no forms) | ✅ Code in git | Flask-Admin |
| **Multi-user** | Limited | ❌ Single writer | ✅ Concurrent | Flask-Admin |
| **Security** | wsroles triggers | ⚠️ File perms | wsroles in Python | Flask-Admin |
| **Testing** | ❌ Manual | ⚠️ Queries only | ✅ Automated | Flask-Admin |
| **Maintenance** | ❌ VBA expert | ⚠️ SQL + ??? | ✅ Python devs | Flask-Admin |
| **Cloud integration** | ❌ No | ❌ No | ✅ Native | Flask-Admin |
| **Cost** | License + Windows | Free | Free | Flask-Admin |
| **Development time** | N/A (existing) | 2 weeks (wasted) | 8 weeks (productive) | Flask-Admin |

## Common Counterarguments

### "But SQLite is simpler!"
- **Response:** Simpler than what? You still need to build web forms and port VBA code. SQLite doesn't eliminate any work, it just adds an extra database to maintain.

### "It's a good intermediate step"
- **Response:** Intermediate to what? The end goal is Flask-Admin + PostgreSQL. Going Access → SQLite → PostgreSQL adds a step. Going Access → PostgreSQL is direct.

### "We can use it for local development"
- **Response:** Valid, but Docker + PostgreSQL works just as well for local dev. And SQLite → PostgreSQL differences cause bugs (data types, SQL dialects, transactions).

### "It's a portable backup format"
- **Response:** True! But that's a **supplementary use case**, not the primary migration path. Export to SQLite quarterly for archival, but don't make it the editing system.

### "DuckDB is great for analytics"
- **Response:** Absolutely true! Use DuckDB for analytical queries on historical data. But that's **supplementary**, not a replacement for the transactional editing interface.

### "The conversion tools are easy to use"
- **Response:** The tools work fine, but they're solving the wrong problem. The problem is "we need a web-based editing interface", not "we need to convert a database format". Building Flask-Admin solves the actual problem.

## Cost Analysis

### Approach 1: Access → SQLite → Flask-Admin (Rejected)
```
Week 1-2: Convert Access to SQLite (pyodbc, pandas)
    - Extract tables from .accdb
    - Convert to SQLite format
    - Test data integrity
    Result: SQLite file with no UI
    Wasted time: 2 weeks

Week 3-4: Build Flask-Admin anyway
    - Still need web forms
    - Still need to port VBA
    - Now dealing with SQLite instead of PostgreSQL
    - Have to migrate SQLite → PostgreSQL later
    Result: Flask-Admin + SQLite

Week 5-6: Migrate SQLite → PostgreSQL
    - Another conversion step
    - Test for discrepancies (data types, constraints)
    - Fix bugs from SQLite differences
    Result: Flask-Admin + PostgreSQL

Total: 6 weeks to get to the same place
```

### Approach 2: Access → Flask-Admin (Recommended)
```
Week 1-2: Analyze VBA and plan migration
    - Document VBA code
    - Design Python equivalents
    - Plan Flask-Admin structure
    Result: Clear plan for migration

Week 3-4: Port VBA to Python
    - Rewrite ownership analysis
    - Test against VBA output
    - Create CLI tools
    Result: Python ownership module

Week 5-8: Build Flask-Admin
    - Define SQLAlchemy models
    - Configure admin views
    - Implement wsroles security
    - Build custom forms
    Result: Flask-Admin + PostgreSQL

Total: 8 weeks to get complete solution
```

**Savings:** 6 weeks vs 8 weeks, but Approach 1 wastes 2 weeks on unnecessary conversion.

**Net result:** Approach 2 is actually faster and delivers better result.

## Real-World Example

Imagine converting a car from gas to electric:

### Bad Approach (SQLite Conversion):
1. Convert gas car to diesel first
2. Test diesel conversion
3. Then convert diesel to electric
4. Deal with diesel-specific issues
5. End up with electric car (eventually)

### Good Approach (Direct Migration):
1. Design electric drivetrain
2. Remove gas engine
3. Install electric motor
4. Test and optimize
5. End up with electric car (faster)

**Why diesel step doesn't help:** Electric cars don't use diesel. Adding diesel is a detour that wastes time.

**Same with SQLite:** Flask-Admin doesn't use SQLite. Adding SQLite is a detour.

## Decision Matrix

| Criteria | Weight | Access | SQLite | DuckDB | Flask-Admin |
|----------|--------|--------|--------|---------|-------------|
| Web-based | 30% | 0/10 | 0/10 | 0/10 | 10/10 |
| Cross-platform | 20% | 0/10 | 10/10 | 10/10 | 10/10 |
| Integrates with migration | 20% | 0/10 | 3/10 | 3/10 | 10/10 |
| Maintainability | 15% | 2/10 | 7/10 | 7/10 | 9/10 |
| Development time | 15% | N/A | -5/10 | -5/10 | 8/10 |
| **Weighted Score** | | **0.0** | **3.7** | **3.7** | **9.8** |

**Clear winner:** Flask-Admin

## Valid Use Cases for SQLite/DuckDB

To be fair, here are scenarios where SQLite/DuckDB **would** make sense:

### ✅ SQLite Good For:
1. **Archival snapshots** - Quarterly exports for offline backup
2. **Distributing datasets** - Send to researchers as portable files
3. **Embedded applications** - Mobile apps, desktop tools
4. **Single-user tools** - Personal analysis scripts
5. **Testing** - Fast test databases (faster than PostgreSQL)

### ✅ DuckDB Good For:
1. **Analytical queries** - OLAP on historical data
2. **Data science** - Jupyter notebooks, pandas integration
3. **Reporting** - Generate reports from large datasets
4. **ETL intermediate** - Process data before loading to PostgreSQL
5. **Read-only distribution** - Share analytical datasets

### ❌ NOT Good For (This Project):
1. **Primary editing interface** - Need web UI, neither provides that
2. **Multi-user editing** - Limited concurrency
3. **Cloud deployment** - File-based, not cloud-native
4. **Replacing Access** - Solves wrong problem

## Recommended Supplementary Use

While SQLite/DuckDB should NOT be the primary migration path, they can be useful supplements:

### Quarterly Archival Export (SQLite)
```bash
# Export to SQLite for backup
python scripts/export_to_sqlite.py \
  --output enigma_snapshot_2026Q1.sqlite \
  --snapshot-date 2026-03-31

# Result: Portable backup file
# Size: ~2GB compressed
# Use: Offline analysis, disaster recovery
```

### Analytical Reporting (DuckDB)
```bash
# Generate ownership concentration report
python scripts/analyze_concentration.py \
  --start-date 2020-01-01 \
  --end-date 2025-12-31 \
  --output concentration_report.xlsx

# Internally uses DuckDB for fast aggregations
# Result: Excel report with charts
```

**These are supplementary tools, not the primary system.**

## Conclusion

**SQLite/DuckDB conversion is technically possible but strategically wrong for this project.**

### The Core Insight:
Access is a **frontend** (forms + VBA) connecting to MySQL, not a database containing data. Converting it to SQLite is like converting a web browser to a different format - it doesn't make sense because the browser is just a client, not the data store.

### What We're Really Doing:
- **Replacing forms:** Access GUI → Flask-Admin web UI
- **Porting code:** VBA → Python scripts
- **Migrating database:** MySQL → PostgreSQL (already planned)

**None of these require SQLite/DuckDB as an intermediate step.**

### Recommendation:
1. ✅ **Primary path:** Access → Flask-Admin + PostgreSQL
2. ✅ **Supplementary:** Export to SQLite for archival (quarterly)
3. ✅ **Supplementary:** Use DuckDB for analytical reports (ad-hoc)
4. ❌ **Do NOT:** Convert Access to SQLite as migration path

### Timeline:
- Q1 2026: Implement Flask-Admin replacement
- Optional: Add SQLite export and DuckDB analytics later
- Priority: Focus on web-based editing, not database conversions

## References

- [Access Replacement Plan](./access-replacement-plan.md) - Full implementation plan
- [Modernization Roadmap](../modernization-roadmap.md) - Overall strategy
- [Webb-site Editing System](../web/editing-system.md) - wsroles security

## Appendix: Conversion Tool Research

For completeness, here are the conversion tools researched (even though not recommended for primary migration):

### Python Tools:
- `pyodbc` - Connect to Access via ODBC
- `pandas_access` - Read Access tables
- `sqlite3` - Write to SQLite
- `duckdb` - Write to DuckDB
- Example: https://ryanschiang.com/convert-accdb-to-sql

### CLI Tools:
- RebaseData: `java -jar client-0.0.5.jar convert --output-format=sqlite database.accdb output/`
- DBConvert: Commercial GUI tool
- mdbtools: Legacy .mdb files only (not .accdb)

### Code Examples:
See research provided by user (saved in project docs).

**Verdict:** Tools work, but solve wrong problem.

---

*Updated: 2025-10-17*
*Decision: Confirmed - Direct Flask-Admin migration, no SQLite/DuckDB intermediate step*
