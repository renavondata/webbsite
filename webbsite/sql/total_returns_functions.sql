-- ================================================================
-- Total Returns Calculation Functions for PostgreSQL
-- ================================================================
-- Ported from MySQL enigma schema stored functions
-- These functions calculate stock total returns, CAGR, and relative performance
--
-- Installation:
--   psql -U postgres -d enigma_pg -f webbsite/sql/total_returns_functions.sql
--
-- Dependencies:
--   - ccass.quotes table (stock prices with issueID, atDate, closing, noclose)
--   - enigma.adjustments table (price adjustments with issueID, exDate, cumAdjust)
--
-- Functions:
--   1. firstQuoteDate(issueID, fromDate) - Find first available quote on/after date
--   2. lastQuoteDate(issueID, toDate) - Find last available quote on/before date
--   3. getAdjust(issueID, date) - Get cumulative adjustment factor for splits/dividends
--   4. totRet(issueID, fromDate, toDate) - Calculate total return percentage
--   5. CAGRet(issueID, fromDate, toDate) - Calculate Compound Annual Growth Rate
--   6. CAGRel(issueID, fromDate, toDate) - Calculate CAGR relative to Tracker Fund (2800)
-- ================================================================

-- Drop existing functions if they exist
DROP FUNCTION IF EXISTS ccass.firstQuoteDate(INT, DATE);
DROP FUNCTION IF EXISTS ccass.lastQuoteDate(INT, DATE);
DROP FUNCTION IF EXISTS enigma.getAdjust(INT, DATE);
DROP FUNCTION IF EXISTS enigma.totRet(INT, DATE, DATE);
DROP FUNCTION IF EXISTS enigma.CAGRet(INT, DATE, DATE);
DROP FUNCTION IF EXISTS enigma.CAGRel(INT, DATE, DATE);

-- ================================================================
-- Helper Function 1: firstQuoteDate
-- Returns the first available quote date on or after the given date
-- ================================================================
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
'Find first available quote date on or after the specified date for a given security';


-- ================================================================
-- Helper Function 2: lastQuoteDate
-- Returns the last available quote date on or before the given date
-- ================================================================
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
'Find last available quote date on or before the specified date for a given security';


-- ================================================================
-- Helper Function 3: getAdjust
-- Returns cumulative adjustment factor for price splits/consolidations/dividends
-- Defaults to 1.0 if no adjustments exist before the given date
-- ================================================================
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
'Get cumulative adjustment factor for splits/dividends up to specified date (defaults to 1.0)';


-- ================================================================
-- Return Calculation Function 1: totRet
-- Calculate total return from fromDate to toDate
-- Returns the ratio of adjusted prices: (adjFrom/adjTo) * (priceTo/priceFrom)
-- Defaults: fromDate='1994-01-03', toDate=CURRENT_DATE
-- ================================================================
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
    -- Set defaults for NULL parameters
    IF toDate IS NULL THEN
        toDate := CURRENT_DATE;
    END IF;

    IF fromDate IS NULL THEN
        fromDate := '1994-01-03';
    END IF;

    -- Find actual quote dates
    firstQFD := ccass.firstQuoteDate(ID, fromDate);
    lastQTD := ccass.lastQuoteDate(ID, toDate);

    -- Only calculate if we have a valid date range
    IF lastQTD > firstQFD THEN
        -- Get closing prices at both dates
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = ID AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = ID AND atDate = lastQTD;

        -- Calculate total return with adjustments
        answer := enigma.getAdjust(ID, firstQFD) / enigma.getAdjust(ID, lastQTD) * lastQT / firstQF;
    END IF;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.totRet(INT, DATE, DATE) IS
'Calculate total return from fromDate to toDate (defaults: 1994-01-03 to today)';


-- ================================================================
-- Return Calculation Function 2: CAGRet
-- Calculate Compound Annual Growth Rate (annualized total return)
-- Only returns value if period >= 180 days
-- Defaults: fromDate='1994-01-03', toDate=CURRENT_DATE
-- ================================================================
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
    -- Set defaults for NULL parameters
    IF toDate IS NULL THEN
        toDate := CURRENT_DATE;
    END IF;

    IF fromDate IS NULL THEN
        fromDate := '1994-01-03';
    END IF;

    -- Find actual quote dates
    firstQFD := ccass.firstQuoteDate(ID, fromDate);
    lastQTD := ccass.lastQuoteDate(ID, toDate);

    -- Calculate interval length in days
    intlength := lastQTD - firstQFD;

    -- Only calculate CAGR if period >= 180 days
    IF intlength >= 180 THEN
        -- Get closing prices at both dates
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = ID AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = ID AND atDate = lastQTD;

        -- Calculate total return with adjustments
        answer := enigma.getAdjust(ID, firstQFD) / enigma.getAdjust(ID, lastQTD) * lastQT / firstQF;

        -- Annualize the return (365.25 days per year to account for leap years)
        answer := POWER(answer, 365.25 / intlength);
    END IF;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.CAGRet(INT, DATE, DATE) IS
'Calculate Compound Annual Growth Rate (only for periods >= 180 days)';


-- ================================================================
-- Return Calculation Function 3: CAGRel
-- Calculate CAGR relative to Tracker Fund of Hong Kong (2800, issueID=5295)
-- This measures outperformance/underperformance vs the market index
-- Only returns value if period >= 180 days
-- Defaults: fromDate='1999-11-12' (Tracker Fund launch), toDate=CURRENT_DATE
-- ================================================================
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
    -- Set defaults for NULL parameters
    IF toDate IS NULL THEN
        toDate := CURRENT_DATE;
    END IF;

    -- Tracker Fund (2800) launched on 1999-11-12
    IF fromDate IS NULL OR fromDate < '1999-11-12' THEN
        fromDate := '1999-11-12';
    END IF;

    -- Find actual quote dates
    firstQFD := ccass.firstQuoteDate(ID, fromDate);
    lastQTD := ccass.lastQuoteDate(ID, toDate);

    -- Calculate interval length in days
    intlength := lastQTD - firstQFD;

    -- Only calculate relative CAGR if period >= 180 days
    IF intlength >= 180 THEN
        -- Get closing prices for the stock at both dates
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = ID AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = ID AND atDate = lastQTD;

        -- Calculate stock total return with adjustments
        answer := enigma.getAdjust(ID, firstQFD) / enigma.getAdjust(ID, lastQTD) * lastQT / firstQF;

        -- Get closing prices for Tracker Fund (2800, issueID=5295) at both dates
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = 5295 AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = 5295 AND atDate = lastQTD;

        -- Calculate Tracker Fund total return with adjustments
        trackRet := enigma.getAdjust(5295, firstQFD) / enigma.getAdjust(5295, lastQTD) * lastQT / firstQF;

        -- Calculate relative CAGR (stock vs benchmark)
        -- Result > 1.0 means outperformance, < 1.0 means underperformance
        answer := POWER(answer / trackRet, 365.25 / intlength);
    END IF;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.CAGRel(INT, DATE, DATE) IS
'Calculate CAGR relative to Tracker Fund (2800) - measures outperformance vs market';


-- ================================================================
-- Grant permissions (adjust as needed for your database users)
-- ================================================================
-- GRANT EXECUTE ON FUNCTION ccass.firstQuoteDate(INT, DATE) TO web;
-- GRANT EXECUTE ON FUNCTION ccass.lastQuoteDate(INT, DATE) TO web;
-- GRANT EXECUTE ON FUNCTION enigma.getAdjust(INT, DATE) TO web;
-- GRANT EXECUTE ON FUNCTION enigma.totRet(INT, DATE, DATE) TO web;
-- GRANT EXECUTE ON FUNCTION enigma.CAGRet(INT, DATE, DATE) TO web;
-- GRANT EXECUTE ON FUNCTION enigma.CAGRel(INT, DATE, DATE) TO web;
