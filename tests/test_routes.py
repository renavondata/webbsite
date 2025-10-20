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
from urllib.parse import urlencode

import requests
import yaml
from colorama import Fore, Style, init

# Initialize colorama for cross-platform colored output
init(autoreset=True)


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
        """
        url = f"{base_url}{path}"
        if params:
            url = f"{url}?{urlencode(params)}"

        try:
            response = requests.get(url, timeout=self.timeout)
            response.raise_for_status()
            return response.text
        except requests.RequestException as e:
            print(f"{Fore.YELLOW}⚠ Error fetching {url}: {e}{Style.RESET_ALL}")
            return None

    def normalize_html(self, html: str) -> str:
        """
        Normalize HTML for comparison

        Normalization steps:
        - Strip leading/trailing whitespace from each line
        - Collapse multiple spaces to single space
        - Remove HTML comments (optional)
        - Normalize static file paths (CSS, images)
        - Normalize line endings to \\n
        """
        if not html:
            return ""

        normalize_config = self.config.get("normalize", {})

        # Remove HTML comments if configured
        if normalize_config.get("remove_comments", True):
            html = re.sub(r"<!--.*?-->", "", html, flags=re.DOTALL)

        # Normalize static file paths (CSS and images)
        # Convert /static/css/X, ../templates/X, etc. to just filename
        # Handles both absolute (/static/css/) and relative (../templates/) paths
        html = re.sub(r'href="(?:[^"]*/)?([\w-]+\.css)"', r'href="\1"', html)
        # Normalize image paths: /static/images/X.png, /images/X.png, etc. to just filename
        html = re.sub(r'src="(?:[^"]*/)?([\w-]+\.(png|jpg|gif|svg))"', r'src="\1"', html)

        # Split into lines and process each
        lines = html.splitlines()
        normalized_lines = []

        for line in lines:
            # Strip leading/trailing whitespace
            if normalize_config.get("strip_whitespace", True):
                line = line.strip()

            # Collapse multiple spaces to single space
            if normalize_config.get("collapse_spaces", True):
                line = re.sub(r"\s+", " ", line)

            # Only keep non-empty lines
            if line:
                normalized_lines.append(line)

        return "\n".join(normalized_lines)

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
                results.append(
                    {
                        "name": test_name,
                        "passed": False,
                        "error": "Failed to fetch from one or both servers",
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
                        result["diff_preview"] += f"\n... ({len(diff_lines) - max_lines} more lines)"
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
        self, route_filter: Optional[str] = None, verbose: bool = False, save_outputs: bool = False
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

            # Route summary
            if route_passed == route_total:
                print(f"  {Fore.GREEN}All {route_total} test(s) passed{Style.RESET_ALL}\n")
            else:
                failed = route_total - route_passed
                print(f"  {Fore.RED}{failed}/{route_total} test(s) failed{Style.RESET_ALL}\n")
                failed_routes.append(route_name)

            self.results.extend(results)

        # Final summary
        print(f"{Fore.CYAN}{'='*60}{Style.RESET_ALL}")
        print(f"{Fore.CYAN}Summary{Style.RESET_ALL}")
        print(f"{Fore.CYAN}{'='*60}{Style.RESET_ALL}\n")

        success_rate = (passed_tests / total_tests * 100) if total_tests > 0 else 0

        if passed_tests == total_tests:
            print(f"{Fore.GREEN}✓ All {total_tests} tests passed! (100%){Style.RESET_ALL}\n")
            return True
        else:
            failed = total_tests - passed_tests
            print(f"{Fore.RED}✗ {failed}/{total_tests} tests failed ({success_rate:.1f}% passed){Style.RESET_ALL}\n")

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
