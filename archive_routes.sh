#!/bin/bash
# Archive webb-site.com/dbpub/ and /ccass/ ASP pages
# Focus on breadth: capture many unique .asp files with sample parameters

set -e

BASE="https://webb-site.com"
OUT="archive/webb-site"
DELAY=0.5  # Be polite to the server

mkdir -p "$OUT/dbpub" "$OUT/ccass" "$OUT/ground_truth"

echo "Starting archive of webb-site.com..."
echo "Output directory: $OUT"
echo ""

# Function to save a page with retry
save_page() {
    local url="$1"
    local output="$2"
    local desc="$3"

    echo "Archiving: $desc"
    echo "  URL: $url"
    echo "  Output: $output"

    if curl -s -f -o "$output" "$url"; then
        echo "  ✓ Success ($(wc -c < "$output") bytes)"
    else
        echo "  ✗ Failed (HTTP error)"
    fi

    sleep $DELAY
}

echo "=== PHASE 1: Core Search & Browse Pages ==="

# Search pages
save_page "$BASE/dbpub/searchorgs.asp" "$OUT/dbpub/searchorgs.html" "Search organizations"
save_page "$BASE/dbpub/searchpeople.asp" "$OUT/dbpub/searchpeople.html" "Search people"

# Browse pages
save_page "$BASE/dbpub/" "$OUT/dbpub/index.html" "Database home"
save_page "$BASE/dbpub/listed.asp" "$OUT/dbpub/listed.html" "Listed companies"
save_page "$BASE/dbpub/delisted.asp" "$OUT/dbpub/delisted.html" "Delisted companies"

echo ""
echo "=== PHASE 2: Stock Data Routes (5 sample stocks) ==="

for sc in 1 5 700 1299 9988; do
    echo "Stock code: $sc"
    save_page "$BASE/dbpub/quotes.asp?sc=$sc" "$OUT/dbpub/quotes_sc${sc}.html" "Quotes for $sc"
    save_page "$BASE/dbpub/events.asp?sc=$sc" "$OUT/dbpub/events_sc${sc}.html" "Events for $sc"
    save_page "$BASE/dbpub/orgdata.asp?sc=$sc" "$OUT/dbpub/orgdata_sc${sc}.html" "Company data for $sc"
    save_page "$BASE/dbpub/officers.asp?sc=$sc" "$OUT/dbpub/officers_sc${sc}.html" "Officers for $sc"
    save_page "$BASE/dbpub/advisers.asp?sc=$sc" "$OUT/dbpub/advisers_sc${sc}.html" "Advisers for $sc"
    save_page "$BASE/dbpub/positions.asp?sc=$sc" "$OUT/dbpub/positions_sc${sc}.html" "Positions for $sc"
done

echo ""
echo "=== PHASE 3: Company ID Routes (5 sample companies) ==="

for p in 12345 31946 85217 120937 156890; do
    echo "Person ID: $p"
    save_page "$BASE/dbpub/orgdata.asp?p=$p" "$OUT/dbpub/orgdata_p${p}.html" "Org data for $p"
    save_page "$BASE/dbpub/officers.asp?p=$p" "$OUT/dbpub/officers_p${p}.html" "Officers for $p"
    save_page "$BASE/dbpub/advisers.asp?p=$p" "$OUT/dbpub/advisers_p${p}.html" "Advisers for $p"
done

echo ""
echo "=== PHASE 4: CCASS Routes ==="

# CCASS home
save_page "$BASE/ccass/" "$OUT/ccass/index.html" "CCASS home"

for sc in 1 5 700; do
    echo "CCASS for stock: $sc"
    save_page "$BASE/ccass/choldings.asp?sc=$sc" "$OUT/ccass/choldings_sc${sc}.html" "CCASS holdings for $sc"
    save_page "$BASE/ccass/bigchanges.asp?sc=$sc" "$OUT/ccass/bigchanges_sc${sc}.html" "Big changes for $sc"
    save_page "$BASE/ccass/cconchist.asp?sc=$sc" "$OUT/ccass/cconchist_sc${sc}.html" "Concentration history for $sc"
    save_page "$BASE/ccass/ctothist.asp?sc=$sc" "$OUT/ccass/ctothist_sc${sc}.html" "Total holdings history for $sc"
done

# CCASS participant pages
save_page "$BASE/ccass/cparticipants.asp" "$OUT/ccass/cparticipants.html" "CCASS participants"
save_page "$BASE/ccass/bigchangespart.asp" "$OUT/ccass/bigchangespart.html" "Big changes by participant"

echo ""
echo "=== PHASE 5: Statistical Routes ==="

# Incorporation/dissolution stats
save_page "$BASE/dbpub/incHKmonth.asp" "$OUT/dbpub/incHKmonth.html" "HK incorporations by month"
save_page "$BASE/dbpub/incHKannual.asp" "$OUT/dbpub/incHKannual.html" "HK incorporations annual"
save_page "$BASE/dbpub/disHKcaltype.asp" "$OUT/dbpub/disHKcaltype.html" "HK dissolutions by type"
save_page "$BASE/dbpub/oldestHKcos.asp" "$OUT/dbpub/oldestHKcos.html" "Oldest HK companies"
save_page "$BASE/dbpub/cosperdomHK.asp" "$OUT/dbpub/cosperdomHK.html" "Companies per domicile"

# Director stats
save_page "$BASE/dbpub/boardcomp.asp" "$OUT/dbpub/boardcomp.html" "Board composition"
save_page "$BASE/dbpub/dirsHKPerPerson.asp" "$OUT/dbpub/dirsHKPerPerson.html" "Directorships per person"
save_page "$BASE/dbpub/auditorchanges.asp" "$OUT/dbpub/auditorchanges.html" "Auditor changes"

# Buybacks
save_page "$BASE/dbpub/buybacks.asp" "$OUT/dbpub/buybacks.html" "Share buybacks"
save_page "$BASE/dbpub/buybackstime.asp" "$OUT/dbpub/buybackstime.html" "Buybacks by time"

echo ""
echo "=== PHASE 6: Additional Routes ==="

# Market data
save_page "$BASE/dbpub/prices.asp" "$OUT/dbpub/prices.html" "Stock prices"
save_page "$BASE/dbpub/mcap.asp" "$OUT/dbpub/mcap.html" "Market capitalization"

# SFC & Law Society
save_page "$BASE/dbpub/sfclicensees.asp" "$OUT/dbpub/sfclicensees.html" "SFC licensees"
save_page "$BASE/dbpub/lawfirms.asp" "$OUT/dbpub/lawfirms.html" "Law firms"
save_page "$BASE/dbpub/solicitors.asp" "$OUT/dbpub/solicitors.html" "Solicitors"

# Transport
save_page "$BASE/dbpub/veengine.asp" "$OUT/dbpub/veengine.html" "Vehicle engines"
save_page "$BASE/dbpub/vefuel.asp" "$OUT/dbpub/vefuel.html" "Vehicle fuel types"

echo ""
echo "=== Archive Complete ==="
echo ""
echo "Summary:"
echo "  Total files: $(find $OUT -name "*.html" | wc -l)"
echo "  Size: $(du -sh $OUT | cut -f1)"
echo ""
echo "Next steps:"
echo "  1. Review archive: ls -lh $OUT/dbpub/ $OUT/ccass/"
echo "  2. Create inventory: find $OUT -name '*.html' > archive_inventory.txt"
echo "  3. Commit to git"
