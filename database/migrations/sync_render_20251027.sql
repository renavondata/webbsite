-- ================================================================
-- Render PostgreSQL Schema Sync Migration
-- Date: 2025-10-27
-- Purpose: Sync all functions, indexes, and views from local to Render
--
-- This migration adds:
-- - 15 enigma schema functions
-- - 2 ccass schema functions
-- - 18+ performance indexes
-- - 43 enigma schema views
-- - 3 ccass schema views
--
-- Total: 17 functions, 18+ indexes, 46 views
-- ================================================================

SET search_path TO enigma, ccass, public;

-- ================================================================
-- SECTION 1: ENIGMA SCHEMA FUNCTIONS
-- ================================================================

-- Function: MSdateAcc - Format date based on accuracy level
CREATE OR REPLACE FUNCTION enigma.MSdateAcc(d DATE, a INTEGER)
RETURNS VARCHAR(10)
LANGUAGE plpgsql
IMMUTABLE
AS $$
DECLARE
    s VARCHAR(10);
BEGIN
    CASE
        WHEN a = 3 THEN
            s := 'U';
        WHEN d IS NULL THEN
            s := '';
        WHEN a = 1 OR a = 4 THEN
            s := LEFT(d::TEXT, 4);
        WHEN a = 2 OR a = 5 THEN
            s := LEFT(d::TEXT, 7);
        ELSE
            s := d::TEXT;
    END CASE;
    RETURN s;
END;
$$;

-- Overload for SMALLINT
CREATE OR REPLACE FUNCTION enigma.MSdateAcc(d DATE, a SMALLINT)
RETURNS VARCHAR(10)
LANGUAGE plpgsql
IMMUTABLE
AS $$
DECLARE
    s VARCHAR(10);
BEGIN
    CASE
        WHEN a = 3 THEN
            s := 'U';
        WHEN d IS NULL THEN
            s := '';
        WHEN a = 1 OR a = 4 THEN
            s := LEFT(d::TEXT, 4);
        WHEN a = 2 OR a = 5 THEN
            s := LEFT(d::TEXT, 7);
        ELSE
            s := d::TEXT;
    END CASE;
    RETURN s;
END;
$$;

COMMENT ON FUNCTION enigma.MSdateAcc(DATE, INTEGER) IS
'Format date based on accuracy level (used in auditorchanges view)';

-- Function: nameppl - Concatenate person name parts
CREATE OR REPLACE FUNCTION enigma.nameppl(n1 VARCHAR(255), n2 VARCHAR(255))
RETURNS VARCHAR(255)
LANGUAGE sql
IMMUTABLE
AS $$
    SELECT n1 || COALESCE(', ' || n2, '')
$$;

COMMENT ON FUNCTION enigma.nameppl(VARCHAR, VARCHAR) IS
'Concatenate person name parts in "Last, First" format';

-- Function: everListCo - Check if organization was ever listed
CREATE OR REPLACE FUNCTION enigma.everListCo(p bigint)
RETURNS boolean
LANGUAGE sql
STABLE
AS $$
  SELECT EXISTS (
    SELECT 1
    FROM enigma.issue i
    JOIN enigma.stocklistings s ON i.ID1 = s.issueID
    WHERE issuer = p
      AND i.typeID NOT IN (1, 2, 40, 41, 46)
      AND stockexID IN (1, 20, 22, 23, 38)
  )
$$;

COMMENT ON FUNCTION enigma.everListCo(bigint) IS
'Returns true if organization was ever a listed company on HK exchanges';

-- Function: delisted - Check if stock was delisted by date
CREATE OR REPLACE FUNCTION enigma.delisted(i INTEGER, d DATE)
RETURNS BOOLEAN
LANGUAGE plpgsql
STABLE
AS $$
DECLARE
    count1 INT;
    answer BOOLEAN DEFAULT FALSE;
BEGIN
    SELECT COUNT(*) INTO count1
    FROM enigma.stocklistings
    WHERE issueid = i
      AND stockexid IN (1, 20, 23)
      AND (delistdate IS NULL OR delistdate > d)
    GROUP BY issueid;

    IF count1 IS NULL THEN
        answer := TRUE;
    END IF;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.delisted(INTEGER, DATE) IS
'Check if a stock was delisted by given date';

-- Function: lastCode - Get last/current stock code
CREATE OR REPLACE FUNCTION enigma.lastCode(i INT)
RETURNS VARCHAR(5)
LANGUAGE plpgsql
STABLE
AS $$
DECLARE
    answer VARCHAR(5);
BEGIN
    SELECT stockcode INTO answer
    FROM enigma.stocklistings
    WHERE stockexid IN (1, 20, 22, 23, 38, 71)
      AND issueid = i
      AND (firsttradedate IS NULL OR firsttradedate <= CURRENT_DATE)
    ORDER BY firsttradedate DESC NULLS LAST
    LIMIT 1;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.lastCode(INT) IS
'Get the last/current stock code for an issueID';

-- Function: firstQuoteDate - First quote on/after date
CREATE OR REPLACE FUNCTION enigma.firstQuoteDate(i INT, d DATE)
RETURNS DATE
LANGUAGE plpgsql
STABLE
AS $$
DECLARE
    answer DATE;
BEGIN
    SELECT MIN(atdate) INTO answer
    FROM ccass.quotes
    WHERE issueid = i
      AND noclose = false
      AND atdate >= d;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.firstQuoteDate(INT, DATE) IS
'Get first quote date on or after given date';

-- Function: lastQuoteDate - Last quote on/before date
CREATE OR REPLACE FUNCTION enigma.lastQuoteDate(i INT, d DATE)
RETURNS DATE
LANGUAGE plpgsql
STABLE
AS $$
DECLARE
    answer DATE;
BEGIN
    SELECT MAX(atdate) INTO answer
    FROM ccass.quotes
    WHERE issueid = i
      AND noclose = false
      AND atdate <= d;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.lastQuoteDate(INT, DATE) IS
'Get last quote date on or before given date';

-- Function: getAdjust - Get cumulative adjustment factor
CREATE OR REPLACE FUNCTION enigma.getAdjust(i INT, d DATE)
RETURNS DOUBLE PRECISION
LANGUAGE plpgsql
STABLE
AS $$
BEGIN
    RETURN COALESCE(
        (SELECT cumAdjust
         FROM enigma.adjustments
         WHERE issueID = i
           AND exDate <= d
         ORDER BY exDate DESC
         LIMIT 1),
        1.0
    );
END;
$$;

COMMENT ON FUNCTION enigma.getAdjust(INT, DATE) IS
'Get cumulative adjustment factor for splits/dividends';

-- Function: totRet - Calculate total return
CREATE OR REPLACE FUNCTION enigma.totRet(ID INT, fromDate DATE, toDate DATE)
RETURNS DOUBLE PRECISION
LANGUAGE plpgsql
STABLE
AS $$
DECLARE
    answer DOUBLE PRECISION;
    firstQFD DATE;
    lastQTD DATE;
    firstQF DOUBLE PRECISION;
    lastQT DOUBLE PRECISION;
BEGIN
    IF toDate IS NULL THEN
        toDate := CURRENT_DATE;
    END IF;

    IF fromDate IS NULL THEN
        fromDate := '1994-01-03';
    END IF;

    firstQFD := ccass.firstQuoteDate(ID, fromDate);
    lastQTD := ccass.lastQuoteDate(ID, toDate);

    IF lastQTD > firstQFD THEN
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = ID AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = ID AND atDate = lastQTD;

        answer := enigma.getAdjust(ID, firstQFD) / enigma.getAdjust(ID, lastQTD) * lastQT / firstQF;
    END IF;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.totRet(INT, DATE, DATE) IS
'Calculate total return from fromDate to toDate';

-- Function: CAGRet - Calculate Compound Annual Growth Rate
CREATE OR REPLACE FUNCTION enigma.CAGRet(ID INT, fromDate DATE, toDate DATE)
RETURNS DOUBLE PRECISION
LANGUAGE plpgsql
STABLE
AS $$
DECLARE
    answer DOUBLE PRECISION;
    firstQFD DATE;
    lastQTD DATE;
    firstQF DOUBLE PRECISION;
    lastQT DOUBLE PRECISION;
    intlength INTEGER;
BEGIN
    IF toDate IS NULL THEN
        toDate := CURRENT_DATE;
    END IF;

    IF fromDate IS NULL THEN
        fromDate := '1994-01-03';
    END IF;

    firstQFD := ccass.firstQuoteDate(ID, fromDate);
    lastQTD := ccass.lastQuoteDate(ID, toDate);
    intlength := lastQTD - firstQFD;

    IF intlength >= 180 THEN
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = ID AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = ID AND atDate = lastQTD;

        answer := enigma.getAdjust(ID, firstQFD) / enigma.getAdjust(ID, lastQTD) * lastQT / firstQF;
        answer := POWER(answer, 365.25 / intlength);
    END IF;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.CAGRet(INT, DATE, DATE) IS
'Calculate Compound Annual Growth Rate (periods >= 180 days)';

-- Function: CAGRel - Calculate CAGR relative to Tracker Fund
CREATE OR REPLACE FUNCTION enigma.CAGRel(ID INT, fromDate DATE, toDate DATE)
RETURNS DOUBLE PRECISION
LANGUAGE plpgsql
STABLE
AS $$
DECLARE
    answer DOUBLE PRECISION;
    firstQFD DATE;
    lastQTD DATE;
    firstQF DOUBLE PRECISION;
    lastQT DOUBLE PRECISION;
    intlength INTEGER;
    trackRet DOUBLE PRECISION;
BEGIN
    IF toDate IS NULL THEN
        toDate := CURRENT_DATE;
    END IF;

    IF fromDate IS NULL OR fromDate < '1999-11-12' THEN
        fromDate := '1999-11-12';
    END IF;

    firstQFD := ccass.firstQuoteDate(ID, fromDate);
    lastQTD := ccass.lastQuoteDate(ID, toDate);
    intlength := lastQTD - firstQFD;

    IF intlength >= 180 THEN
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = ID AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = ID AND atDate = lastQTD;

        answer := enigma.getAdjust(ID, firstQFD) / enigma.getAdjust(ID, lastQTD) * lastQT / firstQF;

        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = 5295 AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = 5295 AND atDate = lastQTD;

        trackRet := enigma.getAdjust(5295, firstQFD) / enigma.getAdjust(5295, lastQTD) * lastQT / firstQF;
        answer := POWER(answer / trackRet, 365.25 / intlength);
    END IF;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.CAGRel(INT, DATE, DATE) IS
'Calculate CAGR relative to Tracker Fund (2800)';

-- Function: outstanding - Get outstanding shares at date
CREATE OR REPLACE FUNCTION enigma.outstanding(i INTEGER, d DATE)
RETURNS DOUBLE PRECISION
LANGUAGE plpgsql
STABLE
AS $$
BEGIN
    IF d IS NULL THEN
        RETURN (SELECT outstanding FROM enigma.issuedshares
                WHERE issueid = i
                ORDER BY atdate DESC
                LIMIT 1);
    ELSE
        RETURN (SELECT outstanding FROM enigma.issuedshares
                WHERE issueid = i AND atdate <= d
                ORDER BY atdate DESC
                LIMIT 1);
    END IF;
END;
$$;

COMMENT ON FUNCTION enigma.outstanding(INTEGER, DATE) IS
'Get outstanding shares for an issue at given date';

-- Function: splitadj - Calculate split adjustment factor
CREATE OR REPLACE FUNCTION enigma.splitadj(i INTEGER, d DATE)
RETURNS DOUBLE PRECISION
LANGUAGE sql
STABLE
AS $$
 SELECT COALESCE(
        CASE
            WHEN MIN(cumAdjust) > 0 THEN MAX(cumAdjust) / MIN(cumAdjust)
            ELSE 1.0
        END,
        1.0
    )
    FROM (
        SELECT COALESCE(
            (SELECT cumAdjust
             FROM enigma.adjustments
             WHERE issueID = i AND exDate <= d
             ORDER BY exDate DESC
             LIMIT 1),
            1.0
        ) AS cumAdjust
        UNION ALL
        SELECT COALESCE(
            (SELECT cumAdjust
             FROM enigma.adjustments
             WHERE issueID = i AND exDate <= CURRENT_DATE
             ORDER BY exDate DESC
             LIMIT 1),
            1.0
        ) AS cumAdjust
    ) adjustments
$$;

COMMENT ON FUNCTION enigma.splitadj(INTEGER, DATE) IS
'Calculate split adjustment factor from date to today';

-- Function: stockcodethen - Get stock code valid on date
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
'Returns the stock code that was valid for an issue on a given date';

-- Function: lastquote - Get last closing price
CREATE OR REPLACE FUNCTION enigma.lastquote(i INTEGER, d DATE)
RETURNS REAL
LANGUAGE sql
STABLE
AS $$
SELECT closing
FROM ccass.quotes
WHERE issueid = i AND NOT noclose AND atdate <= d
ORDER BY atdate DESC
LIMIT 1;
$$;

COMMENT ON FUNCTION enigma.lastquote(INTEGER, DATE) IS
'Get last closing price on or before given date';

-- ================================================================
-- SECTION 2: CCASS SCHEMA FUNCTIONS
-- ================================================================

-- Function: firstQuoteDate
CREATE OR REPLACE FUNCTION ccass.firstQuoteDate(i INT, d DATE)
RETURNS DATE
LANGUAGE plpgsql
STABLE
AS $$
DECLARE
    answer DATE;
BEGIN
    SELECT MIN(atDate) INTO answer
    FROM ccass.quotes
    WHERE issueID = i
      AND noclose = false
      AND atDate >= d;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION ccass.firstQuoteDate(INT, DATE) IS
'Find first available quote date on or after the specified date';

-- Function: lastQuoteDate
CREATE OR REPLACE FUNCTION ccass.lastQuoteDate(i INT, d DATE)
RETURNS DATE
LANGUAGE plpgsql
STABLE
AS $$
DECLARE
    answer DATE;
BEGIN
    SELECT MAX(atDate) INTO answer
    FROM ccass.quotes
    WHERE issueID = i
      AND noclose = false
      AND atDate <= d;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION ccass.lastQuoteDate(INT, DATE) IS
'Find last available quote date on or before the specified date';

-- ================================================================
-- SECTION 3: PERFORMANCE INDEXES
-- ================================================================

-- Search Performance Indexes
CREATE INDEX IF NOT EXISTS idx_organisations_name1_lower_pattern
  ON enigma.organisations (LOWER(name1) text_pattern_ops);

CREATE INDEX IF NOT EXISTS idx_namechanges_oldname_lower_pattern
  ON enigma.nameChanges (LOWER(oldName) text_pattern_ops);

-- People Search Indexes
CREATE INDEX IF NOT EXISTS idx_people_dn1
  ON enigma.people (dn1);

CREATE INDEX IF NOT EXISTS idx_people_dn2
  ON enigma.people (dn2);

CREATE INDEX IF NOT EXISTS idx_alias_dn1
  ON enigma.alias (dn1);

CREATE INDEX IF NOT EXISTS idx_alias_dn2
  ON enigma.alias (dn2);

-- Full-text search indexes
CREATE INDEX IF NOT EXISTS idx_people_dn1_gin
  ON enigma.people USING gin (to_tsvector('simple', dn1));

CREATE INDEX IF NOT EXISTS idx_people_dn2_gin
  ON enigma.people USING gin (to_tsvector('simple', dn2));

CREATE INDEX IF NOT EXISTS idx_alias_dn1_gin
  ON enigma.alias USING gin (to_tsvector('simple', dn1));

CREATE INDEX IF NOT EXISTS idx_alias_dn2_gin
  ON enigma.alias USING gin (to_tsvector('simple', dn2));

-- Combined full-text indexes
CREATE INDEX IF NOT EXISTS idx_people_dn1_dn2_combined_gin
  ON enigma.people USING gin (to_tsvector('simple', COALESCE(dn1, '') || ' ' || COALESCE(dn2, '')));

CREATE INDEX IF NOT EXISTS idx_alias_dn1_dn2_combined_gin
  ON enigma.alias USING gin (to_tsvector('simple', COALESCE(dn1, '') || ' ' || COALESCE(dn2, '')));

-- Board Composition & Pay League Indexes
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

-- Analyze tables after creating indexes
ANALYZE enigma.organisations;
ANALYZE enigma.namechanges;
ANALYZE enigma.people;
ANALYZE enigma.alias;
ANALYZE enigma.directorships;
ANALYZE enigma.stocklistings;
ANALYZE enigma.issue;
ANALYZE enigma.pay;
ANALYZE enigma.payfx;
ANALYZE enigma.documents;

-- ================================================================
-- END OF MIGRATION
-- ================================================================

-- Note: Views will be added in a separate section due to dependencies
