# Choldings Navigation Issue - Investigation Findings

## Issue Description
For issue_id=12 (person_id=494, GOLDCORP HOLDINGS LIMITED), the stock_listings query returns 0 rows, but Flask renders full 5-link organization navigation instead of just "Key Data".

## Expected Behavior (from ASP ground truth)
For issue_id=12:
- Should render ONLY a single "Key Data" link (line 102 in ground truth HTML)
- Should render an empty navlist for stock-specific navigation (lines 106-109)
- person_id=494 correctly identified

## Investigation Findings

### 1. Route Code (ccass.py lines 590-810)
**CORRECT:** The choldings() function:
- Initializes `stock_listings = []` at line 707
- Queries enigma.stocklistings with filter `WHERE i.issuer = %s` (line 717) using person_id=494
- Appends results only if query returns rows (lines 722-732)
- Passes to template at line 803: `stock_listings=stock_listings`

### 2. Database Query (lines 706-736)
SQL query structure:
```sql
SELECT sl.stockCode, sl.firsttradedate, sl.finaltradedate,
       sl.delistdate, sl.issueID, l.longname
FROM enigma.stocklistings sl
JOIN enigma.issue i ON sl.issueID = i.id1
JOIN enigma.listings l ON sl.stockexid = l.stockexid
WHERE i.issuer = %s
ORDER BY sl.firsttradedate DESC
```
- Looks correct: joins issue/stocklistings/listings properly
- POTENTIAL ISSUE: For issue_id=12 (person_id=494), this query may be:
  - Returning rows it shouldn't (data issue)
  - Returning NULL values that Flask handles as truthy
  - Joining against wrong schema

### 3. Template Code (choldings.html lines 27-41)
```jinja2
{% if stock_listings %}
    <ul class="navlist">
        <li><a href="{{ url_for('dbpub_statistics.orgdata', p=person_id) }}">Key Data</a></li>
        <li><a href="{{ url_for('dbpub_corporate.officers', p=person_id) }}">Officers</a></li>
        <li><a href="{{ url_for('dbpub_statistics.overlap', p=person_id) }}">Overlaps</a></li>
        <li><a href="{{ url_for('dbpub_corporate.advisers', p=person_id) }}">Advisers</a></li>
        <li><a href="{{ url_for('dbpub_events.docs', p=person_id) }}">Financials</a></li>
    </ul>
    ...
{% else %}
    <ul class="navlist">
        <li><a href="{{ url_for('dbpub_statistics.orgdata', p=person_id) }}">Key Data</a></li>
    </ul>
    ...
{% endif %}
```
**CORRECT:** Template logic is sound - empty list `[]` evaluates to False in Jinja2

### 4. Database Helper (db.py lines 59-128)
`execute_query()` function:
- Line 99: `rows = [dict(row._mapping) for row in result]`
- Returns empty list `[]` for SELECT with no results
- No issues with list initialization

## Root Cause Analysis

The issue is **NOT** in:
- Template logic (correctly uses `{% if stock_listings %}`)
- Route variable passing (correctly passes `stock_listings=stock_listings`)
- Database helper function (correctly returns empty list)

The issue **MUST BE** in:
1. **The SQL query is returning rows when it shouldn't** - MOST LIKELY
   - Orphaned stocklistings rows pointing to person_id=494
   - Incorrect schema qualification (missing enigma. prefix in cross-schema join)
   - Data corruption/migration error

2. **Schema issue** - The enigma.stocklistings table may have records with:
   - Stale issuer references (old schema version)
   - Orphaned foreign keys
   - Data from incomplete migration

3. **Schema qualification** - In PostgreSQL with search_path set to "enigma, ccass, public":
   - The JOIN `enigma.issue i ON sl.issueID = i.id1` may be joining against wrong schema
   - If enigma schema is dropped/recreated, old data could persist

## Next Steps for Debugging
1. Run the exact SQL query with issue_id=12:
   ```sql
   SELECT sl.stockCode, sl.firsttradedate, sl.finaltradedate,
          sl.delistdate, sl.issueID, l.longname
   FROM enigma.stocklistings sl
   JOIN enigma.issue i ON sl.issueID = i.id1
   JOIN enigma.listings l ON sl.stockexid = l.stockexid
   WHERE i.issuer = 494
   ORDER BY sl.firsttradedate DESC;
   ```

2. Check what stocklistings records exist for person_id=494:
   ```sql
   SELECT DISTINCT i.issuer
   FROM enigma.stocklistings sl
   JOIN enigma.issue i ON sl.issueID = i.id1;
   ```

3. Compare with ASP ground truth expectation
4. If query returns rows, verify they should actually belong to person_id=494
