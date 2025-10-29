#!/usr/bin/env python3
"""
Ground Truth Fetcher for Webb-site.com

Systematically fetches all ASP outputs from webb-site.com before October 31, 2025 shutdown
and saves them as ground truth for future Flask validation.

Usage:
    python tests/fetch_ground_truth.py                  # Fetch all routes
    python tests/fetch_ground_truth.py --route listed   # Fetch specific route
    python tests/fetch_ground_truth.py --resume         # Resume from progress file
    python tests/fetch_ground_truth.py --dry-run        # Show what would be fetched
"""

import argparse
import json
import re
import sys
import time
from pathlib import Path
from typing import Dict, List, Optional, Tuple
from urllib.parse import urlencode

import requests
import yaml
from colorama import Fore, Style, init

# Initialize colorama
init(autoreset=True)


class GroundTruthFetcher:
    """Fetches and archives ASP outputs from webb-site.com"""

    def __init__(
        self,
        config_path: str = "tests/test_config.yaml",
        output_dir: str = "tests/ground_truth",
        rate_limit: float = 0.5,
    ):
        """
        Initialize fetcher

        Args:
            config_path: Path to test configuration YAML
            output_dir: Directory to save ground truth files
            rate_limit: Minimum seconds between requests (default 0.5)
        """
        self.config = self._load_config(config_path)
        self.asp_base = self.config["asp_base"]
        self.timeout = self.config.get("timeout", {}).get("request", 30)
        self.output_dir = Path(output_dir)
        self.rate_limit = rate_limit
        self.metadata = {}
        self.progress_file = self.output_dir / "fetch_progress.json"
        self.metadata_file = self.output_dir / "metadata.json"
        self.completed = set()

        # Create output directory structure
        self.output_dir.mkdir(exist_ok=True)
        (self.output_dir / "dbpub").mkdir(exist_ok=True)
        (self.output_dir / "ccass").mkdir(exist_ok=True)

        # Load existing progress if available
        self._load_progress()

    def _load_config(self, config_path: str) -> dict:
        """Load test configuration from YAML"""
        config_file = Path(config_path)
        if not config_file.exists():
            raise FileNotFoundError(f"Config file not found: {config_path}")

        with open(config_file, "r", encoding="utf-8") as f:
            return yaml.safe_load(f)

    def _load_progress(self):
        """Load progress from previous run"""
        if self.progress_file.exists():
            with open(self.progress_file, "r", encoding="utf-8") as f:
                progress = json.load(f)
                self.completed = set(progress.get("completed", []))
                print(
                    f"{Fore.CYAN}Resuming from previous run: {len(self.completed)} URLs already fetched{Style.RESET_ALL}\n"
                )

        if self.metadata_file.exists():
            with open(self.metadata_file, "r", encoding="utf-8") as f:
                self.metadata = json.load(f)

    def _save_progress(self):
        """Save current progress"""
        progress = {"completed": list(self.completed), "total": len(self.metadata)}

        with open(self.progress_file, "w", encoding="utf-8") as f:
            json.dump(progress, f, indent=2)

        with open(self.metadata_file, "w", encoding="utf-8") as f:
            json.dump(self.metadata, f, indent=2, ensure_ascii=False)

    def _make_safe_filename(self, route_name: str, params: dict, index: int) -> str:
        """
        Create safe filename from route and parameters

        Format: {route_name}_{case_number}_{params}.html
        Example: listed_1_e=m_t=s_d=2024-10-01.html
        """
        # Start with route name
        parts = [route_name.replace(" ", "_").replace("-", "_")]

        # Add case number
        parts.append(f"case{index + 1}")

        # Add key parameters (sorted for consistency)
        if params:
            param_str = "_".join(
                f"{k}={v}" for k, v in sorted(params.items()) if v is not None
            )
            # Sanitize parameter string
            param_str = re.sub(r'[<>:"/\\|?*]', "_", param_str)
            param_str = param_str[:100]  # Limit length
            if param_str:
                parts.append(param_str)

        filename = "_".join(parts) + ".html"

        # Replace any remaining problematic characters
        filename = re.sub(r"[^\w\s.-]", "_", filename)

        return filename

    def _categorize_route(self, path: str) -> str:
        """
        Determine subdirectory for route based on path

        Returns:
            Subdirectory name (e.g., 'dbpub', 'ccass')
        """
        if "/ccass/" in path:
            return "ccass"
        elif "/dbpub/" in path:
            return "dbpub"
        else:
            return "other"

    def fetch_url(self, url: str) -> Optional[Tuple[str, int]]:
        """
        Fetch URL from webb-site.com

        Args:
            url: Full URL to fetch

        Returns:
            Tuple of (html_content, status_code) or None on error
        """
        try:
            # Apply route-specific timeout if configured
            timeout = self.timeout

            response = requests.get(url, timeout=timeout, allow_redirects=True)

            # Check for errors
            if response.status_code == 404:
                print(
                    f"  {Fore.YELLOW}⚠ 404 Not Found - route may not exist on ASP server{Style.RESET_ALL}"
                )
                return None

            if response.status_code >= 500:
                print(
                    f"  {Fore.RED}✗ HTTP {response.status_code} Server Error{Style.RESET_ALL}"
                )
                return None

            response.raise_for_status()
            return response.text, response.status_code

        except requests.Timeout:
            print(f"  {Fore.YELLOW}⚠ Timeout after {timeout}s{Style.RESET_ALL}")
            return None
        except requests.RequestException as e:
            print(f"  {Fore.RED}✗ Error: {e}{Style.RESET_ALL}")
            return None

    def fetch_route(
        self, route: dict, dry_run: bool = False
    ) -> Tuple[int, int, int]:
        """
        Fetch all parameter combinations for a route

        Args:
            route: Route configuration from YAML
            dry_run: If True, only show what would be fetched

        Returns:
            Tuple of (total, success, skipped) counts
        """
        route_name = route["name"]
        path = route["path"]
        param_sets = route.get("params", [{}])

        total = len(param_sets)
        success = 0
        skipped = 0

        print(f"{Fore.BLUE}Fetching: {route_name} ({total} case(s)){Style.RESET_ALL}")

        for idx, params in enumerate(param_sets):
            # Convert None to empty dict
            if params is None:
                params = {}

            # Build URL
            url = f"{self.asp_base}{path}"
            if params:
                url = f"{url}?{urlencode(params)}"

            # Create unique identifier for this URL
            url_id = f"{route_name}:{idx}:{url}"

            # Skip if already fetched
            if url_id in self.completed:
                print(
                    f"  {Fore.CYAN}⊙ Case {idx + 1}: Already fetched (skipping){Style.RESET_ALL}"
                )
                skipped += 1
                continue

            # Determine output location
            category = self._categorize_route(path)
            filename = self._make_safe_filename(route_name, params, idx)
            output_path = self.output_dir / category / filename

            print(f"  {Fore.CYAN}→ Case {idx + 1}: {url}{Style.RESET_ALL}")
            print(f"    Saving to: {category}/{filename}")

            if dry_run:
                success += 1
                continue

            # Fetch URL
            result = self.fetch_url(url)

            if result is None:
                continue

            html_content, status_code = result

            # Save to file
            with open(output_path, "w", encoding="utf-8") as f:
                f.write(html_content)

            # Update metadata
            self.metadata[url] = {
                "route_name": route_name,
                "path": path,
                "params": params,
                "case_number": idx + 1,
                "filename": f"{category}/{filename}",
                "status_code": status_code,
                "content_length": len(html_content),
                "fetched_at": time.strftime("%Y-%m-%d %H:%M:%S"),
            }

            # Mark as completed
            self.completed.add(url_id)
            success += 1

            print(
                f"  {Fore.GREEN}✓ Saved ({len(html_content)} bytes){Style.RESET_ALL}"
            )

            # Save progress after each successful fetch
            self._save_progress()

            # Rate limiting
            if idx < total - 1:  # Don't sleep after last request
                time.sleep(self.rate_limit)

        return total, success, skipped

    def fetch_all(
        self, route_filter: Optional[str] = None, dry_run: bool = False
    ) -> bool:
        """
        Fetch all routes from config

        Args:
            route_filter: Only fetch routes matching this name
            dry_run: If True, only show what would be fetched

        Returns:
            True if all fetches succeeded
        """
        routes = self.config.get("routes", [])

        print(f"\n{Fore.CYAN}{'='*70}{Style.RESET_ALL}")
        print(
            f"{Fore.CYAN}Ground Truth Fetcher - Webb-site.com Archive{Style.RESET_ALL}"
        )
        print(f"{Fore.CYAN}{'='*70}{Style.RESET_ALL}\n")
        print(f"ASP base:     {self.asp_base}")
        print(f"Output dir:   {self.output_dir}")
        print(f"Rate limit:   {self.rate_limit}s between requests")
        print(f"Total routes: {len(routes)}")

        if dry_run:
            print(f"{Fore.YELLOW}DRY RUN MODE - No files will be fetched{Style.RESET_ALL}")

        print()

        total_cases = 0
        success_cases = 0
        skipped_cases = 0
        failed_routes = []

        for route in routes:
            route_name = route["name"]

            # Apply filter if specified
            if route_filter and route_filter.lower() not in route_name.lower():
                continue

            # Fetch route
            try:
                total, success, skipped = self.fetch_route(route, dry_run)
                total_cases += total
                success_cases += success
                skipped_cases += skipped

                if success < total - skipped:
                    failed_routes.append(route_name)

                print()  # Blank line between routes

            except KeyboardInterrupt:
                print(
                    f"\n{Fore.YELLOW}⚠ Interrupted by user - saving progress...{Style.RESET_ALL}"
                )
                self._save_progress()
                print(
                    f"{Fore.GREEN}✓ Progress saved to {self.progress_file}{Style.RESET_ALL}"
                )
                return False

            except Exception as e:
                print(
                    f"{Fore.RED}✗ Error fetching {route_name}: {e}{Style.RESET_ALL}\n"
                )
                failed_routes.append(route_name)

        # Final summary
        print(f"{Fore.CYAN}{'='*70}{Style.RESET_ALL}")
        print(f"{Fore.CYAN}Summary{Style.RESET_ALL}")
        print(f"{Fore.CYAN}{'='*70}{Style.RESET_ALL}\n")

        print(f"Total test cases: {total_cases}")
        print(f"{Fore.GREEN}Successfully fetched: {success_cases}{Style.RESET_ALL}")
        print(f"{Fore.CYAN}Skipped (already fetched): {skipped_cases}{Style.RESET_ALL}")

        failed_cases = total_cases - success_cases - skipped_cases
        if failed_cases > 0:
            print(f"{Fore.RED}Failed: {failed_cases}{Style.RESET_ALL}")

        print()

        if not dry_run:
            print(f"Output directory: {self.output_dir.absolute()}")
            print(f"Metadata file: {self.metadata_file}")
            print(f"Progress file: {self.progress_file}")
            print()

        if failed_routes:
            print(f"{Fore.YELLOW}Routes with failures:{Style.RESET_ALL}")
            for route in failed_routes:
                print(f"  - {route}")
            print()
            return False

        if success_cases > 0 or skipped_cases > 0:
            print(
                f"{Fore.GREEN}✓ Ground truth archive complete!{Style.RESET_ALL}\n"
            )
            return True
        else:
            print(
                f"{Fore.YELLOW}⚠ No files were fetched (check filter or config){Style.RESET_ALL}\n"
            )
            return False


def main():
    """Main entry point"""
    parser = argparse.ArgumentParser(
        description="Fetch ASP outputs from webb-site.com as ground truth archive"
    )
    parser.add_argument(
        "--route",
        help="Filter to specific route name (partial match)",
        default=None,
    )
    parser.add_argument(
        "--resume",
        action="store_true",
        help="Resume from previous run (automatic if progress file exists)",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Show what would be fetched without actually fetching",
    )
    parser.add_argument(
        "--rate-limit",
        type=float,
        default=0.5,
        help="Seconds to wait between requests (default: 0.5)",
    )
    parser.add_argument(
        "--config",
        default="tests/test_config.yaml",
        help="Path to test config file (default: tests/test_config.yaml)",
    )
    parser.add_argument(
        "--output-dir",
        default="tests/ground_truth",
        help="Output directory (default: tests/ground_truth)",
    )

    args = parser.parse_args()

    try:
        fetcher = GroundTruthFetcher(
            config_path=args.config,
            output_dir=args.output_dir,
            rate_limit=args.rate_limit,
        )

        success = fetcher.fetch_all(route_filter=args.route, dry_run=args.dry_run)

        sys.exit(0 if success else 1)

    except KeyboardInterrupt:
        print(f"\n{Fore.YELLOW}⚠ Interrupted by user{Style.RESET_ALL}")
        sys.exit(130)
    except Exception as e:
        print(f"{Fore.RED}Fatal error: {e}{Style.RESET_ALL}")
        import traceback

        traceback.print_exc()
        sys.exit(2)


if __name__ == "__main__":
    main()
