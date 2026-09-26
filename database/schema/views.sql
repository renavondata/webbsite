-- Views the app joins on, in the shape the planner can use.
--
-- Idempotent, like database/schema/functions.sql: apply after any restore
--     sudo -u postgres psql -d enigma -f database/schema/views.sql
-- deploy/converge.sh re-applies it whenever the live definition has drifted.
--
-- enigma.hklistedordsever: every issue that was ever an HK-listed ordinary
-- share, with its issuer. positions.asp, possum.asp and the league tables join
-- it on `issuer = <one company>`.
--
-- It used to be `SELECT DISTINCT sl.issueid, i.issuer FROM stocklistings JOIN
-- issue`. A DISTINCT view cannot take a join predicate, so every join built the
-- whole thing -- seq scan of issue, 9.6k listings, a 3.3k-row HashAggregate --
-- to look up one company: ~40 ms of a ~45 ms positions.asp query, for a person
-- with one position. That was most of the database time on the site, and what
-- let the 2026-09-26 positions.asp crawl saturate the origin.
--
-- issue.id1 is the primary key, so "issues with at least one qualifying
-- listing" is the same row set without DISTINCT, and the EXISTS lets the
-- planner drive it from idx_17524_fk_issue_orgs (issuer): ~1 ms. Same columns,
-- same types, same rows (checked against live: 3319 = 3319, empty EXCEPT both
-- ways), so CREATE OR REPLACE keeps every dependant and grant.
-- tests/test_views.sh proves the pushdown and the equivalence.

SET search_path TO enigma, ccass, public;

CREATE OR REPLACE VIEW enigma.hklistedordsever AS
SELECT i.id1 AS issueid, i.issuer
FROM enigma.issue i
WHERE i.typeid IN (0, 6, 7, 8, 10, 42)  -- Ordinary shares and related types
  AND EXISTS (
      SELECT 1 FROM enigma.stocklistings sl
      WHERE sl.issueid = i.id1
        AND sl.stockexid IN (1, 20, 23)  -- Main Board, GEM, REITs
        AND sl."2ndCtr" = FALSE          -- Not temporary counter
  );

GRANT SELECT ON enigma.hklistedordsever TO PUBLIC;
