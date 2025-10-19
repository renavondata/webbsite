# Flask vs ASP Route Validation Tests

This directory contains automated testing scripts to validate that the Flask migration produces identical output to the original Classic ASP implementation.

## Purpose

Before the webb-site.com shutdown on **October 31, 2025**, we need to verify that all 24 working Flask routes produce the same output as the live ASP site. This test suite automates that comparison.

## Files

- **`test_routes.py`** - Main testing script that fetches and compares outputs
- **`test_config.yaml`** - Configuration with all 24 routes and test cases (~60 test scenarios)
- **`requirements-test.txt`** - Python dependencies for testing
- **`README.md`** - This file

## Installation

Install test dependencies:

```bash
# From repository root
pip install -r tests/requirements-test.txt
```

Or if using the project's virtual environment:

```bash
# Activate venv first
source .venv/bin/activate
pip install -r tests/requirements-test.txt
```

## Prerequisites

Before running tests:

1. **Flask server must be running locally:**
   ```bash
   python app.py
   # Should be accessible at http://127.0.0.1:5000
   ```

2. **Live ASP site must be accessible:**
   - The live webb-site.com must still be online (before Oct 31, 2025)
   - Tests fetch from `http://webb-site.com` for comparison

3. **PostgreSQL database must be running:**
   - Local test database at `localhost:5432/enigma_pg`
   - Flask app connects to this database

## Usage

### Run All Tests

Test all 24 routes with ~60 parameter combinations:

```bash
python tests/test_routes.py
```

Expected output:
```
============================================================
Flask vs ASP Route Validation
============================================================

ASP base:   http://webb-site.com
Flask base: http://127.0.0.1:5000
Test date:  2024-10-01

Testing: dbpub index
  ✓ dbpub index (case 1)
  All 1 test(s) passed

Testing: searchorgs - company search
  ✓ searchorgs - company search (case 1)
  ✓ searchorgs - company search (case 2)
  All 2 test(s) passed

...

============================================================
Summary
============================================================

✓ All 60 tests passed! (100%)
```

### Run Specific Route

Test only routes matching a specific name:

```bash
# Test only searchorgs routes
python tests/test_routes.py --route searchorgs

# Test only CCASS routes
python tests/test_routes.py --route ccass

# Test only articles
python tests/test_routes.py --route articles
```

### Verbose Mode

Show detailed HTML diffs for failures:

```bash
python tests/test_routes.py --verbose
```

Example output with diff:
```
Testing: listed - currently listed stocks
  ✗ listed - currently listed stocks (case 1)
    Diff preview:
      --- ASP: listed - currently listed stocks (case 1)
      +++ Flask: listed - currently listed stocks (case 1)
      @@ -42,7 +42,7 @@
      -<th>Stock Code</th>
      +<th>StockCode</th>
      ... (152 more lines)
```

### Save Outputs

Archive HTML outputs for manual inspection:

```bash
python tests/test_routes.py --save-outputs
```

This creates `tests/outputs/` directory with files like:
- `searchorgs_company_search_case_1_flask.html`
- `searchorgs_company_search_case_1_asp.html`

Useful for:
- Manual side-by-side comparison in browser
- Debugging why tests failed
- Archiving ASP outputs before Oct 31 shutdown

### Custom Config

Use a different test configuration file:

```bash
python tests/test_routes.py --config /path/to/custom_config.yaml
```

## Test Configuration

### Edit `test_config.yaml`

The YAML config defines:

1. **Base URLs:**
   ```yaml
   asp_base: "http://webb-site.com"
   flask_base: "http://127.0.0.1:5000"
   ```

2. **Fixed test date** (for consistent date-dependent queries):
   ```yaml
   test_date: "2024-10-01"
   ```

3. **Route test cases:**
   ```yaml
   routes:
     - name: "searchorgs - company search"
       path: "/dbpub/searchorgs.asp"
       params:
         - q: "HSBC"
         - q: "中國移動"
           l: "50"
   ```

Each route can have multiple parameter combinations to test different scenarios.

### HTML Normalization

To handle minor formatting differences, HTML is normalized before comparison:

```yaml
normalize:
  strip_whitespace: true      # Remove leading/trailing spaces
  remove_comments: true        # Strip HTML comments
  collapse_spaces: true        # Multiple spaces → single space
```

This ensures we compare **data content**, not formatting.

## Test Coverage

### 24 Working Routes (60+ test scenarios)

**Core Search & Browse (5 routes, 10 tests):**
- dbpub index
- searchorgs - company search (2 scenarios)
- searchpeople - person search (2 scenarios)
- prices - stock price charts (2 scenarios)
- quotes - stock quotes (2 scenarios)
- events - corporate events (2 scenarios)

**Stock Listings (3 routes, 7 tests):**
- listed - currently listed (3 scenarios: Main Board, GEM, All)
- delisted - delisted stocks (2 scenarios)
- code - stock code lookup (3 scenarios)

**Corporate Structure (4 routes, 8 tests):**
- advisers - corporate advisors (2 scenarios)
- officers - directors (2 scenarios)
- splits - stock splits (2 scenarios)
- positions - director positions (2 scenarios)

**Company Data (1 route, 3 tests):**
- orgdata - company data page (3 scenarios)

**Articles (3 routes, 3 tests):**
- articles/{path}.asp - individual article
- articles/index.asp - article index
- articles/ - articles root

**CCASS Analysis (7 routes, 14 tests):**
- bigchanges - large shareholding changes (2 scenarios)
- bigchangesissue - changes for stock (2 scenarios)
- bigchangespart - changes for participant (2 scenarios)
- cconc - CCASS concentration (2 scenarios)
- cparticipants - participants list (2 scenarios)
- ipstakes - investor stakes (2 scenarios)
- choldings - holdings for stock (2 scenarios)

## Interpreting Results

### Exit Codes

- **0** - All tests passed ✓
- **1** - Some tests failed ✗
- **2** - Critical error (server not running, config missing, etc.)

### Common Failure Reasons

1. **Flask server not running:**
   ```
   ⚠ Error fetching http://127.0.0.1:5000/dbpub/: Connection refused
   ```
   **Fix:** Run `python app.py` first

2. **Database not accessible:**
   ```
   ✗ Route failed with 500 Internal Server Error
   ```
   **Fix:** Check PostgreSQL is running and database imported

3. **ASP site unreachable:**
   ```
   ⚠ Error fetching http://webb-site.com/dbpub/: Timeout
   ```
   **Fix:** Check internet connection or ASP site status

4. **HTML differences detected:**
   ```
   ✗ listed - currently listed stocks (case 1)
   ```
   **Action:** Run with `--verbose` to see diff, investigate if intentional

### Acceptable Differences

Some differences are expected and acceptable:

- **Timestamps/dates** - If using current date instead of fixed test date
- **Dynamic IDs** - Session IDs, CSRF tokens (we don't have these yet)
- **Whitespace/formatting** - Should be normalized, but edge cases may exist
- **PostgreSQL vs MySQL** - Minor SQL behavior differences (documented)

## Troubleshooting

### Tests timing out

Increase timeout in `test_config.yaml`:
```yaml
timeout:
  request: 60  # Increase from 30 to 60 seconds
```

### False positives due to whitespace

Adjust normalization settings:
```yaml
normalize:
  strip_whitespace: true
  collapse_spaces: true
```

### Need to debug specific test

Use `--save-outputs` to archive HTML, then open in browser:
```bash
python tests/test_routes.py --route listed --save-outputs
firefox tests/outputs/listed_currently_listed_stocks_case_1_flask.html
firefox tests/outputs/listed_currently_listed_stocks_case_1_asp.html
```

## Integration with CI/CD

Future enhancement: Add to GitHub Actions to run on every commit

```yaml
# .github/workflows/test.yml (future)
name: Test Flask Routes
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Run tests
        run: |
          pip install -r requirements.txt
          pip install -r tests/requirements-test.txt
          python app.py &
          sleep 5
          python tests/test_routes.py
```

## Before Oct 31 Shutdown

**Important:** Run tests with `--save-outputs` to archive ASP outputs:

```bash
python tests/test_routes.py --save-outputs
```

This creates a permanent archive of the original ASP site's output for future reference and regression testing after the shutdown.

## Questions?

See `docs/modernization-roadmap.md` for the overall migration plan.
