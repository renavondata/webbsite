# Webb-site Ground Truth Testing System

This directory contains automated testing infrastructure to validate that all Flask routes match webb-site.com behavior by comparing against a permanent archive of ASP outputs captured before the October 31, 2025 server shutdown.

## Purpose

**Ground truth archive created on October 28, 2025** - 3 days before shutdown!

This system ensures all 124 Flask routes produce the same output as the original ASP site by:
1. **Capturing ground truth** - Automated archival of 156 ASP outputs before Oct 31 shutdown
2. **Post-shutdown testing** - Comparing Flask against cached ASP outputs forever
3. **Regression detection** - Catching any deviations from original behavior

## Files

- **`fetch_ground_truth.py`** - Automated script to capture ASP outputs from webb-site.com
- **`test_routes.py`** - Test suite comparing Flask vs ASP (or ground truth)
- **`test_config.yaml`** - 124 routes with 173 test cases
- **`ground_truth/`** - Archive of 164 HTML files from webb-site.com (captured Oct 28)
- **`CAPTURE_COMPLETE.md`** - Detailed capture results (156/173 success)
- **`PROGRESS_SUMMARY.md`** - Implementation progress and timeline
- **`TEST_RESULTS.md`** - Test results for 5 verified routes
- **`README.md`** - This file

## Installation

Test dependencies are managed with `uv` in the `test` group. They're already added to `pyproject.toml`:

```bash
# Dependencies already added via:
# uv add --group test requests pyyaml colorama beautifulsoup4 lxml
```

No additional installation needed - just use `uv run --group test` to run tests (see below).

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

## Quick Start

### ⚡ Before Oct 31, 2025 (Compare vs Live ASP)
```bash
# Test all routes against live webb-site.com
uv run python tests/test_routes.py

# Test single route
uv run python tests/test_routes.py --route "searchorgs"
```

### ⚡ After Oct 31, 2025 (Compare vs Ground Truth) **← USE THIS**
```bash
# Test against cached ground truth
uv run python tests/test_routes.py --ground-truth

# Test single route
uv run python tests/test_routes.py --ground-truth --route "searchorgs"

# Show verbose diffs
uv run python tests/test_routes.py --ground-truth --route "code" --verbose
```

## Usage

### Run All Tests

Test all 124 routes with 173 parameter combinations:

```bash
# After Oct 31: Use ground truth mode
uv run python tests/test_routes.py --ground-truth

# Before Oct 31: Compare vs live ASP
uv run python tests/test_routes.py
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
uv run --group test python tests/test_routes.py --route searchorgs

# Test only CCASS routes
uv run --group test python tests/test_routes.py --route ccass

# Test only articles
uv run --group test python tests/test_routes.py --route articles
```

### Verbose Mode

Show detailed HTML diffs for failures:

```bash
uv run --group test python tests/test_routes.py --verbose
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
uv run --group test python tests/test_routes.py --save-outputs
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
uv run --group test python tests/test_routes.py --config /path/to/custom_config.yaml
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
uv run --group test python tests/test_routes.py --route listed --save-outputs
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
uv run --group test python tests/test_routes.py --save-outputs
```

This creates a permanent archive of the original ASP site's output for future reference and regression testing after the shutdown.

## Questions?

See `docs/modernization-roadmap.md` for the overall migration plan.
