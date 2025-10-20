#!/usr/bin/env python3
"""Generate CCASS views migration SQL file."""
import sys
from pathlib import Path

# Import our helpers
from extract_views import extract_views
from convert_mysql_views import convert_view_to_postgres, needs_manual_review


def main():
    # Path to CCASS structure file
    sql_file = Path("CCASS schema/ccassStructure-2025-10-11- 600.sql")

    if not sql_file.exists():
        print(f"Error: {sql_file} not found")
        print("Run this script from the webbsite repository root")
        sys.exit(1)

    # Extract views
    print("Extracting CCASS views...")
    views = extract_views(sql_file)
    print(f"Found {len(views)} views")

    # Generate SQL file
    output_file = Path("database/migrations/ccass_views.sql")

    with open(output_file, 'w', encoding='utf-8') as f:
        # Write header
        f.write("-- CCASS Schema Views Migration\n")
        f.write("-- Generated from MySQL dump: ccassStructure-2025-10-11-600.sql\n")
        f.write(f"-- Total: {len(views)} views\n")
        f.write("-- Date: 2025-10-20\n")
        f.write("\n")
        f.write("SET search_path TO ccass, enigma, public;\n")
        f.write("\n")
        f.write("-- ============================================================\n")
        f.write("-- CCASS Views\n")
        f.write("-- ============================================================\n")
        f.write("\n")

        # Process views in dependency order
        # maxdate and holdingsperdate are independent
        # latestholdings depends on maxdate
        view_order = ['maxdate', 'holdingsperdate', 'latestholdings']

        for view_name in view_order:
            # Find the view in extracted views
            view_def = None
            for name, definition in views:
                if name == view_name:
                    view_def = definition
                    break

            if view_def is None:
                print(f"Warning: View {view_name} not found in extraction!")
                continue

            print(f"\nProcessing view: {view_name}")

            # Check for manual review issues
            issues = needs_manual_review(view_name, view_def)
            if issues:
                print(f"  Manual review needed:")
                for issue in issues:
                    print(f"    - {issue}")
                    f.write(f"-- MANUAL REVIEW: {issue}\n")

            # Convert to PostgreSQL
            pg_sql = convert_view_to_postgres(view_def, view_name, 'ccass')

            # Write to file
            f.write(pg_sql)
            f.write("\n")

            print(f"  ✓ Converted")

    print(f"\n✓ Generated {output_file}")
    print("\nNext steps:")
    print(f"  1. Review {output_file} for any MANUAL REVIEW comments")
    print(f"  2. Test with: psql postgresql://postgres:@localhost:5432/enigma_pg -f {output_file}")
    print(f"  3. Verify with: psql postgresql://postgres:@localhost:5432/enigma_pg -c '\\dv ccass.*'")


if __name__ == '__main__':
    main()
