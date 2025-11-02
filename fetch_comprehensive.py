#!/usr/bin/env python3
"""
Comprehensive fetch script to archive high-priority routes with 2023 date parameters
Builds on fetch_ground_truth.py but focuses on missing routes and systematic parameter coverage
"""

import requests
import time
import json
import os
from datetime import datetime
from pathlib import Path

# Configuration
ASP_BASE = "https://webb-site.com"
OUTPUT_DIR = "archive/webb-site"
DELAY = 0.5  # seconds between requests
USER_AGENT = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

# Test parameters extracted from archive - using 2023 dates where applicable
TEST_PARAMS = {
    # High-traffic personIDs (companies)
    'personIDs': [1, 5, 62, 700, 941, 388, 1299, 2, 3, 883,
                   120937, 12345, 156890, 31946, 85217,  # From archive
                   101, 1033, 1034, 1077, 1079, 1083],    # More from archive

    # High-volume issueIDs
    'issueIDs': [62, 5, 1, 700, 941, 388, 1299, 2, 3, 883,
                  1088, 1044, 12, 16, 19],  # Major HK stocks

    # Stock codes (same as issueIDs for main board)
    'stockCodes': [1, 5, 62, 700, 941, 388, 1299, 2, 3, 883, 12, 16, 1044, 1088],

    # CCASS participant IDs
    'participantIDs': ['C00001', 'C00002', 'C00004', 'C00010', 'C00100',
                       'B01228', 'B01251', 'A00001', 'A00004'],

    # 2023 dates for testability
    'dates_2023': ['2023-03-31', '2023-06-30', '2023-09-30', '2023-12-31',
                   '2023-01-31', '2023-04-30', '2023-07-31', '2023-10-31'],

    # Years
    'years': [2023, 2022, 2021, 2020],

    # Date ranges for 2023
    'date_ranges_2023': [
        ('2023-01-01', '2023-03-31'),
        ('2023-04-01', '2023-06-30'),
        ('2023-07-01', '2023-09-30'),
        ('2023-10-01', '2023-12-31'),
        ('2023-01-01', '2023-12-31'),  # Full year
    ],
}

# Routes to fetch with their parameter combinations
ROUTES_TO_FETCH = [
    # CCASS routes (HIGH PRIORITY - only 7/19 covered)
    {
        'path': '/ccass/bigchangesissue.asp',
        'params': [
            {'i': i, 'd': d} for i in TEST_PARAMS['issueIDs'][:5]
            for d in TEST_PARAMS['dates_2023'][:3]
        ]
    },
    {
        'path': '/ccass/bigchangespart.asp',
        'params': [
            {'part': part, 'd': d} for part in TEST_PARAMS['participantIDs'][:3]
            for d in TEST_PARAMS['dates_2023'][:2]
        ]
    },
    {
        'path': '/ccass/cholder.asp',
        'params': [
            {'i': i, 'part': part, 'd': d}
            for i in [62, 5, 700]
            for part in ['C00001', 'C00002']
            for d in ['2023-06-30', '2023-12-31']
        ]
    },
    {
        'path': '/ccass/chldchg.asp',
        'params': [
            {'i': i, 'part': part}
            for i in [62, 5, 700, 1, 388]
            for part in ['C00001', 'C00002', 'B01228']
        ]
    },
    {
        'path': '/ccass/brokhist.asp',
        'params': [{'sc': sc} for sc in TEST_PARAMS['stockCodes'][:10]]
    },
    {
        'path': '/ccass/ipstakes.asp',
        'params': [{'d': d} for d in TEST_PARAMS['dates_2023'][:4]]
    },
    {
        'path': '/ccass/nciphist.asp',
        'params': [{'sc': sc} for sc in TEST_PARAMS['stockCodes'][:8]]
    },
    {
        'path': '/ccass/holdings.asp',
        'params': [
            {'sc': sc, 'd': d}
            for sc in [1, 5, 62, 700]
            for d in TEST_PARAMS['dates_2023'][:3]
        ]
    },
    {
        'path': '/ccass/chistory.asp',
        'params': [
            {'sc': sc, 'part': part}
            for sc in [1, 5, 62]
            for part in ['C00001', 'C00002']
        ]
    },

    # Company data routes with dates
    {
        'path': '/dbpub/advisers.asp',
        'params': [
            {'p': p, 'd': d}
            for p in TEST_PARAMS['personIDs'][:10]
            for d in ['2023-06-01', '2023-12-31']
        ] + [{'sc': sc} for sc in TEST_PARAMS['stockCodes'][:5]]
    },
    {
        'path': '/dbpub/officers.asp',
        'params': [
            {'p': p, 'd': d}
            for p in TEST_PARAMS['personIDs'][:10]
            for d in ['2023-06-01', '2023-12-31']
        ] + [
            {'sc': sc, 'pos': pos}
            for sc in TEST_PARAMS['stockCodes'][:5]
            for pos in ['ED', 'INED', 'NED']
        ]
    },
    {
        'path': '/dbpub/positions.asp',
        'params': [
            {'p': p, 'd': d}
            for p in TEST_PARAMS['personIDs'][:15]
            for d in ['2023-06-30']
        ]
    },
    {
        'path': '/dbpub/holders.asp',
        'params': [
            {'p': p, 'd': d}
            for p in [1, 5, 62, 700, 941]
            for d in ['2023-06-30', '2023-12-31']
        ]
    },
    {
        'path': '/dbpub/events.asp',
        'params': [
            {'sc': sc, 'd1': d1, 'd2': d2}
            for sc in TEST_PARAMS['stockCodes'][:5]
            for d1, d2 in TEST_PARAMS['date_ranges_2023'][:3]
        ] + [
            {'i': i} for i in TEST_PARAMS['issueIDs'][:5]
        ]
    },

    # Code/quotes routes
    {
        'path': '/dbpub/code.asp',
        'params': [
            {'sc': sc, 'd': d}
            for sc in TEST_PARAMS['stockCodes'][:8]
            for d in TEST_PARAMS['dates_2023'][:2]
        ]
    },
    {
        'path': '/dbpub/ctr.asp',
        'params': [
            {'sc': sc, 'd1': d1, 'd2': d2}
            for sc in TEST_PARAMS['stockCodes'][:5]
            for d1, d2 in [('2023-01-01', '2023-12-31'), ('2023-06-01', '2023-06-30')]
        ]
    },
    {
        'path': '/dbpub/str.asp',
        'params': [
            {'i': i, 'd1': d1, 'd2': d2}
            for i in TEST_PARAMS['issueIDs'][:5]
            for d1, d2 in [('2023-01-01', '2023-12-31'), ('2023-06-01', '2023-06-30')]
        ]
    },

    # SFC routes
    {
        'path': '/dbpub/SFClicensees.asp',
        'params': [{}]  # No params
    },
    {
        'path': '/dbpub/SFCchanges.asp',
        'params': [{'d': d} for d in TEST_PARAMS['dates_2023'][:3]]
    },
    {
        'path': '/dbpub/SFClicount.asp',
        'params': [{}]
    },
    {
        'path': '/dbpub/SFColicrec.asp',
        'params': [
            {'ce': ce} for ce in ['AAA000', 'AAA111', 'BAA000', 'AAB000', 'AAC000']
        ]
    },
    {
        'path': '/dbpub/SFChistall.asp',
        'params': [{'p': p} for p in TEST_PARAMS['personIDs'][:5]]
    },

    # Buybacks
    {
        'path': '/dbpub/buybacks.asp',
        'params': [
            {'i': i, 'f': f}
            for i in TEST_PARAMS['issueIDs'][:5]
            for f in ['d', 'm', 'y']
        ] + [
            {'sc': sc, 'f': 'm'}
            for sc in TEST_PARAMS['stockCodes'][:5]
        ]
    },
    {
        'path': '/dbpub/buybackstime.asp',
        'params': [
            {'d1': d1, 'd2': d2}
            for d1, d2 in TEST_PARAMS['date_ranges_2023'][:3]
        ]
    },
    {
        'path': '/dbpub/buybacksum.asp',
        'params': [{'y': y} for y in TEST_PARAMS['years'][:2]]
    },

    # Statistical routes
    {
        'path': '/dbpub/incHKannual.asp',
        'params': [{'y': y} for y in TEST_PARAMS['years']]
    },
    {
        'path': '/dbpub/incHKmonth.asp',
        'params': [{'y': y} for y in TEST_PARAMS['years']]
    },
    {
        'path': '/dbpub/regHKannual.asp',
        'params': [{'y': y} for y in TEST_PARAMS['years']]
    },
    {
        'path': '/dbpub/disHKcaltype.asp',
        'params': [{'y': y} for y in TEST_PARAMS['years']]
    },
    {
        'path': '/dbpub/incHKcaltype.asp',
        'params': [{'y': y} for y in TEST_PARAMS['years']]
    },
    {
        'path': '/dbpub/disFcal.asp',
        'params': [{'y': y} for y in TEST_PARAMS['years']]
    },
    {
        'path': '/dbpub/incFcal.asp',
        'params': [{'y': y} for y in TEST_PARAMS['years']]
    },
    {
        'path': '/dbpub/boardcomp.asp',
        'params': [{'d': d} for d in TEST_PARAMS['dates_2023'][:4]]
    },
    {
        'path': '/dbpub/DirsHKAgeDistn.asp',
        'params': [{'d': d} for d in TEST_PARAMS['dates_2023'][:3]]
    },
    {
        'path': '/dbpub/auditorchanges.asp',
        'params': [{'y': y} for y in TEST_PARAMS['years']]
    },

    # Law Society
    {
        'path': '/dbpub/HKsols.asp',
        'params': [{}]
    },
    {
        'path': '/dbpub/HKsolfirms.asp',
        'params': [{}]
    },
    {
        'path': '/dbpub/HKsolsmoves.asp',
        'params': [
            {'y': 2023, 'm': m} for m in [1, 3, 6, 9, 12]
        ]
    },
    {
        'path': '/dbpub/hksolemps.asp',
        'params': [{}]
    },
]

def fetch_url(url, output_path):
    """Fetch a URL and save to output path"""
    try:
        headers = {'User-Agent': USER_AGENT}
        response = requests.get(url, headers=headers, timeout=30)
        response.raise_for_status()

        # Save HTML
        output_path.parent.mkdir(parents=True, exist_ok=True)
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(response.text)

        return True, len(response.text)
    except Exception as e:
        return False, str(e)

def main():
    print("=== Comprehensive Archive Fetch ===")
    print("Using 2023 dates for testability")
    print("")

    # Statistics
    total_requests = sum(len(route['params']) for route in ROUTES_TO_FETCH)
    completed = 0
    successful = 0
    failed = 0

    print(f"Total planned requests: {total_requests}")
    print(f"Estimated time: {total_requests * DELAY / 60:.1f} minutes")
    print("")

    start_time = time.time()

    for route_config in ROUTES_TO_FETCH:
        path = route_config['path']
        route_name = path.split('/')[-1].replace('.asp', '')

        # Determine subdirectory
        if '/ccass/' in path:
            subdir = 'ccass'
        else:
            subdir = 'dbpub'

        print(f"\nFetching {route_name} ({len(route_config['params'])} variations)...")

        for params in route_config['params']:
            # Build URL
            if params:
                query_string = '&'.join(f"{k}={v}" for k, v in params.items())
                url = f"{ASP_BASE}{path}?{query_string}"
                # Build filename
                param_str = '_'.join(f"{k}{v}" for k, v in params.items())
                filename = f"{route_name}_{param_str}.html"
            else:
                url = f"{ASP_BASE}{path}"
                filename = f"{route_name}.html"

            # Output path
            output_path = Path(OUTPUT_DIR) / subdir / filename

            # Skip if already exists
            if output_path.exists():
                print(f"  ✓ Skip (exists): {filename}")
                completed += 1
                successful += 1
                continue

            # Fetch
            success, result = fetch_url(url, output_path)

            if success:
                print(f"  ✓ {filename} ({result} bytes)")
                successful += 1
            else:
                print(f"  ✗ {filename}: {result}")
                failed += 1

            completed += 1

            # Progress update
            if completed % 10 == 0:
                elapsed = time.time() - start_time
                rate = completed / elapsed if elapsed > 0 else 0
                remaining = (total_requests - completed) / rate if rate > 0 else 0
                print(f"  Progress: {completed}/{total_requests} ({100*completed/total_requests:.1f}%) - "
                      f"ETA: {remaining/60:.1f} min")

            # Rate limiting
            time.sleep(DELAY)

    # Final statistics
    elapsed = time.time() - start_time
    print("\n" + "="*60)
    print("=== FETCH COMPLETE ===")
    print(f"Total requests: {total_requests}")
    print(f"Successful: {successful}")
    print(f"Failed: {failed}")
    print(f"Time elapsed: {elapsed/60:.1f} minutes")
    print(f"Average rate: {completed/elapsed:.1f} requests/sec")
    print("")
    print(f"Archive saved to: {OUTPUT_DIR}/")
    print("")

    # Count total files now
    dbpub_count = len(list(Path(OUTPUT_DIR).glob('dbpub/*.html')))
    ccass_count = len(list(Path(OUTPUT_DIR).glob('ccass/*.html')))
    print(f"Total archived files:")
    print(f"  dbpub: {dbpub_count}")
    print(f"  ccass: {ccass_count}")
    print(f"  TOTAL: {dbpub_count + ccass_count}")

if __name__ == '__main__':
    main()
