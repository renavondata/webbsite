-- Financial Calculation Functions for PostgreSQL
-- Ported from MySQL enigmaStructure-2025-10-11- 000.sql
-- Date: 2025-10-27

-- ============================================================================
-- Helper Functions (Dependencies)
-- ============================================================================

-- getAdjust: Get cumulative adjustment factor for an issue at a given date
-- Used to adjust stock prices for splits, bonus issues, etc.
CREATE OR REPLACE FUNCTION enigma.getAdjust(i INTEGER, d DATE)
RETURNS DOUBLE PRECISION
LANGUAGE SQL
STABLE
AS $$
    SELECT COALESCE(
        (SELECT cumAdjust FROM enigma.adjustments
         WHERE issueID = i AND exDate <= d
         ORDER BY exDate DESC LIMIT 1),
        1.0
    );
$$;

COMMENT ON FUNCTION enigma.getAdjust(INTEGER, DATE) IS
'Returns cumulative adjustment factor for splits/bonus issues. Returns 1.0 if no adjustments.';


-- firstQuoteDate: Find first trading date with a closing price on or after given date
CREATE OR REPLACE FUNCTION enigma.firstQuoteDate(i INTEGER, d DATE)
RETURNS DATE
LANGUAGE SQL
STABLE
AS $$
    SELECT MIN(atDate)
    FROM ccass.quotes
    WHERE issueID = i
      AND noclose = false
      AND atDate >= d;
$$;

COMMENT ON FUNCTION enigma.firstQuoteDate(INTEGER, DATE) IS
'Returns first date on/after d where issueID has a closing price.';


-- lastQuoteDate: Find last trading date with a closing price on or before given date
CREATE OR REPLACE FUNCTION enigma.lastQuoteDate(i INTEGER, d DATE)
RETURNS DATE
LANGUAGE SQL
STABLE
AS $$
    SELECT MAX(atDate)
    FROM ccass.quotes
    WHERE issueID = i
      AND noclose = false
      AND atDate <= d;
$$;

COMMENT ON FUNCTION enigma.lastQuoteDate(INTEGER, DATE) IS
'Returns last date on/before d where issueID has a closing price.';


-- ============================================================================
-- Stock Adjustment Functions
-- ============================================================================

-- splitadj: Calculate split adjustment multiplier from a date to current date
-- Returns the cumulative effect of all splits and bonus issues between dates
CREATE OR REPLACE FUNCTION enigma.splitadj(i INTEGER, d DATE)
RETURNS DOUBLE PRECISION
LANGUAGE SQL
STABLE
AS $$
    SELECT COALESCE(
        (SELECT EXP(SUM(LN(adjust)))
         FROM enigma.events
         WHERE issueID = i
           AND eventType IN (4, 5)  -- 4=split, 5=bonus issue
           AND cancelDate IS NULL
           AND exDate <= CURRENT_DATE
           AND exDate > d
           AND adjust IS NOT NULL),
        1.0
    );
$$;

COMMENT ON FUNCTION enigma.splitadj(INTEGER, DATE) IS
'Returns multiplicative adjustment factor for splits/bonus issues from date d to today. Uses EXP(SUM(LN(x))) pattern for product.';


-- ============================================================================
-- Total Return Functions
-- ============================================================================

-- totRet: Calculate total return (price change adjusted for splits/dividends)
-- Returns ratio of adjusted prices between two dates
CREATE OR REPLACE FUNCTION enigma.totRet(issueID_param INTEGER, fromDate DATE, toDate DATE)
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
    -- Default parameters
    IF toDate IS NULL THEN
        toDate := CURRENT_DATE;
    END IF;
    IF fromDate IS NULL THEN
        fromDate := '1994-01-03';
    END IF;

    -- Find actual quote dates
    firstQFD := enigma.firstQuoteDate(issueID_param, fromDate);
    lastQTD := enigma.lastQuoteDate(issueID_param, toDate);

    -- Calculate return if we have data
    IF lastQTD > firstQFD THEN
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = issueID_param AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = issueID_param AND atDate = lastQTD;

        -- Total return = (price_end / price_start) * (adjust_start / adjust_end)
        answer := enigma.getAdjust(issueID_param, firstQFD) /
                  enigma.getAdjust(issueID_param, lastQTD) *
                  lastQT / firstQF;
    END IF;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.totRet(INTEGER, DATE, DATE) IS
'Calculates total return between two dates, adjusted for splits/bonus issues. Returns NULL if insufficient data.';


-- totRetDays: Calculate total return over a number of days from a start date
CREATE OR REPLACE FUNCTION enigma.totRetDays(issueID_param INTEGER, fromDate DATE, days INTEGER)
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
    firstQFD := enigma.firstQuoteDate(issueID_param, fromDate);
    lastQTD := enigma.lastQuoteDate(issueID_param, firstQFD + INTERVAL '1 day' * days);

    IF lastQTD > firstQFD THEN
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = issueID_param AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = issueID_param AND atDate = lastQTD;

        answer := enigma.getAdjust(issueID_param, firstQFD) /
                  enigma.getAdjust(issueID_param, lastQTD) *
                  lastQT / firstQF;
    END IF;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.totRetDays(INTEGER, DATE, INTEGER) IS
'Calculates total return over specified number of days from start date.';


-- ============================================================================
-- Compound Annual Growth Rate Functions
-- ============================================================================

-- CAGRet: Compound Annual Growth Rate of return
-- Annualizes the total return over the period
CREATE OR REPLACE FUNCTION enigma.CAGRet(issueID_param INTEGER, fromDate DATE, toDate DATE)
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
    intlength DOUBLE PRECISION;
BEGIN
    -- Default parameters
    IF toDate IS NULL THEN
        toDate := CURRENT_DATE;
    END IF;
    IF fromDate IS NULL THEN
        fromDate := '1994-01-03';
    END IF;

    firstQFD := enigma.firstQuoteDate(issueID_param, fromDate);
    lastQTD := enigma.lastQuoteDate(issueID_param, toDate);
    intlength := lastQTD - firstQFD;

    -- Only calculate if we have at least 180 days of data
    IF intlength >= 180 THEN
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = issueID_param AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = issueID_param AND atDate = lastQTD;

        -- Calculate total return
        answer := enigma.getAdjust(issueID_param, firstQFD) /
                  enigma.getAdjust(issueID_param, lastQTD) *
                  lastQT / firstQF;

        -- Annualize: answer^(365.25/days)
        answer := POWER(answer, 365.25 / intlength);
    END IF;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.CAGRet(INTEGER, DATE, DATE) IS
'Compound Annual Growth Rate of total return. Requires minimum 180 days of data. Returns NULL if insufficient data.';


-- CAGretDays: CAGR over specified number of days
CREATE OR REPLACE FUNCTION enigma.CAGretDays(issueID_param INTEGER, fromDate DATE, days INTEGER)
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
    intlength DOUBLE PRECISION;
BEGIN
    firstQFD := enigma.firstQuoteDate(issueID_param, fromDate);
    lastQTD := enigma.lastQuoteDate(issueID_param, firstQFD + INTERVAL '1 day' * days);
    intlength := lastQTD - firstQFD;

    IF intlength >= 180 THEN
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = issueID_param AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = issueID_param AND atDate = lastQTD;

        answer := enigma.getAdjust(issueID_param, firstQFD) /
                  enigma.getAdjust(issueID_param, lastQTD) *
                  lastQT / firstQF;

        answer := POWER(answer, 365.25 / intlength);
    END IF;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.CAGretDays(INTEGER, DATE, INTEGER) IS
'Compound Annual Growth Rate over specified number of days.';


-- ============================================================================
-- Relative Performance Functions (vs HSI Tracker)
-- ============================================================================

-- CAGrel: CAGR relative to Hang Seng Index tracker (issueID 5295)
-- Measures outperformance/underperformance vs market
CREATE OR REPLACE FUNCTION enigma.CAGrel(issueID_param INTEGER, fromDate DATE, toDate DATE)
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
    intlength DOUBLE PRECISION;
    trackRet DOUBLE PRECISION;
BEGIN
    -- Default toDate, set minimum fromDate for HSI tracker data
    IF toDate IS NULL THEN
        toDate := CURRENT_DATE;
    END IF;
    IF fromDate IS NULL OR fromDate < '1999-11-12' THEN
        fromDate := '1999-11-12';  -- HSI tracker inception date
    END IF;

    firstQFD := enigma.firstQuoteDate(issueID_param, fromDate);
    lastQTD := enigma.lastQuoteDate(issueID_param, toDate);
    intlength := lastQTD - firstQFD;

    IF intlength >= 180 THEN
        -- Stock return
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = issueID_param AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = issueID_param AND atDate = lastQTD;

        answer := enigma.getAdjust(issueID_param, firstQFD) /
                  enigma.getAdjust(issueID_param, lastQTD) *
                  lastQT / firstQF;

        -- HSI tracker return (issueID 5295 = Tracker Fund of Hong Kong)
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = 5295 AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = 5295 AND atDate = lastQTD;

        trackRet := enigma.getAdjust(5295, firstQFD) /
                    enigma.getAdjust(5295, lastQTD) *
                    lastQT / firstQF;

        -- Annualize relative performance
        answer := POWER(answer / trackRet, 365.25 / intlength);
    END IF;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.CAGrel(INTEGER, DATE, DATE) IS
'Compound Annual Growth Rate relative to HSI tracker (issueID 5295). Values >1 indicate outperformance. Requires data from 1999-11-12 onwards.';


-- CAGrelDays: Relative CAGR over specified number of days
CREATE OR REPLACE FUNCTION enigma.CAGrelDays(issueID_param INTEGER, fromDate DATE, days INTEGER)
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
    intlength DOUBLE PRECISION;
    trackRet DOUBLE PRECISION;
BEGIN
    IF fromDate < '1999-11-12' THEN
        fromDate := '1999-11-12';
    END IF;

    firstQFD := enigma.firstQuoteDate(issueID_param, fromDate);
    lastQTD := enigma.lastQuoteDate(issueID_param, firstQFD + INTERVAL '1 day' * days);
    intlength := lastQTD - firstQFD;

    IF intlength >= 180 THEN
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = issueID_param AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = issueID_param AND atDate = lastQTD;

        answer := enigma.getAdjust(issueID_param, firstQFD) /
                  enigma.getAdjust(issueID_param, lastQTD) *
                  lastQT / firstQF;

        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = 5295 AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = 5295 AND atDate = lastQTD;

        trackRet := enigma.getAdjust(5295, firstQFD) /
                    enigma.getAdjust(5295, lastQTD) *
                    lastQT / firstQF;

        answer := POWER(answer / trackRet, 365.25 / intlength);
    END IF;

    RETURN answer;
END;
$$;

COMMENT ON FUNCTION enigma.CAGrelDays(INTEGER, DATE, INTEGER) IS
'Relative CAGR over specified number of days vs HSI tracker.';


-- ============================================================================
-- Usage Examples and Notes
-- ============================================================================

/*
TESTING QUERIES:

-- Test splitadj (compare stock price now vs historical, adjusted)
SELECT enigma.splitadj(5, '2020-01-01');  -- HSBC Holdings

-- Test totRet (1-year return)
SELECT enigma.totRet(5, CURRENT_DATE - INTERVAL '1 year', CURRENT_DATE);

-- Test CAGRet (5-year CAGR)
SELECT enigma.CAGRet(5, CURRENT_DATE - INTERVAL '5 years', CURRENT_DATE);

-- Test CAGrel (5-year relative to HSI)
SELECT enigma.CAGrel(5, CURRENT_DATE - INTERVAL '5 years', CURRENT_DATE);

DEPLOYMENT:

psql postgresql://postgres:@localhost:5432/enigma_pg -f migrations/001_financial_functions.sql

For production (Render):
psql $DATABASE_URL -f migrations/001_financial_functions.sql
*/
