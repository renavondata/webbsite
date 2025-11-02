#!/usr/bin/env python3
"""
Parse HTML forms from ASP routes to discover parameter specifications

This tool reads archived HTML files and extracts form information to determine:
- Which parameters each route accepts
- Parameter types (text, date, number, select, etc.)
- Required vs optional parameters
- Valid values (from dropdowns)
- Date validation (historical vs current-only)
- Default values

Usage:
    python parse_route_forms.py                  # Parse all archived routes
    python parse_route_forms.py --route holdings # Parse specific route
    python parse_route_forms.py --fetch          # Fetch missing base routes first
"""

import argparse
import json
import re
from pathlib import Path
from typing import Dict, List, Optional
from bs4 import BeautifulSoup
import requests

class RouteFormParser:
    """Parse HTML forms to extract parameter specifications"""

    def __init__(self, archive_dir="archive/webb-site", asp_base="https://webb-site.com"):
        self.archive_dir = Path(archive_dir)
        self.asp_base = asp_base
        self.specifications = {}

    def fetch_base_route(self, route_path: str) -> str:
        """Fetch base route HTML from webb-site.com"""
        url = f"{self.asp_base}{route_path}"
        print(f"  Fetching {url}...")

        try:
            response = requests.get(url, timeout=30)
            response.raise_for_status()
            return response.text
        except Exception as e:
            print(f"  ✗ Error fetching {url}: {e}")
            return None

    def find_base_route_file(self, route_name: str, subdir: str) -> Optional[Path]:
        """Find archived HTML file for base route (without parameters)"""
        route_dir = self.archive_dir / subdir

        if not route_dir.exists():
            return None

        # Look for files without parameter patterns
        candidates = []

        for file in route_dir.glob(f"{route_name}*.html"):
            filename = file.name

            # Skip files with obvious parameters
            if any(pattern in filename for pattern in ['_p', '_i', '_sc', '_d', '_part', '?']):
                continue

            # Prefer exact match
            if filename == f"{route_name}.html" or filename == f"{route_name}.asp.html":
                return file

            candidates.append(file)

        # Return first candidate if found
        return candidates[0] if candidates else None

    def parse_input_field(self, input_tag) -> Dict:
        """Parse an <input> tag to extract parameter specification"""
        spec = {
            'type': input_tag.get('type', 'text'),
            'name': input_tag.get('name'),
            'required': input_tag.has_attr('required'),
            'value': input_tag.get('value', ''),
        }

        # Extract validation attributes
        if input_tag.has_attr('min'):
            spec['min'] = input_tag.get('min')
        if input_tag.has_attr('max'):
            spec['max'] = input_tag.get('max')
        if input_tag.has_attr('pattern'):
            spec['pattern'] = input_tag.get('pattern')
        if input_tag.has_attr('placeholder'):
            spec['placeholder'] = input_tag.get('placeholder')
        if input_tag.has_attr('maxlength'):
            spec['maxlength'] = int(input_tag.get('maxlength'))

        # Try to find associated label
        label = None
        if input_tag.has_attr('id'):
            label_tag = input_tag.find_previous('label', {'for': input_tag['id']})
            if label_tag:
                label = label_tag.get_text(strip=True)
        if not label:
            # Look for preceding label
            label_tag = input_tag.find_previous('label')
            if label_tag:
                label = label_tag.get_text(strip=True)
        if label:
            spec['label'] = label

        return spec

    def parse_select_field(self, select_tag) -> Dict:
        """Parse a <select> tag to extract parameter specification"""
        spec = {
            'type': 'select',
            'name': select_tag.get('name'),
            'required': select_tag.has_attr('required'),
            'options': []
        }

        # Extract options
        for option in select_tag.find_all('option'):
            value = option.get('value', '')
            text = option.get_text(strip=True)
            selected = option.has_attr('selected')

            spec['options'].append({
                'value': value,
                'text': text,
                'selected': selected
            })

        # Try to find associated label
        label = None
        if select_tag.has_attr('id'):
            label_tag = select_tag.find_previous('label', {'for': select_tag['id']})
            if label_tag:
                label = label_tag.get_text(strip=True)
        if not label:
            label_tag = select_tag.find_previous('label')
            if label_tag:
                label = label_tag.get_text(strip=True)
        if label:
            spec['label'] = label

        return spec

    def parse_textarea_field(self, textarea_tag) -> Dict:
        """Parse a <textarea> tag to extract parameter specification"""
        spec = {
            'type': 'textarea',
            'name': textarea_tag.get('name'),
            'required': textarea_tag.has_attr('required'),
            'value': textarea_tag.get_text(strip=True)
        }

        if textarea_tag.has_attr('rows'):
            spec['rows'] = int(textarea_tag.get('rows'))
        if textarea_tag.has_attr('cols'):
            spec['cols'] = int(textarea_tag.get('cols'))
        if textarea_tag.has_attr('maxlength'):
            spec['maxlength'] = int(textarea_tag.get('maxlength'))

        # Try to find associated label
        label = None
        if textarea_tag.has_attr('id'):
            label_tag = textarea_tag.find_previous('label', {'for': textarea_tag['id']})
            if label_tag:
                label = label_tag.get_text(strip=True)
        if not label:
            label_tag = textarea_tag.find_previous('label')
            if label_tag:
                label = label_tag.get_text(strip=True)
        if label:
            spec['label'] = label

        return spec

    def analyze_date_support(self, params: Dict) -> Dict:
        """Analyze date parameter support"""
        date_support = {
            'has_date_param': False,
            'historical_dates_ok': False,
            'date_param_name': None,
            'date_constraints': {}
        }

        for param_name, param_spec in params.items():
            if param_spec.get('type') == 'date':
                date_support['has_date_param'] = True
                date_support['date_param_name'] = param_name

                # Check for date constraints
                if 'max' in param_spec:
                    date_support['date_constraints']['max'] = param_spec['max']
                    # If max is not set or is far in past, historical dates OK
                    if not param_spec['max'] or param_spec['max'] < '2024-01-01':
                        date_support['historical_dates_ok'] = True
                else:
                    # No max constraint = historical dates OK
                    date_support['historical_dates_ok'] = True

                if 'min' in param_spec:
                    date_support['date_constraints']['min'] = param_spec['min']

        return date_support

    def parse_form(self, html: str, route_name: str = None) -> Dict:
        """Parse HTML to extract form parameter specifications"""
        soup = BeautifulSoup(html, 'html.parser')

        # Find all forms
        forms = soup.find_all('form')

        if not forms:
            return {'has_form': False, 'params': {}}

        # Filter out navigation/search forms and find the main route form
        candidate_forms = []

        for form in forms:
            action = form.get('action', '')

            # Skip Google search forms
            if 'google.com' in action:
                continue

            # Skip external forms
            if action.startswith('http') and 'webb-site.com' not in action:
                continue

            # Skip common navigation forms
            if any(nav in action for nav in ['/webbmail/', '/dbpub/searchorgs', '/dbpub/searchpeople', '/dbpub/orgdata']):
                continue

            candidate_forms.append((form, action))

        # Prioritize forms:
        # 1. Forms whose action matches the route name
        # 2. Forms with relative paths (no action or same-directory action)
        # 3. Any remaining form
        main_form = None

        if route_name:
            for form, action in candidate_forms:
                if route_name in action:
                    main_form = form
                    break

        if not main_form:
            for form, action in candidate_forms:
                if not action or (not action.startswith('http') and not action.startswith('/')):
                    main_form = form
                    break

        if not main_form and candidate_forms:
            main_form = candidate_forms[0][0]

        # If no suitable form found after filtering, use first form
        if not main_form:
            main_form = forms[0] if forms else None

        if not main_form:
            return {'has_form': False, 'params': {}}

        form = main_form

        params = {}

        # Parse input fields
        for input_tag in form.find_all('input'):
            # Skip submit buttons, reset, etc
            input_type = input_tag.get('type', 'text').lower()
            if input_type in ['submit', 'button', 'reset', 'image']:
                continue

            # Skip hidden fields (usually view state, etc.)
            if input_type == 'hidden':
                continue

            param_name = input_tag.get('name')
            if param_name:
                params[param_name] = self.parse_input_field(input_tag)

        # Parse select fields
        for select_tag in form.find_all('select'):
            param_name = select_tag.get('name')
            if param_name:
                params[param_name] = self.parse_select_field(select_tag)

        # Parse textarea fields
        for textarea_tag in form.find_all('textarea'):
            param_name = textarea_tag.get('name')
            if param_name:
                params[param_name] = self.parse_textarea_field(textarea_tag)

        # Analyze date support
        date_support = self.analyze_date_support(params)

        return {
            'has_form': True,
            'action': form.get('action', ''),
            'method': form.get('method', 'get').upper(),
            'params': params,
            'date_support': date_support
        }

    def parse_route(self, route_name: str, subdir: str, fetch_if_missing: bool = False) -> Dict:
        """Parse a single route"""
        # Try to find archived file first
        file_path = self.find_base_route_file(route_name, subdir)

        html = None
        source = None

        if file_path and file_path.exists():
            print(f"  Reading {file_path.name}...")
            with open(file_path, 'r', encoding='utf-8') as f:
                html = f.read()
            source = f"archive:{file_path.relative_to(self.archive_dir)}"
        elif fetch_if_missing:
            route_path = f"/{subdir}/{route_name}.asp"
            html = self.fetch_base_route(route_path)
            source = f"fetched:{route_path}"

        if not html:
            return {
                'status': 'not_found',
                'message': f'No base route HTML found for {route_name}'
            }

        # Parse form
        form_spec = self.parse_form(html, route_name)
        form_spec['source'] = source
        form_spec['status'] = 'parsed'

        return form_spec

    def parse_all_routes(self, routes_file: str = "routes_to_archive.txt", fetch_if_missing: bool = False):
        """Parse all routes from routes file"""
        print("=== Parsing Route Forms ===\n")

        # Load target routes
        routes = []
        if Path(routes_file).exists():
            with open(routes_file, 'r') as f:
                for line in f:
                    line = line.strip()
                    if line and not line.startswith('#'):
                        route = line.lstrip('/').replace('.asp', '')
                        if '<path:article_path>' not in route:
                            routes.append(route)

        print(f"Found {len(routes)} routes to parse\n")

        # Parse each route
        parsed_count = 0
        not_found_count = 0

        for route in routes:
            # Determine subdirectory (simple heuristic)
            if route.startswith('ccass') or any(ccass_route in route for ccass_route in
                ['bigchanges', 'cconc', 'choldings', 'cholder', 'chldchg', 'brokhist', 'ipstakes', 'nciphist']):
                subdir = 'ccass'
            else:
                subdir = 'dbpub'

            print(f"Parsing {subdir}/{route}.asp...")
            spec = self.parse_route(route, subdir, fetch_if_missing)

            if spec['status'] == 'parsed':
                self.specifications[route] = spec

                # Print summary
                if spec['has_form']:
                    param_count = len(spec['params'])
                    date_ok = "✓" if spec['date_support']['historical_dates_ok'] else "✗"
                    print(f"  ✓ {param_count} parameters, Historical dates: {date_ok}")
                else:
                    print(f"  ⚠ No form found")

                parsed_count += 1
            else:
                print(f"  ✗ {spec['message']}")
                not_found_count += 1

            print()

        print(f"\n=== Summary ===")
        print(f"Parsed: {parsed_count}")
        print(f"Not found: {not_found_count}")
        print(f"Total: {len(routes)}")

        return self.specifications

    def save_specifications(self, output_file: str = "route_forms.json"):
        """Save parsed specifications to JSON"""
        with open(output_file, 'w') as f:
            json.dump(self.specifications, f, indent=2)
        print(f"\nSpecifications saved to: {output_file}")

def main():
    parser = argparse.ArgumentParser(description="Parse route forms to discover parameters")
    parser.add_argument('--route', help="Parse specific route")
    parser.add_argument('--fetch', action='store_true', help="Fetch missing base routes from webb-site.com")
    parser.add_argument('--output', default='route_forms.json', help="Output JSON file")

    args = parser.parse_args()

    form_parser = RouteFormParser()

    if args.route:
        # Parse single route
        # Determine subdir
        subdir = 'ccass' if 'ccass' in args.route or any(x in args.route for x in
            ['bigchanges', 'cconc', 'choldings', 'cholder']) else 'dbpub'

        spec = form_parser.parse_route(args.route, subdir, args.fetch)
        print(json.dumps(spec, indent=2))
    else:
        # Parse all routes
        form_parser.parse_all_routes(fetch_if_missing=args.fetch)
        form_parser.save_specifications(args.output)

if __name__ == '__main__':
    main()
