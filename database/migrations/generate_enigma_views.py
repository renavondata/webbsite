#!/usr/bin/env python3
"""Generate all Enigma views migration SQL file."""
import sys
from pathlib import Path

# Import our helpers
from extract_views import extract_views
from convert_mysql_views import convert_view_to_postgres, needs_manual_review


# Views that already exist in PostgreSQL - skip these
EXISTING_VIEWS = ['listedcoshk', 'listedcoshkever', 'webholders3', 'webholdings3']

# Views that use functions we haven't ported yet - defer to end with warnings
DEFERRED_VIEWS = ['buybacksadj', 'currentlistedshareshk', 'hkmarketcapperstock', 'hkstocksbyboardlot']

# High priority views (used by Flask app) - put these first
HIGH_PRIORITY_VIEWS = [
    # Core listing views
    'listedcoshkall', 'listedcoshkadv', 'webcurrlisted', 'webdelisted',
    # Support views
    'lasthlddate', 'lastmreturn',
    # Lookup views
    'lookupadviser', 'lookupposition', 'lookuprelationship', 'lookuprole',
    # Web views
    'webissues', 'weborgs', 'webdirs', 'webdirships', 'webadv', 'webadvships',
    'webbuybacks', 'webdocs', 'webincats', 'weblistings',
    # Advisory/category views
    'webcatmembers', 'webcattree', 'webcountadvbyrole',
]


def main():
    # Path to Enigma structure file
    sql_file = Path("Enigma schema/enigmaStructure-2025-10-11- 000.sql")

    if not sql_file.exists():
        print(f"Error: {sql_file} not found")
        print("Run this script from the webbsite repository root")
        sys.exit(1)

    # Extract all views
    print("Extracting Enigma views...")
    all_views = extract_views(sql_file)
    print(f"Found {len(all_views)} total views in MySQL dump")

    # Filter out existing views
    views_dict = {name: definition for name, definition in all_views}

    # Remove existing
    for existing in EXISTING_VIEWS:
        if existing in views_dict:
            del views_dict[existing]
            print(f"  Skipping {existing} (already exists)")

    print(f"  {len(views_dict)} views to migrate")

    # Categorize views
    high_priority = []
    deferred = []
    remaining = []

    for view_name in views_dict.keys():
        if view_name in DEFERRED_VIEWS:
            deferred.append(view_name)
        elif view_name in HIGH_PRIORITY_VIEWS:
            high_priority.append(view_name)
        else:
            remaining.append(view_name)

    print(f"\n  High priority: {len(high_priority)} views")
    print(f"  Regular: {len(remaining)} views")
    print(f"  Deferred (missing functions): {len(deferred)} views")

    # Generate SQL file
    output_file = Path("database/migrations/enigma_views.sql")

    with open(output_file, 'w', encoding='utf-8') as f:
        # Write header
        f.write("-- Enigma Schema Views Migration\n")
        f.write("-- Generated from MySQL dump: enigmaStructure-2025-10-11-000.sql\n")
        f.write(f"-- Total: {len(views_dict)} views to migrate\n")
        f.write(f"-- ({len(EXISTING_VIEWS)} views already exist, skipped)\n")
        f.write("-- Date: 2025-10-20\n")
        f.write("\n")
        f.write("SET search_path TO enigma, ccass, public;\n")
        f.write("\n")

        # Process high priority views first
        f.write("-- ============================================================\n")
        f.write(f"-- HIGH PRIORITY VIEWS ({len(high_priority)} views)\n")
        f.write("-- These views are used by the Flask application\n")
        f.write("-- ============================================================\n")
        f.write("\n")

        for view_name in high_priority:
            if view_name not in views_dict:
                print(f"Warning: High priority view {view_name} not found!")
                continue
            process_view(f, view_name, views_dict[view_name])

        # Process remaining views
        f.write("\n-- ============================================================\n")
        f.write(f"-- REGULAR VIEWS ({len(remaining)} views)\n")
        f.write("-- ============================================================\n")
        f.write("\n")

        for view_name in sorted(remaining):
            process_view(f, view_name, views_dict[view_name])

        # Deferred views at the end with warnings
        if deferred:
            f.write("\n-- ============================================================\n")
            f.write(f"-- DEFERRED VIEWS ({len(deferred)} views)\n")
            f.write("-- These views use custom functions that haven't been ported yet:\n")
            f.write("--   STOCKCODETHEN, SPLITADJ, OUTSTANDING\n")
            f.write("-- Uncomment and test after porting those functions\n")
            f.write("-- ============================================================\n")
            f.write("\n")

            for view_name in deferred:
                if view_name not in views_dict:
                    continue
                f.write(f"-- View: {view_name} (COMMENTED OUT - needs functions)\n")
                f.write("-- ")
                pg_sql = convert_view_to_postgres(views_dict[view_name], view_name, 'enigma')
                # Comment out the SQL
                for line in pg_sql.split('\n'):
                    f.write("-- " + line + "\n")
                f.write("\n")

    print(f"\n✓ Generated {output_file}")
    print(f"\n  High priority views: {len(high_priority)}")
    print(f"  Regular views: {len(remaining)}")
    print(f"  Deferred views: {len(deferred)} (commented out)")
    print(f"\nNext steps:")
    print(f"  1. Review {output_file} for any MANUAL REVIEW comments")
    print(f"  2. Test with: psql postgresql://postgres:@localhost:5432/enigma_pg -f {output_file}")
    print(f"  3. Verify with: psql postgresql://postgres:@localhost:5432/enigma_pg -c '\\dv enigma.*'")


def process_view(f, view_name, view_def):
    """Process a single view and write to file."""
    print(f"  Processing: {view_name}")

    # Check for manual review issues
    issues = needs_manual_review(view_name, view_def)
    if issues:
        for issue in issues:
            f.write(f"-- MANUAL REVIEW: {issue}\n")

    # Convert to PostgreSQL
    pg_sql = convert_view_to_postgres(view_def, view_name, 'enigma')

    # Write to file
    f.write(pg_sql)
    f.write("\n")


if __name__ == '__main__':
    main()
