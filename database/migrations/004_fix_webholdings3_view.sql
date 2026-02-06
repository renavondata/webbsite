-- Migration 004: Fix webholdings3 view to match MySQL definition
--
-- The PostgreSQL webholdings3 view was missing two critical filters from the MySQL original:
-- 1. JOIN with lasthlddate to only show the latest holding date per (holderID, issueID, heldAs)
-- 2. WHERE NOT everlistco(issuer) to exclude holdings in ever-listed companies
--
-- This caused orgdata.asp to show duplicate holdings rows (all historical snapshots)
-- and holdings in listed companies that should be excluded.
--
-- Before: 43 rows for HSBC (person 382), showing all historical dates
-- After:  17 rows (16 after shares/stake filter), showing only latest per issuer

DROP VIEW IF EXISTS enigma.webholdings3;

CREATE VIEW enigma.webholdings3 AS
SELECT sh.holderid AS personid,
    sh.issueid AS issue,
    sh.atdate AS holdingdate,
    sh.shares,
    sh.stake,
    d.friendly,
    d.a2,
    o.name1 AS name,
    o.orgtype,
    st.typelong AS sectype,
    st.typeshort,
    i.issuer,
    o.incdate,
    o.incacc
FROM enigma.sholdings sh
JOIN enigma.lasthlddate t1 ON (
    (sh.atdate = t1.maxdate OR (sh.atdate IS NULL AND t1.maxdate IS NULL))
    AND sh.holderid = t1.holderid
    AND sh.issueid = t1.issueid
    AND sh.heldas = t1.heldas
)
JOIN enigma.issue i ON sh.issueid = i.id1
JOIN enigma.organisations o ON i.issuer = o.personid
JOIN enigma.sectypes st ON i.typeid = st.typeid
LEFT JOIN enigma.domiciles d ON o.domicile = d.id
WHERE sh.heldas = 0 AND NOT enigma.everlistco(i.issuer);

COMMENT ON VIEW enigma.webholdings3 IS
    'Holdings analysis view - shows latest holding per (holder, issue, heldAs) for non-ever-listed companies. Matches MySQL webholdings3 definition.';
