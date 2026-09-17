#!/usr/bin/env python3
"""
Crawl ASP site and cache HTML responses using Bright Data Web Unlocker.
"""
import os
import sys
import time
import requests
from pathlib import Path
from urllib.parse import urlencode

# Bright Data Web Unlocker proxy - reads from environment variable
# Set BRIGHTDATA_UNBLOCKER_PROXY to: username:password@host:port
PROXY_STRING = os.environ.get('BRIGHTDATA_UNBLOCKER_PROXY')
if not PROXY_STRING:
    print("ERROR: Set BRIGHTDATA_UNBLOCKER_PROXY environment variable")
    print("Format: username:password@host:port")
    sys.exit(1)

PROXY = {
    'http': f'http://{PROXY_STRING}',
    'https': f'http://{PROXY_STRING}'
}

ASP_BASE = "https://webbsite.0xmd.com"
CACHE_DIR = Path(__file__).parent / "ground_truth" / "asp_cache"

# ============================================================
# Routes to crawl - no params needed (default views)
# ============================================================
from route_fixtures import (  # noqa: E402,F401
    DBPUB_ROUTES_NO_PARAMS,
    DBPUB_ROUTES_WITH_PARAMS,
    CCASS_ROUTES_NO_PARAMS,
    CCASS_ROUTES_WITH_PARAMS,
)


def get_cache_filename(path: str, params: dict = None) -> str:
    """Generate cache filename from path and params."""
    # Extract route name
    if path.endswith("/"):
        name = "index"
    else:
        name = Path(path).stem

    # Add params to filename
    if params:
        param_str = "_".join(f"{k}={v}" for k, v in sorted(params.items()))
        name = f"{name}_{param_str}"

    return f"{name}.html"


def fetch_page(url: str, retries: int = 3) -> str:
    """Fetch a page using Bright Data proxy."""
    for attempt in range(retries):
        try:
            resp = requests.get(
                url,
                proxies=PROXY,
                timeout=60,
                verify=False  # Bright Data proxy may have SSL issues
            )
            resp.raise_for_status()
            return resp.text
        except Exception as e:
            print(f"  Attempt {attempt + 1} failed: {e}")
            if attempt < retries - 1:
                time.sleep(2)
    return None


def crawl_section(label: str, routes_no_params: list, routes_with_params: list,
                  subdir: str, results: dict):
    """Crawl a section of routes (dbpub or ccass)."""
    cache_subdir = CACHE_DIR / subdir
    cache_subdir.mkdir(parents=True, exist_ok=True)

    # No-param routes
    if routes_no_params:
        print(f"\n=== Crawling /{subdir}/ routes (no params) ===")
        for route in routes_no_params:
            url = f"{ASP_BASE}{route}"
            filename = get_cache_filename(route)
            cache_path = cache_subdir / filename

            if cache_path.exists():
                print(f"SKIP (cached): {route}")
                results["skipped"] += 1
                continue

            print(f"Fetching: {route}")
            html = fetch_page(url)
            if html:
                cache_path.write_text(html, encoding="utf-8")
                print(f"  Saved: {filename} ({len(html)} bytes)")
                results["success"].append(route)
            else:
                print(f"  FAILED: {route}")
                results["failed"].append(route)

    # Param routes
    if routes_with_params:
        print(f"\n=== Crawling /{subdir}/ routes (with params) ===")
        for route, params in routes_with_params:
            url = f"{ASP_BASE}{route}?{urlencode(params)}"
            filename = get_cache_filename(route, params)
            cache_path = cache_subdir / filename

            if cache_path.exists():
                print(f"SKIP (cached): {route}?{urlencode(params)}")
                results["skipped"] += 1
                continue

            print(f"Fetching: {route}?{urlencode(params)}")
            html = fetch_page(url)
            if html:
                cache_path.write_text(html, encoding="utf-8")
                print(f"  Saved: {filename} ({len(html)} bytes)")
                results["success"].append(f"{route}?{urlencode(params)}")
            else:
                print(f"  FAILED: {route}?{urlencode(params)}")
                results["failed"].append(f"{route}?{urlencode(params)}")


def crawl_routes():
    """Crawl all routes and save to cache."""
    import urllib3
    urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

    results = {"success": [], "failed": [], "skipped": 0}

    crawl_section("dbpub", DBPUB_ROUTES_NO_PARAMS, DBPUB_ROUTES_WITH_PARAMS,
                  "dbpub", results)
    crawl_section("ccass", CCASS_ROUTES_NO_PARAMS, CCASS_ROUTES_WITH_PARAMS,
                  "ccass", results)

    # Summary
    print("\n" + "=" * 50)
    print("SUMMARY")
    print("=" * 50)
    print(f"New fetched: {len(results['success'])}")
    print(f"Skipped (cached): {results['skipped']}")
    print(f"Failed: {len(results['failed'])}")
    if results["failed"]:
        print("Failed routes:")
        for r in results["failed"]:
            print(f"  - {r}")

    return results


if __name__ == "__main__":
    crawl_routes()
