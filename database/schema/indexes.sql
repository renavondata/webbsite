-- Performance indexes the Flask app depends on, as an idempotent, re-runnable
-- file. Lifted verbatim from database/migrations/sync_render_20251027.sql
-- "SECTION 3: PERFORMANCE INDEXES" (which is a one-shot migration dump that
-- the documented restore recipe never re-applied: a pg_restore per
-- deploy/README.md would silently lose all of these and nothing would notice
-- until pages timed out). The daily invariants job (scripts/assert_box.py)
-- asserts every index named here exists. Apply after any restore:
--
--     sudo -u postgres psql -d enigma -f database/schema/indexes.sql
--
-- Add an index here, never only on the box.

-- Search: LOWER(name) LIKE 'prefix%' on organisations and their old names
-- (webbsite/routes/search.py). text_pattern_ops is what makes a LIKE prefix
-- use a btree.
CREATE INDEX IF NOT EXISTS idx_organisations_name1_lower_pattern
  ON enigma.organisations (LOWER(name1) text_pattern_ops);
CREATE INDEX IF NOT EXISTS idx_namechanges_oldname_lower_pattern
  ON enigma.nameChanges (LOWER(oldName) text_pattern_ops);

-- People search: simplified-name columns, exact and full-text
CREATE INDEX IF NOT EXISTS idx_people_dn1 ON enigma.people (dn1);
CREATE INDEX IF NOT EXISTS idx_people_dn2 ON enigma.people (dn2);
CREATE INDEX IF NOT EXISTS idx_alias_dn1 ON enigma.alias (dn1);
CREATE INDEX IF NOT EXISTS idx_alias_dn2 ON enigma.alias (dn2);
CREATE INDEX IF NOT EXISTS idx_people_dn1_gin
  ON enigma.people USING gin (to_tsvector('simple', dn1));
CREATE INDEX IF NOT EXISTS idx_people_dn2_gin
  ON enigma.people USING gin (to_tsvector('simple', dn2));
CREATE INDEX IF NOT EXISTS idx_alias_dn1_gin
  ON enigma.alias USING gin (to_tsvector('simple', dn1));
CREATE INDEX IF NOT EXISTS idx_alias_dn2_gin
  ON enigma.alias USING gin (to_tsvector('simple', dn2));
CREATE INDEX IF NOT EXISTS idx_people_dn1_dn2_combined_gin
  ON enigma.people USING gin (to_tsvector('simple', COALESCE(dn1, '') || ' ' || COALESCE(dn2, '')));
CREATE INDEX IF NOT EXISTS idx_alias_dn1_dn2_combined_gin
  ON enigma.alias USING gin (to_tsvector('simple', COALESCE(dn1, '') || ' ' || COALESCE(dn2, '')));

-- Board composition, listings and pay league
CREATE INDEX IF NOT EXISTS idx_directorships_dates
  ON enigma.directorships (company, apptdate, resdate);
CREATE INDEX IF NOT EXISTS idx_stocklistings_dates
  ON enigma.stocklistings (issueid, firsttradedate, delistdate)
  WHERE "2ndCtr" = FALSE;
CREATE INDEX IF NOT EXISTS idx_issue_type_issuer
  ON enigma.issue (typeid, issuer, id1);
CREATE INDEX IF NOT EXISTS idx_stocklistings_composite
  ON enigma.stocklistings (stockexid, issueid, firsttradedate, delistdate)
  WHERE "2ndCtr" = FALSE;
CREATE INDEX IF NOT EXISTS idx_stocklistings_stockcode
  ON enigma.stocklistings (stockcode, stockexid);
CREATE INDEX IF NOT EXISTS idx_pay_year_prank
  ON enigma.pay (EXTRACT(YEAR FROM d), prank, orgid, pplid);
CREATE INDEX IF NOT EXISTS idx_pay_d_currid
  ON enigma.pay (d, currid, orgid);
CREATE INDEX IF NOT EXISTS idx_payfx_lookup
  ON enigma.payfx (d, repcurr, dispcurr);
CREATE INDEX IF NOT EXISTS idx_documents_pay_filter
  ON enigma.documents (orgid, doctypeid, recorddate, pay);
