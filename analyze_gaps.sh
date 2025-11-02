#!/bin/bash
# Analyze gaps in archive coverage

echo "=== Gap Analysis: Missing Routes ==="
echo ""

# Get list of archived routes (base filenames without extensions/params)
find archive/webb-site/ -type f \( -name "*.html" -o -name "*.asp" \) 2>/dev/null | \
  sed 's/.*\///' | \
  sed 's/[?_].*$//' | \
  sed 's/\.asp.*//' | \
  sed 's/\.html.*//' | \
  sort -u > /tmp/archived_routes.txt

# Get list of target routes
cat routes_to_archive.txt | \
  grep -v "^$" | \
  sed 's/^\/*//' | \
  sed 's/<path:article_path>/articles/' | \
  sed 's/\.asp$//' | \
  sort -u > /tmp/target_routes.txt

# Find missing routes
echo "Missing routes (first 50):"
comm -23 /tmp/target_routes.txt /tmp/archived_routes.txt | head -50

echo ""
echo "=== Coverage Summary ==="
echo "Target routes: $(wc -l < /tmp/target_routes.txt)"
echo "Archived routes: $(wc -l < /tmp/archived_routes.txt)"
echo "Missing routes: $(comm -23 /tmp/target_routes.txt /tmp/archived_routes.txt | wc -l)"
echo "Coverage: $(echo "scale=1; 100 * $(comm -12 /tmp/target_routes.txt /tmp/archived_routes.txt | wc -l) / $(wc -l < /tmp/target_routes.txt)" | bc)%"
