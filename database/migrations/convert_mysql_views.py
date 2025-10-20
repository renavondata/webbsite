#!/usr/bin/env python3
"""Convert MySQL view definitions to PostgreSQL syntax."""
import re
import sys


def convert_view_to_postgres(mysql_sql, view_name, schema):
    """
    Convert a single MySQL view definition to PostgreSQL.

    Args:
        mysql_sql: MySQL SELECT statement (without CREATE VIEW wrapper)
        view_name: Name of the view
        schema: Schema name (enigma or ccass)

    Returns:
        PostgreSQL CREATE OR REPLACE VIEW statement
    """
    sql = mysql_sql

    # Step 1: Remove backticks (convert to unquoted identifiers)
    sql = sql.replace('`', '')

    # Step 2: Convert IFNULL to COALESCE
    sql = re.sub(r'\bifnull\s*\(', 'COALESCE(', sql, flags=re.IGNORECASE)

    # Step 3: Remove ORDER BY NULL (MySQL-specific optimization)
    sql = re.sub(r'\bORDER BY NULL\b', '', sql, flags=re.IGNORECASE)

    # Step 3a: Remove MySQL CONVERT(...USING...) - just keep the column
    # CONVERT(column USING charset) -> column::TEXT
    sql = re.sub(r'\bconvert\s*\(([^,]+?)\s+using\s+[^)]+\)', r'\1::TEXT', sql, flags=re.IGNORECASE)

    # Step 3b: Convert MySQL date functions to PostgreSQL
    sql = re.sub(r'\bcurdate\s*\(\s*\)', 'CURRENT_DATE', sql, flags=re.IGNORECASE)
    sql = re.sub(r'\bnow\s*\(\s*\)', 'CURRENT_TIMESTAMP', sql, flags=re.IGNORECASE)

    # Step 4: Add schema qualification to table references
    # This is the tricky part - we need to identify table names
    # For now, we'll do this manually for known tables
    sql = qualify_table_names(sql, schema)

    # Step 5: Handle column aliases with special characters
    # PostgreSQL requires quotes for aliases like "Max(atDate)"
    sql = fix_column_aliases(sql)

    # Step 6: Clean up whitespace
    sql = ' '.join(sql.split())

    # Step 7: Format as PostgreSQL CREATE VIEW
    pg_sql = f"-- View: {view_name}\n"
    pg_sql += f"CREATE OR REPLACE VIEW {schema}.{view_name} AS\n"
    pg_sql += format_sql(sql)
    pg_sql += ";\n"

    return pg_sql


def qualify_table_names(sql, schema):
    """
    Add schema qualification to table and view references.

    This is a helper function but requires manual review since we need to
    distinguish between table names and column names.
    """
    # Known tables in each schema (not exhaustive - add more as needed)
    ccass_tables = ['holdings', 'parthold', 'quotes', 'participants', 'dailylog',
                    'calendar', 'specialdays', 'bigchanges', 'shortnames', 'pquotes']

    ccass_views = ['maxdate', 'holdingsperdate', 'latestholdings']

    enigma_tables = ['organisations', 'people', 'issue', 'adviserships', 'directorships',
                     'positions', 'stocklistings', 'listings', 'events', 'sectypes',
                     'entitlements', 'licrec', 'lsemps', 'capchanges', 'issuedshares',
                     'forexrates', 'currpair', 'govac', 'documents', 'advisers', 'roles',
                     'relationships', 'bbexch', 'currencies', 'categories', 'classifications',
                     'cattree', 'sholdings', 'hkexdata']

    enigma_views = ['listedcoshk', 'listedcoshkever', 'listedcoshkall', 'webholders3',
                    'webholdings3', 'lasthlddate', 'lastmreturn']

    # For CCASS schema, qualify CCASS tables and views
    if schema == 'ccass':
        for table in ccass_tables + ccass_views:
            # Match "FROM tablename" or "JOIN tablename" or "FROM (tablename"
            sql = re.sub(r'\b(FROM|JOIN)\s+\(?' + table + r'\b',
                         r'\1 ccass.' + table, sql, flags=re.IGNORECASE)
            # Also match in column references: tablename.columnname
            sql = re.sub(r'\b' + table + r'\.', 'ccass.' + table + '.', sql, flags=re.IGNORECASE)

        # Also need to qualify references to enigma tables/views from ccass views
        for table in ['issue', 'organisations']:
            sql = re.sub(r'\b(FROM|JOIN)\s+\(?' + table + r'\b',
                         r'\1 enigma.' + table, sql, flags=re.IGNORECASE)
            sql = re.sub(r'\b' + table + r'\.', 'enigma.' + table + '.', sql, flags=re.IGNORECASE)

    # For Enigma schema, qualify Enigma tables and views
    elif schema == 'enigma':
        for table in enigma_tables + enigma_views:
            sql = re.sub(r'\b(FROM|JOIN)\s+\(?' + table + r'\b',
                         r'\1 enigma.' + table, sql, flags=re.IGNORECASE)
            sql = re.sub(r'\b' + table + r'\.', 'enigma.' + table + '.', sql, flags=re.IGNORECASE)

        # Also qualify references to CCASS tables
        for table in ccass_tables + ccass_views:
            sql = re.sub(r'\b(FROM|JOIN)\s+\(?' + table + r'\b',
                         r'\1 ccass.' + table, sql, flags=re.IGNORECASE)
            sql = re.sub(r'\b' + table + r'\.', 'ccass.' + table + '.', sql, flags=re.IGNORECASE)

    return sql


def fix_column_aliases(sql):
    """
    Fix column aliases that need quoting in PostgreSQL.

    Aliases with special characters like Count(holding) or Max(atDate)
    need to be quoted in PostgreSQL.

    Also quote column references to those aliases.
    """
    # Step 1: Find all aliases with special characters (parentheses)
    # Pattern: AS identifier where identifier contains special chars
    alias_pattern = r'\bAS\s+([A-Za-z]+\([^)]+\))'

    # Collect all such aliases
    aliases_needing_quotes = set()
    for match in re.finditer(alias_pattern, sql, re.IGNORECASE):
        aliases_needing_quotes.add(match.group(1))

    # Step 2: Add quotes to AS aliases
    sql = re.sub(alias_pattern, r'AS "\1"', sql, flags=re.IGNORECASE)

    # Step 3: Add quotes to column references (table.alias or schema.table.alias)
    for alias in aliases_needing_quotes:
        # Match: word.alias or word.word.alias (schema.table.column)
        # Replace with: word."alias" or word.word."alias"
        # Use lookahead to match but not quote if already quoted
        sql = re.sub(r'([\w.]+)\.' + re.escape(alias) + r'\b(?!")',
                     r'\1."' + alias + '"', sql, flags=re.IGNORECASE)

    return sql


def format_sql(sql):
    """
    Format SQL for readability.

    This is a simple formatter - just breaks at FROM/WHERE/JOIN/GROUP/ORDER.
    """
    # For now, don't format - just return as is
    # Formatting is removing FROM which breaks the SQL
    return sql


def needs_manual_review(view_name, sql):
    """
    Determine if a view needs manual review.

    Returns a list of issues that require manual attention.
    """
    issues = []

    # Check for custom functions
    custom_functions = ['MSdateAcc', 'STOCKCODETHEN', 'SPLITADJ', 'everListCo',
                        'OUTSTANDING', 'nameppl']

    for func in custom_functions:
        if func in sql:
            issues.append(f"Uses custom function: {func}")

    # Check for view dependencies (views that reference other views)
    # This is approximate - looks for known view names
    known_views = ['listedcoshkall', 'listedcoshkever', 'listedcoshk', 'maxdate',
                   'webholders3', 'webholdings3', 'lasthlddate']

    for view in known_views:
        if re.search(r'\b' + view + r'\b', sql, re.IGNORECASE):
            issues.append(f"Depends on view: {view}")

    return issues


def main():
    """
    Main entry point.

    This is a utility library - the actual conversion is done view-by-view
    in the migration scripts.
    """
    print("MySQL to PostgreSQL View Conversion Helper")
    print("=" * 80)
    print()
    print("This module provides conversion utilities for view migration.")
    print()
    print("Key functions:")
    print("  - convert_view_to_postgres(mysql_sql, view_name, schema)")
    print("  - qualify_table_names(sql, schema)")
    print("  - fix_column_aliases(sql)")
    print("  - needs_manual_review(view_name, sql)")
    print()
    print("Usage: Import this module in your migration scripts")
    print()
    print("Note: Some conversions require manual review:")
    print("  - Schema qualification may miss some tables")
    print("  - Custom function calls need verification")
    print("  - View dependencies must be resolved in correct order")


if __name__ == '__main__':
    main()
