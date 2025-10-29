#!/usr/bin/env python3
"""Fix url_for calls in templates to use correct blueprint names"""

import re
from pathlib import Path

# Mapping of route names to correct blueprint.route format
# Generated from find_route_mappings.py
ROUTE_MAPPINGS = {
    "advisers": "dbpub_corporate.advisers",
    "adviserships": "dbpub_statistics.adviserships",
    "articles": "dbpub_articles.articles",
    "buybacks": "dbpub_buybacks.buybacks",
    "buybacksum": "dbpub_buybacks.buybacksum",
    "buybackstime": "dbpub_buybacks.buybackstime",
    "chart": "dbpub_market_data.chart",
    "ctr": "dbpub_market_data.ctr",
    "docs": "dbpub_events.docs",
    "essraw": "dbpub_statistics.essraw",
    "hpu": "dbpub_statistics.hpu",
    "mcap": "dbpub_market_data.mcap",
    "mcaphist": "dbpub_market_data.mcaphist",
    "natperson": "dbpub_people.natperson",
    "officers": "dbpub_corporate.officers",
    "orgdata": "dbpub.orgdata",  # This one is in the main dbpub blueprint
    "outstanding": "dbpub_statistics.outstanding",
    "overlap": "dbpub_statistics.overlap",
    "pay": "dbpub_statistics.pay",
    "sdiissue": "dbpub_sdi.sdiissue",
    "sfcolicrec": "dbpub_sfc.sfcolicrec",
    "short": "dbpub_short_selling.short",
    "splits": "dbpub_corporate.splits",
    "str_route": "dbpub_statistics.str_route",
}

def fix_template(template_path):
    """Fix url_for calls in a single template"""
    content = template_path.read_text()
    original_content = content
    changes = 0

    for route_name, correct_endpoint in ROUTE_MAPPINGS.items():
        # Pattern to match url_for('dbpub.route_name'
        pattern = rf"url_for\('dbpub\.{route_name}'"
        replacement = f"url_for('{correct_endpoint}'"

        new_content, count = re.subn(pattern, replacement, content)
        if count > 0:
            print(f"  {template_path.name}: Fixed {count} reference(s) to {route_name}")
            changes += count
            content = new_content

    if content != original_content:
        template_path.write_text(content)
        return changes
    return 0

def main():
    template_dir = Path("webbsite/templates/dbpub")
    total_changes = 0

    print("Fixing url_for calls in templates...")
    print()

    for template_path in sorted(template_dir.glob("*.html")):
        changes = fix_template(template_path)
        total_changes += changes

    print()
    print(f"Total changes: {total_changes}")

if __name__ == "__main__":
    main()
