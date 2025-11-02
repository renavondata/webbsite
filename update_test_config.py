#!/usr/bin/env python3
"""
Update test_config.yaml with newly discovered routes and parameters from archive
"""

import json
import yaml
from pathlib import Path
from collections import defaultdict

def load_archive_inventory():
    """Load the archive inventory JSON"""
    with open('archive_inventory.json', 'r') as f:
        return json.load(f)

def load_test_config():
    """Load existing test config"""
    config_path = Path('tests/test_config.yaml')
    with open(config_path, 'r') as f:
        return yaml.safe_load(f)

def generate_test_cases(route_name, route_info, max_cases=5):
    """Generate test cases for a route based on archived parameters"""
    test_cases = []

    params = route_info['params']
    subdir = route_info['subdir']

    # Generate combinations
    if not params:
        # No parameters
        test_cases.append({})
    else:
        # Create test cases with different parameter combinations
        # Strategy: Use a few representative values for each parameter

        # For routes with many parameters, create focused combinations
        param_keys = list(params.keys())

        if 'p' in params and len(params['p']) > 0:
            # personID routes - use top 3 personIDs
            for p in sorted(params['p'])[:3]:
                test_cases.append({'p': int(p) if p.isdigit() else p})

        if 'sc' in params and len(params['sc']) > 0:
            # Stock code routes - use top 3 stock codes
            for sc in sorted(params['sc'])[:3]:
                test_cases.append({'sc': int(sc) if sc.isdigit() else sc})

        if 'i' in params and len(params['i']) > 0:
            # issueID routes - use top 3 issueIDs
            for i in sorted(params['i'])[:3]:
                test_cases.append({'i': int(i) if i.isdigit() else i})

        if 'd' in params and len(params['d']) > 0:
            # Date routes - use 2-3 dates from 2023
            dates_2023 = [d for d in params['d'] if '2023' in d]
            if dates_2023:
                for d in sorted(dates_2023)[:2]:
                    # Combine with other parameters if present
                    if 'i' in params:
                        test_cases.append({'i': int(sorted(params['i'])[0]), 'd': d})
                    elif 'sc' in params:
                        test_cases.append({'sc': int(sorted(params['sc'])[0]), 'd': d})
                    else:
                        test_cases.append({'d': d})

        if 'part' in params and len(params['part']) > 0:
            # CCASS participant routes
            for part in sorted(params['part'])[:2]:
                if 'i' in params and 'd' in params:
                    # Full combination for cholder
                    test_cases.append({
                        'i': int(sorted(params['i'])[0]),
                        'part': part,
                        'd': sorted([d for d in params['d'] if '2023' in d])[0] if [d for d in params['d'] if '2023' in d] else sorted(params['d'])[0]
                    })
                elif 'i' in params:
                    test_cases.append({'i': int(sorted(params['i'])[0]), 'part': part})
                else:
                    test_cases.append({'part': part})

        if 'y' in params and len(params['y']) > 0:
            # Year routes
            years = sorted(params['y'], reverse=True)
            for y in years[:2]:  # Use top 2 years
                test_cases.append({'y': int(y) if str(y).isdigit() else y})

        # If no test cases generated yet, create one with first value of each param
        if not test_cases:
            case = {}
            for key in param_keys[:3]:  # Limit to 3 parameters per test case
                values = sorted(params[key])
                if values:
                    val = values[0]
                    # Try to convert to int if numeric
                    if isinstance(val, str) and val.isdigit():
                        val = int(val)
                    case[key] = val
            if case:
                test_cases.append(case)

    # Limit number of test cases
    return test_cases[:max_cases]

def merge_routes(existing_config, new_routes):
    """Merge new routes into existing config, avoiding duplicates"""
    existing_routes_map = {route['name'].split(' - ')[0]: route for route in existing_config['routes']}

    added = 0
    updated = 0

    for route_name, route_info in sorted(new_routes.items()):
        # Skip routes with very few files
        if route_info['count'] < 2:
            continue

        # Skip routes that are already well-covered
        if route_name in existing_routes_map:
            existing_params = existing_routes_map[route_name].get('params', [])
            if len(existing_params) >= 3:
                continue  # Already has good coverage
            updated += 1
        else:
            added += 1

        # Generate test cases
        test_cases = generate_test_cases(route_name, route_info)

        if not test_cases:
            continue

        # Determine path
        subdir = route_info['subdir']
        path = f"/{subdir}/{route_name}.asp"

        # Create route entry
        route_entry = {
            'name': f"{route_name} - {route_info['count']} files archived",
            'path': path,
            'params': test_cases
        }

        # Add or update
        existing_routes_map[route_name] = route_entry

    # Rebuild routes list
    new_config = existing_config.copy()
    new_config['routes'] = list(existing_routes_map.values())

    return new_config, added, updated

def main():
    print("=== Updating test_config.yaml ===\n")

    # Load data
    print("Loading archive inventory...")
    inventory = load_archive_inventory()

    print("Loading existing test config...")
    config = load_test_config()

    print("Generating new test cases from archive...")
    new_config, added, updated = merge_routes(config, inventory['routes'])

    # Sort routes by name
    new_config['routes'].sort(key=lambda r: r['name'])

    # Save updated config
    output_path = Path('tests/test_config_updated.yaml')
    print(f"\nSaving updated config to: {output_path}")

    with open(output_path, 'w') as f:
        yaml.dump(new_config, f, default_flow_style=False, allow_unicode=True, sort_keys=False)

    print(f"\n=== Summary ===")
    print(f"Routes in original config: {len(config['routes'])}")
    print(f"Routes in updated config: {len(new_config['routes'])}")
    print(f"New routes added: {added}")
    print(f"Existing routes updated: {updated}")
    print(f"\nReview {output_path} and rename to test_config.yaml if satisfied")

    # Generate statistics about test coverage
    total_test_cases = sum(len(r['params']) for r in new_config['routes'])
    print(f"\nTotal test cases: {total_test_cases}")

    # Routes with 2023 dates
    routes_with_2023 = 0
    for route in new_config['routes']:
        for param_set in route['params']:
            if 'd' in param_set and '2023' in str(param_set['d']):
                routes_with_2023 += 1
                break

    print(f"Routes with 2023 dates: {routes_with_2023}")

if __name__ == '__main__':
    main()
