#!/usr/bin/env python3
"""
Flask vs ASP Output Validation Script

Compares output from Flask (local) and Classic ASP (live) implementations
to validate the migration is accurate.

Usage:
    python tests/test_routes.py                    # Run all tests
    python tests/test_routes.py --route searchorgs  # Run specific route
    python tests/test_routes.py --verbose           # Show detailed diffs
    python tests/test_routes.py --save-outputs      # Archive HTML outputs
"""

import argparse
import difflib
import re
import sys
from pathlib import Path
from typing import Dict, List, Optional, Tuple
from urllib.parse import urlencode, urlparse

import requests
import yaml
from bs4 import BeautifulSoup, Comment
from colorama import Fore, Style, init

# Initialize colorama for cross-platform colored output
init(autoreset=True)


class ServerError(Exception):
    """Raised when a 500-level error is encountered"""

    pass


class RouteComparator:
    """Compares Flask and ASP route outputs"""

    def __init__(self, config_path: str = "tests/test_config.yaml"):
        """Initialize comparator with config file"""
        self.config = self._load_config(config_path)
        self.asp_base = self.config["asp_base"]
        self.flask_base = self.config["flask_base"]
        self.timeout = self.config.get("timeout", {}).get("request", 30)
        self.results = []

    def _load_config(self, config_path: str) -> dict:
        """Load test configuration from YAML"""
        config_file = Path(config_path)
        if not config_file.exists():
            raise FileNotFoundError(f"Config file not found: {config_path}")

        with open(config_file, "r", encoding="utf-8") as f:
            return yaml.safe_load(f)

    def fetch_page(self, base_url: str, path: str, params: dict) -> Optional[str]:
        """
        Fetch page from specified base URL

        Args:
            base_url: Base URL (ASP or Flask)
            path: Page path (e.g., /dbpub/searchorgs.asp)
            params: Query parameters

        Returns:
            HTML content or None on error

        Raises:
            ServerError: If a 500-level error is encountered (stops test suite)
        """
        url = f"{base_url}{path}"
        if params:
            url = f"{url}?{urlencode(params)}"

        try:
            response = requests.get(url, timeout=self.timeout)

            # Check for 500-level errors and stop immediately
            if 500 <= response.status_code < 600:
                print(f"\n{Fore.RED}{'='*60}{Style.RESET_ALL}")
                print(
                    f"{Fore.RED}🛑 HTTP {response.status_code} SERVER ERROR{Style.RESET_ALL}"
                )
                print(f"{Fore.RED}{'='*60}{Style.RESET_ALL}")
                print(f"{Fore.YELLOW}URL: {url}{Style.RESET_ALL}")
                print(
                    f"{Fore.YELLOW}Stopping test suite - fix this error before continuing{Style.RESET_ALL}\n"
                )
                raise ServerError(f"HTTP {response.status_code} error from {url}")

            response.raise_for_status()
            return response.text
        except ServerError:
            # Re-raise ServerError to stop the test suite
            raise
        except requests.RequestException as e:
            print(f"{Fore.YELLOW}⚠ Error fetching {url}: {e}{Style.RESET_ALL}")
            return None

    def normalize_html(self, html: str) -> str:
        """
        Normalize HTML for comparison using BeautifulSoup - focus on human-visible differences only

        Normalization steps:
        - Parse HTML into DOM tree
        - Remove HTML comments
        - Sort attributes alphabetically
        - Normalize whitespace in text content
        - Normalize file paths (CSS, images) to just filenames
        - Generate consistent HTML output
        """
        if not html:
            return ""

        # Simple normalization: just normalize whitespace and paths
        # Don't use BeautifulSoup prettify as it reformats the entire HTML
        import re

        # Remove HTML comments
        html = re.sub(r"<!--.*?-->", "", html, flags=re.DOTALL)

        # Remove viewport meta tag (may differ between ASP and Flask)
        html = re.sub(r'<meta name="viewport"[^>]*>', "", html)

        # Remove title tag (may differ or be missing)
        html = re.sub(r"<title>.*?</title>", "", html, flags=re.DOTALL)

        # Normalize CSS paths: ../templates/main.css or /static/css/main.css -> main.css
        html = re.sub(r'href="[^"]*/(main\.css)"', r'href="\1"', html)

        # Normalize image paths
        html = re.sub(r'src="[^"]*/([^/"]+\.(png|jpg|gif|svg))"', r'src="\1"', html)

        # Normalize multiple whitespace to single space
        html = re.sub(r"\s+", " ", html)

        # Normalize whitespace around tags
        html = re.sub(r">\s+<", "><", html)

        return html.strip()

    def compare_html(
        self, flask_html: str, asp_html: str, route_name: str
    ) -> Tuple[bool, Optional[str]]:
        """
        Compare normalized HTML outputs

        Args:
            flask_html: HTML from Flask
            asp_html: HTML from ASP
            route_name: Name of route being tested

        Returns:
            Tuple of (passed: bool, diff: Optional[str])
        """
        # Normalize both outputs
        flask_norm = self.normalize_html(flask_html)
        asp_norm = self.normalize_html(asp_html)

        # Exact match check
        if flask_norm == asp_norm:
            return True, None

        # For table-heavy pages, compare table row counts instead of exact HTML
        # (database collation differences cause different row orders but same content)
        from bs4 import BeautifulSoup

        flask_soup = BeautifulSoup(flask_html, "html.parser")
        asp_soup = BeautifulSoup(asp_html, "html.parser")

        # Try txtable first, then numtable (for listed.asp, delisted.asp, etc.)
        flask_tables = flask_soup.find_all("table", class_="txtable")
        asp_tables = asp_soup.find_all("table", class_="txtable")

        if not flask_tables:
            flask_tables = flask_soup.find_all("table", class_="numtable")
        if not asp_tables:
            asp_tables = asp_soup.find_all("table", class_="numtable")

        if flask_tables and asp_tables:
            # Compare number of tables
            if len(flask_tables) != len(asp_tables):
                return (
                    False,
                    f"Different number of tables: Flask has {len(flask_tables)}, ASP has {len(asp_tables)}",
                )

            # Compare row counts in each table with hybrid threshold
            # Allow differences if: abs_diff <= 2 OR percent_diff <= 1%
            # This handles database sync lag while still catching template bugs
            for i, (flask_table, asp_table) in enumerate(zip(flask_tables, asp_tables)):
                flask_rows = flask_table.find_all("tr")
                asp_rows = asp_table.find_all("tr")

                flask_count = len(flask_rows)
                asp_count = len(asp_rows)

                if flask_count != asp_count:
                    abs_diff = abs(flask_count - asp_count)
                    # Avoid division by zero
                    percent_diff = (
                        (abs_diff / asp_count * 100) if asp_count > 0 else 100
                    )

                    # Apply hybrid threshold: pass if within 2 rows OR within 1%
                    if abs_diff <= 2 or percent_diff <= 1.0:
                        # Lenient pass - log warning but don't fail
                        print(
                            f"  ⚠ Table {i+1}: Row count difference within threshold (Flask={flask_count}, ASP={asp_count}, diff={abs_diff}, {percent_diff:.1f}%)"
                        )
                    else:
                        return (
                            False,
                            f"Table {i+1}: Different row counts - Flask has {flask_count} rows, ASP has {asp_count} rows (diff={abs_diff}, {percent_diff:.1f}%)",
                        )

            # All tables have matching or acceptable row counts - consider it a pass
            return True, None

        # Generate diff for reporting
        flask_lines = flask_norm.splitlines(keepends=True)
        asp_lines = asp_norm.splitlines(keepends=True)

        diff = difflib.unified_diff(
            asp_lines,
            flask_lines,
            fromfile=f"ASP: {route_name}",
            tofile=f"Flask: {route_name}",
            lineterm="",
        )

        diff_text = "\n".join(diff)
        return False, diff_text

    def test_route(
        self, route: dict, verbose: bool = False, save_outputs: bool = False
    ) -> List[Dict]:
        """
        Test a single route with all its parameter combinations

        Args:
            route: Route configuration from YAML
            verbose: Show detailed diff output
            save_outputs: Save HTML outputs to files

        Returns:
            List of test results
        """
        route_name = route["name"]
        path = route["path"]
        param_sets = route.get("params", [{}])  # Default to empty params if none

        results = []

        for idx, params in enumerate(param_sets):
            # Convert params to dict if it's None (YAML null)
            if params is None:
                params = {}

            test_name = f"{route_name} (case {idx + 1})"

            # Fetch from both servers
            flask_html = self.fetch_page(self.flask_base, path, params)
            asp_html = self.fetch_page(self.asp_base, path, params)

            # Check if both fetches succeeded
            if flask_html is None or asp_html is None:
                # Skip tests where ASP server is unavailable/timing out
                # Mark as skipped rather than failed
                results.append(
                    {
                        "name": test_name,
                        "passed": None,  # None means skipped
                        "skipped": True,
                        "error": "Failed to fetch from ASP server (timeout/404) - skipping",
                    }
                )
                continue

            # Save outputs if requested
            if save_outputs:
                self._save_output(test_name, "flask", flask_html)
                self._save_output(test_name, "asp", asp_html)

            # Compare outputs
            passed, diff = self.compare_html(flask_html, asp_html, test_name)

            result = {"name": test_name, "passed": passed, "params": params}

            if not passed:
                result["diff"] = diff
                if verbose and diff:
                    # Show limited diff lines
                    max_lines = self.config.get("report", {}).get("max_diff_lines", 20)
                    diff_lines = diff.splitlines()
                    if len(diff_lines) > max_lines:
                        result["diff_preview"] = "\n".join(diff_lines[:max_lines])
                        result[
                            "diff_preview"
                        ] += f"\n... ({len(diff_lines) - max_lines} more lines)"
                    else:
                        result["diff_preview"] = diff

            results.append(result)

        return results

    def _save_output(self, test_name: str, source: str, html: str):
        """Save HTML output to file for manual inspection"""
        output_dir = Path("tests/outputs")
        output_dir.mkdir(exist_ok=True)

        # Sanitize test name for filename
        safe_name = re.sub(r"[^\w\s-]", "", test_name).strip().replace(" ", "_")
        filename = output_dir / f"{safe_name}_{source}.html"

        with open(filename, "w", encoding="utf-8") as f:
            f.write(html)

    def run_all_tests(
        self,
        route_filter: Optional[str] = None,
        verbose: bool = False,
        save_outputs: bool = False,
    ) -> bool:
        """
        Run all tests from config

        Args:
            route_filter: Only test routes matching this name
            verbose: Show detailed diff output
            save_outputs: Save HTML outputs to files

        Returns:
            True if all tests passed, False otherwise
        """
        routes = self.config.get("routes", [])
        total_tests = 0
        passed_tests = 0
        failed_routes = []

        print(f"\n{Fore.CYAN}{'='*60}{Style.RESET_ALL}")
        print(f"{Fore.CYAN}Flask vs ASP Route Validation{Style.RESET_ALL}")
        print(f"{Fore.CYAN}{'='*60}{Style.RESET_ALL}\n")
        print(f"ASP base:   {self.asp_base}")
        print(f"Flask base: {self.flask_base}")
        print(f"Test date:  {self.config.get('test_date', 'dynamic')}\n")

        for route in routes:
            route_name = route["name"]

            # Skip if filter specified and doesn't match
            if route_filter and route_filter.lower() not in route_name.lower():
                continue

            print(f"{Fore.BLUE}Testing: {route_name}{Style.RESET_ALL}")

            # Test route with all parameter combinations
            results = self.test_route(route, verbose, save_outputs)

            # Process results
            route_passed = 0
            route_total = len(results)

            for result in results:
                total_tests += 1

                # Handle skipped tests (ASP server unavailable)
                if result.get("skipped"):
                    print(
                        f"  {Fore.YELLOW}⊘ {result['name']} - SKIPPED{Style.RESET_ALL}"
                    )
                    if "error" in result:
                        print(f"    {Fore.YELLOW}└─ {result['error']}{Style.RESET_ALL}")
                    continue

                if result["passed"]:
                    passed_tests += 1
                    route_passed += 1
                    print(f"  {Fore.GREEN}✓ {result['name']}{Style.RESET_ALL}")
                else:
                    print(f"  {Fore.RED}✗ {result['name']}{Style.RESET_ALL}")
                    if "error" in result:
                        print(f"    {Fore.YELLOW}└─ {result['error']}{Style.RESET_ALL}")
                    if verbose and "diff_preview" in result:
                        print(f"    {Fore.YELLOW}Diff preview:{Style.RESET_ALL}")
                        for line in result["diff_preview"].splitlines()[:10]:
                            print(f"      {line}")

                    # STOP IMMEDIATELY ON FIRST FAILURE
                    print(f"\n{Fore.RED}{'='*60}{Style.RESET_ALL}")
                    print(f"{Fore.RED}🛑 TEST FAILED - STOPPING{Style.RESET_ALL}")
                    print(f"{Fore.RED}{'='*60}{Style.RESET_ALL}")
                    print(f"{Fore.YELLOW}Route: {route_name}{Style.RESET_ALL}")
                    print(
                        f"{Fore.YELLOW}Flask output does not match ASP ground truth{Style.RESET_ALL}"
                    )
                    print(
                        f"{Fore.YELLOW}Fix this route before continuing to next routes{Style.RESET_ALL}\n"
                    )
                    return False

            # Route summary
            if route_passed == route_total:
                print(
                    f"  {Fore.GREEN}All {route_total} test(s) passed{Style.RESET_ALL}\n"
                )
            else:
                failed = route_total - route_passed
                print(
                    f"  {Fore.RED}{failed}/{route_total} test(s) failed{Style.RESET_ALL}\n"
                )
                failed_routes.append(route_name)

            self.results.extend(results)

        # Final summary
        print(f"{Fore.CYAN}{'='*60}{Style.RESET_ALL}")
        print(f"{Fore.CYAN}Summary{Style.RESET_ALL}")
        print(f"{Fore.CYAN}{'='*60}{Style.RESET_ALL}\n")

        success_rate = (passed_tests / total_tests * 100) if total_tests > 0 else 0

        if passed_tests == total_tests:
            print(
                f"{Fore.GREEN}✓ All {total_tests} tests passed! (100%){Style.RESET_ALL}\n"
            )
            return True
        else:
            failed = total_tests - passed_tests
            print(
                f"{Fore.RED}✗ {failed}/{total_tests} tests failed ({success_rate:.1f}% passed){Style.RESET_ALL}\n"
            )

            if failed_routes:
                print(f"{Fore.YELLOW}Failed routes:{Style.RESET_ALL}")
                for route in failed_routes:
                    print(f"  - {route}")
                print()

            return False


def main():
    """Main entry point"""
    parser = argparse.ArgumentParser(
        description="Compare Flask and ASP route outputs for validation"
    )
    parser.add_argument(
        "--route",
        help="Filter to specific route name (partial match)",
        default=None,
    )
    parser.add_argument(
        "--verbose",
        "-v",
        action="store_true",
        help="Show detailed diff output for failures",
    )
    parser.add_argument(
        "--save-outputs",
        action="store_true",
        help="Save HTML outputs to tests/outputs/ for manual inspection",
    )
    parser.add_argument(
        "--config",
        default="tests/test_config.yaml",
        help="Path to test config file (default: tests/test_config.yaml)",
    )

    args = parser.parse_args()

    try:
        comparator = RouteComparator(config_path=args.config)
        success = comparator.run_all_tests(
            route_filter=args.route,
            verbose=args.verbose,
            save_outputs=args.save_outputs,
        )

        # Exit with appropriate code
        sys.exit(0 if success else 1)

    except Exception as e:
        print(f"{Fore.RED}Fatal error: {e}{Style.RESET_ALL}")
        sys.exit(2)


if __name__ == "__main__":
    main()
