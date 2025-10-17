# Webb-site Scrapers Overview

## Purpose

The scraping layer automates collection of Hong Kong financial data from public sources, transforming unstructured web pages and PDFs into structured database records.

## Technology Stack

**Language:** VB.NET (.NET Framework 4.8)
**Platform:** Windows x64
**Build:** Visual Studio 2022
**Scheduling:** Windows Task Scheduler
**Deployment:** Console applications (.exe)

## Shared Libraries

### ScraperKit.vb

Central utility library providing common functions to all scrapers.

**Web Scraping:**
- `GetWeb3(url, cookie, referer)` - HTTP GET with cookie/referer support, handles redirects
- `Download2(url, filepath, cookie)` - Downloads files (PDFs, Excel, etc.)
- Cookie handling for authenticated sessions

**Database Helpers:**
- `OpenEnigma()`, `OpenCCASS()`, `OpenPrivate()` - Database connections via DSNs
- `DBdate(vbDate)` - Converts VB.NET Date to MySQL format ("yyyy-MM-dd")
- `DBint(value)` - Safely converts to nullable integer
- `DBbool(value)` - Converts to MySQL boolean (1/0/NULL)

**String Utilities:**
- `Apos(str)` - SQL string escaping (doubles apostrophes)
- `CleanStr(str)` - Removes non-printable characters
- `Trim2(str)` - Enhanced trim (handles null, collapses whitespace)

**Logging:**
- `GetLog(key)` - Retrieves last run status from enigma.log table
- `PutLog(key, value)` - Updates run status
- Keys: "CCASSdateDone", "MBquotesDate", "GEMquotesDate", etc.

**Error Handling:**
- `ErrMail(subject, body, toAddress)` - Sends error notifications via SMTP
- Uses credentials from private.keys table
- Rate limiting to prevent email spam

**Date Functions:**
- `MSdate(mysqlDate)` - Converts MySQL date string to VB.NET Date
- `Today8()` - Returns today's date in yyyyMMdd format

### JSONkit.vb

Self-developed JSON parsing library (predates .NET Framework JSON support).

**Key Functions:**
- `JSONparse(jsonString)` - Parses JSON to VB.NET Dictionary/ArrayList
- `JSONvalue(obj, path)` - Extracts values from nested JSON structures
- Used by SFC.vb for SFC announcements (JSON packages)

## Scraper Execution Pattern

All scrapers follow a consistent pattern:

```vb
' 1. Entry point (Main subroutine)
Sub Main()
    ' 2. Open database connections
    Dim conE As New ADODB.Connection
    OpenEnigma(conE)

    ' 3. Check what needs updating (read logs)
    Dim lastDate As Date = MSdate(GetLog("ScraperLastRun"))

    ' 4. Fetch data from external source
    Dim html As String = GetWeb3("https://example.com", "", "")

    ' 5. Parse and clean data
    Dim dataValue As String = ExtractValue(html)

    ' 6. Update database
    conE.Execute("INSERT INTO table (field) VALUES ('" & Apos(dataValue) & "')")

    ' 7. Log completion
    PutLog("ScraperLastRun", DBdate(Now))

Catch ex As Exception
    ' 8. Send error notification
    ErrMail("Scraper Failed", ex.Message, "admin@example.com")
End Try
End Sub
```

## Core Scrapers

### Quotes.vb

**Purpose:** Daily stock quotes, dividends, corporate actions
**Schedule:** 22:00 Mon-Fri (before CCASS)
**Sources:** HKEX Daily Quotations Sheets, HSI Services

**Main Entry Point:** `GetQuotesUpdate()`

**Operations:**
1. Scrapes Main Board and GEM daily quotations
2. Updates `ccass.quotes`, `ccass.pquotes` (parallel trading counters)
3. Processes foreign dividend announcements → `enigma.events`
4. Converts foreign currencies via `ConvDistE()` function
5. Updates short position data
6. Calculates HSI Total Return Index
7. Calls `SetAdjAll()` to recalculate adjusted prices and total returns

**Critical Function:** `SetAdjAll()`
- Recalculates split-adjusted prices backward from present
- Computes total return indexes with dividend reinvestment
- Uses `div_precision_increment = 8` for accuracy

**Logs Updated:**
- `MBquotesDate` - Last Main Board quote date
- `GEMquotesDate` - Last GEM quote date
- CCASS.vb checks these before running

### CCASS.vb

**Purpose:** CCASS beneficial ownership holdings
**Schedule:** 04:00 Tue-Sat (after Quotes)
**Source:** HKEX CCASS website

**Main Entry Point:** `GetCCASS()`

**Critical Importance:**
- HKEX only retains 1 year of CCASS data
- Delisted stocks deleted immediately from CCASS
- Missing a day is **unrecoverable data loss**

**Operations:**
1. Checks `MBquotesDate` and `GEMquotesDate` logs (must be current)
2. Determines which dates need updating
3. For each date:
   - Calls `GetAllHoldingsAtDate(atDate)`
   - Scrapes holdings for all active stocks
   - Only records holdings that changed from previous day (~25% change daily)
   - Updates `ccass.holdings` and `ccass.parthold` (dual-table design)
4. Calls `BigChange()` to identify significant ownership changes
5. Updates `ccass.dailylog` with concentration metrics (top 5, top 10)
6. Updates `ccass.bigchanges` table

**Key Functions:**
- `GetAllHoldingsAtDate(atDate)` - Scrapes all holdings for a date
- `BigChange()` - Identifies changes > threshold for alerting

**Performance:**
- Must complete in ~45 minutes on 32GB RAM machine
- Requires CCASS schema resident in RAM (innodb_buffer_pool_size >= 8GB)
- Dual-table design prevents index fragmentation

### GetFinancialReports.vb

**Purpose:** Download company financial reports (PDFs)
**Schedule:** 02:30 Mon-Sat (HKEX cut-off 23:00, no Saturday filings)
**Source:** HKEX Listed Company Information

**Operations:**
1. Scrapes HKEX announcements page
2. Identifies annual reports, interim reports, circulars
3. Downloads PDFs using `Download2()`
4. Stores metadata in `enigma.reports` table
5. Archives PDFs to file system

### SFC.vb

**Purpose:** SFC licensee database
**Schedule:** 03:00 Tue-Sat
**Source:** SFC Public Register of Licensed Persons and RIs

**Operations:**
1. Downloads SFC JSON data packages (English and Chinese)
2. Parses using JSONkit.vb
3. Matches licensees to `enigma.persons` (creates new entries if needed)
4. Updates `enigma.directorships` with positionID 394 (Representative) or 395 (Responsible Officer)
5. If person is both RO and Rep, RO outranks (recorded as RO)
6. Handles multiple regulated activities per licensee

**Auto-Differentiation:**
- If same name exists, adds SFCID to name2: "Chan, David (CE12345)"

### HKlawSoc.vb

**Purpose:** Law Society solicitor database
**Schedule:** 23:00 Mon-Fri
**Source:** Law Society of Hong Kong Public Register

**Operations:**
1. Scrapes solicitor admissions and firm changes
2. Updates `enigma.persons` (solicitors)
3. Updates `enigma.organisations` (law firms)
4. Updates `enigma.directorships` with Law Society positions
5. Sets `LSrole` field (Partner, Consultant, etc.)
6. Updates `enigma.lsemps` table (employer links - requires manual matching)

**Data Precision:**
- Shown to nearest month (registration lag)

### CR.vb

**Purpose:** Hong Kong Companies Registry data
**Schedule:** 18:30 Weekdays (weekly filings)
**Source:** Companies Registry website

**Operations:**
1. Scrapes company filings (incorporations, dissolutions, charge registrations)
2. Updates `enigma.organisations` with CR numbers
3. Tracks company status changes

### UKCH.vb

**Purpose:** UK Companies House data
**Schedule:** Continuous operation (updates ~14,160 oldest records per cycle, ~1 hour)
**Source:** UK Companies House API

**Operations:**
1. Identifies oldest records in `enigma.organisations` where domicile = 'UK'
2. Fetches company details via API (requires API key from private.keys)
3. Updates company status, addresses, officer appointments
4. Creates `enigma.directorships` records with UKCH positions
5. Checks for new UK companies
6. Repeats continuously

**API Rate Limits:**
- Respects Companies House API rate limits (600 requests/5 minutes)

### HKEXdata.vb

**Purpose:** HKEX API interactions
**Schedule:** 17:00 Mon-Fri
**Source:** HKEX APIs

**Operations:**
- Market data extraction
- Listing information updates
- Integrates with Listing.vb for new listings/delistings

### Other Scrapers

**Listing.vb** (18:20 Mon-Fri) - New listings and delistings
**SDI.vb** (18:00 Mon-Fri) - Short Selling Designated Securities
**LandReg.vb** (18:30 Mon-Fri) - Land Registry data
**Buybacks.vb** (10:45 Weekdays) - Share buybacks (requires logged-in session for old .XLS format)
**HKMA.vb** (18:15 Mon-Fri) - Hong Kong Monetary Authority data
**Transport.vb** (19:00 Mon-Fri) - Transportation statistics
**Quarantine.vb** (19:00 Daily) - COVID-19 quarantine data (historical)
**housing.vb** (20:00 Fridays) - Public housing data
**ImmD.vb** (11:30 Daily) - Immigration Department data
**HKflights.vb** (Hourly) - Flight data
**Treasury.vb** (Manual) - Government Accounts Explorer (complex process)
**GetJudgments.vb** (Manual) - Legal judgment scraping

## Critical Dependencies

### CCASS Depends on Quotes

```
Quotes.vb (22:00)
   ↓ updates MBquotesDate, GEMquotesDate
   ↓ updates ccass.quotes
   ↓
CCASS.vb (04:00)
   ↓ checks MBquotesDate >= yesterday
   ↓ uses quotes for stock list
   ↓ updates holdings
```

**If Quotes fails:** CCASS will not run (by design)
**If CCASS fails:** Ownership data for that day is lost forever

## Error Handling Patterns

### 1. Network Failures
```vb
Dim retries As Integer = 0
While retries < 3
    Try
        html = GetWeb3(url, cookie, referer)
        Exit While
    Catch ex As WebException
        retries += 1
        Thread.Sleep(5000) ' Wait 5 seconds
    End Try
End While
If html = "" Then
    ErrMail("Scraper Failed", "Could not fetch " & url, "admin@example.com")
End If
```

### 2. Parsing Failures
```vb
Try
    value = Regex.Match(html, pattern).Groups(1).Value
    If value = "" Then Throw New Exception("Pattern not found")
Catch ex As Exception
    ErrMail("Parse Error", "Pattern: " & pattern & vbCrLf & ex.Message, "admin@example.com")
End Try
```

### 3. Database Failures
```vb
Try
    conE.Execute(sql)
Catch ex As Exception
    ErrMail("Database Error", "SQL: " & sql & vbCrLf & ex.Message, "admin@example.com")
    ' Log to file for manual recovery
End Try
```

## Rate Limiting

Scrapers implement polite scraping:

```vb
' Wait between requests to avoid overloading servers
For Each stock In stockList
    html = GetWeb3(url, cookie, referer)
    ProcessStock(html)
    Thread.Sleep(500) ' 500ms delay = max 2 requests/second
Next
```

## Cookie Handling

Some sources require session cookies:

```vb
' Buybacks.vb requires logged-in session for old .XLS format
Dim loginHtml As String = GetWeb3(loginUrl, "", "")
Dim cookie As String = ExtractCookie(loginHtml) ' Parse Set-Cookie header
Dim dataHtml As String = GetWeb3(dataUrl, cookie, loginUrl)
```

## Logging Strategy

**State Tracking:**
```vb
' Before starting
Dim lastRun As Date = MSdate(GetLog("ScraperLastRun"))

' After completion
PutLog("ScraperLastRun", DBdate(Now))
PutLog("ScraperRecordsProcessed", recordCount.ToString())
```

**Log Keys (enigma.log table):**
- `MBquotesDate` - Last Main Board quote date
- `GEMquotesDate` - Last GEM quote date
- `CCASSdateDone` - Last CCASS scrape date
- `SFClastUpdate` - Last SFC scrape timestamp
- `HKlawSocLastRun` - Last Law Society scrape

## Data Validation

Scrapers validate data before database insertion:

```vb
' 1. Type checking
If Not IsDate(dateStr) Then
    ErrMail("Invalid Date", "Date: " & dateStr, "admin@example.com")
    Continue For
End If

' 2. Range checking
If price < 0 Or price > 100000 Then
    ErrMail("Invalid Price", "Price: " & price, "admin@example.com")
    Continue For
End If

' 3. Referential integrity
Dim rs As ADODB.Recordset = conE.Execute("SELECT issueID FROM issue WHERE stockCode=" & stockCode)
If rs.EOF Then
    ErrMail("Unknown Stock", "Stock code: " & stockCode, "admin@example.com")
    Continue For
End If
```

## Migration Considerations

When rewriting scrapers in Python:

1. **Preserve logic exactly** - These scrapers have evolved over 15+ years to handle edge cases
2. **Maintain logging patterns** - Use same enigma.log keys for state tracking
3. **Keep error handling** - ErrMail pattern prevents silent failures
4. **Respect dependencies** - CCASS must still check Quotes completion
5. **Validate data quality** - Run parallel with VB.NET for 3+ months before cutover
6. **Document assumptions** - Many edge cases are not obvious from code

## Common Pitfalls

1. **Timezone Issues** - All dates are Hong Kong time (HKT, UTC+8, no DST)
2. **Temporary Stock Codes** - Handle parallel trading counters during splits/consolidations
3. **Delisted Stocks** - CCASS holdings set to zero on delisting date
4. **Character Encoding** - UTF-8 for Chinese characters, watch for BOM
5. **MySQL Date Format** - Always use `yyyy-MM-dd`, not VB.NET default format
6. **Null Handling** - Use DBint(), DBbool() for nullable fields
7. **SQL Injection** - Always use Apos() for string values
8. **Rate Limiting** - Respect source website limits (Thread.Sleep between requests)

## Performance Optimization

### Batch Operations
```vb
' Bad: Individual inserts
For Each row In data
    conE.Execute("INSERT INTO table VALUES (" & row & ")")
Next

' Good: Batch insert
Dim sql As String = "INSERT INTO table VALUES "
For Each row In data
    sql &= "(" & row & "),"
Next
sql = sql.TrimEnd(",")
conE.Execute(sql)
```

### Index Usage
```vb
' Ensure queries use indexes
' Bad: Full table scan
SELECT * FROM holdings WHERE atDate = '2025-01-15'

' Good: Uses (issueID, partID, atDate) index
SELECT * FROM holdings WHERE issueID = 1234 AND atDate = '2025-01-15'
```

## Testing Scrapers

1. **Dry Run Mode** - Test parsing without database writes
2. **Sample Data** - Save HTML responses for unit testing
3. **Comparison** - Compare results with previous day's data
4. **Alerting** - Email diffs for manual verification

## See Also

- [compilation.md](compilation.md) - Building VB.NET scrapers
- [scheduling.md](scheduling.md) - Detailed run times and dependencies
- [reference.md](reference.md) - Individual scraper documentation
- [../database/setup.md](../database/setup.md) - Database configuration
- [../architecture/overview.md](../architecture/overview.md) - System architecture

---

*These scrapers have run continuously for 15+ years, collecting data that would otherwise be lost. When modernizing, preserve their battle-tested logic.*
