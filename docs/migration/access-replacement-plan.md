# Access Frontend Replacement Plan

**Target Timeline:** Q1 2026
**Status:** Planning phase (deferred until post-MVP launch)
**Priority:** High (after Emergency MVP and authentication complete)

## Executive Summary

Replace the Microsoft Access frontend (Enigma.accdb) with a web-based Flask-Admin interface and Python ownership analysis scripts. This eliminates Windows dependencies and enables remote database editing while preserving all functionality.

**Key Decision:** Skip SQLite/DuckDB intermediate conversion - migrate directly to Flask + PostgreSQL.

## What the Access Frontend Provides

### 1. Database Editing Interface (Primary Function)
The Access database provides forms for manual data entry by editors:
- **Directors and Officers** - Corporate governance tracking
- **Adviserships** - Auditors, legal advisors, IFAs
- **Shareholdings** - Ownership structures
- **Corporate Events** - Dividends, splits, rights issues
- **Companies and Persons** - Entity management

**Current Users:** David, Cynthia, and other editors on LAN
**Connection:** ODBC User DSNs to master MySQL server
**Security:** wsroles system enforced via MySQL triggers

### 2. VBA Ownership Analysis Code (Academic Project)
Complex recursive algorithm for beneficial ownership research:
- **HKU Module** - VBA code in Enigma.accdb
- **profileSnaps Routine** - Recursive ownership tree traversal
- **Computes Tables:** ownerprof, ownerstks, sholdings
- **Features:**
  - Traces ownership chains up to ultimate controllers
  - Handles circular ownership structures
  - Calculates economic interest percentages
  - Used for HKU academic research project

### 3. Queries and Reports
- Data validation queries
- Quality control reporting
- Ad-hoc analysis

## Why NOT SQLite/DuckDB

### SQLite/DuckDB Conversion Considered
Initial research suggested converting Access .accdb to SQLite or DuckDB using Python tools:
- `pyodbc` + `pandas` to extract tables from ACCDB
- Write to SQLite using `sqlite3` or DuckDB using `duckdb.from_df()`

### Why This Approach Was Rejected

**Access is just a frontend, not a database:**
- The .accdb file doesn't contain the actual data
- It's a container for forms + VBA that connects to MySQL via ODBC
- Converting the structure to SQLite creates an intermediate step with no value

**Creates unnecessary migration path:**
```
❌ Access → SQLite/DuckDB → (eventually) PostgreSQL + Flask-Admin
✅ Access → PostgreSQL + Flask-Admin (direct)
```

**Doesn't solve the core problems:**
- ❌ SQLite still needs forms/UI built (no built-in editing interface)
- ❌ Doesn't help with VBA → Python conversion (that's separate)
- ❌ Doesn't integrate with Render PostgreSQL migration plan
- ❌ Creates technical debt (another database to maintain)

**When SQLite/DuckDB WOULD make sense:**
- ✅ Offline analytical tools (DuckDB for complex OLAP queries)
- ✅ Portable archival backup (SQLite for historical snapshots)
- ✅ Local development without cloud dependencies
- ✅ Distributing read-only datasets to researchers

**For this project:**
- Primary goal: Replace editing interface (need web UI anyway)
- Secondary goal: Port VBA code (need Python anyway)
- Database backend: Already migrating to PostgreSQL on Render
- **Conclusion:** Direct Flask-Admin + PostgreSQL is the optimal path

## Recommended Approach: Flask-Admin + Python

### Architecture

```
┌─────────────────────────────────────────────┐
│  Flask Web App (Render.com)                 │
│  ├── Public Pages                           │
│  │   ├── search.py (company/person lookup) │
│  │   ├── quotes.py (stock prices)          │
│  │   └── events.py (corporate actions)     │
│  └── Admin Interface                        │
│      ├── admin.py (Flask-Admin config)     │
│      ├── models.py (SQLAlchemy + wsroles)  │
│      └── forms.py (custom editors)         │
└────────────────┬────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────┐
│  PostgreSQL Database (Render.com)           │
│  ├── enigma schema (35 years of data)      │
│  ├── ccass schema (holdings tracking)      │
│  └── mailvote schema (users, wsroles)      │
└─────────────────────────────────────────────┘
```

### Benefits

1. **Web-based = accessible anywhere**
   - No Windows requirement
   - Works on any device with browser
   - Remote editing capability

2. **Single technology stack**
   - Python throughout (Flask, SQLAlchemy, scripts)
   - No VB.NET/VBA/Access mixture
   - Easier to maintain and find developers

3. **Integrates with existing migration**
   - Same PostgreSQL database as public site
   - Same Flask framework
   - Shared authentication system

4. **Version controlled**
   - Forms defined in code (not binary .accdb)
   - Changes tracked in git
   - Code review process

5. **Testable**
   - Unit tests for business logic
   - Integration tests for forms
   - Automated validation

## Implementation Plan

### Phase 1: VBA Code Analysis & Extraction (Week 1-2)

**Goal:** Document existing VBA before conversion

**Tasks:**
1. Export VBA modules from Enigma.accdb as .bas files
2. Focus on HKU module (profileSnaps routine)
3. Document all functions and dependencies
4. Map database tables used (ownerprof, ownerstks, sholdings)
5. Create test dataset with known expected outputs

**Deliverables:**
- `/legacy/Access front end/VBA/` - Exported VBA modules
- `/docs/vba-analysis.md` - Function documentation
- `/tests/fixtures/ownership_test_data.sql` - Test dataset

### Phase 2: Port VBA to Python (Week 3-4)

**Goal:** Rewrite ownership analysis in Python

**Tasks:**
1. Create Python module `backend/analysis/ownership.py`
2. Implement OwnershipAnalyzer class
3. Port profileSnaps routine (recursive algorithm)
4. Handle circular ownership detection
5. Calculate economic interest percentages
6. Write comprehensive test suite
7. Create CLI tool for scheduled execution

**Code Structure:**
```python
# backend/analysis/ownership.py

class OwnershipAnalyzer:
    """Analyzes ownership structures and beneficial ownership."""

    def __init__(self, db_session):
        self.db = db_session

    def profile_snaps(self, snapshot_date):
        """
        Computes ownership profiles at a given date.
        Python equivalent of VBA profileSnaps routine.

        Populates tables:
        - ownerprof: Ownership profile summary
        - ownerstks: Ultimate controllers with percentages
        - sholdings: Shareholding records

        Args:
            snapshot_date: Date for ownership snapshot

        Returns:
            Summary statistics (companies analyzed, owners found)
        """
        # Recursive ownership tree traversal
        # Handle cross-holdings and circular structures
        # Calculate economic interest with precision
        pass

    def trace_ownership_chain(self, issueID, visited=None):
        """Recursively trace ownership up to ultimate controllers."""
        if visited is None:
            visited = set()

        # Detect circular ownership
        if issueID in visited:
            return []

        visited.add(issueID)
        # ... recursive logic ...
```

**CLI Tool:**
```bash
# Run ownership analysis for specific date
python -m webbsite.analysis.ownership \
    --snapshot-date 2026-03-31 \
    --output-format json

# Schedule via Render cron job
python -m webbsite.analysis.ownership --auto
```

**Deliverables:**
- `/backend/analysis/ownership.py` - Core analysis module
- `/backend/analysis/cli.py` - Command-line interface
- `/tests/test_ownership.py` - Comprehensive test suite
- `/docs/ownership-algorithm.md` - Algorithm documentation

### Phase 3: Build Flask-Admin Interface (Week 5-8)

**Goal:** Web-based database editing

**Tasks:**
1. Define SQLAlchemy models for enigma tables
2. Configure Flask-Admin with custom ModelViews
3. Implement wsroles security integration
4. Create custom forms for complex entities
5. Add validation rules and constraints
6. Build custom widgets for date ranges
7. Test with parallel Access operation

**Code Structure:**
```python
# backend/admin/__init__.py

from flask_admin import Admin
from flask_admin.contrib.sqla import ModelView
from backend.models import Director, Advisership, Event
from backend.auth import check_user_privileges

class SecureModelView(ModelView):
    """Base ModelView with wsroles integration."""

    def is_accessible(self):
        """Check if current user has access to this model."""
        if not current_user.is_authenticated:
            return False
        return check_user_privileges(
            current_user,
            self.model.__tablename__
        )

    def on_model_change(self, form, model, is_created):
        """Enforce wsroles before insert/update."""
        # Equivalent to MySQL trigger insertUserID/updUserID
        if is_created:
            model.userID = current_user.id
            if not has_write_privilege(current_user, model):
                raise ValidationError("Insufficient privileges")
        else:
            if not can_edit_record(current_user, model):
                raise ValidationError("Cannot edit higher-ranked user's record")

# Configure admin interface
admin = Admin(app, name='Webb-site Admin', template_mode='bootstrap4')

# Add model views
admin.add_view(DirectorModelView(Director, db.session))
admin.add_view(AdvisershipModelView(Advisership, db.session))
admin.add_view(EventModelView(Event, db.session))
```

**Custom Forms:**
```python
# backend/admin/forms.py

class DirectorForm(FlaskForm):
    """Custom form for directorship entries."""

    personID = QuerySelectField(
        'Person',
        query_factory=lambda: Person.query.order_by(Person.name1),
        get_label='full_name'
    )

    orgID = QuerySelectField(
        'Organization',
        query_factory=lambda: Organisation.query.order_by(Organisation.name1),
        get_label='name1'
    )

    positionID = QuerySelectField(
        'Position',
        query_factory=lambda: Position.query.all(),
        get_label='description'
    )

    fromDate = DateField('From Date', validators=[DataRequired()])
    untilDate = DateField('Until Date (exclusive)', validators=[Optional()])

    def validate_untilDate(self, field):
        """Ensure right-open interval (untilDate > fromDate)."""
        if field.data and field.data <= self.fromDate.data:
            raise ValidationError('Until date must be after from date')
```

**Deliverables:**
- `/backend/admin/` - Admin configuration
- `/backend/models/` - SQLAlchemy models with wsroles
- `/backend/forms/` - Custom form classes
- `/backend/auth/wsroles.py` - Security enforcement
- `/templates/admin/` - Custom admin templates

### Phase 4: Testing & Parallel Operation (Week 9-10)

**Goal:** Validate new system matches Access behavior

**Tasks:**
1. Parallel data entry (Access + Flask-Admin)
2. Compare data quality
3. Run Python ownership analysis vs VBA
4. Validate ownerprof/ownerstks/sholdings outputs
5. User acceptance testing with editors
6. Performance testing and optimization
7. Documentation and training materials

**Test Plan:**
```python
# tests/test_admin_integration.py

def test_director_insert_with_wsroles():
    """Verify wsroles privilege checking on insert."""
    user = create_test_user(rank=128)  # Editor rank
    login(user)

    # Should succeed
    director = Director(
        personID=123,
        orgID=456,
        positionID=1,
        fromDate=date(2026, 1, 1),
        userID=user.id
    )
    db.session.add(director)
    db.session.commit()

    # Should fail (insufficient rank)
    user2 = create_test_user(rank=50)
    login(user2)
    with pytest.raises(ValidationError):
        director2 = Director(...)
        db.session.add(director2)
        db.session.commit()

def test_ownership_analysis_matches_vba():
    """Verify Python produces same results as VBA."""
    # Load test dataset
    load_fixtures('ownership_test_data.sql')

    # Run Python analysis
    analyzer = OwnershipAnalyzer(db.session)
    results = analyzer.profile_snaps(date(2026, 3, 31))

    # Compare with expected VBA output
    expected = load_json('expected_vba_output.json')
    assert results == expected
```

**Deliverables:**
- `/tests/test_admin_integration.py` - Integration tests
- `/tests/test_ownership_parallel.py` - VBA vs Python validation
- `/docs/admin-user-guide.md` - User documentation
- `/docs/migration-notes.md` - Differences from Access

### Phase 5: Cutover & Decommission (Week 11-12)

**Goal:** Retire Access frontend

**Tasks:**
1. Final data export from Access
2. Archive Enigma.accdb to `/legacy/`
3. Update all documentation references
4. Remove Access DSN setup instructions
5. Monitor for issues during first month
6. Quick-fix any critical bugs

**Decommission Checklist:**
- [ ] All editors trained on Flask-Admin
- [ ] No blockers preventing Access retirement
- [ ] Ownership analysis producing correct results
- [ ] Performance acceptable (queries < 2s)
- [ ] Security model equivalent to Access
- [ ] Backup of final .accdb file created
- [ ] Documentation updated

**Deliverables:**
- `/legacy/Access front end/Enigma.accdb` - Archived
- `/docs/access-decommission-notes.md` - Final state
- Updated documentation throughout

## Optional: SQLite Export for Archival

While SQLite is NOT recommended for the primary replacement, it could be useful as a supplementary archival format:

```python
# scripts/export_to_sqlite.py

import sqlite3
from sqlalchemy import create_engine
from backend.models import Base, Director, Advisership, Event

def export_to_sqlite(output_path='enigma_archive.sqlite'):
    """
    Export PostgreSQL database to SQLite for archival.

    Use case: Portable backup, offline analysis, research distribution
    """
    # Connect to PostgreSQL
    pg_engine = create_engine(os.environ['DATABASE_URL'])

    # Create SQLite database
    sqlite_engine = create_engine(f'sqlite:///{output_path}')
    Base.metadata.create_all(sqlite_engine)

    # Copy tables
    tables = [Director, Advisership, Event, ...]
    for table in tables:
        data = pd.read_sql_table(table.__tablename__, pg_engine)
        data.to_sql(table.__tablename__, sqlite_engine,
                    if_exists='replace', index=False)

    print(f"Exported to {output_path}")

if __name__ == '__main__':
    export_to_sqlite()
```

**Use cases for SQLite export:**
- Quarterly snapshots for researchers
- Offline development/testing
- Backup before major migrations
- Distributing historical datasets

**NOT a replacement for Flask-Admin** - this is supplementary.

## DuckDB for Analytical Queries

DuckDB could be valuable for complex analytical queries on historical data:

```python
# scripts/analyze_with_duckdb.py

import duckdb
import pandas as pd

def analyze_ownership_trends():
    """
    Use DuckDB for fast analytical queries on ownership data.

    DuckDB's columnar storage is ideal for:
    - Historical trend analysis
    - Aggregate statistics
    - Complex window functions
    """
    con = duckdb.connect('enigma_analytics.duckdb')

    # Import from PostgreSQL
    con.execute("CREATE TABLE holdings AS SELECT * FROM postgres_scan(...)")

    # Fast analytical query
    results = con.execute("""
        SELECT
            partID,
            COUNT(DISTINCT issueID) as stock_count,
            AVG(percentage) as avg_holding,
            SUM(CASE WHEN percentage > 5 THEN 1 ELSE 0 END) as substantial_holdings
        FROM holdings
        WHERE atDate >= '2020-01-01'
        GROUP BY partID
        ORDER BY stock_count DESC
        LIMIT 100
    """).fetchdf()

    return results
```

**When to use DuckDB:**
- ✅ Historical analysis and reporting
- ✅ Data science / research projects
- ✅ Fast aggregations over large datasets
- ✅ Exporting analytical results

**NOT for:**
- ❌ Primary editing interface
- ❌ Transactional workloads
- ❌ Multi-user concurrent editing

## Technology Comparison

| Feature | Access | Flask-Admin | SQLite | DuckDB |
|---------|--------|-------------|--------|--------|
| **Platform** | Windows only | Web (any device) | Cross-platform | Cross-platform |
| **Multi-user** | Limited (LAN) | Yes (web-based) | No (single writer) | Limited |
| **Version control** | No (binary) | Yes (code) | Yes (file) | Yes (file) |
| **Security** | wsroles triggers | Python/SQLAlchemy | File permissions | File permissions |
| **Editing UI** | Built-in forms | Flask-Admin | Need to build | Need to build |
| **Analytical queries** | Basic | Basic | Good | Excellent |
| **Best for** | Legacy editing | Modern web app | Archival/backup | Analytics |
| **Recommended** | ❌ Retire | ✅ Primary | ✅ Supplementary | ✅ Supplementary |

## Dependencies & Prerequisites

### Must Complete First:
1. ✅ Emergency MVP (Oct 17-31, 2025)
   - Flask web app deployed
   - PostgreSQL database migrated
   - Core pages working

2. ✅ User Authentication (Nov-Dec 2025)
   - Flask-Login implemented
   - mailvote user accounts preserved
   - wsroles system understood

3. 🔄 Start Access Replacement (Q1 2026)
   - Authentication stable
   - Database schema finalized
   - Time to focus on admin features

### Technical Requirements:
- Python 3.11+
- Flask 3.x
- Flask-Admin 1.6+
- SQLAlchemy 2.x
- PostgreSQL 14+ (Render managed)
- Bootstrap 4/5 (for admin UI)

## Success Criteria

### Functional Requirements:
- [ ] All Access forms replicated in Flask-Admin
- [ ] VBA ownership analysis produces identical results in Python
- [ ] wsroles security model enforced
- [ ] Editors can perform all tasks without Access
- [ ] Performance matches or exceeds Access
- [ ] Data validation rules preserved

### Non-Functional Requirements:
- [ ] Web-based = accessible from anywhere
- [ ] No Windows dependency
- [ ] Version controlled (git)
- [ ] Testable (80%+ coverage)
- [ ] Documented (user guide + developer guide)
- [ ] Maintainable (Python, not VBA)

### Migration Criteria:
- [ ] Parallel operation successful (1 month)
- [ ] No data loss or corruption
- [ ] User acceptance from all editors
- [ ] Performance acceptable (forms load < 1s)
- [ ] All edge cases handled
- [ ] Backup/rollback plan in place

## Estimated Timeline

| Phase | Duration | Start | End | Dependencies |
|-------|----------|-------|-----|--------------|
| Phase 1: VBA Analysis | 2 weeks | Week 1 | Week 2 | Access expertise |
| Phase 2: Python Port | 2 weeks | Week 3 | Week 4 | Phase 1 complete |
| Phase 3: Flask-Admin | 4 weeks | Week 5 | Week 8 | Auth system ready |
| Phase 4: Testing | 2 weeks | Week 9 | Week 10 | Phase 2+3 complete |
| Phase 5: Cutover | 2 weeks | Week 11 | Week 12 | User acceptance |
| **Total** | **12 weeks** | | | **Q1 2026** |

## Cost-Benefit Analysis

### Costs:
- **Development Time:** ~12 weeks (1 developer full-time)
- **Testing & Validation:** 2 weeks parallel operation
- **Training:** 2-3 days for editors
- **Risk:** Potential bugs during transition
- **Total:** ~320 hours of development

### Benefits:
- **Platform Independence:** No Windows requirement (major cost saving)
- **Remote Access:** Edit from anywhere (flexibility)
- **Maintainability:** Python > VBA (easier to find developers)
- **Version Control:** Track changes in git (audit trail)
- **Testing:** Automated tests (quality improvement)
- **Integration:** Single stack with public site (simplification)
- **Long-term:** Eliminates Access licensing and Windows server needs

**ROI:** High - eliminates Windows dependency, reduces technical debt

## Risks & Mitigations

| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| VBA → Python conversion errors | Medium | High | Parallel operation, extensive testing, validation dataset |
| Performance degradation | Low | Medium | Benchmark early, optimize queries, add indexes |
| User resistance to change | Medium | Medium | Training, parallel operation, collect feedback early |
| wsroles security gaps | Low | High | Code review, security testing, preserve trigger logic |
| Complex forms hard to replicate | Medium | Medium | Custom Flask-Admin views, widget development |
| Migration timeline slip | Medium | Low | Buffer weeks, MVP approach, defer nice-to-haves |

## Alternative Approaches Considered

### 1. Keep Access + Build Web Interface (Rejected)
- **Pros:** Lower risk, gradual transition
- **Cons:** Maintains Windows dependency, technical debt persists
- **Verdict:** ❌ Doesn't achieve goal of eliminating Access

### 2. Use Retool/Budibase Low-Code (Considered)
- **Pros:** Faster development, no-code admin builder
- **Cons:** Vendor lock-in, less customizable, monthly costs
- **Verdict:** ⚠️ Viable alternative, but Flask-Admin preferred for control

### 3. Build Custom React Admin (Rejected)
- **Pros:** Modern UI, highly customizable
- **Cons:** Separate frontend/backend, more complex, longer timeline
- **Verdict:** ❌ Overkill for this use case, Flask-Admin sufficient

### 4. Access → SQLite → Flask-Admin (Rejected)
- **Pros:** Incremental migration, intermediate backup
- **Cons:** Extra step, doesn't solve core problems, delays benefits
- **Verdict:** ❌ Unnecessary complexity, direct migration better

### 5. Django Admin Instead of Flask-Admin (Considered)
- **Pros:** More mature admin, better out-of-box features
- **Cons:** Different framework from public site, migration overhead
- **Verdict:** ⚠️ Viable, but Flask already chosen for public site

## Decision Log

**2025-10-17: SQLite/DuckDB Not Recommended**
- Research showed conversion is technically possible via pyodbc + pandas
- However, Access .accdb is just a frontend (forms + VBA) to MySQL via ODBC
- Converting to SQLite creates intermediate step with no value
- Direct Flask-Admin + PostgreSQL migration is cleaner architecture
- SQLite/DuckDB can be used for supplementary archival/analytical purposes

**Target Approach: Flask-Admin + Python Scripts**
- Aligns with existing Flask migration plan
- Integrates with Render PostgreSQL
- Eliminates Windows dependency
- Single technology stack (Python)
- Version controlled and testable

**Timeline: Q1 2026**
- Not critical for Emergency MVP (Oct 31)
- Depends on authentication system (Nov-Dec)
- 12-week implementation realistic for Q1 2026

## Next Steps

### Immediate (Oct 17-31, 2025):
- ❌ **Do NOT start Access replacement**
- ✅ **Focus on Emergency MVP** (public web interface)
- ✅ **Defer this until post-launch**

### Post-Launch (Nov-Dec 2025):
1. Build authentication system (Flask-Login)
2. Create basic Flask-Admin setup (prototype)
3. Test with simple tables first
4. Validate wsroles integration approach

### Q1 2026 (Execute This Plan):
1. Extract and document VBA code
2. Port ownership analysis to Python
3. Build comprehensive Flask-Admin interface
4. Parallel operation and testing
5. Cutover and decommission Access

## References

- [Modernization Roadmap](../modernization-roadmap.md) - Overall migration strategy
- [Webb-site Editing System](../web/editing-system.md) - wsroles security details
- [Enigma Schema Documentation](../database/enigma-schema.md) - Table structures
- [Architecture Overview](../architecture/overview.md) - System components

## Appendix: Research on Access Conversion Tools

The following research was gathered on converting Access to SQLite/DuckDB, but ultimately not recommended for this project:

### Python-Based Conversion
- Use `pyodbc` or `pandas_access` to read ACCDB tables
- Write to SQLite via `sqlite3` or DuckDB via `duckdb.from_df()`
- Example: https://ryanschiang.com/convert-accdb-to-sql

### CLI Tools
- RebaseData Java client: `java -jar client-0.0.5.jar convert --output-format=sqlite database.accdb output-dir/`
- DBConvert, ESF Database Migration Toolkit (commercial)

### Why These Weren't Used
- Access database is not the primary data store (MySQL is)
- .accdb contains forms/VBA, not the actual data
- Direct Flask-Admin migration achieves goals better
- SQLite/DuckDB useful for supplementary purposes only

---

*This plan preserves David Webb's 35-year legacy while modernizing the editing workflow for the next 35 years.*
