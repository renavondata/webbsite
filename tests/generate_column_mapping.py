#!/usr/bin/env python3
"""
Generate comprehensive column mapping for all enigma and ccass tables
Compares PostgreSQL schema against code expectations
"""
import sys
sys.path.insert(0, '/home/g/Sync/git/webbsite')

from webbsite import create_app
from webbsite.db import execute_query

app = create_app()

def get_all_tables(schema):
    """Get all table names in schema"""
    with app.app_context():
        result = execute_query(f"""
            SELECT table_name
            FROM information_schema.tables
            WHERE table_schema = %s
            ORDER BY table_name
        """, (schema,))
        return [row['table_name'] for row in result]

def get_table_columns(schema, table):
    """Get all columns for a table"""
    with app.app_context():
        result = execute_query(f"""
            SELECT column_name, data_type, character_maximum_length
            FROM information_schema.columns
            WHERE table_schema = %s AND table_name = %s
            ORDER BY ordinal_position
        """, (schema, table))
        return result

def main():
    print("=" * 80)
    print("PostgreSQL Schema Column Mapping")
    print("=" * 80)
    print()

    # Map both schemas
    for schema in ['enigma', 'ccass']:
        print(f"\n{'=' * 80}")
        print(f"Schema: {schema}")
        print('=' * 80)

        tables = get_all_tables(schema)
        print(f"\nFound {len(tables)} tables in {schema} schema\n")

        for table in tables:
            columns = get_table_columns(schema, table)

            print(f"\n{schema}.{table} ({len(columns)} columns):")
            print("-" * 60)

            for col in columns:
                col_name = col['column_name']
                data_type = col['data_type']
                max_len = col['character_maximum_length']

                type_str = data_type
                if max_len:
                    type_str = f"{data_type}({max_len})"

                print(f"  {col_name:<30} {type_str}")

if __name__ == "__main__":
    main()
