#!/usr/bin/env python3
"""Quick test summary - run all tests without stopping on failure"""

import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).parent.parent))

from tests.test_routes import RouteComparator

# Run tests
comparator = RouteComparator(ground_truth_mode=True)

# Track results
passed = 0
failed = 0
failed_routes = []

for route in comparator.config['routes']:
    route_name = route['name']
    test_cases = route.get('params', [{}])
    
    for i, params in enumerate(test_cases):
        try:
            result = comparator.test_route(route_name, route['path'], params, i)
            if result:
                passed += 1
            else:
                failed += 1
                failed_routes.append(f"{route_name} (case {i+1})")
        except Exception as e:
            failed += 1
            failed_routes.append(f"{route_name} (case {i+1}): {str(e)[:50]}")

total = passed + failed
print(f"\n{'='*60}")
print(f"SUMMARY: {passed}/{total} tests passed ({100*passed//total if total else 0}%)")
print(f"{'='*60}")
print(f"\nPassed: {passed}")
print(f"Failed: {failed}")

if failed_routes:
    print(f"\nFailed routes:")
    for route in failed_routes[:20]:  # Show first 20
        print(f"  ✗ {route}")
    if len(failed_routes) > 20:
        print(f"  ... and {len(failed_routes)-20} more")
