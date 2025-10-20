#!/usr/bin/env python3
"""Extract view definitions from MySQL dump files."""
import re
import sys
from pathlib import Path


def extract_views(sql_file):
    """
    Extract CREATE VIEW statements from MySQL dump.

    MySQL dumps contain views in two parts:
    1. Placeholder CREATE VIEW (with "1 AS columnname")
    2. Actual view definition in "Final view structure" section

    We want the actual definition from the "Final view structure" section.
    The CREATE VIEW statement may span multiple lines.
    """
    with open(sql_file, 'r', encoding='utf-8') as f:
        content = f.read()

    # Split by "Final view structure" markers
    sections = re.split(r'-- Final view structure for view `(\w+)`', content)

    views = []
    # sections will be: [before_first_view, view1_name, view1_content, view2_name, view2_content, ...]
    for i in range(1, len(sections), 2):
        if i + 1 < len(sections):
            view_name = sections[i]
            section_content = sections[i + 1]

            # Find the actual CREATE VIEW statement (the one with full SQL, not "SELECT 1 AS")
            # It's in a /*!50001 VIEW ... */ comment
            match = re.search(r'/\*!50001 VIEW `' + re.escape(view_name) + r'` AS (select .+?) \*/;',
                              section_content, re.IGNORECASE | re.DOTALL)
            if match:
                definition = match.group(1)
                views.append((view_name, definition))

    return views


def main():
    if len(sys.argv) < 2:
        print("Usage: python extract_views.py <schema>")
        print("  schema: enigma or ccass")
        sys.exit(1)

    schema = sys.argv[1].lower()

    # Find the SQL structure file
    if schema == 'enigma':
        sql_file = Path("Enigma schema/enigmaStructure-2025-10-11- 000.sql")
    elif schema == 'ccass':
        sql_file = Path("CCASS schema/ccassStructure-2025-10-11- 600.sql")
    else:
        print(f"Unknown schema: {schema}")
        sys.exit(1)

    if not sql_file.exists():
        print(f"File not found: {sql_file}")
        print(f"Run this script from the webbsite repository root")
        sys.exit(1)

    views = extract_views(sql_file)

    print(f"Found {len(views)} views in {schema} schema:\n")
    print("=" * 80)

    for view_name, definition in views:
        print(f"\n-- View: {view_name}")
        print("-" * 80)

        # Show first 300 chars of definition
        clean_def = ' '.join(definition.split())[:300]
        print(f"{clean_def}...")
        print()


if __name__ == '__main__':
    main()
