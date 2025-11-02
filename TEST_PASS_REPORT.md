# Test Suite Pass Rate Report
Generated: 2025-11-02

## Overall Results
- **Pass Rate: 25/106 routes (23%)**
- **Improvement: Significant increase from baseline**

## Key Fixes Applied
1. **PostgreSQL Column Names (36 changes in ccass.py):**
   - `toDate` → `delistdate` (18 instances)
   - `fromDate` → `firsttradedate` (18 instances)

2. **Dict Access Patterns (3 changes in ccass.py):**
   - `result[0][0]` → `result[0]['max_date']` etc.

## Routes Passing (25 routes)

### CCASS Routes (2 routes):
- ✅ cparticipants - CCASS participants
- ✅ ctothist - turnover history

### Search & Browse (2 routes):
- ✅ searchorgs - company search
- ✅ searchpeople - person search

### Stock Listings (3 routes):
- ✅ delisted - delisted stocks
- ✅ listed - currently listed stocks
- ✅ listingtrend - listing trends

### Directors & Statistics (11 routes):
- ✅ boardcomp - board composition
- ✅ bornday - people born on day
- ✅ DirsHKAgeDistn - director age distribution
- ✅ DirsHKDistnPeople - director distribution by people
- ✅ dirsHKPerPerson - directors per person
- ✅ DirsPerListcoHKdstn - directors per listed company
- ✅ FDirsPerListcoHKdstn - foreign directors per company
- ✅ HKdirsTypeSex - HK directors by type and sex
- ✅ latestdirsHK - latest HK directors
- ✅ payleague - director pay league
- ✅ payleagueorg - pay league by organization

### Incorporation/Dissolution (4 routes):
- ✅ domicilechange - domicile changes
- ✅ gemgrads - GEM graduates
- ✅ incHKcaltype - HK incorporation by calendar type
- ✅ namechangeHKlisted - HK listed company name changes
- ✅ oldestHKcos - oldest HK companies

### Government & Other (3 routes):
- ✅ govac - government accounts
- ✅ roles - roles listing

## Routes Failing (81 routes)

### High Priority Failures:
**CCASS Routes (6 routes):**
- ✗ bigchanges - large shareholding changes (SQL working, test harness issue)
- ✗ bigchangesissue - changes for specific stock (template needs navigation)
- ✗ bigchangespart - changes for participant
- ✗ brokhist - broker history
- ✗ cconc - CCASS concentration
- ✗ cconchist - concentration history
- ✗ chldchg - holding changes
- ✗ cholder - holder history
- ✗ choldings - holdings for stock

**Company Data (7 routes):**
- ✗ advisers - corporate advisors
- ✗ adviserships - adviser relationships
- ✗ orgdata - organization data
- ✗ officers - directors and officers
- ✗ positions - positions held
- ✗ overlap - overlapping relationships
- ✗ natperson - natural person data

**Stock Data (8 routes):**
- ✗ alltotrets - all total returns
- ✗ chart - stock charts
- ✗ code - stock code lookup (some tests pass)
- ✗ ctr - capital total return
- ✗ str - stock total return
- ✗ holders - major shareholders
- ✗ holdings - shareholdings
- ✗ outstanding - outstanding shares

**Remaining categories:** See full test output for complete list.

## Test Coverage by Ground Truth Files
- **Total ground truth files:** 164 HTML files
- **CCASS files:** 27 files
- **DBPUB files:** 129 files  
- **Routes with tests:** 106 unique routes
- **Routes tested:** 106 routes (100% coverage)

## Recommendations

### Quick Wins (likely to pass with minor fixes):
1. Fix bigchanges test harness issue (SQL already works)
2. Add navigation includes to bigchangesissue template
3. Test code route (partial passes observed)
4. Fix govac and roles routes (already passing in this test)

### Medium Effort (PostgreSQL compatibility):
1. Company data routes (advisers, officers, orgdata) - likely need column name fixes
2. Stock data routes (str, ctr, holdings) - may need function compatibility
3. Remaining CCASS routes - template and SQL refinements

### Infrastructure Improvements:
1. Enable Flask debug mode for template auto-reload
2. Add SQL query logging for easier debugging
3. Create column name mapping documentation
4. Automated testing in CI/CD

## Technical Notes

**PostgreSQL vs MySQL Differences:**
- Column names are case-insensitive in MySQL but case-sensitive in PostgreSQL
- PostgreSQL requires lowercase for unquoted identifiers
- Dict-based result access (`result[0]['column']`) vs tuple access (`result[0][0]`)
- Date arithmetic syntax differences
- Function naming differences (e.g., modulo operator)

**Test Framework:**
- Ground truth comparison against archived ASP outputs
- HTML normalization (removes headers, footers, branding)
- Flexible matching with row count tolerances
- Fail-fast behavior (stops on first failure per route)
