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

-- Born-in-month listing (bornyear.asp). One year+month is ~17k people spread
-- over ~16k heap pages of the 1.66 GB table, so a cold request read ~125 MB at
-- random and hit the 8 s statement timeout (WEBBSITE-1Y/1Z). Covering every
-- column the page reads makes it an index-only scan (~140 pages); ~920 MB.
-- CONCURRENTLY, so people stays readable and writable while it builds (and so
-- this statement runs outside a transaction: never apply this file with -1).
-- A failed concurrent build leaves an INVALID index of this name, which IF NOT
-- EXISTS then skips; assert_box reports it, and the fix is DROP INDEX
-- CONCURRENTLY enigma.idx_people_born_cover, then re-run this file.
CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_people_born_cover
  ON enigma.people (yob, mob, name1, name2)
  INCLUDE (personid, cname, dob, yod, mond, dod);

-- UK incorporation calendar (incUKcaltype.asp). A year of England & Wales is
-- ~820k companies (2023) among 19.6M organisations; with only single-column
-- indexes the planner read the whole 2.7 GB table (350k pages) and timed out
-- (WEBBSITE-23). Measured on a restore of the R2 dump: 16k pages with this.
-- ~135 MB. CONCURRENTLY and INVALID-on-failure as idx_people_born_cover.
CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_organisations_domicile_incdate
  ON enigma.organisations (domicile, incdate);
