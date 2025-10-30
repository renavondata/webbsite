#!/bin/bash
# Comprehensive archive - all remaining dbpub and ccass routes
# Archives routes without parameters first, then will add parameter variations

BASE="https://webb-site.com"
OUT="archive/webb-site"
DELAY=0.3  # Faster but still polite

save_page() {
    local url="$1"
    local output="$2"
    
    # Extract just the route name for display
    local route=$(basename "$output" .html)
    
    if curl -s -f -o "$output" "$url" 2>/dev/null; then
        local size=$(wc -c < "$output")
        if [ $size -gt 100 ]; then
            echo "✓ $route ($size bytes)"
        else
            echo "✗ $route (too small - $size bytes)"
            rm -f "$output"
        fi
    else
        echo "✗ $route (HTTP error)"
    fi
    sleep $DELAY
}

echo "=== COMPREHENSIVE ARCHIVE - All Routes ==="
echo "Starting: $(date)"
echo ""

# Read routes from file and archive each one
total=0
success=0
failed=0

while IFS= read -r route; do
    ((total++))
    
    # Skip routes we likely already have
    route_clean=$(echo "$route" | sed 's|^/||')
    
    # Determine directory (dbpub or ccass)
    if [[ $route == /ccass/* ]]; then
        dir="ccass"
        route_file=$(echo "$route" | sed 's|/ccass/||')
    else
        dir="dbpub"
        route_file=$(echo "$route" | sed 's|/||')
    fi
    
    output="$OUT/$dir/${route_file%.asp}.html"
    
    # Skip if already archived
    if [ -f "$output" ]; then
        echo "→ $route_file (already archived)"
        ((success++))
        continue
    fi
    
    # Archive the route
    url="$BASE$route"
    save_page "$url" "$output"
    
    if [ -f "$output" ]; then
        ((success++))
    else
        ((failed++))
    fi
    
done < routes_to_archive.txt

echo ""
echo "=== Archive Complete ==="
echo "Total routes: $total"
echo "Success: $success"
echo "Failed: $failed"
echo "Final count: $(find $OUT -name "*.html" | wc -l) files"
echo "Final size: $(du -sh $OUT | cut -f1)"
echo ""
