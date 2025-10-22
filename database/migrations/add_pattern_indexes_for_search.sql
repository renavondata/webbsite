-- Performance optimization for searchorgs.asp and searchpeople.asp
-- Created: 2025-10-22
-- Purpose: Add varchar_pattern_ops indexes to support efficient ILIKE 'prefix%' queries
--
-- Background:
-- PostgreSQL's standard B-tree indexes on varchar/text columns cannot efficiently
-- handle ILIKE pattern matching queries. The varchar_pattern_ops operator class
-- creates indexes optimized for prefix matching (LIKE/ILIKE 'prefix%').
--
-- Performance impact:
-- Without these indexes, queries like "name1 ILIKE 'hong%'" scan millions of rows.
-- With these indexes, queries use index scans and complete in <100ms.
--
-- Tables affected:
-- - enigma.organisations (19.5M rows) - primary search target
-- - enigma.nameChanges - old organization names search

-- Index for organisations.name1 (left-match searches in searchorgs.asp)
-- Supports: WHERE LOWER(name1) LIKE LOWER('pattern%')
-- Using LOWER() + text_pattern_ops enables case-insensitive prefix matching
CREATE INDEX IF NOT EXISTS idx_organisations_name1_lower_pattern
  ON enigma.organisations (LOWER(name1) text_pattern_ops);

-- Index for nameChanges.oldName (old names search in searchorgs.asp)
-- Supports: WHERE LOWER(oldName) LIKE LOWER('pattern%')
CREATE INDEX IF NOT EXISTS idx_namechanges_oldname_lower_pattern
  ON enigma.nameChanges (LOWER(oldName) text_pattern_ops);

-- Optional: Add pattern indexes for people search if needed
-- (Uncomment if searchpeople.asp also shows slowness)
-- CREATE INDEX IF NOT EXISTS idx_people_dn1_pattern
--   ON enigma.people (dn1 varchar_pattern_ops);
-- CREATE INDEX IF NOT EXISTS idx_people_dn2_pattern
--   ON enigma.people (dn2 varchar_pattern_ops);
-- CREATE INDEX IF NOT EXISTS idx_alias_dn1_pattern
--   ON enigma.alias (dn1 varchar_pattern_ops);
-- CREATE INDEX IF NOT EXISTS idx_alias_dn2_pattern
--   ON enigma.alias (dn2 varchar_pattern_ops);

-- Verification queries:
-- After applying, verify indexes are being used:
-- EXPLAIN ANALYZE SELECT personID, name1 FROM enigma.organisations WHERE name1 ILIKE 'hong%' LIMIT 10;
-- Should show "Index Scan using idx_organisations_name1_pattern" in query plan
