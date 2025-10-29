#!/usr/bin/env python3
"""
Run all tests from test_config.yaml and generate comprehensive report.
Unlike test_routes.py which stops on first failure, this continues through all tests.
"""

import subprocess
import yaml
import sys
from pathlib import Path
from collections import defaultdict

def load_test_config():
    """Load test configuration"""
    config_path = Path(__file__).parent / "test_config.yaml"
    with open(config_path) as f:
        return yaml.safe_load(f)

def run_single_test(route_name):
    """Run test for a single route and return pass/fail status"""
    try:
        result = subprocess.run(
            ["uv", "run", "python", "tests/test_routes.py", "--ground-truth", "--route", route_name],
            capture_output=True,
            text=True,
            timeout=60
        )

        # Check for different failure types
        output = result.stdout + result.stderr

        if "HTTP 500" in output:
            return "HTTP_500"
        elif "TEST FAILED" in output:
            return "FAILED"
        elif "All 0 tests passed" in output or "All 0 test(s) passed" in output:
            return "NO_TESTS"
        elif "✓ All" in output and "tests passed!" in output and "100%" in output:
            return "PASSED"
        elif "All" in output and "test(s) passed" in output and "Summary" in output:
            # Check if it's a full pass with summary
            return "PASSED"
        elif "SKIPPED" in output:
            return "SKIPPED"
        else:
            # Check if there were any passes
            if "✓" in output:
                return "PARTIAL"
            return "UNKNOWN"

    except subprocess.TimeoutExpired:
        return "TIMEOUT"
    except Exception as e:
        return f"ERROR: {str(e)}"

def main():
    print("=" * 70)
    print("COMPREHENSIVE TEST SUITE RUNNER")
    print("=" * 70)
    print()

    config = load_test_config()
    routes = config.get("routes", [])

    results = {}
    categories = defaultdict(list)

    total = len(routes)
    for idx, route in enumerate(routes, 1):
        route_name = route.get("name", "Unknown")
        path = route.get("path", "")

        # Extract category from path
        if "/ccass/" in path:
            category = "CCASS"
        elif "/dbpub/" in path:
            category = "Database"
        else:
            category = "Other"

        print(f"[{idx}/{total}] Testing: {route_name}...", end=" ", flush=True)

        status = run_single_test(route_name)
        results[route_name] = status
        categories[category].append((route_name, status))

        # Color-code output
        if status == "PASSED":
            print("✓ PASSED")
        elif status == "NO_TESTS":
            print("⊘ NO TESTS")
        elif status == "SKIPPED":
            print("⊘ SKIPPED")
        elif status == "HTTP_500":
            print("✗ HTTP 500 ERROR")
        elif status == "FAILED":
            print("✗ FAILED")
        elif status == "PARTIAL":
            print("⚠ PARTIAL")
        elif status == "TIMEOUT":
            print("⏱ TIMEOUT")
        else:
            print(f"? {status}")

    print()
    print("=" * 70)
    print("SUMMARY BY STATUS")
    print("=" * 70)
    print()

    status_groups = defaultdict(list)
    for route_name, status in results.items():
        status_groups[status].append(route_name)

    for status in ["PASSED", "PARTIAL", "SKIPPED", "NO_TESTS", "FAILED", "HTTP_500", "TIMEOUT", "UNKNOWN"]:
        if status in status_groups:
            routes_list = status_groups[status]
            print(f"{status}: {len(routes_list)} routes")
            if len(routes_list) <= 10:
                for route in routes_list:
                    print(f"  - {route}")
            else:
                for route in routes_list[:5]:
                    print(f"  - {route}")
                print(f"  ... and {len(routes_list) - 5} more")
            print()

    print("=" * 70)
    print("SUMMARY BY CATEGORY")
    print("=" * 70)
    print()

    for category in sorted(categories.keys()):
        routes_list = categories[category]
        passed = sum(1 for _, s in routes_list if s == "PASSED")
        total_cat = len(routes_list)
        pct = (passed / total_cat * 100) if total_cat > 0 else 0
        print(f"{category}: {passed}/{total_cat} ({pct:.1f}%)")

    print()
    print("=" * 70)
    print("OVERALL STATISTICS")
    print("=" * 70)
    print()

    passed_count = len(status_groups.get("PASSED", []))
    total_count = len(results)
    pass_rate = (passed_count / total_count * 100) if total_count > 0 else 0

    print(f"Total routes tested: {total_count}")
    print(f"Passed: {passed_count} ({pass_rate:.1f}%)")
    print(f"Failed: {len(status_groups.get('FAILED', []))}")
    print(f"HTTP 500 errors: {len(status_groups.get('HTTP_500', []))}")
    print(f"Skipped (no ground truth): {len(status_groups.get('SKIPPED', []))}")
    print(f"No tests configured: {len(status_groups.get('NO_TESTS', []))}")
    print()

if __name__ == "__main__":
    main()
