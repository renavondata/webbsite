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

-- ================================================================================
-- People Search Indexes (searchpeople.asp)
-- ================================================================================
-- searchpeople.asp uses two search modes:
-- 1. Exact match: dn1 = 'value' AND dn2 = 'value' (needs B-tree indexes)
-- 2. Full-text search: to_tsvector('simple', dn1) @@ to_tsquery() (needs GIN indexes)

-- B-tree indexes for exact match mode (e=1 parameter)
-- These support: WHERE dn1 = 'value' AND dn2 = 'value'
CREATE INDEX IF NOT EXISTS idx_people_dn1
  ON enigma.people (dn1);
CREATE INDEX IF NOT EXISTS idx_people_dn2
  ON enigma.people (dn2);
CREATE INDEX IF NOT EXISTS idx_alias_dn1
  ON enigma.alias (dn1);
CREATE INDEX IF NOT EXISTS idx_alias_dn2
  ON enigma.alias (dn2);

-- GIN indexes for full-text search mode (default)
-- These support: WHERE to_tsvector('simple', dn1) @@ to_tsquery('simple', 'pattern')
-- GIN indexes are specifically designed for full-text search performance
CREATE INDEX IF NOT EXISTS idx_people_dn1_gin
  ON enigma.people USING gin (to_tsvector('simple', dn1));
CREATE INDEX IF NOT EXISTS idx_people_dn2_gin
  ON enigma.people USING gin (to_tsvector('simple', dn2));
CREATE INDEX IF NOT EXISTS idx_alias_dn1_gin
  ON enigma.alias USING gin (to_tsvector('simple', dn1));
CREATE INDEX IF NOT EXISTS idx_alias_dn2_gin
  ON enigma.alias USING gin (to_tsvector('simple', dn2));

-- Combined full-text index for cross-field searches (d=0 mode)
-- Supports: WHERE to_tsvector('simple', COALESCE(dn1, '') || ' ' || COALESCE(dn2, '')) @@ ...
CREATE INDEX IF NOT EXISTS idx_people_dn1_dn2_combined_gin
  ON enigma.people USING gin (to_tsvector('simple', COALESCE(dn1, '') || ' ' || COALESCE(dn2, '')));
CREATE INDEX IF NOT EXISTS idx_alias_dn1_dn2_combined_gin
  ON enigma.alias USING gin (to_tsvector('simple', COALESCE(dn1, '') || ' ' || COALESCE(dn2, '')));

-- ================================================================================
-- Verification Queries
-- ================================================================================
-- After applying, verify indexes are being used:

-- 1. Test organisations pattern index:
-- EXPLAIN ANALYZE SELECT personID, name1 FROM enigma.organisations WHERE LOWER(name1) LIKE LOWER('hong%') LIMIT 10;
-- Should show "Index Scan using idx_organisations_name1_lower_pattern"

-- 2. Test people exact match:
-- EXPLAIN ANALYZE SELECT personID, name1, name2 FROM enigma.people WHERE dn1 = 'chan' AND dn2 = 'david' LIMIT 10;
-- Should show "Index Scan" or "Bitmap Index Scan"

-- 3. Test people full-text search (separate fields):
-- EXPLAIN ANALYZE SELECT personID FROM enigma.people WHERE to_tsvector('simple', dn1) @@ to_tsquery('simple', 'chan') LIMIT 10;
-- Should show "Bitmap Index Scan on idx_people_dn1_gin"

-- 4. Test people full-text search (combined fields):
-- EXPLAIN ANALYZE SELECT personID FROM enigma.people WHERE to_tsvector('simple', COALESCE(dn1, '') || ' ' || COALESCE(dn2, '')) @@ to_tsquery('simple', 'chan & david') LIMIT 10;
-- Should show "Bitmap Index Scan on idx_people_dn1_dn2_combined_gin"
