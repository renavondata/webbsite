# PostgreSQL Migration Verification Plan

## Overview

This document outlines a comprehensive verification plan for the MySQL-to-PostgreSQL migration of the Webb-site database. The goal is to ensure database fidelity - that all SQL queries in Flask routes produce identical results to the original ASP + MySQL implementation.

## 1. MySQL to PostgreSQL Conversion Checklist

### 1.1 Syntax Conversions

| MySQL | PostgreSQL | Status | Notes |
|-------|------------|--------|-------|
| `IFNULL(x, y)` | `COALESCE(x, y)` | Verified | Used extensively, all routes converted |
| `DATE_FORMAT(d, '%Y-%m-%d')` | `TO_CHAR(d, 'YYYY-MM-DD')` | Verified | Format codes differ |
| `DATE_FORMAT(d, '%H:%i')` | `TO_CHAR(d, 'HH24:MI')` | Partial | Check time formatting |
| `MATCH(...) AGAINST(...)` | `to_tsvector() @@ to_tsquery()` | Verified | Full-text search converted |
| `LAST_INSERT_ID()` | `lastval()` or `RETURNING` | Verified | Prefer RETURNING clause |
| `IF(cond, a, b)` | `CASE WHEN cond THEN a ELSE b END` | Verified | Used in holdings queries |
| `NOW()` | `CURRENT_TIMESTAMP` or `NOW()` | OK | Both work in PostgreSQL |
| `CURDATE()` | `CURRENT_DATE` | Verified | Direct equivalent |
| `YEAR(d)` | `EXTRACT(YEAR FROM d)` | Verified | |
| `MONTH(d)` | `EXTRACT(MONTH FROM d)` | Verified | |
| `DAY(d)` | `EXTRACT(DAY FROM d)` | Verified | |
| `TO_DAYS(d)` | `d - DATE '0000-01-01'` | N/A | Use date arithmetic |
| `DATEDIFF(d1, d2)` | `d1 - d2` | Verified | PostgreSQL returns integer days |
| `DATE_SUB(d, INTERVAL n UNIT)` | `d - INTERVAL 'n UNIT'` | Verified | |
| `DATE_ADD(d, INTERVAL n UNIT)` | `d + INTERVAL 'n UNIT'` | Verified | |
| `UNIX_TIMESTAMP(d)*1000` | `EXTRACT(EPOCH FROM d)*1000` | Partial | For Highcharts timestamps |
| `CONCAT(a, b, c)` | `a || b || c` | Verified | Both work in PostgreSQL |
| `GROUP_CONCAT(x)` | `string_agg(x, ',')` | Check | May need ORDER BY |
| `LIMIT offset, count` | `LIMIT count OFFSET offset` | Verified | Syntax differs |
| `BIT(1)` type | `BOOLEAN` | Verified | |
| `TINYINT UNSIGNED` | `SMALLINT` | Verified | Check range constraints |
| `FLOAT UNSIGNED` | `REAL` | Verified | No unsigned in PostgreSQL |
| `DOUBLE` | `DOUBLE PRECISION` | Verified | |
| `TEXT` | `TEXT` | OK | Same |
| `NVARCHAR(n)` | `VARCHAR(n)` | OK | PostgreSQL handles UTF-8 natively |

### 1.2 Case Sensitivity

| Issue | MySQL | PostgreSQL | Status |
|-------|-------|------------|--------|
| Identifiers | Case-insensitive | Case-sensitive | Must use lowercase |
| String comparison | Case-insensitive (depends on collation) | Case-sensitive | Use `LOWER()` or `ILIKE` |
| Table names | `stockListings` | `stocklistings` | All lowercased |
| Column names | `issueID` | `issueid` | All lowercased |
| Function names | `everListCo` | `everlistco` | All lowercased |

### 1.3 NULL Handling in ORDER BY

| MySQL Default | PostgreSQL Default | Solution |
|---------------|-------------------|----------|
| ASC: NULLS FIRST | ASC: NULLS LAST | Explicitly specify NULLS FIRST/LAST |
| DESC: NULLS LAST | DESC: NULLS FIRST | Explicitly specify NULLS FIRST/LAST |

### 1.4 Boolean Handling

| MySQL | PostgreSQL |
|-------|------------|
| `0` / `1` | `TRUE` / `FALSE` |
| `WHERE col` (truthy check) | `WHERE col = TRUE` or `WHERE col` |
| `IF(col, ...)` | `CASE WHEN col THEN ... END` |

## 2. MySQL Stored Functions and PostgreSQL Equivalents

### 2.1 Financial Functions (Critical for Data Precision)

| MySQL Function | PostgreSQL Port | Location | Status |
|----------------|-----------------|----------|--------|
| `outstanding(i, d)` | `enigma.outstanding(i, d)` | `sync_render_20251027.sql:371` | Ported |
| `splitAdj(i, d)` | `enigma.splitadj(i, d)` | `sync_render_20251027.sql:395` | Ported, different algorithm |
| `totRet(i, from, to)` | `enigma.totRet(i, from, to)` | `sync_render_20251027.sql:225` | Ported |
| `CAGRet(i, from, to)` | `enigma.CAGRet(i, from, to)` | `sync_render_20251027.sql:268` | Ported |
| `CAGRel(i, from, to)` | `enigma.CAGRel(i, from, to)` | `sync_render_20251027.sql:314` | Ported |
| `getAdjust(i, d)` | `enigma.getAdjust(i, d)` | `sync_render_20251027.sql:203` | Ported |
| `lastQuote(i, d)` | `enigma.lastquote(i, d)` | `sync_render_20251027.sql:456` | Ported |

### 2.2 Date/Utility Functions

| MySQL Function | PostgreSQL Port | Location | Status |
|----------------|-----------------|----------|--------|
| `MSdateAcc(d, a)` | `enigma.MSdateAcc(d, a)` | `sync_render_20251027.sql:23` | Ported |
| `firstQuoteDate(i, d)` | `ccass.firstQuoteDate(i, d)` | `sync_render_20251027.sql:476` | Ported |
| `lastQuoteDate(i, d)` | `ccass.lastQuoteDate(i, d)` | `sync_render_20251027.sql:498` | Ported |
| `lastCode(i)` | `enigma.lastCode(i)` | `sync_render_20251027.sql:135` | Ported |
| `everListCo(p)` | `enigma.everListCo(p)` | `sync_render_20251027.sql:88` | Ported |
| `delisted(i, d)` | `enigma.delisted(i, d)` | `sync_render_20251027.sql:107` | Ported |

### 2.3 Name Formatting Functions

| MySQL Function | PostgreSQL Port | Status |
|----------------|-----------------|--------|
| `fNameOrg(n1, cName)` | Inline SQL with `||` | Converted inline |
| `fNamePpl(n1, n2, cName)` | Inline SQL with `||` | Converted inline |
| `fNamePsn(...)` | Inline SQL | Converted inline |
| `nameppl(n1, n2)` | `enigma.nameppl(n1, n2)` | Ported |

### 2.4 Functions NOT Yet Ported

| MySQL Function | Purpose | Priority |
|----------------|---------|----------|
| `lastfx(c1, c2, d)` | Currency exchange rates | Medium |
| `fulladj(i, d)` | Full adjustment factor | Low |
| `pendsh(i, d)` | Pending shares | Low |
| `peerage(p)` | Peer names | Low |
| `hasRole(rID, uID)` | Role checking | Deferred (dbeditor) |

### 2.5 Algorithm Differences to Verify

**splitAdj() - CRITICAL**
- MySQL: Uses `EXP(SUM(LOG(adjust)))` from events table
- PostgreSQL: Uses cumAdjust from adjustments table with MAX/MIN ratio
- Potential data discrepancy source

**totRet() - CRITICAL**
- Both use same logic: `getAdjust(from) / getAdjust(to) * price(to) / price(from)`
- Verify precision is maintained through calculations

## 3. Query Comparison Methodology

### 3.1 Automated Testing Framework

```python
# Proposed structure for tests/test_sql_parity.py

import pytest
from datetime import date

class TestSQLParity:
    """Compare Flask/PostgreSQL queries against expected results"""
    
    @pytest.fixture
    def sample_issues(self):
        """Well-known issueIDs for testing"""
        return [
            1,      # HSBC Holdings
            5295,   # Tracker Fund (2800)
            967,    # CLP Holdings
            # Add more representative samples
        ]
    
    @pytest.fixture
    def sample_dates(self):
        """Representative date range"""
        return [
            date(1994, 1, 3),   # Earliest quotes
            date(2000, 1, 1),   # Pre-GEM era
            date(2010, 1, 1),   # Post-financial crisis
            date(2023, 1, 1),   # Recent
        ]
    
    def test_outstanding_shares(self, sample_issues, sample_dates):
        """Verify outstanding() returns correct share counts"""
        for issue_id in sample_issues:
            for d in sample_dates:
                # Call PostgreSQL function
                # Compare to known/expected value
                pass
    
    def test_total_returns(self, sample_issues, sample_dates):
        """Verify totRet() calculations"""
        pass
    
    def test_split_adjustments(self, sample_issues, sample_dates):
        """Verify splitAdj() calculations"""
        pass
```

### 3.2 Route-by-Route Verification Process

1. **Identify query patterns** in each Flask route
2. **Extract sample parameters** from production logs
3. **Execute both implementations** (if MySQL still available)
4. **Compare result sets**:
   - Row counts
   - Column names and types
   - Actual data values
   - NULL handling
   - Sort order

### 3.3 High-Priority Routes to Verify

| Route | Key SQL Functions | Verification Priority |
|-------|-------------------|----------------------|
| `listed.asp` | `totRet`, `CAGRet`, `CAGRel` | CRITICAL |
| `quotes.asp` | Price queries, date ranges | CRITICAL |
| `events.asp` | `COALESCE`, date formatting | HIGH |
| `chistory.asp` | `outstanding`, `splitAdj` | CRITICAL |
| `bigchanges.asp` | `lastCode`, holdings calculations | HIGH |
| `searchorgs.asp` | Full-text search | HIGH |
| `searchpeople.asp` | Full-text search | HIGH |

### 3.4 Manual Spot-Check Process

1. Select 10 random stock codes
2. Compare Flask output to known values (archived ASP pages)
3. Verify:
   - Stock names displayed correctly
   - Dates formatted consistently
   - Numbers match to expected precision
   - NULL values render identically

## 4. Data Precision Verification

### 4.1 Financial Calculation Precision

**Requirements:**
- Total returns: 8 decimal places (MySQL `div_precision_increment = 8`)
- Price adjustments: Double precision (15-16 significant digits)
- Outstanding shares: Integer precision

**Verification Steps:**

1. **Test split adjustment chains**:
   ```sql
   -- Compare adjustment calculations for stocks with multiple splits
   SELECT issueID, exDate, adjust, cumAdjust
   FROM enigma.adjustments
   WHERE issueID = 5295  -- Tracker Fund
   ORDER BY exDate;
   ```

2. **Test total return calculations**:
   ```sql
   -- Known values for verification
   SELECT enigma.totRet(5295, '1999-11-12', CURRENT_DATE);
   -- Compare to independently calculated value
   ```

3. **Test percentage formatting**:
   ```python
   # Verify pcsig() function for significant digits
   def test_pcsig():
       assert pcsig(10.0) == 0   # 10+ shows 0 decimals
       assert pcsig(5.0) == 1    # 1-10 shows 1 decimal
       assert pcsig(0.5) == 2    # default 2 decimals
   ```

### 4.2 Date Precision

**Verification Points:**
- Accuracy codes (1=year, 2=month, 3=unknown, etc.)
- Time zone handling (all Hong Kong time)
- Date boundary conditions (month ends, year ends)

### 4.3 Numeric Overflow Testing

Test edge cases:
- Maximum outstanding shares (~2 billion for large caps)
- Price ranges (0.001 to 1000+)
- Volume spikes (billions of shares traded)

### 4.4 Character Encoding

Verify UTF-8 handling:
- Chinese company names (e.g., "中國人壽保險")
- Special characters in person names
- Mixed English/Chinese strings

## 5. Views Not Yet Ported

The CLAUDE.md mentions 29 MySQL views need porting. Key views to verify:

| View Name | Used By | Priority |
|-----------|---------|----------|
| `weblistings` | `code.asp` | HIGH |
| `auditorchanges` | `auditorchanges.asp` | MEDIUM |
| `hklistedordsever` | Position summary | MEDIUM |

## 6. Implementation Recommendations

### 6.1 Immediate Actions

1. Create test fixtures with known good data
2. Implement parity tests for `totRet`, `splitAdj`, `outstanding`
3. Verify all NULL handling matches original behavior
4. Document any intentional behavioral differences

### 6.2 Ongoing Monitoring

1. Log query execution times
2. Monitor for PostgreSQL-specific errors
3. Compare random samples periodically

### 6.3 Documentation Requirements

1. Document all conversion decisions
2. Maintain mapping of MySQL-to-PostgreSQL equivalents
3. Record any data discrepancies found and resolutions

## Critical Files for Implementation

1. `/home/g/Sync/git/webbsite/Webb-site ASP files/dbpub/functions1.asp` - Original ASP helper functions
2. `/home/g/Sync/git/webbsite/webbsite/asp_helpers.py` - Python port of ASP helpers
3. `/home/g/Sync/git/webbsite/database/migrations/sync_render_20251027.sql` - PostgreSQL function definitions
4. `/home/g/Sync/git/webbsite/webbsite/routes/ccass.py` - CCASS routes with complex SQL
5. `/home/g/Sync/git/webbsite/webbsite/routes/dbpub/listings.py` - Listed stock routes with return calculations
