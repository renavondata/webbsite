-- PostgreSQL functions for total returns calculations
-- Port from MySQL enigma schema functions
--
-- These functions support the alltotrets.asp route which calculates
-- total returns (price change + dividends) with split/consolidation adjustments

-- 1. Check if a stock was delisted by a given date
CREATE OR REPLACE FUNCTION enigma.delisted(i INTEGER, d DATE)
RETURNS BOOLEAN
LANGUAGE plpgsql
STABLE
AS $$
DECLARE
    count1 INT;
    answer BOOLEAN DEFAULT FALSE;
BEGIN
    -- Count stocks that are still listed (delistDate is NULL or after the date)
    SELECT COUNT(*) INTO count1
    FROM enigma.stocklistings
    WHERE issueid = i
      AND stockexid IN (1, 20, 23)
      AND (delistdate IS NULL OR delistdate > d)
    GROUP BY issueid;

    -- If no such listing exists, stock is delisted
    IF count1 IS NULL THEN
        answer := TRUE;
    END IF;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.delisted(INTEGER, DATE) IS
'Check if a stock (issueID) was delisted by a given date. Returns TRUE if delisted, FALSE if still listed on Main Board (1), GEM (20), or REIT (23).';


-- 2. Get the last/current stock code for an issue
CREATE OR REPLACE FUNCTION enigma.lastCode(i INT)
RETURNS VARCHAR(5)
LANGUAGE plpgsql
STABLE
AS $$
DECLARE
    answer VARCHAR(5);
BEGIN
    -- Get the most recent stock code (by firstTradeDate)
    -- Exchange IDs: 1=Main Board, 20=GEM, 22=Secondary, 23=REIT, 38=CIS, 71=?
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
'Get the last/current stock code for an issueID. Returns the most recent code by firstTradeDate.';


-- 3. Get the first quote date for an issue on or after a given date
CREATE OR REPLACE FUNCTION enigma.firstQuoteDate(i INT, d DATE)
RETURNS DATE
LANGUAGE plpgsql
STABLE
AS $$
DECLARE
    answer DATE;
BEGIN
    -- Find first trading date in the period (noclose=false means traded)
    SELECT MIN(atdate) INTO answer
    FROM ccass.quotes
    WHERE issueid = i
      AND noclose = false
      AND atdate >= d;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.firstQuoteDate(INT, DATE) IS
'Get the first quote date for an issueID on or after a given date. Only includes dates with actual trading (noclose=false).';


-- 4. Get the last quote date for an issue on or before a given date
CREATE OR REPLACE FUNCTION enigma.lastQuoteDate(i INT, d DATE)
RETURNS DATE
LANGUAGE plpgsql
STABLE
AS $$
DECLARE
    answer DATE;
BEGIN
    -- Find last trading date in the period (noclose=false means traded)
    SELECT MAX(atdate) INTO answer
    FROM ccass.quotes
    WHERE issueid = i
      AND noclose = false
      AND atdate <= d;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.lastQuoteDate(INT, DATE) IS
'Get the last quote date for an issueID on or before a given date. Only includes dates with actual trading (noclose=false).';


-- 5. Get cumulative adjustment factor for splits/consolidations/dividends
CREATE OR REPLACE FUNCTION enigma.getAdjust(i INT, d DATE)
RETURNS DOUBLE PRECISION
LANGUAGE sql
STABLE
AS $$
    -- Get the most recent cumulative adjustment factor before or on the date
    -- Returns 1.0 if no adjustments found (COALESCE handles NULL)
    SELECT COALESCE(
        (SELECT cumadjust
         FROM enigma.adjustments
         WHERE issueid = i
           AND exdate <= d
         ORDER BY exdate DESC
         LIMIT 1),
        1.0
    );
$$;

COMMENT ON FUNCTION enigma.getAdjust(INT, DATE) IS
'Get cumulative adjustment factor for splits/consolidations/dividends. Returns 1.0 if no adjustments. Looks up most recent adjustment on or before the given date.';


-- Test queries (commented out - uncomment to test)
-- SELECT enigma.delisted(62, '2024-10-01'::date);  -- HSBC, should be false
-- SELECT enigma.lastCode(62);  -- HSBC, should be '5'
-- SELECT enigma.firstQuoteDate(62, '2024-01-01'::date);  -- HSBC first quote in 2024
-- SELECT enigma.lastQuoteDate(62, '2024-10-01'::date);  -- HSBC last quote by Oct 1
-- SELECT enigma.getAdjust(62, '2024-10-01'::date);  -- HSBC adjustment factor
