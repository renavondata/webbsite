#!/usr/bin/env python3
"""
Extract all parameters from archived filenames to build a database of test values
"""

import os
import re
from collections import defaultdict
from urllib.parse import urlparse, parse_qs

def extract_params_from_filename(filename):
    """Extract parameters from both query string and underscore formats"""
    params = {}

    # Handle query string format: file.asp?p=123&c=0.html
    if '?' in filename:
        parts = filename.split('?')
        if len(parts) == 2:
            query_part = parts[1].replace('.html', '')
            # Parse query string
            pairs = query_part.split('&')
            for pair in pairs:
                if '=' in pair:
                    key, value = pair.split('=', 1)
                    params[key] = value

    # Handle underscore format: file_p123_c0.html
    # Pattern: _key followed by value (no equals)
    underscore_pattern = r'_([a-z]+)([0-9A-Z\-]+(?:\.[0-9]+)?)'
    matches = re.findall(underscore_pattern, filename)
    for key, value in matches:
        # Clean up common suffixes
        value = value.rstrip('.html').rstrip('.asp')
        params[key] = value

    return params

def main():
    archive_dir = 'archive/webb-site'
    param_values = defaultdict(set)
    route_params = defaultdict(lambda: defaultdict(set))

    # Walk through archive
    for root, dirs, files in os.walk(archive_dir):
        for filename in files:
            if not filename.endswith('.html'):
                continue

            # Get route name
            route_name = filename.split('.asp')[0].split('_')[0].split('?')[0]

            # Extract parameters
            params = extract_params_from_filename(filename)

            for key, value in params.items():
                param_values[key].add(value)
                route_params[route_name][key].add(value)

    # Print summary
    print("=== Parameter Extraction Summary ===\n")

    for param, values in sorted(param_values.items()):
        print(f"{param}: {len(values)} unique values")
        # Show sample values
        sample = sorted(list(values))[:10]
        print(f"  Samples: {', '.join(sample)}")
        print()

    # Print high-priority routes with parameters
    print("\n=== High-Priority Routes with Parameters ===\n")
    priority_routes = ['advisers', 'officers', 'positions', 'holders', 'events',
                      'orgdata', 'natperson', 'choldings', 'bigchanges', 'cconc',
                      'brokhist', 'cholder']

    for route in priority_routes:
        if route in route_params:
            print(f"{route}:")
            for param, values in sorted(route_params[route].items()):
                sample = sorted(list(values))[:5]
                print(f"  {param}: {len(values)} values - {', '.join(sample)}")
            print()

    # Save full parameter database
    with open('archive_parameters.txt', 'w') as f:
        f.write("# Extracted Parameters from Archive\n\n")
        for param, values in sorted(param_values.items()):
            f.write(f"## {param} ({len(values)} values)\n")
            for value in sorted(values)[:50]:  # First 50 values
                f.write(f"  {value}\n")
            if len(values) > 50:
                f.write(f"  ... and {len(values) - 50} more\n")
            f.write("\n")

    print("\nFull parameter database saved to: archive_parameters.txt")

if __name__ == '__main__':
    main()
