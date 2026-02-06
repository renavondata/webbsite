#!/usr/bin/env python3
"""
Helper to save Brightdata MCP-scraped HTML to cache.
Usage: pipe JSON from Brightdata scrape_as_html result into this script.
  python crawl_brightdata.py <subdir> <filename> < scraped.json
Or call save_html() directly.
"""
import json
import sys
from pathlib import Path

CACHE_DIR = Path(__file__).parent / "ground_truth" / "asp_cache"


def save_html(subdir: str, filename: str, html: str):
    """Save HTML content to cache."""
    cache_path = CACHE_DIR / subdir / filename
    cache_path.parent.mkdir(parents=True, exist_ok=True)
    cache_path.write_text(html, encoding="utf-8")
    print(f"Saved: {cache_path} ({len(html)} bytes)")


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python crawl_brightdata.py <subdir> <filename>")
        sys.exit(1)
    subdir, filename = sys.argv[1], sys.argv[2]
    data = json.load(sys.stdin)
    html = data[0]["text"] if isinstance(data, list) else data["text"]
    save_html(subdir, filename, html)
