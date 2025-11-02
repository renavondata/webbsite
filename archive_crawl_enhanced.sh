#!/bin/bash
# Enhanced smart crawl - deeper levels and better coverage with 2023 dates
# This script performs an intelligent crawl of webb-site.com to archive pages before shutdown

BASE="https://webb-site.com"
OUT="archive/webb-site"
DELAY=0.3

mkdir -p "$OUT/dbpub" "$OUT/ccass" "$OUT/crawl"

echo "=== ENHANCED INTELLIGENT CRAWL ==="
echo "Strategy: Follow links from multiple entry points with deeper levels"
echo "Date constraint: Using 2023 dates where possible for testability"
echo ""

# Phase 1: General deep crawl from main directories
echo "Phase 1: Deep crawl from main directories (level 3)..."
wget \
  --mirror \
  --no-parent \
  --level=3 \
  --wait=0.3 \
  --random-wait \
  --reject-regex="(sort|page|offset)=[0-9]+|mysdi|mybigchanges|mystocks|mytotrets" \
  --accept-regex="(dbpub|ccass).*\.asp" \
  --convert-links \
  --adjust-extension \
  --page-requisites \
  --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36" \
  -P "$OUT/crawl1" \
  https://webb-site.com/dbpub/ \
  https://webb-site.com/ccass/ \
  2>&1 | tee archive_crawl_enhanced_p1.log

# Phase 2: Crawl from listed companies (lots of orgdata/officers/events links)
echo ""
echo "Phase 2: Following links from listed companies page..."
wget \
  --mirror \
  --no-parent \
  --level=2 \
  --wait=0.3 \
  --random-wait \
  --accept-regex="(orgdata|officers|advisers|events|positions|holders|quotes|code|ctr|str)\.asp\?" \
  --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36" \
  -P "$OUT/crawl2" \
  https://webb-site.com/dbpub/listed.asp \
  https://webb-site.com/dbpub/delisted.asp \
  2>&1 | tee archive_crawl_enhanced_p2.log

# Phase 3: Crawl from CCASS pages with stock codes
echo ""
echo "Phase 3: Following CCASS links with various stock codes..."
for sc in 1 5 700 2 3 388 941 1299; do
  echo "  Crawling CCASS for stock code $sc..."
  wget \
    --mirror \
    --no-parent \
    --level=1 \
    --wait=0.3 \
    --random-wait \
    --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36" \
    -P "$OUT/crawl3" \
    "https://webb-site.com/ccass/bigchanges.asp?sc=$sc" \
    "https://webb-site.com/ccass/choldings.asp?sc=$sc&d=2023-06-30" \
    "https://webb-site.com/ccass/cconc.asp?sc=$sc&d=2023-06-30" \
    "https://webb-site.com/ccass/brokhist.asp?sc=$sc" \
    2>&1 | tee -a archive_crawl_enhanced_p3.log
done

# Phase 4: Target missing high-priority routes with 2023 dates
echo ""
echo "Phase 4: Targeting missing routes with 2023 dates..."

# CCASS routes with dates
wget --wait=0.3 --random-wait -P "$OUT/direct" \
  "https://webb-site.com/ccass/bigchangesissue.asp?i=62&d=2023-06-30" \
  "https://webb-site.com/ccass/bigchangesissue.asp?i=5&d=2023-03-31" \
  "https://webb-site.com/ccass/bigchangespart.asp?part=C00001&d=2023-06-30" \
  "https://webb-site.com/ccass/cholder.asp?i=62&part=C00001&d=2023-06-30" \
  "https://webb-site.com/ccass/chldchg.asp?i=62&part=C00001" \
  "https://webb-site.com/ccass/brokhist.asp?sc=700" \
  "https://webb-site.com/ccass/ipstakes.asp?d=2023-06-30" \
  "https://webb-site.com/ccass/nciphist.asp?sc=700" \
  2>&1 | tee archive_crawl_enhanced_p4.log

# Company data with 2023 dates
wget --wait=0.3 --random-wait -P "$OUT/direct" \
  "https://webb-site.com/dbpub/advisers.asp?p=1&d=2023-06-01" \
  "https://webb-site.com/dbpub/officers.asp?p=1&d=2023-06-01" \
  "https://webb-site.com/dbpub/positions.asp?p=120937&d=2023-06-01" \
  "https://webb-site.com/dbpub/events.asp?sc=1&d1=2023-01-01&d2=2023-12-31" \
  "https://webb-site.com/dbpub/holders.asp?p=1&d=2023-06-30" \
  2>&1 | tee -a archive_crawl_enhanced_p4.log

# Statistical routes with 2023 data
wget --wait=0.3 --random-wait -P "$OUT/direct" \
  "https://webb-site.com/dbpub/incHKannual.asp?y=2023" \
  "https://webb-site.com/dbpub/incHKmonth.asp?y=2023" \
  "https://webb-site.com/dbpub/regHKannual.asp?y=2023" \
  "https://webb-site.com/dbpub/disHKcaltype.asp?y=2023" \
  "https://webb-site.com/dbpub/incHKcaltype.asp?y=2023" \
  "https://webb-site.com/dbpub/disFcal.asp?y=2023" \
  "https://webb-site.com/dbpub/incFcal.asp?y=2023" \
  2>&1 | tee -a archive_crawl_enhanced_p4.log

# Buybacks with 2023 data
wget --wait=0.3 --random-wait -P "$OUT/direct" \
  "https://webb-site.com/dbpub/buybacks.asp?i=62&f=d" \
  "https://webb-site.com/dbpub/buybacks.asp?sc=1&f=m" \
  "https://webb-site.com/dbpub/buybackstime.asp?d1=2023-01-01&d2=2023-12-31" \
  "https://webb-site.com/dbpub/buybacksum.asp?y=2023" \
  2>&1 | tee -a archive_crawl_enhanced_p4.log

# SFC routes
wget --wait=0.3 --random-wait -P "$OUT/direct" \
  "https://webb-site.com/dbpub/SFClicensees.asp" \
  "https://webb-site.com/dbpub/SFCchanges.asp?d=2023-06-01" \
  "https://webb-site.com/dbpub/SFClicount.asp" \
  "https://webb-site.com/dbpub/SFColicrec.asp?ce=AAA000" \
  2>&1 | tee -a archive_crawl_enhanced_p4.log

# Law Society routes
wget --wait=0.3 --random-wait -P "$OUT/direct" \
  "https://webb-site.com/dbpub/HKsols.asp" \
  "https://webb-site.com/dbpub/HKsolfirms.asp" \
  "https://webb-site.com/dbpub/HKsolsmoves.asp?y=2023&m=6" \
  "https://webb-site.com/dbpub/hksolemps.asp" \
  2>&1 | tee -a archive_crawl_enhanced_p4.log

# Director statistics
wget --wait=0.3 --random-wait -P "$OUT/direct" \
  "https://webb-site.com/dbpub/boardcomp.asp?d=2023-06-30" \
  "https://webb-site.com/dbpub/DirsHKAgeDistn.asp?d=2023-06-30" \
  "https://webb-site.com/dbpub/auditorchanges.asp?y=2023" \
  "https://webb-site.com/dbpub/latestdirsHK.asp" \
  "https://webb-site.com/dbpub/leagueDirsHK.asp" \
  2>&1 | tee -a archive_crawl_enhanced_p4.log

# Quotes and prices with 2023 dates
wget --wait=0.3 --random-wait -P "$OUT/direct" \
  "https://webb-site.com/dbpub/code.asp?sc=1&d=2023-06-30" \
  "https://webb-site.com/dbpub/ctr.asp?sc=1&d1=2023-01-01&d2=2023-12-31" \
  "https://webb-site.com/dbpub/str.asp?i=62&d1=2023-01-01&d2=2023-12-31" \
  2>&1 | tee -a archive_crawl_enhanced_p4.log

echo ""
echo "Crawl complete - organizing files..."

# Copy all discovered HTML files to main archive
for crawl_dir in crawl1 crawl2 crawl3 direct; do
  if [ -d "$OUT/$crawl_dir" ]; then
    find "$OUT/$crawl_dir" -type f \( -name "*.html" -o -name "*.asp*.html" \) | while read file; do
      # Extract route name and copy to appropriate directory
      if [[ $file == *"/ccass/"* ]]; then
        basename=$(basename "$file")
        cp "$file" "$OUT/ccass/$basename" 2>/dev/null || true
      elif [[ $file == *"/dbpub/"* ]]; then
        basename=$(basename "$file")
        cp "$file" "$OUT/dbpub/$basename" 2>/dev/null || true
      fi
    done
  fi
done

# Cleanup temporary crawl directories
rm -rf "$OUT/crawl1" "$OUT/crawl2" "$OUT/crawl3" "$OUT/direct"

# Count results
echo ""
echo "=== CRAWL RESULTS ==="
echo "dbpub files: $(find $OUT/dbpub -type f | wc -l)"
echo "ccass files: $(find $OUT/ccass -type f | wc -l)"
echo "Total files: $(find $OUT/{dbpub,ccass} -type f | wc -l)"
echo "Total size: $(du -sh $OUT | cut -f1)"
echo ""
echo "Unique routes:"
echo "  dbpub: $(find $OUT/dbpub/ -type f | sed 's/.*\///' | sed 's/[?_].*$//' | sed 's/\.asp.*//' | sed 's/\.html.*//' | sort -u | wc -l)"
echo "  ccass: $(find $OUT/ccass/ -type f | sed 's/.*\///' | sed 's/[?_].*$//' | sed 's/\.asp.*//' | sed 's/\.html.*//' | sort -u | wc -l)"
echo ""
echo "Archive saved to: $OUT/"
echo "Logs saved to: archive_crawl_enhanced_p*.log"
