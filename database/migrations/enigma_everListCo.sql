-- Migration: Convert everListCo MySQL function to PostgreSQL
-- Purpose: Check if an organization (personID) was ever a listed company on HK exchanges
-- Used by: searchorgs.asp, orgdata.asp (7 call sites total)
--
-- Returns true if the organization was ever:
-- - An issuer of securities (issue.issuer = personID)
-- - With valid stock listings (stocklistings table)
-- - Excluding certain security types (1,2,40,41,46)
-- - On specific stock exchanges (1=Main Board, 20=GEM, 22/23=REITs, 38=other)

DROP FUNCTION IF EXISTS everListCo(bigint);
DROP FUNCTION IF EXISTS everListCo(integer);

CREATE OR REPLACE FUNCTION everListCo(p bigint)
RETURNS boolean
LANGUAGE sql
STABLE
AS $$
  SELECT EXISTS (
    SELECT 1
    FROM issue i
    JOIN stocklistings s ON i.ID1 = s.issueID
    WHERE issuer = p
      AND i.typeID NOT IN (1, 2, 40, 41, 46)
      AND stockexID IN (1, 20, 22, 23, 38)
  )
$$;

COMMENT ON FUNCTION everListCo(bigint) IS
  'Returns true if organization was ever a listed company on HK exchanges';
