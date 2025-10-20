#!/bin/bash
# Apply view migrations to PostgreSQL
# Usage: ./apply_views.sh [database-url]

set -e  # Exit on error

DB_URL="${1:-${DATABASE_URL:-postgresql://postgres:@localhost:5432/enigma_pg}}"

echo "==================================="
echo "MySQL Views Migration to PostgreSQL"
echo "==================================="
echo "Database: $DB_URL"
echo ""

echo "Step 1: Applying custom functions..."
psql "$DB_URL" -f database/migrations/enigma_functions.sql
if [ $? -eq 0 ]; then
    echo "✅ Custom functions created successfully"
else
    echo "❌ Custom functions failed"
    exit 1
fi

echo ""
echo "Step 2: Applying CCASS views (3 views)..."
psql "$DB_URL" -f database/migrations/ccass_views.sql
if [ $? -eq 0 ]; then
    echo "✅ CCASS views created successfully"
else
    echo "❌ CCASS views failed"
    exit 1
fi

echo ""
echo "Step 3: Applying Enigma views (58 views)..."
echo "⚠️  Warning: This will have errors - views need manual fixes"
psql "$DB_URL" -f database/migrations/enigma_views.sql 2>&1 | tee enigma_views_errors.log
echo ""
echo "Errors logged to: enigma_views_errors.log"

echo ""
echo "==================================="
echo "Views migration partially complete"
echo "==================================="
echo ""

echo "Verifying CCASS views..."
psql "$DB_URL" -c "\\dv ccass.*"

echo ""
echo "Verifying Enigma views..."
psql "$DB_URL" -c "SELECT COUNT(*) AS enigma_views_count FROM pg_views WHERE schemaname = 'enigma';"

echo ""
echo "Testing CCASS views:"
echo "  - maxdate rows:"
psql "$DB_URL" -c "SELECT COUNT(*) FROM ccass.maxdate;" -t
echo "  - holdingsperdate rows:"
psql "$DB_URL" -c "SELECT COUNT(*) FROM ccass.holdingsperdate;" -t
echo "  - latestholdings rows:"
psql "$DB_URL" -c "SELECT COUNT(*) FROM ccass.latestholdings;" -t

echo ""
echo "==================================="
echo "Summary"
echo "==================================="
echo "✅ CCASS: 3/3 views working"
echo "⚠️  Enigma: Partial (see enigma_views_errors.log)"
echo ""
echo "Next steps:"
echo "  1. Review enigma_views_errors.log"
echo "  2. Manually fix views with errors"
echo "  3. See docs/database/views-migration-status.md for details"
