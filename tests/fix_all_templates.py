#!/usr/bin/env python3
"""Comprehensive fix for all url_for references in templates"""

import re
from pathlib import Path

# Complete mapping of all route names to correct blueprint.function format
ROUTE_MAPPINGS = {
    "advisers": "dbpub_corporate.advisers",
    "adviserships": "dbpub_statistics.adviserships",
    "alltotrets": "dbpub_market_data.alltotrets",
    "articles": "dbpub_articles.articles",
    "boardcomp": "dbpub_statistics.boardcomp",
    "bornday": "dbpub_statistics.bornday",
    "bornyear": "dbpub_statistics.bornyear",
    "buybacks": "dbpub_buybacks.buybacks",
    "buybacksum": "dbpub_buybacks.buybacksum",
    "buybackstime": "dbpub_buybacks.buybackstime",
    "chart": "dbpub_market_data.chart",
    "code": "dbpub_listings.code",
    "ctr": "dbpub_market_data.ctr",
    "delisted": "dbpub_listings.delisted",
    "docs": "dbpub_events.docs",
    "domicile": "dbpub_incorporations.domicile",
    "domicilechange": "dbpub_incorporations.domicilechange",
    "enigma_orgdata": "dbpub_statistics.enigma_orgdata",
    "essraw": "dbpub_statistics.essraw",
    "events": "dbpub_events.events",
    "holdings": "dbpub_corporate.holdings",
    "holders": "dbpub_corporate.holders",
    "hpu": "dbpub_statistics.hpu",
    "incUKcaltype": "dbpub_incorporations.incUKcaltype",
    "listed": "dbpub_listings.listed",
    "mcap": "dbpub_market_data.mcap",
    "mcaphist": "dbpub_market_data.mcaphist",
    "natperson": "dbpub_people.natperson",
    "officers": "dbpub_corporate.officers",
    "orgdata": "dbpub_statistics.orgdata",
    "outstanding": "dbpub_statistics.outstanding",
    "overlap": "dbpub_statistics.overlap",
    "pay": "dbpub_statistics.pay",
    "positions": "dbpub_corporate.positions",
    "possum": "dbpub_statistics.possum",
    "roles": "dbpub_statistics.roles",
    "searchorgs": "dbpub_people.searchorgs",
    "searchpeople": "dbpub_people.searchpeople",
    "sdicap": "dbpub_sdi.sdicap",
    "sdidir": "dbpub_sdi.sdidir",
    "sdidirco": "dbpub_sdi.sdidirco",
    "sdiissue": "dbpub_sdi.sdiissue",
    "sdilatest": "dbpub_sdi.sdilatest",
    "sfcolicrec": "dbpub_sfc.sfcolicrec",
    "short": "dbpub_short_selling.short",
    "splits": "dbpub_corporate.splits",
    "str_route": "dbpub_statistics.str_route",
}

def fix_template(template_path):
    """Fix all url_for references in a template file"""
    try:
        content = template_path.read_text()
        original_content = content
        changes = 0

        for route_name, correct_endpoint in ROUTE_MAPPINGS.items():
            # Pattern to match url_for('dbpub.route_name'
            pattern = rf"url_for\('dbpub\.{route_name}'"
            replacement = f"url_for('{correct_endpoint}'"

            new_content = re.sub(pattern, replacement, content)
            if new_content != content:
                count = len(re.findall(pattern, content))
                changes += count
                content = new_content

        if content != original_content:
            template_path.write_text(content)
            return changes
        return 0
    except Exception as e:
        print(f"Error processing {template_path}: {e}")
        return 0

def main():
    templates_dir = Path("webbsite/templates")
    total_changes = 0
    files_changed = 0

    print("Fixing url_for references in all templates...")
    print()

    for template_path in sorted(templates_dir.rglob("*.html")):
        changes = fix_template(template_path)
        if changes > 0:
            print(f"  {template_path.relative_to(templates_dir)}: Fixed {changes} reference(s)")
            total_changes += changes
            files_changed += 1

    print()
    print(f"Total: Fixed {total_changes} references in {files_changed} files")

if __name__ == "__main__":
    main()
