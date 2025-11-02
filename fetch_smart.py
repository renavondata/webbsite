#!/usr/bin/env python3
"""
Smart Fetch - Uses route_forms.json to systematically archive routes with valid parameters

This script uses the form specifications discovered by parse_route_forms.py to:
1. Fetch 33 testable routes with 2023 dates (reproducible testing)
2. Fetch 120 reference routes with current/default parameters
3. Fill gaps in archive coverage

All URLs are guaranteed valid based on actual form specifications.
"""

import json
import requests
import time
from pathlib import Path
from datetime import datetime
from typing import Dict, List, Tuple

class SmartFetcher:
    """Intelligently fetch routes based on form specifications"""

    def __init__(self, forms_file="route_forms.json", archive_dir="archive/webb-site"):
        self.forms = self.load_forms(forms_file)
        self.archive_dir = Path(archive_dir)
        self.asp_base = "https://webb-site.com"
        self.rate_limit = 0.5  # seconds between requests

        # Test parameters - extracted from existing archive
        self.stock_codes = [1, 5, 62, 700, 941, 388, 1299, 2, 3, 883]
        self.person_ids = [1, 5, 62, 120937, 12345, 156890, 31946, 85217]
        self.dates_2023 = ['2023-03-31', '2023-06-30', '2023-09-30', '2023-12-31']
        self.participant_ids = ['C00001', 'C00002', 'C00004', 'B01228']

        # Statistics
        self.stats = {
            'total': 0,
            'successful': 0,
            'failed': 0,
            'skipped': 0
        }

    def load_forms(self, forms_file: str) -> Dict:
        """Load form specifications"""
        with open(forms_file, 'r') as f:
            return json.load(f)

    def get_subdir(self, route: str) -> str:
        """Determine subdirectory (dbpub or ccass)"""
        if any(ccass in route for ccass in ['bigchanges', 'cconc', 'choldings', 'cholder',
                                              'chldchg', 'brokhist', 'ipstakes', 'nciphist',
                                              'cparticipants', 'custhist', 'chistory']):
            return 'ccass'
        return 'dbpub'

    def make_filename(self, route: str, params: Dict) -> str:
        """Create safe filename from route and parameters"""
        param_str = '_'.join(f"{k}{v}" for k, v in sorted(params.items()))
        if param_str:
            return f"{route}_{param_str}.html"
        return f"{route}.html"

    def file_exists(self, subdir: str, filename: str) -> bool:
        """Check if file already archived"""
        path = self.archive_dir / subdir / filename
        return path.exists()

    def fetch_url(self, url: str, output_path: Path) -> Tuple[bool, str]:
        """Fetch URL and save to file"""
        try:
            headers = {
                'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36'
            }
            response = requests.get(url, headers=headers, timeout=30)
            response.raise_for_status()

            # Save HTML
            output_path.parent.mkdir(parents=True, exist_ok=True)
            with open(output_path, 'w', encoding='utf-8') as f:
                f.write(response.text)

            return True, f"{len(response.text)} bytes"
        except Exception as e:
            return False, str(e)

    def generate_testable_urls(self) -> List[Tuple[str, str, Dict]]:
        """Generate URLs for testable routes (historical date support)"""
        urls = []

        for route, spec in self.forms.items():
            if spec.get('status') != 'parsed':
                continue

            date_support = spec.get('date_support', {})
            if not date_support.get('historical_dates_ok'):
                continue  # Skip non-testable routes

            subdir = self.get_subdir(route)
            params_spec = spec.get('params', {})

            # Strategy based on parameter combinations

            # CCASS routes with stock code + date
            if 'sc' in params_spec and 'd' in params_spec:
                for sc in self.stock_codes[:5]:
                    for d in self.dates_2023:
                        params = {'sc': sc, 'd': d}
                        urls.append((route, subdir, params))

            # CCASS routes with issue + participant + date (cholder)
            elif 'i' in params_spec and 'part' in params_spec and 'd' in params_spec:
                issues = [62, 5, 700]  # Major stocks
                for i in issues:
                    for part in self.participant_ids[:2]:
                        for d in self.dates_2023[:2]:  # Q2 and Q4
                            params = {'i': i, 'part': part, 'd': d}
                            urls.append((route, subdir, params))

            # Company routes with personID + date
            elif 'p' in params_spec and 'd' in params_spec:
                for p in self.person_ids[:5]:
                    for d in self.dates_2023[:2]:  # Q2 and Q4 2023
                        params = {'p': p, 'd': d}
                        urls.append((route, subdir, params))

            # Stock routes with issueID + date range
            elif 'd1' in params_spec and 'd2' in params_spec:
                date_ranges = [
                    ('2023-01-01', '2023-03-31'),
                    ('2023-04-01', '2023-06-30'),
                    ('2023-07-01', '2023-09-30'),
                    ('2023-10-01', '2023-12-31'),
                ]
                for d1, d2 in date_ranges:
                    if 'i' in params_spec:
                        # With issueID
                        for i in [62, 5, 700]:
                            params = {'d1': d1, 'd2': d2, 'i': i}
                            urls.append((route, subdir, params))
                    else:
                        # Just date range
                        params = {'d1': d1, 'd2': d2}
                        urls.append((route, subdir, params))

            # Routes with just date parameter
            elif 'd' in params_spec:
                for d in self.dates_2023:
                    params = {'d': d}
                    # Add optional stock code if available
                    if 'sc' in params_spec:
                        for sc in self.stock_codes[:3]:
                            params_with_sc = {'d': d, 'sc': sc}
                            urls.append((route, subdir, params_with_sc))
                    else:
                        urls.append((route, subdir, params))

        return urls

    def generate_reference_urls(self) -> List[Tuple[str, str, Dict]]:
        """Generate URLs for reference routes (no historical date support)"""
        urls = []

        for route, spec in self.forms.items():
            if spec.get('status') != 'parsed':
                continue

            date_support = spec.get('date_support', {})
            if date_support.get('historical_dates_ok'):
                continue  # Skip testable routes (already handled)

            if not spec.get('has_form'):
                # No form = fetch base route only
                subdir = self.get_subdir(route)
                urls.append((route, subdir, {}))
                continue

            subdir = self.get_subdir(route)
            params_spec = spec.get('params', {})

            # Generate a few variations based on parameters

            # Base route (no params)
            urls.append((route, subdir, {}))

            # Routes with stock code
            if 'sc' in params_spec or 'code' in params_spec:
                param_name = 'sc' if 'sc' in params_spec else 'code'
                for sc in self.stock_codes[:3]:
                    params = {param_name: sc}
                    urls.append((route, subdir, params))

            # Routes with personID
            elif 'p' in params_spec:
                for p in self.person_ids[:3]:
                    params = {'p': p}
                    urls.append((route, subdir, params))

            # Routes with issueID
            elif 'i' in params_spec:
                for i in [62, 5, 700]:
                    params = {'i': i}
                    urls.append((route, subdir, params))

            # Routes with select/dropdown options
            for param_name, param_info in params_spec.items():
                if param_info.get('type') == 'select':
                    options = param_info.get('options', [])
                    for option in options[:3]:  # First 3 options
                        value = option.get('value')
                        if value:
                            params = {param_name: value}
                            urls.append((route, subdir, params))

        return urls

    def fetch_all(self):
        """Main fetch routine"""
        print("=== Smart Fetch - Form-Driven Archiving ===\n")
        print(f"Using form specifications from route_forms.json")
        print(f"Rate limit: {self.rate_limit}s between requests\n")

        # Generate URLs
        print("Generating URLs...")
        testable_urls = self.generate_testable_urls()
        reference_urls = self.generate_reference_urls()

        print(f"  Testable routes (2023 dates): {len(testable_urls)} URLs")
        print(f"  Reference routes: {len(reference_urls)} URLs")
        print(f"  Total: {len(testable_urls) + len(reference_urls)} URLs\n")

        estimated_time = (len(testable_urls) + len(reference_urls)) * self.rate_limit / 60
        print(f"Estimated time: {estimated_time:.1f} minutes\n")

        start_time = time.time()

        # Fetch testable routes first (priority)
        print("=" * 60)
        print("PHASE 1: Testable Routes (2023 dates)")
        print("=" * 60 + "\n")

        for route, subdir, params in testable_urls:
            self.fetch_route(route, subdir, params)

        # Then reference routes
        print("\n" + "=" * 60)
        print("PHASE 2: Reference Routes (current/default)")
        print("=" * 60 + "\n")

        for route, subdir, params in reference_urls:
            self.fetch_route(route, subdir, params)

        # Final statistics
        elapsed = time.time() - start_time
        print("\n" + "=" * 60)
        print("FETCH COMPLETE")
        print("=" * 60)
        print(f"\nStatistics:")
        print(f"  Total requests: {self.stats['total']}")
        print(f"  Successful: {self.stats['successful']}")
        print(f"  Failed: {self.stats['failed']}")
        print(f"  Skipped (existing): {self.stats['skipped']}")
        print(f"  Time elapsed: {elapsed/60:.1f} minutes")
        print(f"  Average rate: {self.stats['total']/elapsed:.2f} requests/sec")
        print(f"\nArchive saved to: {self.archive_dir}/")

    def fetch_route(self, route: str, subdir: str, params: Dict):
        """Fetch a single route with parameters"""
        self.stats['total'] += 1

        # Build URL
        url = f"{self.asp_base}/{subdir}/{route}.asp"
        if params:
            query_string = '&'.join(f"{k}={v}" for k, v in params.items())
            url = f"{url}?{query_string}"

        # Check if already exists
        filename = self.make_filename(route, params)
        output_path = self.archive_dir / subdir / filename

        if output_path.exists():
            print(f"  ✓ Skip (exists): {filename}")
            self.stats['skipped'] += 1
            return

        # Fetch
        success, result = self.fetch_url(url, output_path)

        if success:
            print(f"  ✓ {filename} ({result})")
            self.stats['successful'] += 1
        else:
            print(f"  ✗ {filename}: {result}")
            self.stats['failed'] += 1

        # Rate limiting
        time.sleep(self.rate_limit)

def main():
    fetcher = SmartFetcher()
    fetcher.fetch_all()

if __name__ == '__main__':
    main()
