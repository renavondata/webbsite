#!/bin/bash
# Smart crawl - follow links from working pages to discover parameters

BASE="https://webb-site.com"
OUT="archive/webb-site"
DELAY=0.3

echo "=== INTELLIGENT CRAWL - Follow Links ==="
echo "Starting from home pages and following links..."
echo ""

# Use wget to crawl with link following
# Start from main indexes and let it discover parameters
wget \
  --mirror \
  --no-parent \
  --level=2 \
  --wait=0.3 \
  --random-wait \
  --reject-regex="(sort|page|offset)=[0-9]+" \
  --accept-regex="(dbpub|ccass).*\.asp" \
  --convert-links \
  --adjust-extension \
  --page-requisites \
  --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36" \
  -P "$OUT/crawl" \
  https://webb-site.com/dbpub/ \
  https://webb-site.com/ccass/ \
  2>&1 | tee archive_crawl_wget.log

# Also try following from listed companies page (lots of links)
wget \
  --mirror \
  --no-parent \
  --level=1 \
  --wait=0.3 \
  --random-wait \
  --accept-regex="(orgdata|officers|events|quotes)\.asp\?[sp]c?=" \
  --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36" \
  -P "$OUT/crawl" \
  https://webb-site.com/dbpub/listed.asp \
  2>&1 | tee -a archive_crawl_wget.log

echo ""
echo "Crawl complete - organizing files..."

# Copy discovered HTML files to main archive
find "$OUT/crawl" -name "*.html" -o -name "*.asp*.html" | while read file; do
    # Extract route name and copy to appropriate directory
    if [[ $file == *"/ccass/"* ]]; then
        cp "$file" "$OUT/ccass/" 2>/dev/null || true
    elif [[ $file == *"/dbpub/"* ]]; then
        cp "$file" "$OUT/dbpub/" 2>/dev/null || true
    fi
done

# Count results
echo "Total HTML files discovered: $(find $OUT/crawl -name "*.html" -o -name "*.asp*.html" | wc -l)"
echo "Unique files in archive: $(find $OUT/{dbpub,ccass} -name "*.html" | wc -l)"
echo "Total size: $(du -sh $OUT | cut -f1)"
