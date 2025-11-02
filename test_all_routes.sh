#!/bin/bash
# Test all routes and generate summary

echo "Testing all routes against ground truth..."
echo ""

passed=0
failed=0
declare -a failed_routes

# Get list of unique routes from ground truth
routes=$(find tests/ground_truth -name "*.html" | sed 's/.*\///' | sed 's/___.*//g' | sort -u)

for route in $routes; do
    # Test this route
    result=$(cd /home/g/git/webbsite && timeout 10 uv run python tests/test_routes.py --ground-truth --route "$route" 2>&1)
    
    if echo "$result" | grep -q "All .* test(s) passed"; then
        count=$(echo "$result" | grep "All .* test(s) passed" | sed 's/.*All \([0-9]*\).*/\1/')
        passed=$((passed + count))
        echo "✓ $route ($count tests)"
    else
        fail_count=$(echo "$result" | grep -c "✗")
        failed=$((failed + fail_count))
        failed_routes+=("$route")
        echo "✗ $route ($fail_count failures)"
    fi
done

total=$((passed + failed))
percent=$((passed * 100 / total))

echo ""
echo "========================================"
echo "SUMMARY: $passed/$total tests passed ($percent%)"
echo "========================================"
echo ""
echo "Failed routes:"
for route in "${failed_routes[@]}"; do
    echo "  - $route"
done
