# View Migration Status - 2025-10-27

## Summary
Attempted to fix remaining 29 views with MySQL→PostgreSQL syntax conversion.

**Result**: Automated conversion not reliable enough for production deployment.

## Problem
MySQL uses nested JOIN parentheses that PostgreSQL rejects:
- MySQL: `FROM ((table1 JOIN table2) JOIN table3) ON(...)`  
- PostgreSQL: Requires flat JOINs with distributed ON clauses

Regex-based conversion cannot reliably flatten the JOIN tree and distribute ON clauses correctly.

## Decision: DEFER VIEW FIXES ✅

**Reasons**:
1. **No production impact** - Flask doesn't currently use the failing views
2. **Low priority** - Views mostly for legacy ASP pages not yet migrated
3. **Time cost** - Manual fix = 2-4 hours for 29 views
4. **Dependencies** - Some views need additional functions (SPLITADJ, OUTSTANDING) not yet ported

## What's Working (17/46 views deployed)
- All CCASS views (3/3) ✅
- Core lookup views ✅
- Stock listing views ✅  
- Key reference views ✅

## What's Deferred (29/46 views)
- Legacy data quality views (missingage, missingdistdate, etc.)
- Historical analysis views (st1cos, st2cos, st4cos, etc.)
- INED director views (inedhk*, inednow*)
- Legacy web views for unmigrated ASP pages

## Recommendation
Fix views on-demand when:
1. Migrating specific ASP pages that need them
2. User requests specific legacy functionality
3. Time permits and there's clear value

Alternative: Use direct SQL queries in Flask routes instead of views (better performance, more maintainable).

## Files
- `database/migrations/VIEW_FIX_GUIDE.md` - Complete fix guide with examples
- Scripts created but not used in production (automated fixes unreliable)
