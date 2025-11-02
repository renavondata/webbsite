# Webb-site.com Archive Usage Guide

## Overview

This guide explains how to use the archived webb-site.com data for Flask development, testing, and validation after the October 31, 2025 shutdown.

## Archive Contents

### Directory Structure

```
archive/webb-site/
├── dbpub/          # Database public pages (700+ files)
├── ccass/          # CCASS pages (60+ files)
├── README.md       # Archive documentation
└── ...
```

### What's Archived

- **HTML Pages:** Complete rendered HTML from webb-site.com ASP server
- **With Parameters:** Routes captured with various personIDs, issueIDs, dates, stock codes
- **2023 Dates:** Many routes captured with 2023 dates for testability
- **Coverage:** 118/234 target routes (50.4%)

## Using the Archive

### 1. For Flask Development

**Compare Flask output against ASP ground truth:**

```bash
# Test all routes against ground truth
cd /home/g/Sync/git/webbsite
python tests/test_routes.py --ground-truth

# Test specific route
python tests/test_routes.py --route advisers --ground-truth

# Verbose diff output
python tests/test_routes.py --route events --ground-truth --verbose
```

**Run comprehensive test suite:**

```bash
# Test all configured routes
python tests/run_all_tests.py

# Results show PASSED/FAILED/HTTP_500/SKIPPED
```

### 2. For Parameter Discovery

**Find what parameters a route accepts:**

```bash
# Look at archived filenames
ls archive/webb-site/dbpub/advisers*
# Shows: advisers_p120937.html, advisers_sc1299.html, etc.

# Extract all parameters
python extract_parameters.py
# Generates: archive_parameters.txt with all discovered values
```

**Use archive inventory:**

```bash
# View detailed parameter coverage
cat ARCHIVE_INVENTORY.md

# Or use JSON programmatically
python -c "import json; print(json.load(open('archive_inventory.json'))['routes']['advisers'])"
```

### 3. For Test Case Generation

**Update test configuration with archive data:**

```bash
# Generate new test_config.yaml with discovered parameters
python update_test_config.py

# Review output
cat tests/test_config_updated.yaml

# Apply if satisfied
mv tests/test_config_updated.yaml tests/test_config.yaml
```

### 4. For Visual Comparison

**View archived HTML directly:**

```bash
# Open in browser
firefox archive/webb-site/dbpub/listed.html

# Or compare side-by-side with Flask
diff <(cat archive/webb-site/dbpub/listed.html) <(curl http://localhost:5000/dbpub/listed.asp)
```

## Archive Inventory

### Coverage Statistics

Run to see current coverage:

```bash
python generate_inventory.py
cat ARCHIVE_INVENTORY.md
```

### Key Metrics

- **Total Files:** ~767+
- **Unique Routes:** 123
- **Routes with 2023 Dates:** Growing as fetch completes
- **Top Archived Routes:** offpay (451), orgdata (32), str (24)

### Coverage by Category

| Category | Routes | Files |
|----------|--------|-------|
| dbpub | 112 | 707+ |
| ccass | 11 | 60+ |

## Date Handling

### Why 2023 Dates?

The PostgreSQL database is not as current as webb-site.com's MySQL database. Using 2023 dates ensures:

1. **Testability:** Can reproduce results with available data
2. **Stability:** Historical data doesn't change
3. **Consistency:** All tests use same date range

### Routes with 2023 Dates

High-priority routes archived with 2023 dates:

- **CCASS:** bigchangesissue, bigchangespart, cholder
- **Company Data:** advisers, officers, positions (with 2023-06-30)
- **Statistical:** incHKannual, regHKannual, auditorchanges (year=2023)
- **Events:** buybackstime, events (ranges in 2023)

### Using Different Dates

To test with different dates:

```python
# In test_config.yaml, update test_date
test_date: "2023-06-30"

# Or per-route
params:
  - d: "2023-03-31"  # Q1 2023
  - d: "2023-06-30"  # Q2 2023
  - d: "2023-09-30"  # Q3 2023
  - d: "2023-12-31"  # Q4 2023
```

## Common Workflows

### Workflow 1: Validate New Route Implementation

```bash
# 1. Implement Flask route
vim webbsite/routes/dbpub.py

# 2. Check if ground truth exists
ls tests/ground_truth/dbpub/newroute*

# 3. If not, fetch from archive
cp archive/webb-site/dbpub/newroute*.html tests/ground_truth/dbpub/

# 4. Add to test config
vim tests/test_config.yaml

# 5. Run test
python tests/test_routes.py --route newroute --ground-truth

# 6. Fix differences and repeat until passing
```

### Workflow 2: Find Real-World Test Data

```bash
# 1. Find personIDs used on live site
cat archive_parameters.txt | grep -A 10 "^## p"

# 2. Check which routes use those personIDs
grep -l "p=120937" archive/webb-site/dbpub/*.html

# 3. Use in test cases
# Example: advisers.asp?p=120937&d=2023-06-01
```

### Workflow 3: Update Archive After Data Refresh

```bash
# When PostgreSQL data is updated to 2024+...

# 1. Update dates in test_config.yaml
sed -i 's/2023-/2024-/g' tests/test_config.yaml

# 2. Re-fetch affected routes (if webb-site.com still accessible)
python tests/fetch_ground_truth.py --route advisers

# 3. Or manually fetch
wget "https://webb-site.com/dbpub/advisers.asp?p=1&d=2024-06-30" -O tests/ground_truth/dbpub/advisers_2024.html

# 4. Update metadata
# Edit tests/ground_truth/metadata.json
```

## Archive Scripts

### Available Tools

| Script | Purpose |
|--------|---------|
| `generate_inventory.py` | Generate coverage report |
| `extract_parameters.py` | Extract all parameters from filenames |
| `update_test_config.py` | Update test config with archive data |
| `fetch_ground_truth.py` | Fetch specific routes (while site live) |
| `archive_crawl_enhanced.sh` | Intelligent crawl with link following |
| `fetch_comprehensive.py` | Systematic fetch with 2023 dates |

### Running Scripts

```bash
# Generate fresh inventory
python generate_inventory.py

# Extract parameters
python extract_parameters.py
cat archive_parameters.txt

# Update test configuration
python update_test_config.py
cat tests/test_config_updated.yaml
```

## Troubleshooting

### Test Failures

**Problem:** Test fails with HTML differences

**Solution:**
```bash
# View detailed diff
python tests/test_routes.py --route ROUTE --ground-truth --verbose

# Check if it's a minor whitespace issue
# Check if it's a database lag issue (row counts differ by 1-2)
# Check if it's a date issue (using current vs 2023 dates)
```

**Problem:** Ground truth file not found

**Solution:**
```bash
# Check if archived
ls archive/webb-site/**/ROUTE*

# Copy from archive
cp archive/webb-site/dbpub/ROUTE*.html tests/ground_truth/dbpub/

# Or fetch manually
wget "https://webb-site.com/dbpub/ROUTE.asp" -O tests/ground_truth/dbpub/ROUTE.html
```

### Missing Routes

**Problem:** Route not in archive

**Solution:**
```bash
# Check if it's a low-priority route
cat routes_to_archive.txt | grep ROUTE

# Fetch manually before shutdown
wget "https://webb-site.com/dbpub/ROUTE.asp?PARAMS" -O archive/webb-site/dbpub/ROUTE_PARAMS.html

# Or mark as deferred
echo "Route deferred for post-launch" >> DEFERRED_ROUTES.txt
```

### Date Mismatches

**Problem:** Archive has current dates, can't reproduce with 2023 data

**Solution:**
```bash
# Re-fetch with 2023 date (before shutdown)
wget "https://webb-site.com/dbpub/ROUTE.asp?d=2023-06-30" -O tests/ground_truth/dbpub/ROUTE_2023.html

# Or mark test as reference-only
# In test_config.yaml:
# - name: "ROUTE - reference only, dates mismatch"
#   skip: true
```

## Best Practices

### For Testing

1. **Always use ground truth mode after Oct 31**
   ```bash
   python tests/test_routes.py --ground-truth
   ```

2. **Use 2023 dates for reproducibility**
   ```yaml
   params:
     - d: "2023-06-30"  # Not 2024
   ```

3. **Accept minor row count differences**
   - Database sync lag is normal
   - Threshold: ≤2 rows OR ≤1% difference

### For Development

1. **Check archive before implementing**
   - See what parameters the ASP version accepts
   - See what the output format looks like

2. **Use real parameters from archive**
   - Don't guess personIDs
   - Use values from archive_parameters.txt

3. **Test with multiple parameter combinations**
   - Don't just test with p=1
   - Use diverse values from archive

### For Documentation

1. **Update inventory regularly**
   ```bash
   python generate_inventory.py
   ```

2. **Document deferred routes**
   ```bash
   echo "Route X - requires login (deferred)" >> DEFERRED_ROUTES.txt
   ```

3. **Track coverage improvements**
   ```bash
   # Before
   python generate_inventory.py > coverage_before.txt

   # After changes
   python generate_inventory.py > coverage_after.txt

   # Compare
   diff coverage_before.txt coverage_after.txt
   ```

## Post-Shutdown Strategy

### What Changes After Oct 31

1. **No more live ASP comparisons**
   - Must use `--ground-truth` flag
   - Can't fetch new routes

2. **Archive becomes source of truth**
   - All validation against archived HTML
   - Can't verify parameter behavior

3. **Date constraint remains**
   - Still use 2023 dates
   - Until PostgreSQL data updated

### Long-Term Plan

1. **Phase 1 (Nov 2025):** Use archive for validation
2. **Phase 2 (Dec 2025+):** Update PostgreSQL with 2024 data
3. **Phase 3 (2026+):** Use Flask as source of truth

## Additional Resources

- **CLAUDE.md:** Project overview and constraints
- **ARCHIVE_INVENTORY.md:** Detailed coverage report
- **archive_parameters.txt:** All extracted parameters
- **tests/test_config.yaml:** Test configuration
- **tests/ground_truth/README.md:** Ground truth documentation

## Questions?

For issues or questions:
1. Check ARCHIVE_INVENTORY.md for coverage gaps
2. Check archive_parameters.txt for parameter values
3. Review test output with `--verbose` flag
4. Check existing archived files for examples
