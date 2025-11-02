#!/usr/bin/env python3
"""
Generate comprehensive inventory of archived routes
Shows coverage statistics, parameter examples, and identifies gaps
"""

import os
import re
from collections import defaultdict
from pathlib import Path
from datetime import datetime
import json

def extract_route_info(filename):
    """Extract route name and parameters from filename"""
    # Handle ASP query string format: file.asp?p=123&c=0.html
    if '?' in filename:
        parts = filename.split('?')
        route_name = parts[0].replace('.asp', '')
        query_part = parts[1].replace('.html', '')
        params = {}
        for pair in query_part.split('&'):
            if '=' in pair:
                k, v = pair.split('=', 1)
                params[k] = v
        return route_name, params

    # Handle underscore format: file_p123_c0.html
    base = filename.split('.')[0]
    parts = base.split('_')
    route_name = parts[0]

    params = {}
    for i in range(1, len(parts)):
        # Extract key and value from patterns like p123, sc5, d2023-06-30
        match = re.match(r'([a-z]+)(.+)', parts[i])
        if match:
            params[match.group(1)] = match.group(2)

    return route_name, params

def analyze_archive(archive_dir):
    """Analyze archive directory and generate statistics"""
    routes = defaultdict(lambda: {
        'count': 0,
        'params': defaultdict(set),
        'files': []
    })

    for subdir in ['dbpub', 'ccass']:
        subdir_path = Path(archive_dir) / subdir
        if not subdir_path.exists():
            continue

        for file in subdir_path.iterdir():
            if not file.is_file() or not file.suffix in ['.html', '.asp']:
                continue

            route_name, params = extract_route_info(file.name)

            routes[route_name]['count'] += 1
            routes[route_name]['files'].append(file.name)
            routes[route_name]['subdir'] = subdir

            for key, value in params.items():
                routes[route_name]['params'][key].add(value)

    return routes

def load_target_routes(routes_file):
    """Load target routes from routes_to_archive.txt"""
    target_routes = set()
    if Path(routes_file).exists():
        with open(routes_file, 'r') as f:
            for line in f:
                line = line.strip()
                if line and not line.startswith('#'):
                    # Remove leading slash and .asp extension
                    route = line.lstrip('/').replace('.asp', '')
                    # Handle special cases
                    if '<path:article_path>' in route:
                        route = 'articles'
                    target_routes.add(route)
    return target_routes

def generate_markdown_report(routes, target_routes, output_file):
    """Generate comprehensive markdown report"""
    with open(output_file, 'w') as f:
        f.write("# Webb-site.com Archive Inventory\n\n")
        f.write(f"Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n\n")

        # Summary statistics
        total_files = sum(r['count'] for r in routes.values())
        dbpub_count = sum(r['count'] for r in routes.values() if r.get('subdir') == 'dbpub')
        ccass_count = sum(r['count'] for r in routes.values() if r.get('subdir') == 'ccass')

        f.write("## Summary\n\n")
        f.write(f"- **Total archived files:** {total_files:,}\n")
        f.write(f"- **Unique routes archived:** {len(routes)}\n")
        f.write(f"- **dbpub files:** {dbpub_count:,}\n")
        f.write(f"- **ccass files:** {ccass_count:,}\n")
        f.write(f"- **Target routes (routes_to_archive.txt):** {len(target_routes)}\n")

        # Calculate coverage
        covered = set(routes.keys()) & target_routes
        missing = target_routes - set(routes.keys())
        f.write(f"- **Coverage:** {len(covered)}/{len(target_routes)} ({100*len(covered)/len(target_routes):.1f}%)\n")
        f.write(f"- **Missing routes:** {len(missing)}\n\n")

        # Coverage by category
        f.write("## Coverage by Directory\n\n")
        f.write("| Directory | Unique Routes | Total Files |\n")
        f.write("|-----------|---------------|-------------|\n")
        f.write(f"| dbpub | {sum(1 for r in routes.values() if r.get('subdir') == 'dbpub')} | {dbpub_count:,} |\n")
        f.write(f"| ccass | {sum(1 for r in routes.values() if r.get('subdir') == 'ccass')} | {ccass_count:,} |\n\n")

        # Top routes by file count
        f.write("## Top 20 Routes by File Count\n\n")
        f.write("| Route | Files | Parameters | Subdir |\n")
        f.write("|-------|-------|------------|--------|\n")
        sorted_routes = sorted(routes.items(), key=lambda x: x[1]['count'], reverse=True)[:20]
        for route_name, info in sorted_routes:
            params_str = ', '.join(sorted(info['params'].keys())) if info['params'] else 'none'
            f.write(f"| {route_name} | {info['count']} | {params_str} | {info.get('subdir', '?')} |\n")
        f.write("\n")

        # Missing high-priority routes
        priority_routes = {
            'ccass': ['bigchangesissue', 'cholder', 'chldchg', 'chistory', 'holdings',
                     'nciphist', 'ipstakes', 'custhist'],
            'dbpub': ['holders', 'SFClicensees', 'SFChistall', 'SFChistfirm', 'SFColicrec',
                     'HKsols', 'HKsolfirms', 'HKsolsmoves', 'authentic', 'code']
        }

        f.write("## Missing High-Priority Routes\n\n")
        for category, route_list in priority_routes.items():
            missing_priority = [r for r in route_list if r not in routes]
            if missing_priority:
                f.write(f"### {category}\n\n")
                for route in missing_priority:
                    status = "❌ MISSING" if route in missing else "⚠️ Not in target list"
                    f.write(f"- {route}: {status}\n")
                f.write("\n")

        # Parameter coverage
        f.write("## Parameter Coverage\n\n")
        f.write("Routes with parameter variations:\n\n")

        param_routes = [(name, info) for name, info in routes.items() if info['params']]
        param_routes.sort(key=lambda x: len(x[1]['params']), reverse=True)

        for route_name, info in param_routes[:30]:  # Top 30
            f.write(f"### {route_name} ({info['count']} files)\n\n")
            for param, values in sorted(info['params'].items()):
                sample = sorted(list(values))[:10]
                f.write(f"- **{param}** ({len(values)} values): {', '.join(sample)}")
                if len(values) > 10:
                    f.write(f" ... and {len(values)-10} more")
                f.write("\n")
            f.write("\n")

        # All missing routes
        if missing:
            f.write("## All Missing Target Routes\n\n")
            f.write(f"Total: {len(missing)} routes\n\n")
            for route in sorted(missing):
                f.write(f"- {route}\n")
            f.write("\n")

        # Date parameter analysis
        f.write("## Date Parameter Analysis\n\n")
        date_routes = {}
        for route_name, info in routes.items():
            if 'd' in info['params'] or 'y' in info['params']:
                dates = list(info['params'].get('d', set())) + \
                        [f"{y}-01-01" for y in info['params'].get('y', set())]
                date_routes[route_name] = dates

        if date_routes:
            f.write("Routes with date parameters:\n\n")
            for route_name in sorted(date_routes.keys())[:20]:
                dates = sorted(date_routes[route_name])[:5]
                f.write(f"- **{route_name}**: {', '.join(dates)}\n")
            f.write("\n")
        else:
            f.write("⚠️ **WARNING:** No date parameters found in archive!\n")
            f.write("All archived pages likely use current dates, which may not be testable with older data.\n\n")

        # Recommendations
        f.write("## Recommendations\n\n")
        f.write("### Immediate Actions\n\n")
        if missing:
            f.write(f"1. **Fetch missing routes:** {len(missing)} routes not yet archived\n")
        if not date_routes:
            f.write("2. **Add date parameters:** Re-fetch key routes with 2023 dates for testability\n")
        if ccass_count < 100:
            f.write("3. **Expand CCASS coverage:** Only {ccass_count} CCASS files archived\n")
        f.write("\n")

        f.write("### Priority Routes to Re-fetch with 2023 Dates\n\n")
        priority_dates = ['advisers', 'officers', 'positions', 'holders', 'events',
                          'choldings', 'bigchanges', 'cconc', 'code', 'ctr', 'str',
                          'boardcomp', 'DirsHKAgeDistn']
        for route in priority_dates:
            if route in routes and 'd' not in routes[route]['params']:
                f.write(f"- {route}: Has {routes[route]['count']} files but no date parameters\n")
        f.write("\n")

def main():
    archive_dir = "archive/webb-site"
    routes_file = "routes_to_archive.txt"
    output_file = "ARCHIVE_INVENTORY.md"

    print("=== Generating Archive Inventory ===\n")

    # Analyze archive
    print("Analyzing archive...")
    routes = analyze_archive(archive_dir)

    # Load target routes
    print("Loading target routes...")
    target_routes = load_target_routes(routes_file)

    # Generate report
    print(f"Generating report: {output_file}")
    generate_markdown_report(routes, target_routes, output_file)

    # Print summary to console
    print("\n=== Summary ===")
    total_files = sum(r['count'] for r in routes.values())
    print(f"Total files: {total_files:,}")
    print(f"Unique routes: {len(routes)}")
    print(f"Target routes: {len(target_routes)}")
    covered = set(routes.keys()) & target_routes
    print(f"Coverage: {len(covered)}/{len(target_routes)} ({100*len(covered)/len(target_routes):.1f}%)")
    print(f"\nReport saved to: {output_file}")

    # Also save JSON for programmatic access
    json_output = {
        'generated': datetime.now().isoformat(),
        'total_files': total_files,
        'unique_routes': len(routes),
        'routes': {
            name: {
                'count': info['count'],
                'params': {k: list(v) for k, v in info['params'].items()},
                'subdir': info.get('subdir', 'unknown')
            }
            for name, info in routes.items()
        }
    }

    json_file = "archive_inventory.json"
    with open(json_file, 'w') as f:
        json.dump(json_output, f, indent=2)
    print(f"JSON data saved to: {json_file}")

if __name__ == '__main__':
    main()
