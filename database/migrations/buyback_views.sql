-- Buyback Views Migration for PostgreSQL
-- Creates functions and views needed for the buybacks.asp route
--
-- Dependencies:
--   - enigma.capchanges table
--   - enigma.issue, organisations, sectypes tables
--   - enigma.bbexch table
--   - enigma.currencies table
--   - enigma.getadjust function (already exists)
--   - enigma.stocklistings table
--
-- Created: 2025-10-24
-- Migration file for Webb-site Flask port

-- =====================================================
-- Function: enigma.stockcodethen
-- Returns the stock code valid at a given date
-- =====================================================
CREATE OR REPLACE FUNCTION enigma.stockcodethen(i INTEGER, d DATE)
RETURNS VARCHAR(5)
LANGUAGE plpgsql
STABLE
AS $$
DECLARE
    answer VARCHAR(5);
BEGIN
    SELECT stockCode INTO answer
    FROM enigma.stocklistings
    WHERE stockExID IN (1, 20, 22, 23, 38)
      AND issueID = i
      AND (firstTradeDate IS NULL OR firstTradeDate <= d)
      AND (delistDate IS NULL OR delistDate >= d)
    LIMIT 1;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.stockcodethen(INTEGER, DATE) IS
'Returns the stock code that was valid for an issue on a given date, accounting for stock code changes and parallel trading periods';


-- =====================================================
-- View: enigma.webbuybacks
-- Unadjusted buyback transactions with company info
-- =====================================================
CREATE OR REPLACE VIEW enigma.webbuybacks AS
SELECT
    enigma.stockcodethen(c.issueID, c.effDate) AS stockcode,
    c.issueID AS issueid,
    c.effDate AS effdate,
    c.exchID AS exchid,
    COALESCE(b2.name, b1.name) AS exchname,
    -(c.shares) AS shares,  -- Negate shares (buybacks stored as negative in capchanges)
    c.value AS value,
    cur.currency AS currency,
    CONCAT(o.name1, ': ', st.typeshort) AS name
FROM enigma.capchanges c
    JOIN enigma.issue i ON i.id1 = c.issueID
    JOIN enigma.organisations o ON o.personid = i.issuer
    JOIN enigma.sectypes st ON i.typeid = st.typeid
    JOIN enigma.bbexch b1 ON c.exchid = b1.id
    LEFT JOIN enigma.currencies cur ON c.currency = cur.id
    LEFT JOIN enigma.bbexch b2 ON b1.mapto = b2.id
WHERE c.capchangetype = 1;  -- 1 = buybacks

COMMENT ON VIEW enigma.webbuybacks IS
'Buyback transactions (unadjusted for splits) with stock codes, exchange names, and company details. Used by buybacks.asp when u=1 (show unadjusted)';


-- =====================================================
-- View: enigma.buybacksadj
-- Split-adjusted buyback transactions
-- =====================================================
CREATE OR REPLACE VIEW enigma.buybacksadj AS
SELECT
    enigma.stockcodethen(c.issueID, c.effDate) AS stockcode,
    c.issueID AS issueid,
    c.effDate AS effdate,
    c.exchID AS exchid,
    COALESCE(b2.name, b1.name) AS exchname,
    -(c.shares) / enigma.getadjust(c.issueID, c.effDate) AS shares,  -- Adjust for splits
    c.value AS value,
    cur.currency AS currency,
    CONCAT(o.name1, ': ', st.typeshort) AS name
FROM enigma.capchanges c
    JOIN enigma.issue i ON i.id1 = c.issueID
    JOIN enigma.organisations o ON o.personid = i.issuer
    JOIN enigma.sectypes st ON i.typeid = st.typeid
    JOIN enigma.bbexch b1 ON c.exchid = b1.id
    LEFT JOIN enigma.currencies cur ON c.currency = cur.id
    LEFT JOIN enigma.bbexch b2 ON b1.mapto = b2.id
WHERE c.capchangetype = 1;  -- 1 = buybacks

COMMENT ON VIEW enigma.buybacksadj IS
'Buyback transactions adjusted for stock splits and bonus issues using getadjust(). Used by buybacks.asp when u=0 (default, show adjusted)';


-- Verify views were created successfully
SELECT
    'Function created: enigma.stockcodethen' AS status,
    pg_get_functiondef(oid) IS NOT NULL AS exists
FROM pg_proc
WHERE proname = 'stockcodethen'
  AND pronamespace = (SELECT oid FROM pg_namespace WHERE nspname = 'enigma')

UNION ALL

SELECT
    'View created: enigma.webbuybacks' AS status,
    count(*) > 0 AS exists
FROM information_schema.views
WHERE table_schema = 'enigma'
  AND table_name = 'webbuybacks'

UNION ALL

SELECT
    'View created: enigma.buybacksadj' AS status,
    count(*) > 0 AS exists
FROM information_schema.views
WHERE table_schema = 'enigma'
  AND table_name = 'buybacksadj';
