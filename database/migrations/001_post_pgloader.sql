--
-- PostgreSQL database dump
--

\restrict wrkBuFTHfsLs9oHdKPSxhh87Dze9PGnv1RvK8Bd3KYhZnsIfVKqUeDiZOhYjN7g

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: ccass; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ccass;


--
-- Name: enigma; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA enigma;


--
-- Name: firstquotedate(integer, date); Type: FUNCTION; Schema: ccass; Owner: -
--

CREATE FUNCTION ccass.firstquotedate(i integer, d date) RETURNS date
    LANGUAGE plpgsql STABLE
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


--
-- Name: FUNCTION firstquotedate(i integer, d date); Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON FUNCTION ccass.firstquotedate(i integer, d date) IS 'Find first available quote date on or after the specified date for a given security';


--
-- Name: lastquotedate(integer, date); Type: FUNCTION; Schema: ccass; Owner: -
--

CREATE FUNCTION ccass.lastquotedate(i integer, d date) RETURNS date
    LANGUAGE plpgsql STABLE
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


--
-- Name: FUNCTION lastquotedate(i integer, d date); Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON FUNCTION ccass.lastquotedate(i integer, d date) IS 'Find last available quote date on or before the specified date for a given security';


--
-- Name: cagrel(integer, date, date); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.cagrel(issueid_param integer, fromdate date, todate date) RETURNS double precision
    LANGUAGE plpgsql STABLE
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


--
-- Name: FUNCTION cagrel(issueid_param integer, fromdate date, todate date); Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON FUNCTION enigma.cagrel(issueid_param integer, fromdate date, todate date) IS 'Compound Annual Growth Rate relative to HSI tracker (issueID 5295). Values >1 indicate outperformance. Requires data from 1999-11-12 onwards.';


--
-- Name: cagreldays(integer, date, integer); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.cagreldays(issueid_param integer, fromdate date, days integer) RETURNS double precision
    LANGUAGE plpgsql STABLE
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


--
-- Name: FUNCTION cagreldays(issueid_param integer, fromdate date, days integer); Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON FUNCTION enigma.cagreldays(issueid_param integer, fromdate date, days integer) IS 'Relative CAGR over specified number of days vs HSI tracker.';


--
-- Name: cagret(integer, date, date); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.cagret(issueid_param integer, fromdate date, todate date) RETURNS double precision
    LANGUAGE plpgsql STABLE
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


--
-- Name: FUNCTION cagret(issueid_param integer, fromdate date, todate date); Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON FUNCTION enigma.cagret(issueid_param integer, fromdate date, todate date) IS 'Compound Annual Growth Rate of total return. Requires minimum 180 days of data. Returns NULL if insufficient data.';


--
-- Name: cagretdays(integer, date, integer); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.cagretdays(issueid_param integer, fromdate date, days integer) RETURNS double precision
    LANGUAGE plpgsql STABLE
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


--
-- Name: FUNCTION cagretdays(issueid_param integer, fromdate date, days integer); Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON FUNCTION enigma.cagretdays(issueid_param integer, fromdate date, days integer) IS 'Compound Annual Growth Rate over specified number of days.';


--
-- Name: delisted(integer, date); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.delisted(i integer, d date) RETURNS boolean
    LANGUAGE plpgsql STABLE
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


--
-- Name: FUNCTION delisted(i integer, d date); Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON FUNCTION enigma.delisted(i integer, d date) IS 'Check if a stock (issueID) was delisted by a given date. Returns TRUE if delisted, FALSE if still listed on Main Board (1), GEM (20), or REIT (23).';


--
-- Name: everlistco(bigint); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.everlistco(p bigint) RETURNS boolean
    LANGUAGE sql STABLE
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


--
-- Name: FUNCTION everlistco(p bigint); Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON FUNCTION enigma.everlistco(p bigint) IS 'Returns true if organization was ever a listed company on HK exchanges';


--
-- Name: firstquotedate(integer, date); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.firstquotedate(i integer, d date) RETURNS date
    LANGUAGE sql STABLE
    AS $$
    SELECT MIN(atDate)
    FROM ccass.quotes
    WHERE issueID = i
      AND noclose = false
      AND atDate >= d;
$$;


--
-- Name: FUNCTION firstquotedate(i integer, d date); Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON FUNCTION enigma.firstquotedate(i integer, d date) IS 'Returns first date on/after d where issueID has a closing price.';


--
-- Name: getadjust(integer, date); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.getadjust(i integer, d date) RETURNS double precision
    LANGUAGE sql STABLE
    AS $$
    SELECT COALESCE(
        (SELECT cumAdjust FROM enigma.adjustments
         WHERE issueID = i AND exDate <= d
         ORDER BY exDate DESC LIMIT 1),
        1.0
    );
$$;


--
-- Name: FUNCTION getadjust(i integer, d date); Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON FUNCTION enigma.getadjust(i integer, d date) IS 'Returns cumulative adjustment factor for splits/bonus issues. Returns 1.0 if no adjustments.';


--
-- Name: lastcode(integer); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.lastcode(i integer) RETURNS character varying
    LANGUAGE plpgsql STABLE
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


--
-- Name: FUNCTION lastcode(i integer); Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON FUNCTION enigma.lastcode(i integer) IS 'Get the last/current stock code for an issueID. Returns the most recent code by firstTradeDate.';


--
-- Name: lastquote(integer, date); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.lastquote(i integer, d date) RETURNS real
    LANGUAGE sql STABLE
    AS $$
SELECT closing 
FROM ccass.quotes 
WHERE issueid = i AND NOT noclose AND atdate <= d 
ORDER BY atdate DESC 
LIMIT 1;
$$;


--
-- Name: lastquotedate(integer, date); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.lastquotedate(i integer, d date) RETURNS date
    LANGUAGE sql STABLE
    AS $$
    SELECT MAX(atDate)
    FROM ccass.quotes
    WHERE issueID = i
      AND noclose = false
      AND atDate <= d;
$$;


--
-- Name: FUNCTION lastquotedate(i integer, d date); Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON FUNCTION enigma.lastquotedate(i integer, d date) IS 'Returns last date on/before d where issueID has a closing price.';


--
-- Name: msdateacc(date, smallint); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.msdateacc(d date, a smallint) RETURNS character varying
    LANGUAGE plpgsql IMMUTABLE
    AS $$
DECLARE
    s VARCHAR(10);
BEGIN
    -- Produce string U, YYYY, YYYY-MM or YYYY-MM-DD from date based on accuracy
    -- If d is null then return empty string unless a=3 indicating unknown removal/appointment date
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


--
-- Name: msdateacc(date, integer); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.msdateacc(d date, a integer) RETURNS character varying
    LANGUAGE plpgsql IMMUTABLE
    AS $$
DECLARE
    s VARCHAR(10);
BEGIN
    -- Produce string U, YYYY, YYYY-MM or YYYY-MM-DD from date based on accuracy
    -- If d is null then return empty string unless a=3 indicating unknown removal/appointment date
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


--
-- Name: nameppl(character varying, character varying); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.nameppl(n1 character varying, n2 character varying) RETURNS character varying
    LANGUAGE sql IMMUTABLE
    AS $$
    SELECT n1 || COALESCE(', ' || n2, '')
$$;


--
-- Name: on_update_current_timestamp_adviserships(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_adviserships() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_comeets(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_comeets() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_compos(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_compos() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_directorships(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_directorships() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_documents(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_documents() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_entitlements(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_entitlements() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_ess(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_ess() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_events(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_events() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_govac(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_govac() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_hkexdata(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_hkexdata() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_issuedshares(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_issuedshares() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_judgments(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_judgments() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_licrec(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_licrec() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_lsadm(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_lsadm() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_lsemps(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_lsemps() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_lsppl(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_lsppl() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_namechanges(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_namechanges() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_namesex(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_namesex() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_oldlsppl(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_oldlsppl() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_olicrec(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_olicrec() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_organisations(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_organisations() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_orgdata(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_orgdata() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_ownerprof(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_ownerprof() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_pay(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_pay() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_people(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_people() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_prhflat(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_prhflat() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.lastseen = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_relatives(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_relatives() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_sdi(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_sdi() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_sholdings(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_sholdings() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_snaplog(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_snaplog() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_stocklistings(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_stocklistings() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_uklog(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_uklog() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.lastcoadded = now();
   RETURN NEW;
END;
$$;


--
-- Name: on_update_current_timestamp_uknonhuman(); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.on_update_current_timestamp_uknonhuman() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;


--
-- Name: outstanding(integer, date); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.outstanding(i integer, d date) RETURNS double precision
    LANGUAGE plpgsql STABLE
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


--
-- Name: splitadj(integer, date); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.splitadj(i integer, d date) RETURNS double precision
    LANGUAGE sql STABLE
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


--
-- Name: FUNCTION splitadj(i integer, d date); Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON FUNCTION enigma.splitadj(i integer, d date) IS 'Returns multiplicative adjustment factor for splits/bonus issues from date d to today. Uses EXP(SUM(LN(x))) pattern for product.';


--
-- Name: stockcodethen(integer, date); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.stockcodethen(i integer, d date) RETURNS character varying
    LANGUAGE plpgsql STABLE
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


--
-- Name: FUNCTION stockcodethen(i integer, d date); Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON FUNCTION enigma.stockcodethen(i integer, d date) IS 'Returns the stock code that was valid for an issue on a given date, accounting for stock code changes and parallel trading periods';


--
-- Name: totret(integer, date, date); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.totret(issueid_param integer, fromdate date, todate date) RETURNS double precision
    LANGUAGE plpgsql STABLE
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


--
-- Name: FUNCTION totret(issueid_param integer, fromdate date, todate date); Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON FUNCTION enigma.totret(issueid_param integer, fromdate date, todate date) IS 'Calculates total return between two dates, adjusted for splits/bonus issues. Returns NULL if insufficient data.';


--
-- Name: totretdays(integer, date, integer); Type: FUNCTION; Schema: enigma; Owner: -
--

CREATE FUNCTION enigma.totretdays(issueid_param integer, fromdate date, days integer) RETURNS double precision
    LANGUAGE plpgsql STABLE
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


--
-- Name: FUNCTION totretdays(issueid_param integer, fromdate date, days integer); Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON FUNCTION enigma.totretdays(issueid_param integer, fromdate date, days integer) IS 'Calculates total return over specified number of days from start date.';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: bigchanges; Type: TABLE; Schema: ccass; Owner: -
--

CREATE TABLE ccass.bigchanges (
    atdate date NOT NULL,
    issueid integer NOT NULL,
    partid integer NOT NULL,
    stkchg double precision,
    prevdate date
);


--
-- Name: calendar; Type: TABLE; Schema: ccass; Owner: -
--

CREATE TABLE ccass.calendar (
    tradedate date NOT NULL,
    settledate date NOT NULL,
    deferred boolean NOT NULL
);


--
-- Name: TABLE calendar; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON TABLE ccass.calendar IS 'the HK settlement calendar, after adjustment for typhoons, public holidays etc';


--
-- Name: COLUMN calendar.deferred; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON COLUMN ccass.calendar.deferred IS 'Settlement date shared with the next trading day due to Xmas/NY/CNY eve having no settlement and half-day trading.';


--
-- Name: dailylog; Type: TABLE; Schema: ccass; Owner: -
--

CREATE TABLE ccass.dailylog (
    atdate date NOT NULL,
    issueid integer NOT NULL,
    intermedhldg numeric DEFAULT '0'::numeric NOT NULL,
    intermedcnt integer DEFAULT 0 NOT NULL,
    nciphldg numeric DEFAULT '0'::numeric NOT NULL,
    ncipcnt integer DEFAULT 0 NOT NULL,
    ciphldg numeric DEFAULT '0'::numeric NOT NULL,
    cipcnt integer DEFAULT 0 NOT NULL,
    c5 numeric DEFAULT '0'::numeric NOT NULL,
    c10 numeric DEFAULT '0'::numeric NOT NULL,
    custhldg numeric DEFAULT '0'::numeric NOT NULL,
    brokhldg numeric DEFAULT '0'::numeric NOT NULL
);


--
-- Name: COLUMN dailylog.custhldg; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON COLUMN ccass.dailylog.custhldg IS 'Custodian holdings';


--
-- Name: COLUMN dailylog.brokhldg; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON COLUMN ccass.dailylog.brokhldg IS 'Broker holdings';


--
-- Name: holdings; Type: TABLE; Schema: ccass; Owner: -
--

CREATE TABLE ccass.holdings (
    partid integer NOT NULL,
    issueid integer NOT NULL,
    holding bigint NOT NULL,
    atdate date NOT NULL
);


--
-- Name: holdingsperdate; Type: VIEW; Schema: ccass; Owner: -
--

CREATE VIEW ccass.holdingsperdate AS
 SELECT atdate,
    count(holding) AS "Count(holding)"
   FROM ccass.holdings
  GROUP BY atdate
  ORDER BY atdate;


--
-- Name: maxdate; Type: VIEW; Schema: ccass; Owner: -
--

CREATE VIEW ccass.maxdate AS
 SELECT partid,
    issueid,
    max(atdate) AS "Max(atDate)"
   FROM ccass.holdings
  GROUP BY partid, issueid;


--
-- Name: latestholdings; Type: VIEW; Schema: ccass; Owner: -
--

CREATE VIEW ccass.latestholdings AS
 SELECT holdings.partid,
    holdings.issueid,
    holdings.holding,
    holdings.atdate
   FROM (ccass.maxdate
     JOIN ccass.holdings ON (((maxdate."Max(atDate)" = holdings.atdate) AND (maxdate.issueid = holdings.issueid) AND (maxdate.partid = holdings.partid))))
  WHERE (holdings.holding > 0);


--
-- Name: missing; Type: TABLE; Schema: ccass; Owner: -
--

CREATE TABLE ccass.missing (
    atdate date NOT NULL,
    issueid integer NOT NULL,
    stockcode integer NOT NULL
);


--
-- Name: TABLE missing; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON TABLE ccass.missing IS 'Missing records from daily CCASS run';


--
-- Name: oldnames; Type: TABLE; Schema: ccass; Owner: -
--

CREATE TABLE ccass.oldnames (
    oldnameid bigint NOT NULL,
    oldname character varying(255) NOT NULL,
    datechanged date NOT NULL,
    partid integer NOT NULL
);


--
-- Name: oldnames_oldnameid_seq; Type: SEQUENCE; Schema: ccass; Owner: -
--

CREATE SEQUENCE ccass.oldnames_oldnameid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: oldnames_oldnameid_seq; Type: SEQUENCE OWNED BY; Schema: ccass; Owner: -
--

ALTER SEQUENCE ccass.oldnames_oldnameid_seq OWNED BY ccass.oldnames.oldnameid;


--
-- Name: parthold; Type: TABLE; Schema: ccass; Owner: -
--

CREATE TABLE ccass.parthold (
    partid integer NOT NULL,
    issueid integer NOT NULL,
    holding bigint NOT NULL,
    atdate date NOT NULL
);


--
-- Name: participants; Type: TABLE; Schema: ccass; Owner: -
--

CREATE TABLE ccass.participants (
    partid integer NOT NULL,
    ccassid character varying(6) DEFAULT NULL::character varying,
    partname character varying(255) NOT NULL,
    atdate date NOT NULL,
    addeddate date,
    personid bigint,
    hadholdings boolean NOT NULL
);


--
-- Name: COLUMN participants.partid; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON COLUMN ccass.participants.partid IS 'The Webb-site participant ID for this CCASS Participant';


--
-- Name: COLUMN participants.partname; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON COLUMN ccass.participants.partname IS 'The current name of this CCASS Participant as shown on the CCASS pages. Not necessarily the full legal name.';


--
-- Name: participants_partid_seq; Type: SEQUENCE; Schema: ccass; Owner: -
--

CREATE SEQUENCE ccass.participants_partid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: participants_partid_seq; Type: SEQUENCE OWNED BY; Schema: ccass; Owner: -
--

ALTER SEQUENCE ccass.participants_partid_seq OWNED BY ccass.participants.partid;


--
-- Name: pquotes; Type: TABLE; Schema: ccass; Owner: -
--

CREATE TABLE ccass.pquotes (
    issueid integer NOT NULL,
    atdate date NOT NULL,
    prevclose double precision DEFAULT '0'::double precision NOT NULL,
    closing double precision DEFAULT '0'::double precision NOT NULL,
    ask double precision DEFAULT '0'::double precision NOT NULL,
    bid double precision DEFAULT '0'::double precision NOT NULL,
    high double precision DEFAULT '0'::double precision NOT NULL,
    low double precision DEFAULT '0'::double precision NOT NULL,
    vol numeric DEFAULT '0'::numeric NOT NULL,
    turn numeric DEFAULT '0'::numeric NOT NULL,
    susp boolean NOT NULL,
    newsusp boolean NOT NULL,
    noclose boolean NOT NULL
);


--
-- Name: TABLE pquotes; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON TABLE ccass.pquotes IS 'quotes for parallel-trading counters on SEHK';


--
-- Name: COLUMN pquotes.newsusp; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON COLUMN ccass.pquotes.newsusp IS 'Whether the stock was newly suspended today. This includes an all-day or part-day suspension in effect at the market close.';


--
-- Name: quotes; Type: TABLE; Schema: ccass; Owner: -
--

CREATE TABLE ccass.quotes (
    issueid integer NOT NULL,
    atdate date NOT NULL,
    prevclose double precision DEFAULT '0'::double precision,
    closing double precision DEFAULT '0'::double precision NOT NULL,
    ask double precision DEFAULT '0'::double precision NOT NULL,
    bid double precision DEFAULT '0'::double precision NOT NULL,
    high double precision DEFAULT '0'::double precision NOT NULL,
    low double precision DEFAULT '0'::double precision NOT NULL,
    vol numeric DEFAULT '0'::numeric NOT NULL,
    turn numeric DEFAULT '0'::numeric NOT NULL,
    susp boolean NOT NULL,
    newsusp boolean NOT NULL,
    noclose boolean NOT NULL
);


--
-- Name: COLUMN quotes.newsusp; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON COLUMN ccass.quotes.newsusp IS 'Whether the stock was newly suspended today. This includes an all-day or part-day suspension in effect at the market close.';


--
-- Name: COLUMN quotes.noclose; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON COLUMN ccass.quotes.noclose IS 'Indicates no meaningful closing price.For dates up to 30-Jan-2004 (quotes from SEHK CDs): the stock was suspended all day, so the closing price is not meaningful. For dates after 30-Jan-2004: the closing price is zero because the stock was suspended all day.';


--
-- Name: sehkmonthend; Type: TABLE; Schema: ccass; Owner: -
--

CREATE TABLE ccass.sehkmonthend (
    monthend date NOT NULL
);


--
-- Name: shortnames; Type: TABLE; Schema: ccass; Owner: -
--

CREATE TABLE ccass.shortnames (
    issueid integer,
    shortname character varying(45) NOT NULL,
    fromdate date NOT NULL,
    todate date,
    id bigint NOT NULL,
    stockcode character varying(5) DEFAULT NULL::character varying,
    usedate date NOT NULL,
    stockexid smallint NOT NULL,
    parallel boolean NOT NULL
);


--
-- Name: shortnames_id_seq; Type: SEQUENCE; Schema: ccass; Owner: -
--

CREATE SEQUENCE ccass.shortnames_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: shortnames_id_seq; Type: SEQUENCE OWNED BY; Schema: ccass; Owner: -
--

ALTER SEQUENCE ccass.shortnames_id_seq OWNED BY ccass.shortnames.id;


--
-- Name: specialdays; Type: TABLE; Schema: ccass; Owner: -
--

CREATE TABLE ccass.specialdays (
    specialdate date NOT NULL,
    pubhol boolean NOT NULL,
    partsess boolean NOT NULL,
    noam boolean NOT NULL,
    nopm boolean NOT NULL,
    nosettle boolean NOT NULL
);


--
-- Name: TABLE specialdays; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON TABLE ccass.specialdays IS 'General holidays, typhoon days etc. Used to generate the calendar entries for HK settlement. Excludes weekends.';


--
-- Name: COLUMN specialdays.pubhol; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON COLUMN ccass.specialdays.pubhol IS 'whether this is a public holiday';


--
-- Name: COLUMN specialdays.partsess; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON COLUMN ccass.specialdays.partsess IS 'whether there was a partial session of trading with late start or early termination of AM or PM session due to weather';


--
-- Name: COLUMN specialdays.noam; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON COLUMN ccass.specialdays.noam IS 'whether the HK market was shut for the morning session';


--
-- Name: COLUMN specialdays.nopm; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON COLUMN ccass.specialdays.nopm IS 'whether the market was shut for the afternoon session';


--
-- Name: COLUMN specialdays.nosettle; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON COLUMN ccass.specialdays.nosettle IS 'for non-holidays, whether there is no settlement today (for example, on Xmas or NY eve with no PM session)';


--
-- Name: unquotes; Type: TABLE; Schema: ccass; Owner: -
--

CREATE TABLE ccass.unquotes (
    stockcode integer NOT NULL,
    atdate date NOT NULL,
    prevclose double precision DEFAULT '0'::double precision,
    closing double precision DEFAULT '0'::double precision NOT NULL,
    ask double precision DEFAULT '0'::double precision NOT NULL,
    bid double precision DEFAULT '0'::double precision NOT NULL,
    high double precision DEFAULT '0'::double precision NOT NULL,
    low double precision DEFAULT '0'::double precision NOT NULL,
    vol numeric DEFAULT '0'::numeric NOT NULL,
    turn numeric DEFAULT '0'::numeric NOT NULL,
    susp boolean NOT NULL,
    newsusp boolean NOT NULL,
    noclose boolean NOT NULL
);


--
-- Name: COLUMN unquotes.newsusp; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON COLUMN ccass.unquotes.newsusp IS 'The stock was newly suspended today. This includes an all-day or part-day suspension in effect at the market close.';


--
-- Name: COLUMN unquotes.noclose; Type: COMMENT; Schema: ccass; Owner: -
--

COMMENT ON COLUMN ccass.unquotes.noclose IS 'Indicates no meaningful closing price.
For dates up to 30-Jan-2004 (quotes from SEHK CDs): the stock was suspended all day, so the closing price is not meaningful
For dates after 30-Jan-2004: the closing price is zero because the stock was suspended all day';


--
-- Name: acdata; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.acdata (
    acitem bigint NOT NULL,
    atdate date NOT NULL,
    acval double precision DEFAULT '0'::double precision NOT NULL
);


--
-- Name: COLUMN acdata.acitem; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.acdata.acitem IS 'Table for accounting data, starting with HKMA Exchange Fund Balance Sheet';


--
-- Name: acitems; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.acitems (
    id bigint NOT NULL,
    datasource bigint NOT NULL,
    sourcename character varying(255) NOT NULL,
    dispname character varying(255) DEFAULT NULL::character varying,
    type character varying(7) DEFAULT NULL::character varying,
    refdate boolean
);


--
-- Name: acitems_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.acitems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: acitems_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.acitems_id_seq OWNED BY enigma.acitems.id;


--
-- Name: activity; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.activity (
    id smallint NOT NULL,
    actname character varying(255) DEFAULT NULL::character varying
);


--
-- Name: adjustments; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.adjustments (
    issueid bigint NOT NULL,
    exdate date NOT NULL,
    cumadjust double precision NOT NULL
);


--
-- Name: advisers; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.advisers (
    personid bigint DEFAULT '0'::bigint NOT NULL
);


--
-- Name: adviserships; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.adviserships (
    company bigint NOT NULL,
    adviser bigint NOT NULL,
    role smallint NOT NULL,
    adddate date,
    addacc smallint,
    remdate date,
    remacc smallint,
    id bigint NOT NULL,
    modified timestamp with time zone
);


--
-- Name: adviserships_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.adviserships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: adviserships_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.adviserships_id_seq OWNED BY enigma.adviserships.id;


--
-- Name: airlines; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.airlines (
    icao character(3) NOT NULL,
    enname character varying(30) DEFAULT NULL::character varying,
    tcname character varying(30) DEFAULT NULL::character varying,
    scname character varying(30) DEFAULT NULL::character varying
);


--
-- Name: TABLE airlines; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.airlines IS 'Airlines table from HK Airport';


--
-- Name: airports; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.airports (
    iata character(3) NOT NULL,
    enname character varying(15) NOT NULL,
    tcname character varying(15) NOT NULL,
    scname character varying(15) NOT NULL,
    country character varying(2) DEFAULT NULL::character varying
);


--
-- Name: alias; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.alias (
    id bigint NOT NULL,
    personid bigint NOT NULL,
    n1 character varying(90) DEFAULT NULL::character varying,
    n2 character varying(63) DEFAULT NULL::character varying,
    cn character varying(20) DEFAULT NULL::character varying,
    alias boolean NOT NULL,
    dn1 character varying(90) DEFAULT NULL::character varying,
    dn2 character varying(63) DEFAULT NULL::character varying,
    userid integer DEFAULT 0 NOT NULL
);


--
-- Name: TABLE alias; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.alias IS 'For alternate and former names';


--
-- Name: alias_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.alias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: alias_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.alias_id_seq OWNED BY enigma.alias.id;


--
-- Name: issue; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.issue (
    id1 integer NOT NULL,
    issuer bigint NOT NULL,
    sehkid bigint,
    typeid smallint NOT NULL,
    expmat date,
    expacc smallint,
    sehkcurr smallint,
    userid integer DEFAULT 0 NOT NULL,
    coupon double precision,
    floating boolean,
    hkexwvr boolean NOT NULL
);


--
-- Name: COLUMN issue.sehkcurr; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.issue.sehkcurr IS 'currency on SEHK if not HKD';


--
-- Name: COLUMN issue.hkexwvr; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.issue.hkexwvr IS 'Whether this is the "class carrying weighted voting rights" not listed but outstanding shares are disclosed in HKEXdata as either class_A or class_B';


--
-- Name: stocklistings; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.stocklistings (
    issueid integer DEFAULT 0 NOT NULL,
    stockcode character varying(8) DEFAULT NULL::character varying,
    stockexid smallint NOT NULL,
    firsttradedate date,
    finaltradedate date,
    delistdate date,
    id bigint NOT NULL,
    modified timestamp with time zone,
    reasonid smallint,
    "2ndCtr" boolean NOT NULL,
    sedol character varying(7) DEFAULT NULL::character varying,
    isin character varying(12) DEFAULT NULL::character varying,
    stockid bigint
);


--
-- Name: COLUMN stocklistings."2ndCtr"; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.stocklistings."2ndCtr" IS '2nd counter: if true, this issue should be ignored when looking for total returns for directors, advisers';


--
-- Name: listedcoshk; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.listedcoshk AS
 SELECT DISTINCT issue.issuer,
    stocklistings.stockexid
   FROM (enigma.issue
     JOIN enigma.stocklistings ON ((issue.id1 = stocklistings.issueid)))
  WHERE ((stocklistings.stockexid = ANY (ARRAY[1, 20, 23])) AND (issue.typeid <> ALL (ARRAY[1, 2, 40, 41, 46])) AND ((stocklistings.firsttradedate IS NULL) OR (stocklistings.firsttradedate <= now())) AND ((stocklistings.delistdate IS NULL) OR (stocklistings.delistdate > now())));


--
-- Name: organisations; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.organisations (
    personid bigint DEFAULT '0'::bigint NOT NULL,
    domicile integer,
    name1 character varying(255) NOT NULL,
    modified timestamp with time zone,
    orgtype smallint,
    sfcid character varying(6) DEFAULT NULL::character varying,
    cname character varying(127) DEFAULT NULL::character varying,
    sfcupd timestamp with time zone,
    incdate date,
    disdate date,
    dismode smallint,
    incacc smallint,
    incid character varying(14) DEFAULT NULL::character varying,
    incupd timestamp with time zone,
    userid integer DEFAULT 0 NOT NULL,
    incname boolean NOT NULL,
    sfcri boolean NOT NULL,
    ukuri boolean NOT NULL,
    namehash numeric
);


--
-- Name: COLUMN organisations.incid; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.organisations.incid IS 'incorporation number';


--
-- Name: COLUMN organisations.incupd; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.organisations.incupd IS 'last update from place of incorporation';


--
-- Name: COLUMN organisations.incname; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.organisations.incname IS 'true if name history from place of incorporation overrides ICRIS. Use when UK name is out of sync';


--
-- Name: COLUMN organisations.sfcri; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.organisations.sfcri IS 'whether the org is a registered institution';


--
-- Name: COLUMN organisations.ukuri; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.organisations.ukuri IS 'whether the UK company has been archived to the URI system in Companies House';


--
-- Name: listedcoshkall; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.listedcoshkall AS
 SELECT organisations.personid,
    organisations.domicile,
    organisations.incdate,
    listedcoshk.stockexid,
    organisations.name1 AS name
   FROM (enigma.listedcoshk
     JOIN enigma.organisations ON ((listedcoshk.issuer = organisations.personid)));


--
-- Name: auditorchanges; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.auditorchanges AS
 SELECT adviserships.company,
    adviserships.adviser,
    enigma.msdateacc(adviserships.adddate, adviserships.addacc) AS add,
    enigma.msdateacc(adviserships.remdate, adviserships.remacc) AS rem,
    COALESCE(adviserships.remdate, adviserships.adddate) AS sortdate,
    listedcoshkall.name AS coname,
    organisations.name1 AS advname
   FROM ((enigma.adviserships
     JOIN enigma.listedcoshkall ON ((listedcoshkall.personid = adviserships.company)))
     JOIN enigma.organisations ON ((organisations.personid = adviserships.adviser)))
  WHERE (adviserships.role = 0);


--
-- Name: bbexch; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.bbexch (
    id integer NOT NULL,
    des character varying(127) NOT NULL,
    name character varying(127) NOT NULL,
    filedate date,
    mapto smallint
);


--
-- Name: TABLE bbexch; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.bbexch IS 'A list of buyback methods seen in SEHK buyback reports';


--
-- Name: COLUMN bbexch.des; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.bbexch.des IS 'The description SEHK uses';


--
-- Name: COLUMN bbexch.name; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.bbexch.name IS 'The name we use';


--
-- Name: COLUMN bbexch.mapto; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.bbexch.mapto IS 'for description typos, map to a different ID in this table';


--
-- Name: bbexch_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.bbexch_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bbexch_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.bbexch_id_seq OWNED BY enigma.bbexch.id;


--
-- Name: bodytype; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.bodytype (
    id smallint NOT NULL,
    des character varying(45) NOT NULL
);


--
-- Name: TABLE bodytype; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.bodytype IS 'Body types for Transport Department tables';


--
-- Name: buybacklog; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.buybacklog (
    lastrun timestamp with time zone NOT NULL,
    mainboarddate date NOT NULL,
    gemdate date NOT NULL
);


--
-- Name: capchanges; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.capchanges (
    ccid bigint NOT NULL,
    issueid integer DEFAULT 0 NOT NULL,
    effdate date NOT NULL,
    capchangetype smallint NOT NULL,
    exchid smallint,
    shares bigint,
    value double precision,
    price double precision,
    currency smallint,
    descrip character varying(50) DEFAULT NULL::character varying,
    filedate date
);


--
-- Name: COLUMN capchanges.exchid; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.capchanges.exchid IS 'ID from bbexch for buybacks';


--
-- Name: currencies; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.currencies (
    id smallint DEFAULT '0'::smallint NOT NULL,
    currency character varying(3) DEFAULT NULL::character varying,
    hkexcurr character varying(3) DEFAULT NULL::character varying
);


--
-- Name: sectypes; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.sectypes (
    typeid smallint NOT NULL,
    typeshort character varying(8) NOT NULL,
    typelong character varying(45) NOT NULL,
    listord smallint NOT NULL,
    canexpire boolean NOT NULL
);


--
-- Name: buybacksadj; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.buybacksadj AS
 SELECT enigma.stockcodethen(c.issueid, c.effdate) AS stockcode,
    c.issueid,
    c.effdate,
    c.exchid,
    COALESCE(b2.name, b1.name) AS exchname,
    (((- c.shares))::double precision / enigma.getadjust(c.issueid, c.effdate)) AS shares,
    c.value,
    cur.currency,
    concat(o.name1, ': ', st.typeshort) AS name
   FROM ((((((enigma.capchanges c
     JOIN enigma.issue i ON ((i.id1 = c.issueid)))
     JOIN enigma.organisations o ON ((o.personid = i.issuer)))
     JOIN enigma.sectypes st ON ((i.typeid = st.typeid)))
     JOIN enigma.bbexch b1 ON ((c.exchid = b1.id)))
     LEFT JOIN enigma.currencies cur ON ((c.currency = cur.id)))
     LEFT JOIN enigma.bbexch b2 ON ((b1.mapto = b2.id)))
  WHERE (c.capchangetype = 1);


--
-- Name: VIEW buybacksadj; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON VIEW enigma.buybacksadj IS 'Buyback transactions adjusted for stock splits and bonus issues using getadjust(). Used by buybacks.asp when u=0 (default, show adjusted)';


--
-- Name: campaign; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.campaign (
    campid integer NOT NULL,
    camptext character varying(50) NOT NULL,
    recipient bigint DEFAULT '0'::bigint NOT NULL
);


--
-- Name: campaign_campid_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.campaign_campid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: campaign_campid_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.campaign_campid_seq OWNED BY enigma.campaign.campid;


--
-- Name: capacity; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.capacity (
    id integer NOT NULL,
    capshort character varying(11) NOT NULL,
    caplong character varying(255) NOT NULL
);


--
-- Name: capchanges_ccid_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.capchanges_ccid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: capchanges_ccid_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.capchanges_ccid_seq OWNED BY enigma.capchanges.ccid;


--
-- Name: capchangetypes; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.capchangetypes (
    capchangetype smallint DEFAULT '0'::smallint NOT NULL,
    change character varying(30) DEFAULT NULL::character varying,
    negdescrip character varying(50) DEFAULT NULL::character varying,
    descrip character varying(50) DEFAULT NULL::character varying,
    dist boolean NOT NULL,
    likestr character varying(255) DEFAULT NULL::character varying
);


--
-- Name: casetypes; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.casetypes (
    id integer NOT NULL,
    prefix character varying(4) NOT NULL,
    des character varying(63) NOT NULL,
    courtid smallint NOT NULL
);


--
-- Name: casetypes_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.casetypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: casetypes_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.casetypes_id_seq OWNED BY enigma.casetypes.id;


--
-- Name: categories; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.categories (
    id integer NOT NULL,
    name character varying(50) DEFAULT NULL::character varying
);


--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.categories_id_seq OWNED BY enigma.categories.id;


--
-- Name: cattree; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.cattree (
    childcat integer NOT NULL,
    parentcat integer NOT NULL
);


--
-- Name: chartitems; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.chartitems (
    chartid integer NOT NULL,
    dataitem integer NOT NULL,
    typeid smallint DEFAULT '2'::smallint NOT NULL,
    negate boolean NOT NULL
);


--
-- Name: TABLE chartitems; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.chartitems IS 'dataitems to be included in a chart';


--
-- Name: charts; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.charts (
    id integer NOT NULL,
    title character varying(45) NOT NULL,
    quant boolean NOT NULL
);


--
-- Name: COLUMN charts.quant; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.charts.quant IS 'whether the chart is of quantity per period or a point-in-time value such as a price or temperature';


--
-- Name: charttypes; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.charttypes (
    id smallint NOT NULL,
    name character varying(45) NOT NULL
);


--
-- Name: classifications; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.classifications (
    company bigint NOT NULL,
    category integer NOT NULL
);


--
-- Name: codeshare; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.codeshare (
    flightid bigint NOT NULL,
    flightno character varying(8) NOT NULL,
    airline character(3) NOT NULL
);


--
-- Name: TABLE codeshare; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.codeshare IS 'Other flight numbers for the same flight';


--
-- Name: comeets; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.comeets (
    orgid bigint NOT NULL,
    comid smallint NOT NULL,
    atdate date NOT NULL,
    mtngs smallint NOT NULL,
    userid integer NOT NULL,
    modified timestamp with time zone
);


--
-- Name: COLUMN comeets.mtngs; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.comeets.mtngs IS 'Number of committee meetings during the financial year';


--
-- Name: comex; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.comex (
    orgid bigint NOT NULL,
    atdate date NOT NULL,
    comid smallint NOT NULL
);


--
-- Name: TABLE comex; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.comex IS 'Table of orgs without committees on the snapshot date';


--
-- Name: compos; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.compos (
    orgid bigint NOT NULL,
    dirid bigint NOT NULL,
    comid smallint NOT NULL,
    atdate date NOT NULL,
    posn smallint,
    userid integer NOT NULL,
    modified timestamp with time zone,
    attend smallint,
    mtngs smallint
);


--
-- Name: coms; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.coms (
    id integer NOT NULL,
    comname character varying(45) NOT NULL
);


--
-- Name: coms_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.coms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: coms_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.coms_id_seq OWNED BY enigma.coms.id;


--
-- Name: corpwords; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.corpwords (
    word character varying(255) NOT NULL
);


--
-- Name: courts; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.courts (
    id smallint NOT NULL,
    des character varying(45) DEFAULT NULL::character varying,
    ncpref character varying(6) NOT NULL
);


--
-- Name: currpair; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.currpair (
    id integer NOT NULL,
    curr1 smallint NOT NULL,
    curr2 smallint NOT NULL
);


--
-- Name: TABLE currpair; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.currpair IS 'Currency pairs for forexrates table. Rates are one unit of curr1 expressed in curr2';


--
-- Name: currpair_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.currpair_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: currpair_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.currpair_id_seq OWNED BY enigma.currpair.id;


--
-- Name: data; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.data (
    item integer NOT NULL,
    d date NOT NULL,
    v double precision NOT NULL
);


--
-- Name: dataitems; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.dataitems (
    id integer NOT NULL,
    ddes character varying(127) NOT NULL,
    note character varying(255) DEFAULT NULL::character varying,
    dp smallint DEFAULT '2'::smallint NOT NULL,
    sv character varying(45) DEFAULT NULL::character varying,
    units character varying(45) DEFAULT NULL::character varying,
    freq smallint NOT NULL,
    shortname character varying(25) DEFAULT NULL::character varying,
    source bigint
);


--
-- Name: COLUMN dataitems.dp; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.dataitems.dp IS 'number of decimal places to display';


--
-- Name: COLUMN dataitems.sv; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.dataitems.sv IS 'The variable name used in source data';


--
-- Name: COLUMN dataitems.freq; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.dataitems.freq IS 'Frequency of data. 1=monthly 2=quarterly 3=annual';


--
-- Name: datasource; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.datasource (
    id bigint NOT NULL,
    url character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    swagger character varying(255) DEFAULT NULL::character varying,
    fieldlist character varying(255) DEFAULT NULL::character varying
);


--
-- Name: COLUMN datasource.swagger; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.datasource.swagger IS 'URL to swagger data dictionary';


--
-- Name: datasource_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.datasource_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: datasource_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.datasource_id_seq OWNED BY enigma.datasource.id;


--
-- Name: dateaccuracy; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.dateaccuracy (
    accid smallint DEFAULT '0'::smallint NOT NULL,
    acctext character varying(2) DEFAULT NULL::character varying
);


--
-- Name: destor; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.destor (
    flightid bigint NOT NULL,
    seq smallint NOT NULL,
    iata character(3) NOT NULL
);


--
-- Name: TABLE destor; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.destor IS 'destination or origin cities (in visit order)';


--
-- Name: directorships; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.directorships (
    id1 bigint NOT NULL,
    company bigint NOT NULL,
    director bigint NOT NULL,
    joinedy smallint,
    apptdate date,
    apptacc smallint,
    resdate date,
    resacc smallint,
    positionid integer NOT NULL,
    source smallint,
    modified timestamp with time zone
);


--
-- Name: COLUMN directorships.source; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.directorships.source IS '1=HKlawSoc law firms (lsposts), 2=HKlawSoc non-law (lsjobs), 3=UKCH';


--
-- Name: directorships_id1_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.directorships_id1_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directorships_id1_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.directorships_id1_seq OWNED BY enigma.directorships.id1;


--
-- Name: listedcoshkever; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.listedcoshkever AS
 SELECT issue.issuer,
    min(stocklistings.firsttradedate) AS firsttrade
   FROM (enigma.issue
     JOIN enigma.stocklistings ON ((issue.id1 = stocklistings.issueid)))
  WHERE ((stocklistings.stockexid = ANY (ARRAY[1, 20, 23])) AND (issue.typeid = ANY (ARRAY[0, 6, 7, 10, 42])))
  GROUP BY issue.issuer;


--
-- Name: people; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.people (
    personid bigint DEFAULT '0'::bigint NOT NULL,
    sex character varying(1) DEFAULT NULL::character varying,
    yob integer,
    mob smallint,
    dob smallint,
    yod integer,
    mond smallint,
    dod smallint,
    titleid smallint,
    name1 character varying(90) NOT NULL,
    name2 character varying(63) DEFAULT NULL::character varying,
    modified timestamp with time zone,
    hkid character varying(8) DEFAULT NULL::character varying,
    sfcid character varying(6) DEFAULT NULL::character varying,
    cname character varying(20) DEFAULT NULL::character varying,
    sfcupd timestamp with time zone,
    sfclastdate date,
    hkidsource character varying(255) DEFAULT NULL::character varying,
    userid integer DEFAULT 0 NOT NULL,
    namestem character(5) NOT NULL,
    dn1 character varying(90) NOT NULL,
    dn2 character varying(63) DEFAULT NULL::character varying,
    dsex character varying(1) DEFAULT NULL::character varying
);


--
-- Name: COLUMN people.titleid; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.people.titleid IS 'We don''t disclose this field on Webb-site but have maintained it internally to help find some individuals more easily when entering data in Access.';


--
-- Name: COLUMN people.hkid; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.people.hkid IS 'Like all our data, HKIDs are collected from public sources, but we only display them on Webb-site if the HKIDsource column (containing a URL) is not null, and even then only with a "find it yourself" link to the source.';


--
-- Name: COLUMN people.hkidsource; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.people.hkidsource IS 'URL for ID source';


--
-- Name: COLUMN people.namestem; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.people.namestem IS 'used for rapid indexing of combined name1<space>name2 to speed up name lookup boxes in Access. This field is maintained by MySQL triggers.';


--
-- Name: COLUMN people.dn1; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.people.dn1 IS 'dn1 and dn2 contain stripped versions of name1 and name 2 without distinguishing extensions. These are used for search purposes such as "Find matching names". These fields are maintained by MySQL triggers.';


--
-- Name: COLUMN people.dn2; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.people.dn2 IS 'dn1 and dn2 contain stripped versions of name1 and name 2 without distinguishing extensions. These are used for search purposes such as "Find matching names". These fields are maintained by MySQL triggers.';


--
-- Name: positions; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.positions (
    positionid integer NOT NULL,
    posshort character varying(21) NOT NULL,
    poslong character varying(70) NOT NULL,
    status smallint DEFAULT '0'::smallint NOT NULL,
    rank smallint NOT NULL,
    lsrole smallint
);


--
-- Name: dirnocname; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.dirnocname AS
 SELECT DISTINCT d.company AS orgid,
    d.director,
    o.name1 AS orgname,
    enigma.nameppl(p.name1, p.name2) AS pplname
   FROM ((((enigma.directorships d
     JOIN enigma.organisations o ON ((d.company = o.personid)))
     JOIN enigma.people p ON ((d.director = p.personid)))
     JOIN enigma.positions po ON ((d.positionid = po.positionid)))
     JOIN enigma.listedcoshkever l ON ((d.company = l.issuer)))
  WHERE ((po.rank = 1) AND (p.cname IS NULL))
  ORDER BY o.name1, (enigma.nameppl(p.name1, p.name2));


--
-- Name: dismodes; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.dismodes (
    id smallint NOT NULL,
    dismodetxt character varying(45) NOT NULL,
    ukuri character varying(45) DEFAULT NULL::character varying,
    ukapi character varying(45) DEFAULT NULL::character varying
);


--
-- Name: dlreasons; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.dlreasons (
    reasonid integer NOT NULL,
    reason character varying(45) NOT NULL
);


--
-- Name: dlreasons_reasonid_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.dlreasons_reasonid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: dlreasons_reasonid_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.dlreasons_reasonid_seq OWNED BY enigma.dlreasons.reasonid;


--
-- Name: doctypes; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.doctypes (
    doctypeid smallint NOT NULL,
    docshort character varying(50) DEFAULT NULL::character varying,
    doclong character varying(50) DEFAULT NULL::character varying
);


--
-- Name: documents; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.documents (
    id bigint NOT NULL,
    orgid bigint DEFAULT '0'::bigint NOT NULL,
    doctypeid smallint NOT NULL,
    recorddate date NOT NULL,
    midday boolean,
    reportdate date,
    adv boolean,
    dir boolean,
    pay boolean,
    sai boolean,
    modified timestamp with time zone,
    repid integer,
    resid integer,
    paypage integer
);


--
-- Name: documents_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: documents_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.documents_id_seq OWNED BY enigma.documents.id;


--
-- Name: domchanges; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.domchanges (
    id bigint NOT NULL,
    orgid bigint NOT NULL,
    datechanged date NOT NULL,
    dateacc smallint,
    olddom integer NOT NULL,
    oldincid character varying(14) DEFAULT NULL::character varying
);


--
-- Name: domchanges_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.domchanges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: domchanges_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.domchanges_id_seq OWNED BY enigma.domchanges.id;


--
-- Name: domiciles; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.domiciles (
    id integer NOT NULL,
    shortname character varying(6) NOT NULL,
    fullname character varying(50) NOT NULL,
    hkexdomicile character varying(50) DEFAULT NULL::character varying,
    a2 character varying(4) NOT NULL,
    friendly character varying(30) NOT NULL,
    hkcr character varying(45) DEFAULT NULL::character varying
);


--
-- Name: COLUMN domiciles.a2; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.domiciles.a2 IS 'ISO 3166-1 Alpha 2 code';


--
-- Name: COLUMN domiciles.hkcr; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.domiciles.hkcr IS 'name used by HK Companies Registry for non-HK companies';


--
-- Name: domiciles_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.domiciles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: domiciles_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.domiciles_id_seq OWNED BY enigma.domiciles.id;


--
-- Name: donations; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.donations (
    campaign smallint NOT NULL,
    donor bigint NOT NULL,
    doncurr smallint DEFAULT '0'::smallint NOT NULL,
    donamnt bigint NOT NULL,
    receipt integer
);


--
-- Name: dtsquotes; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.dtsquotes (
    stockcode bigint NOT NULL,
    stockid bigint,
    date date NOT NULL,
    high double precision NOT NULL,
    low double precision NOT NULL,
    closing double precision NOT NULL,
    vol numeric NOT NULL,
    turn numeric NOT NULL,
    deals bigint NOT NULL,
    bid double precision NOT NULL,
    ask double precision NOT NULL,
    susp boolean NOT NULL,
    last double precision
);


--
-- Name: enginesize; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.enginesize (
    id smallint NOT NULL,
    des character varying(8) NOT NULL,
    td character varying(10) NOT NULL,
    td2 character varying(10) DEFAULT NULL::character varying
);


--
-- Name: TABLE enginesize; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.enginesize IS 'Engine sizes for Transport Dept Private Cars table 4.2';


--
-- Name: COLUMN enginesize.td; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.enginesize.td IS 'ENGINE_SIZE column from table 4.2';


--
-- Name: COLUMN enginesize.td2; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.enginesize.td2 IS 'New TD description for 2022-07 onwards';


--
-- Name: entitlements; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.entitlements (
    importid bigint NOT NULL,
    daily boolean NOT NULL,
    autoprocess boolean,
    ignorerow boolean,
    stock character varying(5) DEFAULT NULL::character varying,
    sehkid bigint,
    issueid integer,
    stk_name character varying(60) DEFAULT NULL::character varying,
    type character varying(4) DEFAULT NULL::character varying,
    announced date,
    yearend date,
    details_1 character varying(63) DEFAULT NULL::character varying,
    details_2 character varying(63) DEFAULT NULL::character varying,
    details_3 character varying(63) DEFAULT NULL::character varying,
    details_4 character varying(63) DEFAULT NULL::character varying,
    details_5 character varying(63) DEFAULT NULL::character varying,
    details_6 character varying(63) DEFAULT NULL::character varying,
    bookclosefr date,
    bookcloseto date,
    paydate date,
    exdate date,
    capchangetype1 smallint,
    curr1 smallint,
    price1 double precision,
    pricehkd1 double precision,
    old1 double precision,
    new1 double precision,
    date1 date,
    issueid1 bigint,
    descrip1 character varying(255) DEFAULT NULL::character varying,
    capchangetype2 smallint,
    curr2 smallint,
    price2 double precision,
    pricehkd2 double precision,
    old2 double precision,
    new2 double precision,
    date2 date,
    issueid2 bigint,
    descrip2 character varying(255) DEFAULT NULL::character varying,
    capchangetype3 smallint,
    curr3 smallint,
    price3 double precision,
    pricehkd3 double precision,
    old3 double precision,
    new3 double precision,
    date3 date,
    issueid3 bigint,
    descrip3 character varying(255) DEFAULT NULL::character varying,
    capchangetype4 smallint,
    curr4 smallint,
    price4 double precision,
    pricehkd4 double precision,
    old4 double precision,
    new4 double precision,
    date4 date,
    issueid4 bigint,
    descrip4 character varying(255) DEFAULT NULL::character varying,
    event1 bigint,
    event2 bigint,
    event3 bigint,
    event4 bigint,
    modified timestamp with time zone,
    col1 boolean NOT NULL,
    col2 boolean NOT NULL,
    col3 boolean NOT NULL,
    col4 boolean NOT NULL,
    col5 boolean NOT NULL,
    col6 boolean NOT NULL
);


--
-- Name: entall; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.entall AS
 SELECT importid,
    daily,
    autoprocess,
    ignorerow,
    stock,
    sehkid,
    issueid,
    stk_name,
    type,
    announced,
    yearend,
    details_1,
    details_2,
    details_3,
    details_4,
    details_5,
    details_6,
    bookclosefr,
    bookcloseto,
    paydate,
    exdate,
    capchangetype1,
    curr1,
    price1,
    pricehkd1,
    old1,
    new1,
    date1,
    issueid1,
    descrip1,
    capchangetype2,
    curr2,
    price2,
    pricehkd2,
    old2,
    new2,
    date2,
    issueid2,
    descrip2,
    capchangetype3,
    curr3,
    price3,
    pricehkd3,
    old3,
    new3,
    date3,
    issueid3,
    descrip3,
    capchangetype4,
    curr4,
    price4,
    pricehkd4,
    old4,
    new4,
    date4,
    issueid4,
    descrip4,
    event1,
    event2,
    event3,
    event4,
    modified,
    TRIM(BOTH FROM concat(COALESCE(details_1, ''::character varying), ' ', COALESCE(details_2, ''::character varying), ' ', COALESCE(details_3, ''::character varying), ' ', COALESCE(details_4, ''::character varying), ' ', COALESCE(details_5, ''::character varying), ' ', COALESCE(details_6, ''::character varying))) AS details,
    col1,
    col2,
    col3,
    col4,
    col5,
    col6
   FROM enigma.entitlements;


--
-- Name: entitlements_importid_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.entitlements_importid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: entitlements_importid_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.entitlements_importid_seq OWNED BY enigma.entitlements.importid;


--
-- Name: errorlog; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.errorlog (
    id bigint NOT NULL,
    proc character varying(45) DEFAULT NULL::character varying,
    descrip character varying(1000) DEFAULT NULL::character varying,
    errtime timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: errorlog_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.errorlog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: errorlog_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.errorlog_id_seq OWNED BY enigma.errorlog.id;


--
-- Name: ess; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.ess (
    id bigint NOT NULL,
    ename character varying(255) DEFAULT NULL::character varying,
    cname character varying(255) DEFAULT NULL::character varying,
    phase smallint DEFAULT '1'::smallint NOT NULL,
    amt bigint NOT NULL,
    heads bigint NOT NULL,
    orgid bigint,
    modified timestamp with time zone
);


--
-- Name: TABLE ess; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.ess IS 'Employment Support Subsidy';


--
-- Name: ess_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.ess_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ess_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.ess_id_seq OWNED BY enigma.ess.id;


--
-- Name: events; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.events (
    eventid bigint NOT NULL,
    importid bigint,
    subent smallint,
    issueid integer NOT NULL,
    announced date,
    eventtype smallint NOT NULL,
    yearend date,
    exdate date,
    bookclosefr date,
    bookcloseto date,
    acceptdate date,
    distdate date,
    new double precision,
    old double precision,
    currid smallint,
    price double precision,
    pricehkd double precision,
    issue2 integer,
    notes character varying(255) DEFAULT NULL::character varying,
    cumdate date,
    cumprice double precision,
    afterevent bigint,
    adjust double precision,
    canceldate date,
    modified timestamp with time zone,
    fxdate date,
    tempentry boolean NOT NULL
);


--
-- Name: COLUMN events.fxdate; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.events.fxdate IS 'date for FX estimate';


--
-- Name: events_eventid_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.events_eventid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: events_eventid_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.events_eventid_seq OWNED BY enigma.events.eventid;


--
-- Name: filingcodes; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.filingcodes (
    repid integer NOT NULL,
    sc integer NOT NULL
);


--
-- Name: TABLE filingcodes; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.filingcodes IS 'one or more stock codes for each filing in repfilings';


--
-- Name: flights; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.flights (
    id bigint NOT NULL,
    sched timestamp with time zone NOT NULL,
    flightno character varying(8) NOT NULL,
    airline character varying(3) NOT NULL,
    actual timestamp with time zone,
    terminal smallint,
    aisle character varying(4) DEFAULT NULL::character varying,
    gate character varying(3) DEFAULT NULL::character varying,
    stand character varying(5) DEFAULT NULL::character varying,
    baggage smallint,
    hall character(1) DEFAULT NULL::bpchar,
    status character varying(45) DEFAULT NULL::character varying,
    arrival boolean NOT NULL,
    cargo boolean NOT NULL,
    cancelled boolean NOT NULL,
    lastseen timestamp with time zone
);


--
-- Name: flights_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.flights_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: flights_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.flights_id_seq OWNED BY enigma.flights.id;


--
-- Name: forexrates; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.forexrates (
    currpair smallint NOT NULL,
    atdate date NOT NULL,
    rate double precision NOT NULL
);


--
-- Name: freg; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.freg (
    id bigint NOT NULL,
    orgid bigint NOT NULL,
    hostdom integer NOT NULL,
    regid character varying(11) NOT NULL,
    regdate date,
    cesdate date,
    regupd timestamp with time zone
);


--
-- Name: TABLE freg; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.freg IS 'overseas registrations of companies';


--
-- Name: freg_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.freg_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: freg_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.freg_id_seq OWNED BY enigma.freg.id;


--
-- Name: freq; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.freq (
    id smallint NOT NULL,
    fdes character varying(45) NOT NULL
);


--
-- Name: frstatus; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.frstatus (
    id smallint NOT NULL,
    des character varying(9) NOT NULL
);


--
-- Name: TABLE frstatus; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.frstatus IS 'Transport Dept FIRST_REG_STATUS (up to 2018-12-31) and FIRST_REG_STATUS_REV thereafter';


--
-- Name: fueltype; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.fueltype (
    id smallint NOT NULL,
    des character varying(45) NOT NULL,
    friendly character varying(45) NOT NULL
);


--
-- Name: TABLE fueltype; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.fueltype IS 'Fuel type for Transport Department tables';


--
-- Name: govac; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.govac (
    d date NOT NULL,
    govitem integer NOT NULL,
    ann boolean NOT NULL,
    est bigint DEFAULT '0'::bigint NOT NULL,
    act bigint DEFAULT '0'::bigint NOT NULL,
    modified timestamp with time zone
);


--
-- Name: TABLE govac; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.govac IS 'Accounts of the HKSAR Government';


--
-- Name: COLUMN govac.ann; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.govac.ann IS 'Annual (true) or quarterly (false)';


--
-- Name: govadopt; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.govadopt (
    tree integer NOT NULL,
    govitem integer NOT NULL,
    parentid integer NOT NULL,
    txt character varying(127) DEFAULT NULL::character varying,
    short character varying(127) DEFAULT NULL::character varying,
    priority smallint
);


--
-- Name: TABLE govadopt; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.govadopt IS 'Record alternative groupings of govitems with adoptive parentID for different trees';


--
-- Name: COLUMN govadopt.tree; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.govadopt.tree IS 'The ID of the tree. Will be specified with a govitem when calling for a presentation. One govitem can be in multiple trees, but each govitem has a default parentID if not in this table.';


--
-- Name: COLUMN govadopt.parentid; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.govadopt.parentid IS 'The govitem of the adoptive parent';


--
-- Name: COLUMN govadopt.txt; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.govadopt.txt IS 'alternative text to display in this context';


--
-- Name: COLUMN govadopt.short; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.govadopt.short IS 'alternative description for graphs in this tree';


--
-- Name: govitems; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.govitems (
    id integer NOT NULL,
    parentid integer,
    h1 character varying(6) DEFAULT NULL::character varying,
    h2 character varying(6) DEFAULT NULL::character varying,
    h3 character varying(6) DEFAULT NULL::character varying,
    govtxt character varying(255) DEFAULT NULL::character varying,
    txt character varying(255) NOT NULL,
    short character varying(255) DEFAULT NULL::character varying,
    firstd date NOT NULL,
    priority smallint DEFAULT '0'::smallint NOT NULL,
    approved bigint,
    rev boolean NOT NULL,
    reimb boolean NOT NULL,
    head boolean NOT NULL,
    transfer boolean NOT NULL
);


--
-- Name: TABLE govitems; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.govitems IS 'Items in government accounts';


--
-- Name: COLUMN govitems.govtxt; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.govitems.govtxt IS 'The text used by Govt in its files. Do not amend even for typos, as we often use it for matching when no head-numbers are provided. Use txt field for our version.';


--
-- Name: COLUMN govitems.firstd; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.govitems.firstd IS 'First date for which records under this heading are complete (e.g. Stamp Duty may go back longer than all Internal Revenue).';


--
-- Name: COLUMN govitems.priority; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.govitems.priority IS 'The priority for display. Typically 0 but -1 for "Other" items. Allows ordered layouts.';


--
-- Name: COLUMN govitems.approved; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.govitems.approved IS 'Approved amount of budget for capital project';


--
-- Name: COLUMN govitems.rev; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.govitems.rev IS '0=expenditure 1=revenue';


--
-- Name: COLUMN govitems.reimb; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.govitems.reimb IS 'In expenditure, whether this is a reimbursed lineitem ';


--
-- Name: COLUMN govitems.head; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.govitems.head IS 'Whether this is just a heading (1) or has data(0)';


--
-- Name: COLUMN govitems.transfer; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.govitems.transfer IS 'The item is a transfer between funds, or an "additional commitment" line which is only used in estimates, not actual accounts. Hide from display.';


--
-- Name: govitems_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.govitems_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: govitems_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.govitems_id_seq OWNED BY enigma.govitems.id;


--
-- Name: heldas; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.heldas (
    id smallint NOT NULL,
    heldastxt character varying(45) NOT NULL
);


--
-- Name: hkcrtypes; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.hkcrtypes (
    prefix character varying(2) NOT NULL,
    crtype character varying(42) NOT NULL,
    orgtype smallint NOT NULL
);


--
-- Name: TABLE hkcrtypes; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.hkcrtypes IS 'Org types based on Companies Registry prefix';


--
-- Name: hkdistrict; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.hkdistrict (
    id smallint NOT NULL,
    en character varying(17) NOT NULL,
    cn character varying(3) NOT NULL,
    regionid smallint NOT NULL
);


--
-- Name: TABLE hkdistrict; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.hkdistrict IS 'HK districts';


--
-- Name: hkexdata; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.hkexdata (
    stockcode character varying(5) NOT NULL,
    domicile character varying(50) DEFAULT NULL::character varying,
    boardlot bigint,
    nomprice double precision,
    pricedate timestamp with time zone,
    issueid integer NOT NULL,
    modified timestamp with time zone
);


--
-- Name: hkports; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.hkports (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


--
-- Name: TABLE hkports; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.hkports IS 'HK immigration control points';


--
-- Name: hkports_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.hkports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: hkports_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.hkports_id_seq OWNED BY enigma.hkports.id;


--
-- Name: hkpx; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.hkpx (
    d date NOT NULL,
    port smallint NOT NULL,
    pxtype smallint NOT NULL,
    arrivals bigint DEFAULT '0'::bigint NOT NULL,
    departures bigint DEFAULT '0'::bigint NOT NULL
);


--
-- Name: TABLE hkpx; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.hkpx IS 'Passenger traffic at HK control points';


--
-- Name: COLUMN hkpx.arrivals; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.hkpx.arrivals IS '0=departure, 1=arrival';


--
-- Name: hkpxtypes; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.hkpxtypes (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


--
-- Name: TABLE hkpxtypes; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.hkpxtypes IS 'Types of passenger in HK immigration statistics';


--
-- Name: hkpxtypes_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.hkpxtypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: hkpxtypes_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.hkpxtypes_id_seq OWNED BY enigma.hkpxtypes.id;


--
-- Name: hkregion; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.hkregion (
    id smallint NOT NULL,
    en character varying(16) NOT NULL,
    cn character varying(3) NOT NULL
);


--
-- Name: TABLE hkregion; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.hkregion IS 'The 3 regions of HK';


--
-- Name: issue_id1_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.issue_id1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issue_id1_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.issue_id1_seq OWNED BY enigma.issue.id1;


--
-- Name: issuedshares; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.issuedshares (
    issueid integer DEFAULT 0 NOT NULL,
    atdate date NOT NULL,
    outstanding double precision,
    modified timestamp with time zone,
    userid integer DEFAULT 0 NOT NULL
);


--
-- Name: issuedlatestdate; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.issuedlatestdate AS
 SELECT issueid,
    max(atdate) AS maxdate
   FROM enigma.issuedshares
  GROUP BY issueid;


--
-- Name: issuedlatest; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.issuedlatest AS
 SELECT i.issueid,
    i.outstanding,
    i.atdate
   FROM (enigma.issuedshares i
     JOIN enigma.issuedlatestdate t ON (((i.issueid = t.issueid) AND (i.atdate = t.maxdate))));


--
-- Name: issuers2003; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.issuers2003 AS
 SELECT DISTINCT organisations.personid,
    organisations.name1 AS name
   FROM ((enigma.stocklistings
     JOIN enigma.issue ON ((stocklistings.issueid = issue.id1)))
     JOIN enigma.organisations ON ((issue.issuer = organisations.personid)))
  WHERE (((stocklistings.firsttradedate IS NULL) OR (stocklistings.firsttradedate <= '2003-12-31'::date)) AND ((stocklistings.delistdate IS NULL) OR (stocklistings.delistdate > '2004-09-30'::date)) AND (stocklistings.stockexid = ANY (ARRAY[1, 20])) AND (issue.typeid <> ALL (ARRAY[1, 2, 40, 41])));


--
-- Name: jails; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.jails (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    type smallint NOT NULL
);


--
-- Name: jails_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.jails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jails_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.jails_id_seq OWNED BY enigma.jails.id;


--
-- Name: jailtypes; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.jailtypes (
    id integer NOT NULL,
    txt character varying(127) NOT NULL
);


--
-- Name: jailtypes_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.jailtypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jailtypes_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.jailtypes_id_seq OWNED BY enigma.jailtypes.id;


--
-- Name: judgments; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.judgments (
    id bigint NOT NULL,
    uploaded date,
    jdate date,
    dis bigint NOT NULL,
    casenum character varying(20) DEFAULT NULL::character varying,
    casetype smallint,
    neutcit character varying(20) DEFAULT NULL::character varying,
    parties character varying(511) NOT NULL,
    rep character varying(63) DEFAULT NULL::character varying,
    lang character varying(4) DEFAULT NULL::character varying,
    star boolean NOT NULL,
    rv boolean NOT NULL,
    rs boolean NOT NULL,
    modified timestamp with time zone,
    caseyear integer,
    caseseq integer,
    ncyear integer,
    ncseq integer
);


--
-- Name: TABLE judgments; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.judgments IS 'Details captured from Judiciary Newly Added Judgments page';


--
-- Name: COLUMN judgments.dis; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.judgments.dis IS 'page number for link to web page of the case';


--
-- Name: COLUMN judgments.rv; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.judgments.rv IS 'Whether this judgment is a Reasons for Verdict';


--
-- Name: COLUMN judgments.rs; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.judgments.rs IS 'Whether this judgment is a Reasons for Sentence';


--
-- Name: judgments_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.judgments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: judgments_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.judgments_id_seq OWNED BY enigma.judgments.id;


--
-- Name: landreg; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.landreg (
    statid integer NOT NULL,
    d date NOT NULL,
    units bigint NOT NULL,
    consid bigint
);


--
-- Name: sholdings; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.sholdings (
    id bigint NOT NULL,
    holderid bigint DEFAULT '0'::bigint NOT NULL,
    issueid integer DEFAULT 0 NOT NULL,
    atdate date,
    shares double precision,
    stake double precision,
    modified timestamp with time zone,
    userid integer DEFAULT 0 NOT NULL,
    heldas smallint DEFAULT '0'::smallint NOT NULL
);


--
-- Name: lasthlddate; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.lasthlddate AS
 SELECT max(atdate) AS maxdate,
    issueid,
    holderid,
    heldas
   FROM enigma.sholdings
  GROUP BY issueid, holderid, heldas;


--
-- Name: lastmreturn; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.lastmreturn AS
 SELECT stocklistings.stockcode,
    organisations.name1 AS name,
    sectypes.typeshort,
    ( SELECT max(issuedshares.atdate) AS max
           FROM enigma.issuedshares
          WHERE (issuedshares.issueid = issue.id1)) AS maxdate
   FROM (((enigma.stocklistings
     JOIN enigma.issue ON ((stocklistings.issueid = issue.id1)))
     JOIN enigma.organisations ON ((issue.issuer = organisations.personid)))
     JOIN enigma.sectypes ON ((issue.typeid = sectypes.typeid)))
  WHERE (((stocklistings.firsttradedate IS NULL) OR (stocklistings.firsttradedate <= CURRENT_DATE)) AND ((stocklistings.delistdate IS NULL) OR (stocklistings.delistdate > CURRENT_DATE)) AND (stocklistings.stockexid = ANY (ARRAY[1, 20, 23])) AND (issue.typeid <> ALL (ARRAY[2, 40, 41])))
  ORDER BY ( SELECT max(issuedshares.atdate) AS max
           FROM enigma.issuedshares
          WHERE (issuedshares.issueid = issue.id1));


--
-- Name: licrec; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.licrec (
    id bigint NOT NULL,
    staffid bigint NOT NULL,
    orgid bigint NOT NULL,
    role smallint NOT NULL,
    acttype smallint NOT NULL,
    startdate date,
    enddate date,
    modified timestamp with time zone
);


--
-- Name: TABLE licrec; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.licrec IS 'detailed SFC licence records for staff';


--
-- Name: COLUMN licrec.role; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.licrec.role IS '0=rep, 1=RO';


--
-- Name: licrec_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.licrec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licrec_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.licrec_id_seq OWNED BY enigma.licrec.id;


--
-- Name: licrecsum; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.licrecsum (
    acttype smallint NOT NULL,
    d date NOT NULL,
    total integer NOT NULL,
    ro integer NOT NULL
);


--
-- Name: TABLE licrecsum; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.licrecsum IS 'Summary table of licensees to speed up the all-firms page SFChistall';


--
-- Name: COLUMN licrecsum.acttype; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.licrecsum.acttype IS 'activity type';


--
-- Name: COLUMN licrecsum.total; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.licrecsum.total IS 'DISTINCT licensees';


--
-- Name: COLUMN licrecsum.ro; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.licrecsum.ro IS 'DISTINCT responsible officers';


--
-- Name: lirorgteam; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.lirorgteam (
    id bigint NOT NULL,
    orgid bigint NOT NULL,
    teamid smallint NOT NULL,
    firstseen date NOT NULL,
    lastseen date NOT NULL,
    dead boolean NOT NULL
);


--
-- Name: TABLE lirorgteam; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.lirorgteam IS 'Team number for each HK-listed company.';


--
-- Name: lirorgteam_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.lirorgteam_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lirorgteam_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.lirorgteam_id_seq OWNED BY enigma.lirorgteam.id;


--
-- Name: lirroles; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.lirroles (
    id integer NOT NULL,
    title character varying(45) NOT NULL
);


--
-- Name: lirroles_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.lirroles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lirroles_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.lirroles_id_seq OWNED BY enigma.lirroles.id;


--
-- Name: lirstaff; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.lirstaff (
    id integer NOT NULL,
    n1 character varying(45) DEFAULT NULL::character varying,
    n2 character varying(45) DEFAULT NULL::character varying,
    cn character varying(45) DEFAULT NULL::character varying,
    tel bigint NOT NULL
);


--
-- Name: lirstaff_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.lirstaff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lirstaff_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.lirstaff_id_seq OWNED BY enigma.lirstaff.id;


--
-- Name: lirteams; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.lirteams (
    id integer NOT NULL,
    teamno integer NOT NULL,
    firstseen date,
    lastseen date
);


--
-- Name: TABLE lirteams; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.lirteams IS 'The teams of the Listing Division';


--
-- Name: COLUMN lirteams.teamno; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.lirteams.teamno IS 'the number used by the Listing Division';


--
-- Name: lirteams_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.lirteams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lirteams_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.lirteams_id_seq OWNED BY enigma.lirteams.id;


--
-- Name: lirteamstaff; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.lirteamstaff (
    id bigint NOT NULL,
    teamid smallint NOT NULL,
    staffid integer NOT NULL,
    posid smallint NOT NULL,
    firstseen date NOT NULL,
    lastseen date NOT NULL,
    dead boolean NOT NULL
);


--
-- Name: TABLE lirteamstaff; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.lirteamstaff IS 'The staff members of each Listing team. They may change rank without changing team';


--
-- Name: lirteamstaff_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.lirteamstaff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lirteamstaff_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.lirteamstaff_id_seq OWNED BY enigma.lirteamstaff.id;


--
-- Name: listedcoshkadv; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.listedcoshkadv AS
 SELECT documents.orgid,
    listedcoshkall.name,
    max(documents.reportdate) AS advdone
   FROM (enigma.documents
     JOIN enigma.listedcoshkall ON ((listedcoshkall.personid = documents.orgid)))
  WHERE (documents.adv = true)
  GROUP BY documents.orgid, listedcoshkall.name
  ORDER BY (max(documents.reportdate));


--
-- Name: listedfirsttrade; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.listedfirsttrade AS
 SELECT issue.issuer AS personid,
    min(stocklistings.firsttradedate) AS firsttradedate
   FROM (enigma.issue
     JOIN enigma.stocklistings ON ((issue.id1 = stocklistings.issueid)))
  WHERE (((stocklistings.delistdate IS NULL) OR (stocklistings.delistdate > CURRENT_TIMESTAMP)) AND (issue.typeid <> 1))
  GROUP BY issue.issuer;


--
-- Name: listings; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.listings (
    stockexid integer NOT NULL,
    shortname character varying(10) DEFAULT NULL::character varying,
    longname character varying(50) DEFAULT NULL::character varying
);


--
-- Name: listings_stockexid_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.listings_stockexid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: listings_stockexid_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.listings_stockexid_seq OWNED BY enigma.listings.stockexid;


--
-- Name: log; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.log (
    name character varying(255) NOT NULL,
    val character varying(255) NOT NULL,
    descrip character varying(255) DEFAULT NULL::character varying
);


--
-- Name: TABLE log; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.log IS 'For storing locations and logs';


--
-- Name: lookupadviser; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.lookupadviser AS
 SELECT advisers.personid,
    organisations.name1
   FROM (enigma.organisations
     JOIN enigma.advisers ON ((organisations.personid = advisers.personid)))
  ORDER BY organisations.name1;


--
-- Name: lookupposition; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.lookupposition AS
 SELECT positionid,
    posshort,
    poslong
   FROM enigma.positions
  ORDER BY posshort;


--
-- Name: relationships; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.relationships (
    id smallint DEFAULT '0'::smallint NOT NULL,
    relation character varying(20) NOT NULL,
    invrel character varying(20) NOT NULL,
    level smallint NOT NULL
);


--
-- Name: lookuprelationship; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.lookuprelationship AS
 SELECT id,
    relation
   FROM enigma.relationships
  ORDER BY relation;


--
-- Name: roles; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.roles (
    roleid smallint NOT NULL,
    role character varying(30) DEFAULT NULL::character varying,
    onetime boolean,
    rolelong character varying(45) NOT NULL
);


--
-- Name: lookuprole; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.lookuprole AS
 SELECT roleid,
    role
   FROM enigma.roles
  ORDER BY role;


--
-- Name: lsadm; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.lsadm (
    lsid bigint NOT NULL,
    lsdom smallint NOT NULL,
    adm date NOT NULL,
    admacc smallint,
    modified timestamp with time zone
);


--
-- Name: TABLE lsadm; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.lsadm IS 'LawSoc admissions in other jurisdictions ';


--
-- Name: lsalias; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.lsalias (
    lsid bigint NOT NULL,
    aliase character varying(255) DEFAULT NULL::character varying,
    aliasc character varying(255) DEFAULT NULL::character varying,
    firstseen timestamp with time zone
);


--
-- Name: lsdoms; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.lsdoms (
    lsdom integer NOT NULL,
    domname character varying(127) NOT NULL,
    domid integer
);


--
-- Name: TABLE lsdoms; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.lsdoms IS 'Domiciles for Law Society admission';


--
-- Name: lsdoms_lsdom_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.lsdoms_lsdom_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lsdoms_lsdom_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.lsdoms_lsdom_seq OWNED BY enigma.lsdoms.lsdom;


--
-- Name: lsemps; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.lsemps (
    id bigint NOT NULL,
    empname character varying(255) NOT NULL,
    personid bigint,
    modified timestamp with time zone
);


--
-- Name: TABLE lsemps; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.lsemps IS 'Non-law firms named as employers by Law Soc';


--
-- Name: lsemps_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.lsemps_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lsemps_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.lsemps_id_seq OWNED BY enigma.lsemps.id;


--
-- Name: lsjobs; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.lsjobs (
    id bigint NOT NULL,
    lsppl bigint NOT NULL,
    empid bigint NOT NULL,
    firstseen timestamp with time zone,
    lastseen timestamp with time zone,
    dead boolean
);


--
-- Name: TABLE lsjobs; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.lsjobs IS 'Jobs of Law Society solicitors not in law firms';


--
-- Name: lsjobs_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.lsjobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lsjobs_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.lsjobs_id_seq OWNED BY enigma.lsjobs.id;


--
-- Name: lsorgs; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.lsorgs (
    lsid bigint NOT NULL,
    lsename character varying(255) DEFAULT NULL::character varying,
    lscname character varying(45) DEFAULT NULL::character varying,
    tel character varying(255) DEFAULT NULL::character varying,
    name1 character varying(255) DEFAULT NULL::character varying,
    orgtype smallint,
    personid bigint,
    firstseen timestamp with time zone,
    lastseen timestamp with time zone,
    dead boolean
);


--
-- Name: TABLE lsorgs; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.lsorgs IS 'Law Society member firms';


--
-- Name: COLUMN lsorgs.tel; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.lsorgs.tel IS 'use as a matching device when a firm name changes';


--
-- Name: lsposts; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.lsposts (
    id bigint NOT NULL,
    lsorg bigint NOT NULL,
    lsppl bigint NOT NULL,
    post smallint NOT NULL,
    firstseen timestamp with time zone,
    lastseen timestamp with time zone,
    dead boolean
);


--
-- Name: TABLE lsposts; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.lsposts IS 'Positions of people in Law Society member firms';


--
-- Name: lsposts_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.lsposts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lsposts_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.lsposts_id_seq OWNED BY enigma.lsposts.id;


--
-- Name: lsppl; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.lsppl (
    lsid bigint NOT NULL,
    lsename character varying(255) NOT NULL,
    lscname character varying(20) DEFAULT NULL::character varying,
    admhk date,
    admacc smallint,
    name1 character varying(90) DEFAULT NULL::character varying,
    name2 character varying(56) DEFAULT NULL::character varying,
    cname character varying(20) DEFAULT NULL::character varying,
    sex character varying(1) DEFAULT NULL::character varying,
    personid bigint,
    modified timestamp with time zone,
    firstseen timestamp with time zone,
    lastseen timestamp with time zone,
    dead boolean
);


--
-- Name: TABLE lsppl; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.lsppl IS 'Law Society people';


--
-- Name: lsroles; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.lsroles (
    id smallint NOT NULL,
    posid integer NOT NULL,
    lstxt character varying(45) NOT NULL
);


--
-- Name: marketsforweb; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.marketsforweb (
    stockexid smallint DEFAULT '0'::smallint NOT NULL,
    "order" smallint
);


--
-- Name: mergedpersons; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.mergedpersons (
    oldp bigint NOT NULL,
    newp bigint NOT NULL,
    merged timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: TABLE mergedpersons; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.mergedpersons IS 'Map persons who have been merged from their old personID to the new one. Can be chained. Used to forward web pages from old links.';


--
-- Name: missingcr; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.missingcr (
    cr character varying(45) NOT NULL,
    brn character varying(45) DEFAULT NULL::character varying,
    ename character varying(255) DEFAULT NULL::character varying,
    cname character varying(127) DEFAULT NULL::character varying
);


--
-- Name: TABLE missingcr; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.missingcr IS 'Temporary table to record missing entities from the CR mapping CSV';


--
-- Name: missingorg; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.missingorg (
    orgid bigint NOT NULL,
    added timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: TABLE missingorg; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.missingorg IS 'Orgs discovered when reading CR changes';


--
-- Name: months; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.months (
    monthid smallint NOT NULL,
    shortname character varying(3) DEFAULT NULL::character varying
);


--
-- Name: namechanges; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.namechanges (
    id1 bigint NOT NULL,
    personid bigint DEFAULT '0'::bigint NOT NULL,
    oldname character varying(255) DEFAULT NULL::character varying,
    oldcname character varying(127) DEFAULT NULL::character varying,
    datechanged date,
    dateacc smallint,
    modified timestamp with time zone,
    namehash numeric,
    userid integer DEFAULT 0 NOT NULL
);


--
-- Name: namechanges_id1_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.namechanges_id1_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: namechanges_id1_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.namechanges_id1_seq OWNED BY enigma.namechanges.id1;


--
-- Name: namesex; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.namesex (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    sex character varying(1) NOT NULL,
    added timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    dsex character varying(1) DEFAULT NULL::character varying,
    modified timestamp with time zone
);


--
-- Name: namesex_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.namesex_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: namesex_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.namesex_id_seq OWNED BY enigma.namesex.id;


--
-- Name: nationality; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.nationality (
    personid bigint NOT NULL,
    ukchnat integer NOT NULL,
    latest date NOT NULL
);


--
-- Name: oldcr; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.oldcr (
    personid bigint NOT NULL,
    crn character varying(9) NOT NULL,
    brn character varying(45) DEFAULT NULL::character varying
);


--
-- Name: TABLE oldcr; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.oldcr IS 'The old company number for each entity in the Companies Registry';


--
-- Name: oldcrf; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.oldcrf (
    fregid bigint NOT NULL,
    crn character varying(9) NOT NULL,
    brn character varying(45) DEFAULT NULL::character varying
);


--
-- Name: TABLE oldcrf; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.oldcrf IS 'The old registry F- number for each foreign entity in the Companies Registry';


--
-- Name: oldlots; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.oldlots (
    issueid bigint NOT NULL,
    until date NOT NULL,
    lot bigint NOT NULL
);


--
-- Name: TABLE oldlots; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.oldlots IS 'Old board lot sizes on HKEX, based on issueID';


--
-- Name: COLUMN oldlots.until; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.oldlots.until IS 'first date of new board lot size';


--
-- Name: oldlsjobs; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.oldlsjobs (
    id bigint NOT NULL,
    lsppl bigint NOT NULL,
    empid bigint NOT NULL,
    firstseen timestamp with time zone,
    lastseen timestamp with time zone,
    dead boolean
);


--
-- Name: TABLE oldlsjobs; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.oldlsjobs IS 'Jobs of Law Society solicitors not in law firms seen prior to renumbering on 2021-07-22. Retained for historical record only.';


--
-- Name: oldlsjobs_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.oldlsjobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: oldlsjobs_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.oldlsjobs_id_seq OWNED BY enigma.oldlsjobs.id;


--
-- Name: oldlsorgs; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.oldlsorgs (
    lsid bigint NOT NULL,
    lsename character varying(255) DEFAULT NULL::character varying,
    lscname character varying(45) DEFAULT NULL::character varying,
    tel character varying(255) DEFAULT NULL::character varying,
    name1 character varying(255) DEFAULT NULL::character varying,
    orgtype smallint,
    personid bigint,
    firstseen timestamp with time zone,
    lastseen timestamp with time zone,
    dead boolean
);


--
-- Name: TABLE oldlsorgs; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.oldlsorgs IS 'Law Society member firms seen prior to renumbering on 2021-07-22. Retained for historical record only.';


--
-- Name: COLUMN oldlsorgs.tel; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.oldlsorgs.tel IS 'use as a matching device when a firm name changes';


--
-- Name: oldlsposts; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.oldlsposts (
    id bigint NOT NULL,
    lsorg bigint NOT NULL,
    lsppl bigint NOT NULL,
    post smallint NOT NULL,
    firstseen timestamp with time zone,
    lastseen timestamp with time zone,
    dead boolean
);


--
-- Name: TABLE oldlsposts; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.oldlsposts IS 'Positions of people in Law Society law firms seen prior to renumbering on 2021-07-22. Retained for historical record only.';


--
-- Name: oldlsposts_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.oldlsposts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: oldlsposts_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.oldlsposts_id_seq OWNED BY enigma.oldlsposts.id;


--
-- Name: oldlsppl; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.oldlsppl (
    lsid bigint NOT NULL,
    lsename character varying(255) NOT NULL,
    lscname character varying(20) DEFAULT NULL::character varying,
    admhk date,
    admacc smallint,
    name1 character varying(90) DEFAULT NULL::character varying,
    name2 character varying(56) DEFAULT NULL::character varying,
    cname character varying(20) DEFAULT NULL::character varying,
    sex character varying(1) DEFAULT NULL::character varying,
    personid bigint,
    modified timestamp with time zone,
    firstseen timestamp with time zone,
    lastseen timestamp with time zone,
    dead boolean
);


--
-- Name: TABLE oldlsppl; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.oldlsppl IS 'Law Society people seen prior to renumbering on 2021-07-22. Retained for historical record only.';


--
-- Name: oldsfcids; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.oldsfcids (
    sfcid character(6) NOT NULL,
    sfcri boolean NOT NULL,
    until date,
    orgid bigint NOT NULL
);


--
-- Name: TABLE oldsfcids; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.oldsfcids IS 'Old SFCID of amalgamated company';


--
-- Name: olicrec; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.olicrec (
    id bigint NOT NULL,
    orgid bigint NOT NULL,
    ri boolean NOT NULL,
    acttype smallint NOT NULL,
    startdate date,
    enddate date,
    modified timestamp with time zone
);


--
-- Name: TABLE olicrec; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.olicrec IS 'detailed SFC licence records for orgs';


--
-- Name: COLUMN olicrec.ri; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.olicrec.ri IS 'whether it was a registered institution (true) or licensed corp (false)';


--
-- Name: olicrec_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.olicrec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: olicrec_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.olicrec_id_seq OWNED BY enigma.olicrec.id;


--
-- Name: orgdata; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.orgdata (
    personid bigint DEFAULT '0'::bigint NOT NULL,
    yearenddate smallint,
    yearendmonth smallint,
    addr1 character varying(255) DEFAULT NULL::character varying,
    addr2 character varying(127) DEFAULT NULL::character varying,
    addr3 character varying(127) DEFAULT NULL::character varying,
    district character varying(50) DEFAULT NULL::character varying,
    territory integer,
    addrdate date,
    notes text,
    modified timestamp with time zone,
    "D&Afinal" boolean NOT NULL
);


--
-- Name: orgtypes; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.orgtypes (
    orgtype smallint NOT NULL,
    typename character varying(45) NOT NULL,
    hkcrname character varying(45) DEFAULT NULL::character varying
);


--
-- Name: COLUMN orgtypes.hkcrname; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.orgtypes.hkcrname IS 'name used in HK Companies Registry';


--
-- Name: ownerprof; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.ownerprof (
    orgid bigint NOT NULL,
    atdate date NOT NULL,
    dirstake double precision DEFAULT '0'::double precision NOT NULL,
    famstake double precision DEFAULT '0'::double precision NOT NULL,
    amstake double precision DEFAULT '0'::double precision NOT NULL,
    govstake double precision DEFAULT '0'::double precision NOT NULL,
    othstake double precision DEFAULT '0'::double precision NOT NULL,
    ot smallint,
    modified timestamp with time zone
);


--
-- Name: TABLE ownerprof; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.ownerprof IS 'Ownership profile of cos on snapshot dates, by voting rights';


--
-- Name: ownerstks; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.ownerstks (
    orgid bigint NOT NULL,
    atdate date NOT NULL,
    ultimid bigint NOT NULL,
    ot smallint NOT NULL,
    shares double precision,
    stake double precision,
    econshares double precision,
    econstake double precision,
    weakest double precision
);


--
-- Name: TABLE ownerstks; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.ownerstks IS 'Attributed shares and holdings with economic shares and holdings';


--
-- Name: COLUMN ownerstks.atdate; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.ownerstks.atdate IS 'the snapshot date (not necessarily the shareholding date which may be earlier)';


--
-- Name: COLUMN ownerstks.ultimid; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.ownerstks.ultimid IS 'the personID of the ultimate controller of this holding';


--
-- Name: COLUMN ownerstks.ot; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.ownerstks.ot IS 'the owner type of the ultimID, relative to the issuer';


--
-- Name: COLUMN ownerstks.econshares; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.ownerstks.econshares IS 'the economic interest in shares of the ultimate controller of this holding';


--
-- Name: ownertype; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.ownertype (
    id smallint NOT NULL,
    ownshort character varying(2) NOT NULL,
    ownlong character varying(255) NOT NULL
);


--
-- Name: TABLE ownertype; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.ownertype IS 'Types of shareholders';


--
-- Name: pay; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.pay (
    id bigint NOT NULL,
    orgid bigint NOT NULL,
    pplid bigint NOT NULL,
    prank smallint DEFAULT '1'::smallint NOT NULL,
    d date NOT NULL,
    currid smallint NOT NULL,
    fees integer,
    salary integer,
    bonus integer,
    retire integer,
    share bigint,
    total bigint,
    userid integer NOT NULL,
    modified timestamp with time zone
);


--
-- Name: pay_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.pay_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pay_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.pay_id_seq OWNED BY enigma.pay.id;


--
-- Name: payerrors; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.payerrors (
    docid bigint NOT NULL,
    errid smallint NOT NULL,
    userid integer NOT NULL,
    reported timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    resolvedby integer,
    resolved timestamp with time zone
);


--
-- Name: TABLE payerrors; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.payerrors IS 'recording error reports from db editors of the pay table';


--
-- Name: COLUMN payerrors.resolvedby; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.payerrors.resolvedby IS 'userID of editor who cleared the error';


--
-- Name: payerrtype; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.payerrtype (
    id smallint NOT NULL,
    txt character varying(127) NOT NULL
);


--
-- Name: TABLE payerrtype; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.payerrtype IS 'Types of errors for pay-years in the pay table';


--
-- Name: payfx; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.payfx (
    d date NOT NULL,
    repcurr smallint NOT NULL,
    dispcurr smallint NOT NULL,
    f double precision NOT NULL
);


--
-- Name: TABLE payfx; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.payfx IS 'Precomputed table for FX factors used in the pay displays';


--
-- Name: paylineerrors; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.paylineerrors (
    payid bigint NOT NULL,
    errid smallint DEFAULT '6'::smallint NOT NULL,
    userid integer NOT NULL,
    reported timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    resolvedby integer,
    resolved timestamp with time zone
);


--
-- Name: TABLE paylineerrors; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.paylineerrors IS 'Report errors with individual paylines';


--
-- Name: COLUMN paylineerrors.resolvedby; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.paylineerrors.resolvedby IS 'userID of editor who cleared the error';


--
-- Name: paylineerrtype; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.paylineerrtype (
    id smallint NOT NULL,
    txt character varying(127) NOT NULL,
    ord smallint NOT NULL
);


--
-- Name: TABLE paylineerrtype; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.paylineerrtype IS 'Types of errors for paylines in the pay table';


--
-- Name: payreview; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.payreview (
    docid bigint NOT NULL,
    userid integer NOT NULL,
    submitted timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: TABLE payreview; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.payreview IS 'Log submissions of editors for pay table';


--
-- Name: persons; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.persons (
    personid bigint NOT NULL
);


--
-- Name: TABLE persons; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.persons IS 'A unique identifier assigned to either an entity in the organisations table or a human in the people table but not both. The original reason for this is that shareholders can be either people or orgs, and orgs can be directors, so we want to use the personID in the relevant tables.';


--
-- Name: persons_personid_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.persons_personid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: persons_personid_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.persons_personid_seq OWNED BY enigma.persons.personid;


--
-- Name: personstories; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.personstories (
    personid bigint NOT NULL,
    storyid integer NOT NULL
);


--
-- Name: positions_positionid_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.positions_positionid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: positions_positionid_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.positions_positionid_seq OWNED BY enigma.positions.positionid;


--
-- Name: prhblock; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.prhblock (
    id bigint NOT NULL,
    en character varying(127) NOT NULL,
    cn character varying(45) NOT NULL,
    estateid integer NOT NULL
);


--
-- Name: TABLE prhblock; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.prhblock IS 'Blocks in HA Public Rental Housing estates';


--
-- Name: prhblock_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.prhblock_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: prhblock_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.prhblock_id_seq OWNED BY enigma.prhblock.id;


--
-- Name: prhestate; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.prhestate (
    id integer NOT NULL,
    en character varying(45) NOT NULL,
    cn character varying(45) NOT NULL,
    district smallint NOT NULL,
    latitude double precision,
    longitude double precision
);


--
-- Name: TABLE prhestate; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.prhestate IS 'Housing Authority Public Rental Housing Estates';


--
-- Name: COLUMN prhestate.en; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.prhestate.en IS 'English name';


--
-- Name: COLUMN prhestate.cn; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.prhestate.cn IS 'Chinese name';


--
-- Name: prhestate_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.prhestate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: prhestate_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.prhestate_id_seq OWNED BY enigma.prhestate.id;


--
-- Name: prhflat; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.prhflat (
    id bigint NOT NULL,
    blockid bigint NOT NULL,
    floor character varying(2) NOT NULL,
    flat character varying(6) NOT NULL,
    area double precision DEFAULT '0'::double precision NOT NULL,
    elevator boolean NOT NULL,
    firstseen timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastseen timestamp with time zone
);


--
-- Name: COLUMN prhflat.area; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.prhflat.area IS 'internal floor area';


--
-- Name: prhflat_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.prhflat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: prhflat_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.prhflat_id_seq OWNED BY enigma.prhflat.id;


--
-- Name: prisoners; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.prisoners (
    jail smallint NOT NULL,
    d date NOT NULL,
    convict integer NOT NULL,
    remand integer NOT NULL,
    detain integer NOT NULL
);


--
-- Name: prisorigin; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.prisorigin (
    d date NOT NULL,
    local integer,
    mtm integer,
    nonlocal integer
);


--
-- Name: TABLE prisorigin; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.prisorigin IS 'prisoners by origin';


--
-- Name: COLUMN prisorigin.local; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.prisorigin.local IS 'Persons holding HK Identity Card but excluding imported labour, foreign domestic helpers and consulate staff.';


--
-- Name: COLUMN prisorigin.mtm; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.prisorigin.mtm IS 'Mainland Taiwan Macau';


--
-- Name: ptoperators; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.ptoperators (
    id smallint NOT NULL,
    tdabbrev character varying(6) NOT NULL,
    orgid bigint
);


--
-- Name: TABLE ptoperators; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.ptoperators IS 'Public Transport Operators';


--
-- Name: qt; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.qt (
    qtid smallint NOT NULL,
    d date NOT NULL,
    capunit integer,
    useunit integer,
    pax integer,
    availunit integer
);


--
-- Name: TABLE qt; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.qt IS 'Quarantine centre data';


--
-- Name: qtbytype; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.qtbytype (
    d date NOT NULL,
    cumcc integer NOT NULL,
    cumncc integer NOT NULL,
    cc integer NOT NULL,
    ncc integer NOT NULL
);


--
-- Name: TABLE qtbytype; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.qtbytype IS 'People in govt quarantine centres';


--
-- Name: COLUMN qtbytype.cumcc; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.qtbytype.cumcc IS 'Cumulative Close Contacts';


--
-- Name: COLUMN qtbytype.cumncc; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.qtbytype.cumncc IS 'Cumulative Non-Close Contacts';


--
-- Name: COLUMN qtbytype.cc; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.qtbytype.cc IS 'Close Contacts';


--
-- Name: COLUMN qtbytype.ncc; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.qtbytype.ncc IS 'Non-Close Contacts';


--
-- Name: qtcentres; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.qtcentres (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    address character varying(255) DEFAULT NULL::character varying
);


--
-- Name: TABLE qtcentres; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.qtcentres IS 'Quarantine centres';


--
-- Name: qtcentres_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.qtcentres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: qtcentres_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.qtcentres_id_seq OWNED BY enigma.qtcentres.id;


--
-- Name: rank; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.rank (
    rankid smallint DEFAULT '0'::smallint NOT NULL,
    ranktext character varying(50) NOT NULL,
    rankshort character varying(10) DEFAULT NULL::character varying
);


--
-- Name: relatives; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.relatives (
    rel1 bigint NOT NULL,
    relid smallint DEFAULT '0'::smallint NOT NULL,
    rel2 bigint NOT NULL,
    modified timestamp with time zone,
    userid integer DEFAULT 0 NOT NULL
);


--
-- Name: reorg; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.reorg (
    fromorg bigint NOT NULL,
    toorg bigint NOT NULL,
    effdate date,
    effacc smallint
);


--
-- Name: repdocs; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.repdocs (
    repid integer NOT NULL,
    file character varying(20) NOT NULL,
    docname character varying(255) NOT NULL
);


--
-- Name: TABLE repdocs; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.repdocs IS 'Document list from multi-file documents on display';


--
-- Name: repfilings; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.repfilings (
    id integer NOT NULL,
    repfiled timestamp with time zone NOT NULL,
    url character varying(255) NOT NULL,
    descrip character varying(511) NOT NULL,
    descrip2 character varying(511) DEFAULT NULL::character varying,
    doctype smallint,
    fsize integer,
    newsid bigint NOT NULL
);


--
-- Name: COLUMN repfilings.fsize; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.repfilings.fsize IS 'file size in KB';


--
-- Name: repfilings_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.repfilings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: repfilings_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.repfilings_id_seq OWNED BY enigma.repfilings.id;


--
-- Name: sdi; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.sdi (
    id bigint NOT NULL,
    form smallint NOT NULL,
    filing bigint,
    name1 character varying(255) DEFAULT NULL::character varying,
    name2 character varying(255) DEFAULT NULL::character varying,
    cname character varying(40) DEFAULT NULL::character varying,
    ccc character varying(40) DEFAULT NULL::character varying,
    stockcode character varying(5) DEFAULT NULL::character varying,
    stockname character varying(255) DEFAULT NULL::character varying,
    reldate date,
    awdate date,
    issueid integer,
    dir bigint,
    longshs1 double precision,
    longstk1 double precision,
    shortshs1 double precision,
    shortstk1 double precision,
    longshs2 double precision,
    longstk2 double precision,
    shortshs2 double precision,
    shortstk2 double precision,
    shsout double precision,
    signdate date,
    curr smallint,
    hiprice double precision,
    avprice double precision,
    avcon double precision,
    concode smallint,
    serno character(16) DEFAULT NULL::bpchar,
    sernoamend character(16) DEFAULT NULL::bpchar,
    sernosuper character(16) DEFAULT NULL::bpchar,
    modified timestamp with time zone
);


--
-- Name: COLUMN sdi.sernoamend; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.sdi.sernoamend IS 'this filing replaces the filing with this serial number';


--
-- Name: COLUMN sdi.sernosuper; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.sdi.sernosuper IS 'this filing is superseded by filing number serNoSuper';


--
-- Name: sdi_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.sdi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sdi_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.sdi_id_seq OWNED BY enigma.sdi.id;


--
-- Name: sdicap; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.sdicap (
    sdiid bigint NOT NULL,
    capid integer NOT NULL,
    postype smallint NOT NULL,
    shares double precision NOT NULL
);


--
-- Name: TABLE sdicap; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.sdicap IS 'box 16 (director) or 20 (substantial) of SDI forms - capacity in which interests are held';


--
-- Name: COLUMN sdicap.sdiid; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.sdicap.sdiid IS 'ID of sdi table';


--
-- Name: sdievent; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.sdievent (
    sdiid bigint NOT NULL,
    postype smallint NOT NULL,
    reason integer,
    capbefore integer,
    capafter integer,
    shsinv double precision,
    probreason integer
);


--
-- Name: TABLE sdievent; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.sdievent IS 'from box 14 on form 3A';


--
-- Name: sdireason; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.sdireason (
    id integer NOT NULL,
    rsnsht character varying(12) NOT NULL,
    rsnlng character varying(255) NOT NULL
);


--
-- Name: sfcnews; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.sfcnews (
    storyid integer NOT NULL,
    titleen character varying(255) NOT NULL,
    htmlen text NOT NULL,
    issuedate timestamp with time zone NOT NULL,
    modtime timestamp with time zone NOT NULL,
    titletc character varying(255) DEFAULT NULL::character varying,
    htmltc text,
    sda character varying(255) DEFAULT NULL::character varying
);


--
-- Name: COLUMN sfcnews.sda; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.sfcnews.sda IS 'filename of the statement of disciplinary action stored in codocs folder';


--
-- Name: sfcshort; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.sfcshort (
    issueid bigint NOT NULL,
    atdate date NOT NULL,
    stockcode integer NOT NULL,
    stockname character varying(20) NOT NULL,
    shares double precision NOT NULL,
    value double precision NOT NULL
);


--
-- Name: sholdings_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.sholdings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sholdings_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.sholdings_id_seq OWNED BY enigma.sholdings.id;


--
-- Name: snaplog; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.snaplog (
    orgid bigint NOT NULL,
    snapdate date NOT NULL,
    userid integer NOT NULL,
    project smallint DEFAULT '0'::smallint NOT NULL,
    status boolean NOT NULL,
    done boolean NOT NULL,
    entered timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    modified timestamp with time zone,
    notes text
);


--
-- Name: COLUMN snaplog.project; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.snaplog.project IS '0=holdings, 1=committees';


--
-- Name: sources; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.sources (
    sourceid integer NOT NULL,
    sourcename character varying(255) NOT NULL
);


--
-- Name: sources_sourceid_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.sources_sourceid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sources_sourceid_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.sources_sourceid_seq OWNED BY enigma.sources.sourceid;


--
-- Name: st1cos; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.st1cos AS
 SELECT DISTINCT issuer
   FROM enigma.issue
  WHERE ((id1 IN ( SELECT stocklistings.issueid
           FROM enigma.stocklistings
          WHERE ((stocklistings.stockexid = ANY (ARRAY[1, 20])) AND ((stocklistings.firsttradedate IS NULL) OR (stocklistings.firsttradedate <= '2003-12-31'::date))))) AND (id1 IN ( SELECT stocklistings.issueid
           FROM enigma.stocklistings
          WHERE ((stocklistings.stockexid = ANY (ARRAY[1, 20])) AND ((stocklistings.delistdate IS NULL) OR (stocklistings.delistdate > '2005-03-31'::date))))) AND (typeid = ANY (ARRAY[0, 6, 7, 42])));


--
-- Name: st1dates; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.st1dates AS
 SELECT issuer,
    ( SELECT max(documents.recorddate) AS max
           FROM enigma.documents
          WHERE ((documents.repid IS NOT NULL) AND (documents.orgid = st1cos.issuer) AND (documents.recorddate <= '2003-12-31'::date))) AS befdate,
    ( SELECT min(documents.recorddate) AS min
           FROM enigma.documents
          WHERE ((documents.repid IS NOT NULL) AND (documents.orgid = st1cos.issuer) AND (documents.recorddate >= '2004-12-31'::date))) AS aftdate
   FROM enigma.st1cos;


--
-- Name: st2cos; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.st2cos AS
 SELECT DISTINCT issuer
   FROM enigma.issue
  WHERE ((id1 IN ( SELECT stocklistings.issueid
           FROM enigma.stocklistings
          WHERE ((stocklistings.stockexid = ANY (ARRAY[1, 20])) AND ((stocklistings.firsttradedate IS NULL) OR (stocklistings.firsttradedate <= '2011-12-31'::date))))) AND (id1 IN ( SELECT stocklistings.issueid
           FROM enigma.stocklistings
          WHERE ((stocklistings.stockexid = ANY (ARRAY[1, 20])) AND ((stocklistings.delistdate IS NULL) OR (stocklistings.delistdate > '2012-12-31'::date))))) AND (typeid = ANY (ARRAY[0, 6, 7, 42])));


--
-- Name: st2dates; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.st2dates AS
 SELECT issuer,
    ( SELECT max(documents.recorddate) AS max
           FROM enigma.documents
          WHERE ((documents.repid IS NOT NULL) AND (documents.orgid = st2cos.issuer) AND (documents.recorddate <= '2011-12-31'::date))) AS befdate,
    ( SELECT min(documents.recorddate) AS min
           FROM enigma.documents
          WHERE ((documents.repid IS NOT NULL) AND (documents.orgid = st2cos.issuer) AND (documents.recorddate >= '2012-12-31'::date))) AS aftdate
   FROM enigma.st2cos;


--
-- Name: st4cos; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.st4cos AS
 SELECT DISTINCT issuer
   FROM enigma.issue
  WHERE ((id1 IN ( SELECT stocklistings.issueid
           FROM enigma.stocklistings
          WHERE ((stocklistings.stockexid = ANY (ARRAY[1, 20])) AND ((stocklistings.firsttradedate IS NULL) OR (stocklistings.firsttradedate <= '2007-12-31'::date))))) AND (id1 IN ( SELECT stocklistings.issueid
           FROM enigma.stocklistings
          WHERE ((stocklistings.stockexid = ANY (ARRAY[1, 20])) AND ((stocklistings.delistdate IS NULL) OR (stocklistings.delistdate > '2008-12-31'::date))))) AND (typeid = ANY (ARRAY[0, 6, 7, 42])));


--
-- Name: st4dates; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.st4dates AS
 SELECT issuer,
    ( SELECT max(documents.recorddate) AS max
           FROM enigma.documents
          WHERE ((documents.repid IS NOT NULL) AND (documents.orgid = st4cos.issuer) AND (documents.recorddate <= '2007-12-31'::date))) AS befdate,
    ( SELECT min(documents.recorddate) AS min
           FROM enigma.documents
          WHERE ((documents.repid IS NOT NULL) AND (documents.orgid = st4cos.issuer) AND (documents.recorddate >= '2008-12-31'::date))) AS aftdate
   FROM enigma.st4cos;


--
-- Name: statgov; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.statgov (
    descrip character varying(127) NOT NULL,
    statsid integer NOT NULL
);


--
-- Name: stats; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.stats (
    id integer NOT NULL,
    statname character varying(127) NOT NULL
);


--
-- Name: COLUMN stats.statname; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.stats.statname IS 'Statistics with our name for them';


--
-- Name: stats_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.stats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: stats_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.stats_id_seq OWNED BY enigma.stats.id;


--
-- Name: status; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.status (
    statusid smallint DEFAULT '0'::smallint NOT NULL,
    statustext character varying(50) NOT NULL
);


--
-- Name: stockcodes1000; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.stockcodes1000 AS
 SELECT stockcode
   FROM enigma.stocklistings
  WHERE (((stockcode)::text < '1000'::text) AND (stockexid = ANY (ARRAY[1, 20, 22, 23, 38])) AND ((delistdate IS NULL) OR (delistdate > CURRENT_TIMESTAMP)))
  ORDER BY stockcode;


--
-- Name: stocklistings_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.stocklistings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: stocklistings_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.stocklistings_id_seq OWNED BY enigma.stocklistings.id;


--
-- Name: stories; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.stories (
    storyid integer NOT NULL,
    title character varying(255) NOT NULL,
    summary text,
    storydate timestamp with time zone,
    url character varying(255) NOT NULL,
    sourceid integer,
    url2 character varying(255) DEFAULT NULL::character varying,
    url2text character varying(255) DEFAULT NULL::character varying,
    pubdate timestamp with time zone NOT NULL,
    tweeted timestamp with time zone,
    image character varying(255) DEFAULT NULL::character varying
);


--
-- Name: stories_storyid_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.stories_storyid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: stories_storyid_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.stories_storyid_seq OWNED BY enigma.stories.storyid;


--
-- Name: storytags; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.storytags (
    storyid integer NOT NULL,
    catid integer NOT NULL
);


--
-- Name: tdjourneys; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.tdjourneys (
    d date NOT NULL,
    vc smallint NOT NULL,
    j bigint,
    km bigint,
    kmch bigint,
    paxcap integer,
    provj boolean NOT NULL,
    provkm boolean NOT NULL
);


--
-- Name: tdreglic; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.tdreglic (
    d date NOT NULL,
    vc smallint NOT NULL,
    fr integer DEFAULT 0 NOT NULL,
    totreg integer DEFAULT 0 NOT NULL,
    totlic integer DEFAULT 0 NOT NULL
);


--
-- Name: TABLE tdreglic; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.tdreglic IS 'Transport Dept  monthly first registration and total registration and licences by vehicle class from Table 4.1(a)';


--
-- Name: tempsfc; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.tempsfc (
    orgid bigint NOT NULL,
    started date,
    ended date,
    role smallint NOT NULL
);


--
-- Name: titles; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.titles (
    titleid smallint NOT NULL,
    title character varying(30) NOT NULL,
    sex character varying(1) DEFAULT NULL::character varying
);


--
-- Name: tundir; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.tundir (
    id smallint NOT NULL,
    defdir character varying(11) NOT NULL,
    altdir character varying(11) DEFAULT NULL::character varying,
    deftd character(2) DEFAULT NULL::bpchar,
    alttd character(2) DEFAULT NULL::bpchar
);


--
-- Name: TABLE tundir; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.tundir IS 'Tunnel directions .Each tunnel, bridge or crossing can be East-West, North-South, or In/Out. Record in tunnel table';


--
-- Name: tunnels; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.tunnels (
    id smallint NOT NULL,
    td character varying(6) DEFAULT NULL::character varying,
    name character varying(37) NOT NULL,
    tundirid smallint NOT NULL,
    tdtable character varying(4) DEFAULT NULL::character varying,
    notes text,
    opened date
);


--
-- Name: TABLE tunnels; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.tunnels IS 'Tunnel IDs and codes for Transport Dept Tables 3.1';


--
-- Name: COLUMN tunnels.td; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.tunnels.td IS 'TUN_BRIDGE_CODE in TD files';


--
-- Name: COLUMN tunnels.tundirid; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.tunnels.tundirid IS 'The pair of tunnel directions in the tundir table';


--
-- Name: tuntraff; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.tuntraff (
    tunid smallint NOT NULL,
    vc smallint NOT NULL,
    d date NOT NULL,
    defcnt integer DEFAULT 0 NOT NULL,
    altcnt integer DEFAULT 0 NOT NULL
);


--
-- Name: TABLE tuntraff; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.tuntraff IS 'Traffic via tunnels & bridges from TD tables 3.1, 3.2';


--
-- Name: ukappres; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.ukappres (
    orgid bigint NOT NULL,
    chid character varying(27) NOT NULL,
    appdate date NOT NULL,
    resdate date NOT NULL,
    name character varying(255) NOT NULL
);


--
-- Name: TABLE ukappres; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.ukappres IS 'UK appointments where the resignation is before the appointment';


--
-- Name: ukch; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.ukch (
    uktype integer NOT NULL,
    api character varying(127) NOT NULL,
    meaning character varying(255) DEFAULT NULL::character varying,
    orgtype smallint NOT NULL
);


--
-- Name: ukch_uktype_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.ukch_uktype_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ukch_uktype_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.ukch_uktype_seq OWNED BY enigma.ukch.uktype;


--
-- Name: ukchnats; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.ukchnats (
    id integer NOT NULL,
    descrip character varying(50) NOT NULL,
    domicile integer,
    uklist boolean
);


--
-- Name: COLUMN ukchnats.domicile; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.ukchnats.domicile IS 'nationalities found in UKCH people. Map to domiciles.';


--
-- Name: ukchnats_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.ukchnats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ukchnats_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.ukchnats_id_seq OWNED BY enigma.ukchnats.id;


--
-- Name: ukhons; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.ukhons (
    ukhons character varying(20) NOT NULL
);


--
-- Name: TABLE ukhons; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.ukhons IS 'Suffixes used in UKCH honours';


--
-- Name: uklog; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.uklog (
    prefix character(2) DEFAULT ''::bpchar NOT NULL,
    lastco bigint,
    domid integer NOT NULL,
    lastcoadded timestamp with time zone
);


--
-- Name: uknonhuman; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.uknonhuman (
    chid character varying(27) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone
);


--
-- Name: ukppl; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.ukppl (
    chid character varying(27) NOT NULL,
    personid bigint NOT NULL
);


--
-- Name: TABLE ukppl; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.ukppl IS 'People in UK Companies House';


--
-- Name: users; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.users (
    id integer NOT NULL,
    name character varying(15) NOT NULL
);


--
-- Name: vax; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.vax (
    d date NOT NULL,
    cohort smallint NOT NULL,
    male boolean NOT NULL,
    prov boolean NOT NULL,
    sino1 integer DEFAULT 0 NOT NULL,
    sino2 integer DEFAULT 0 NOT NULL,
    sino3 integer DEFAULT 0 NOT NULL,
    sino4 integer DEFAULT 0 NOT NULL,
    sino5 integer DEFAULT 0 NOT NULL,
    sino6 integer DEFAULT 0 NOT NULL,
    sino7 integer DEFAULT 0 NOT NULL,
    sino8 integer DEFAULT 0 NOT NULL,
    sino9 integer DEFAULT 0 NOT NULL,
    sino10 integer DEFAULT 0 NOT NULL,
    bion1 integer DEFAULT 0 NOT NULL,
    bion2 integer DEFAULT 0 NOT NULL,
    bion3 integer DEFAULT 0 NOT NULL,
    bion4 integer DEFAULT 0 NOT NULL,
    bion5 integer DEFAULT 0 NOT NULL,
    bion6 integer DEFAULT 0 NOT NULL,
    bion7 integer DEFAULT 0 NOT NULL,
    bion8 integer DEFAULT 0 NOT NULL,
    bion9 integer DEFAULT 0 NOT NULL,
    bion10 integer DEFAULT 0 NOT NULL
);


--
-- Name: TABLE vax; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.vax IS 'Vaccination data for COVID-19';


--
-- Name: vaxcohorts; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.vaxcohorts (
    id smallint NOT NULL,
    txt character varying(5) NOT NULL,
    govtxt character varying(12) NOT NULL,
    minage smallint NOT NULL,
    popn integer NOT NULL,
    mpopn integer NOT NULL,
    fpopn integer NOT NULL,
    sino1 integer NOT NULL,
    sino2 integer NOT NULL,
    sino3 integer NOT NULL,
    bion1 integer NOT NULL,
    bion2 integer NOT NULL,
    bion3 integer NOT NULL
);


--
-- Name: TABLE vaxcohorts; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.vaxcohorts IS 'HK vaccination data age groups';


--
-- Name: COLUMN vaxcohorts.sino1; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.vaxcohorts.sino1 IS 'The latest cumulative total sinovac dose 1  shown on the govt dashboard by age and extracted from barAge.csv';


--
-- Name: veengine; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.veengine (
    d date NOT NULL,
    engid smallint NOT NULL,
    fr integer NOT NULL,
    totreg integer NOT NULL
);


--
-- Name: TABLE veengine; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.veengine IS 'Private cars by engine size from TD table 4.2';


--
-- Name: vehicleclass; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.vehicleclass (
    id smallint NOT NULL,
    parent smallint,
    fuelparent smallint,
    jparent smallint,
    des character varying(255) NOT NULL,
    govtype character varying(45) DEFAULT NULL::character varying,
    operator smallint,
    dd boolean NOT NULL,
    franchise smallint
);


--
-- Name: COLUMN vehicleclass.fuelparent; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.vehicleclass.fuelparent IS 'For table 4.4 which groups some lines together';


--
-- Name: COLUMN vehicleclass.dd; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON COLUMN enigma.vehicleclass.dd IS 'Double-decker';


--
-- Name: vehiclefr; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.vehiclefr (
    vc smallint NOT NULL,
    d date NOT NULL,
    makeid integer NOT NULL,
    fuelid smallint NOT NULL,
    bodyid smallint NOT NULL,
    frstatid smallint NOT NULL,
    freg integer NOT NULL
);


--
-- Name: TABLE vehiclefr; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.vehiclefr IS 'First Registrations of private cars by make etc from TD table 4.1(e)';


--
-- Name: vehiclefuel; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.vehiclefuel (
    d date NOT NULL,
    vc smallint NOT NULL,
    fuelid smallint NOT NULL,
    totreg integer NOT NULL,
    totlic integer NOT NULL
);


--
-- Name: TABLE vehiclefuel; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.vehiclefuel IS 'For Transport Dept table 4.4';


--
-- Name: vehiclemakes; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.vehiclemakes (
    id integer NOT NULL,
    make character varying(45) NOT NULL
);


--
-- Name: TABLE vehiclemakes; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.vehiclemakes IS 'Makes of car as listed in TD table 4.1(e)';


--
-- Name: vehiclemakes_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.vehiclemakes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: vehiclemakes_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.vehiclemakes_id_seq OWNED BY enigma.vehiclemakes.id;


--
-- Name: vehicletypos; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.vehicletypos (
    wrong character varying(20) NOT NULL,
    correct character varying(20) NOT NULL
);


--
-- Name: TABLE vehicletypos; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.vehicletypos IS 'Correction table for TD vehicle brands';


--
-- Name: web; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.web (
    id bigint NOT NULL,
    personid bigint NOT NULL,
    url character varying(255) NOT NULL,
    source integer,
    dead boolean
);


--
-- Name: web_id_seq; Type: SEQUENCE; Schema: enigma; Owner: -
--

CREATE SEQUENCE enigma.web_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: web_id_seq; Type: SEQUENCE OWNED BY; Schema: enigma; Owner: -
--

ALTER SEQUENCE enigma.web_id_seq OWNED BY enigma.web.id;


--
-- Name: webadv; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.webadv AS
 SELECT org1.name1 AS org,
    roles.role,
    roles.roleid,
    org2.name1 AS adv,
    org1.personid AS orgid,
    org2.personid AS advid,
    adviserships.adddate,
    adviserships.addacc,
    adviserships.remdate,
    adviserships.remacc,
    roles.onetime
   FROM (((enigma.adviserships
     JOIN enigma.organisations org1 ON ((org1.personid = adviserships.company)))
     JOIN enigma.organisations org2 ON ((org2.personid = adviserships.adviser)))
     JOIN enigma.roles ON ((roles.roleid = adviserships.role)));


--
-- Name: webadvships; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.webadvships AS
 SELECT organisations.name1 AS org,
    roles.role,
    roles.onetime,
    organisations.personid AS orgid,
    adviserships.adviser AS advid,
    adviserships.adddate,
    adviserships.addacc,
    adviserships.remdate,
    adviserships.remacc,
    listedcoshk.issuer
   FROM (((enigma.adviserships
     JOIN enigma.organisations ON ((organisations.personid = adviserships.company)))
     JOIN enigma.roles ON ((roles.roleid = adviserships.role)))
     LEFT JOIN enigma.listedcoshk ON ((listedcoshk.issuer = adviserships.company)));


--
-- Name: webbhold; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.webbhold (
    issueid integer NOT NULL,
    atdate date NOT NULL,
    shares bigint NOT NULL,
    stake double precision NOT NULL,
    filing character varying(255) NOT NULL
);


--
-- Name: webbuybacks; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.webbuybacks AS
 SELECT enigma.stockcodethen(c.issueid, c.effdate) AS stockcode,
    c.issueid,
    c.effdate,
    c.exchid,
    COALESCE(b2.name, b1.name) AS exchname,
    (- c.shares) AS shares,
    c.value,
    cur.currency,
    concat(o.name1, ': ', st.typeshort) AS name
   FROM ((((((enigma.capchanges c
     JOIN enigma.issue i ON ((i.id1 = c.issueid)))
     JOIN enigma.organisations o ON ((o.personid = i.issuer)))
     JOIN enigma.sectypes st ON ((i.typeid = st.typeid)))
     JOIN enigma.bbexch b1 ON ((c.exchid = b1.id)))
     LEFT JOIN enigma.currencies cur ON ((c.currency = cur.id)))
     LEFT JOIN enigma.bbexch b2 ON ((b1.mapto = b2.id)))
  WHERE (c.capchangetype = 1);


--
-- Name: VIEW webbuybacks; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON VIEW enigma.webbuybacks IS 'Buyback transactions (unadjusted for splits) with stock codes, exchange names, and company details. Used by buybacks.asp when u=1 (show unadjusted)';


--
-- Name: webcatmembers; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.webcatmembers AS
 SELECT organisations.personid,
    organisations.name1,
    classifications.category,
    categories.name AS catname
   FROM ((enigma.classifications
     JOIN enigma.organisations ON ((organisations.personid = classifications.company)))
     JOIN enigma.categories ON ((categories.id = classifications.category)))
  ORDER BY organisations.name1;


--
-- Name: webcattree; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.webcattree AS
 SELECT parent.name AS parentname,
    child.name AS childname,
    parent.id AS parentid,
    child.id AS childid
   FROM ((enigma.cattree
     JOIN enigma.categories parent ON ((parent.id = cattree.parentcat)))
     JOIN enigma.categories child ON ((child.id = cattree.childcat)));


--
-- Name: webcountadvbyrole; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.webcountadvbyrole AS
 SELECT roles.roleid,
    roles.rolelong AS role,
    roles.onetime,
    count(adviserships.role) AS countofrole
   FROM ((enigma.adviserships
     JOIN enigma.roles ON ((roles.roleid = adviserships.role)))
     JOIN enigma.listedcoshk ON ((listedcoshk.issuer = adviserships.company)))
  WHERE ((adviserships.remdate IS NULL) OR (adviserships.remdate > CURRENT_TIMESTAMP))
  GROUP BY roles.roleid, roles.rolelong, roles.onetime
  ORDER BY roles.rolelong;


--
-- Name: webcurrlisted; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.webcurrlisted AS
 SELECT stocklistings.stockcode,
    organisations.name1,
    sectypes.typeshort AS type,
    organisations.personid,
    stocklistings.stockexid,
    "left"((sectypes.typeshort)::text, 1) AS type1,
    stocklistings.firsttradedate,
    organisations.domicile
   FROM ((((enigma.stocklistings
     JOIN enigma.issue ON ((issue.id1 = stocklistings.issueid)))
     JOIN enigma.organisations ON ((organisations.personid = issue.issuer)))
     JOIN enigma.sectypes ON ((issue.typeid = sectypes.typeid)))
     JOIN enigma.listings ON ((listings.stockexid = stocklistings.stockexid)))
  WHERE ((stocklistings.stockexid = ANY (ARRAY[1, 20, 22, 23, 38])) AND ((stocklistings.firsttradedate IS NULL) OR (stocklistings.firsttradedate <= CURRENT_TIMESTAMP)) AND ((stocklistings.delistdate IS NULL) OR (stocklistings.delistdate > CURRENT_TIMESTAMP)))
  ORDER BY organisations.name1, sectypes.typeshort;


--
-- Name: webdelisted; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.webdelisted AS
 SELECT stocklistings.stockcode,
    stocklistings.issueid,
    organisations.name1,
    organisations.domicile,
    sectypes.typeshort AS type,
    stocklistings.firsttradedate,
    stocklistings.finaltradedate,
    stocklistings.delistdate,
    organisations.personid,
    stocklistings.stockexid,
    dlreasons.reason,
        CASE
            WHEN ((stocklistings.firsttradedate IS NULL) OR (stocklistings.finaltradedate IS NULL)) THEN NULL::numeric
            ELSE ((((stocklistings.finaltradedate - stocklistings.firsttradedate) + 1))::numeric / 365.2425)
        END AS tradelife
   FROM (((((enigma.stocklistings
     JOIN enigma.issue ON ((stocklistings.issueid = issue.id1)))
     JOIN enigma.organisations ON ((issue.issuer = organisations.personid)))
     JOIN enigma.sectypes ON ((issue.typeid = sectypes.typeid)))
     JOIN enigma.listings ON ((stocklistings.stockexid = listings.stockexid)))
     LEFT JOIN enigma.dlreasons ON ((stocklistings.reasonid = dlreasons.reasonid)))
  WHERE ((stocklistings.delistdate <= CURRENT_TIMESTAMP) AND (stocklistings.stockexid = ANY (ARRAY[1, 20, 22, 23, 38])));


--
-- Name: webdirs; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.webdirs AS
 SELECT concat(people.name1, ', ', COALESCE(people.name2, ''::character varying)) AS dir,
    positions.posshort AS "position",
    positions.rank,
    positions.poslong,
    directorships.director AS dirid,
    directorships.company AS orgid,
    directorships.apptdate,
    directorships.resdate,
    directorships.apptacc,
    directorships.resacc,
    people.yob
   FROM ((enigma.directorships
     JOIN enigma.people ON ((people.personid = directorships.director)))
     JOIN enigma.positions ON ((positions.positionid = directorships.positionid)));


--
-- Name: webdirships; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.webdirships AS
 SELECT positions.posshort AS "position",
    positions.rank,
    positions.poslong,
    organisations.name1 AS org,
    directorships.director AS dirid,
    organisations.personid AS orgid,
    directorships.apptdate,
    directorships.resdate,
    directorships.apptacc,
    directorships.resacc,
    listedcoshkall.stockexid
   FROM (((enigma.directorships
     JOIN enigma.organisations ON ((organisations.personid = directorships.company)))
     JOIN enigma.positions ON ((positions.positionid = directorships.positionid)))
     LEFT JOIN enigma.listedcoshkall ON ((organisations.personid = listedcoshkall.personid)));


--
-- Name: webdocs; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.webdocs AS
 SELECT documents.orgid,
    documents.recorddate,
    documents.reportdate,
    doctypes.doclong,
    documents.adv,
    documents.dir
   FROM (enigma.doctypes
     JOIN enigma.documents ON ((doctypes.doctypeid = documents.doctypeid)))
  WHERE (documents.doctypeid <> 2);


--
-- Name: webholders3; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.webholders3 AS
 SELECT sh.issueid AS issue,
    sh.holderid AS personid,
    sh.atdate AS holdingdate,
    sh.shares,
    sh.stake,
        CASE
            WHEN (pe.personid IS NOT NULL) THEN 'P'::text
            WHEN (o.personid IS NOT NULL) THEN 'O'::text
            ELSE NULL::text
        END AS persontype,
    COALESCE(
        CASE
            WHEN (pe.personid IS NOT NULL) THEN ((pe.name1)::text || COALESCE((', '::text || (pe.name2)::text), ''::text))
            ELSE NULL::text
        END, (o.name1)::text) AS name,
    o.orgtype,
    o.domicile,
    d.a2,
    d.friendly,
    o.incdate,
    o.incacc,
    i.typeid AS sectype,
    st.typeshort,
    st.typelong
   FROM (((((enigma.sholdings sh
     LEFT JOIN enigma.people pe ON ((sh.holderid = pe.personid)))
     LEFT JOIN enigma.organisations o ON ((sh.holderid = o.personid)))
     LEFT JOIN enigma.domiciles d ON ((o.domicile = d.id)))
     JOIN enigma.issue i ON ((sh.issueid = i.id1)))
     LEFT JOIN enigma.sectypes st ON ((i.typeid = st.typeid)))
  WHERE (sh.heldas = 0);


--
-- Name: webholdings3; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.webholdings3 AS
 SELECT sh.holderid AS personid,
    sh.issueid AS issue,
    sh.atdate AS holdingdate,
    sh.shares,
    sh.stake,
    i.issuer,
    i.typeid AS sectype,
    st.typeshort,
    st.typelong,
    o.name1 AS name,
    o.orgtype,
    d.a2,
    d.friendly,
    o.incdate,
    o.incacc
   FROM ((((enigma.sholdings sh
     JOIN enigma.issue i ON ((sh.issueid = i.id1)))
     JOIN enigma.organisations o ON ((i.issuer = o.personid)))
     LEFT JOIN enigma.sectypes st ON ((i.typeid = st.typeid)))
     LEFT JOIN enigma.domiciles d ON ((o.domicile = d.id)))
  WHERE (sh.heldas = 0);


--
-- Name: webincats; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.webincats AS
 SELECT organisations.personid,
    organisations.name1,
    classifications.category,
    categories.name AS catname
   FROM ((enigma.classifications
     JOIN enigma.organisations ON ((organisations.personid = classifications.company)))
     JOIN enigma.categories ON ((categories.id = classifications.category)))
  ORDER BY organisations.name1;


--
-- Name: webissues; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.webissues AS
 SELECT issue.id1,
    sectypes.typeshort AS sectype,
    organisations.name1 AS issuer,
    organisations.personid AS person
   FROM ((enigma.issue
     JOIN enigma.organisations ON ((organisations.personid = issue.issuer)))
     JOIN enigma.sectypes ON ((issue.typeid = sectypes.typeid)));


--
-- Name: weblistings; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.weblistings AS
 SELECT stocklistings.stockcode,
    sectypes.typeshort AS sectype,
    organisations.name1 AS org,
    stocklistings.delistdate,
    organisations.personid AS orgid,
    stocklistings.firsttradedate,
    stocklistings.finaltradedate,
    listings.shortname,
    stocklistings.issueid,
    listings.stockexid,
    dlreasons.reason
   FROM (((((enigma.stocklistings
     JOIN enigma.issue ON ((stocklistings.issueid = issue.id1)))
     JOIN enigma.organisations ON ((issue.issuer = organisations.personid)))
     JOIN enigma.sectypes ON ((issue.typeid = sectypes.typeid)))
     JOIN enigma.listings ON ((stocklistings.stockexid = listings.stockexid)))
     LEFT JOIN enigma.dlreasons ON ((stocklistings.reasonid = dlreasons.reasonid)))
  WHERE (listings.stockexid = ANY (ARRAY[1, 20, 22, 23, 38, 71]))
  ORDER BY sectypes.typeshort, stocklistings.firsttradedate;


--
-- Name: weborgs; Type: VIEW; Schema: enigma; Owner: -
--

CREATE VIEW enigma.weborgs AS
 SELECT organisations.domicile AS domid,
    organisations.personid AS orgid,
    organisations.name1 AS org,
    organisations.orgtype,
    (organisations.cname)::text AS cname,
    domiciles.fullname AS dom,
    orgtypes.typename,
    enigma.msdateacc(organisations.incdate, organisations.incacc) AS inc,
    organisations.incdate,
    organisations.disdate,
    organisations.incacc,
    organisations.incid,
    dismodes.dismodetxt,
    organisations.sfcid,
    organisations.sfcri,
    organisations.ukuri,
    organisations.incupd,
    oldcr.crn AS oldcrn
   FROM ((((enigma.organisations
     LEFT JOIN enigma.domiciles ON ((domiciles.id = organisations.domicile)))
     LEFT JOIN enigma.orgtypes ON ((organisations.orgtype = orgtypes.orgtype)))
     LEFT JOIN enigma.dismodes ON ((organisations.dismode = dismodes.id)))
     LEFT JOIN enigma.oldcr ON ((organisations.personid = oldcr.personid)));


--
-- Name: wsprivs; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.wsprivs (
    userid integer NOT NULL,
    roleid smallint NOT NULL,
    urank smallint DEFAULT '1'::smallint NOT NULL,
    live boolean NOT NULL
);


--
-- Name: TABLE wsprivs; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.wsprivs IS 'Roles of each user and their ranking in that role';


--
-- Name: wsroles; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.wsroles (
    id smallint NOT NULL,
    msuser character varying(45) NOT NULL,
    cred bytea
);


--
-- Name: TABLE wsroles; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.wsroles IS 'roles for editors working on various pages';


--
-- Name: wsroletabs; Type: TABLE; Schema: enigma; Owner: -
--

CREATE TABLE enigma.wsroletabs (
    roleid smallint NOT NULL,
    tblname character varying(45) NOT NULL
);


--
-- Name: TABLE wsroletabs; Type: COMMENT; Schema: enigma; Owner: -
--

COMMENT ON TABLE enigma.wsroletabs IS 'Tables which a wsrole can insert, update, delete. Maximum one role per table.';


--
-- Name: oldnames oldnameid; Type: DEFAULT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.oldnames ALTER COLUMN oldnameid SET DEFAULT nextval('ccass.oldnames_oldnameid_seq'::regclass);


--
-- Name: participants partid; Type: DEFAULT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.participants ALTER COLUMN partid SET DEFAULT nextval('ccass.participants_partid_seq'::regclass);


--
-- Name: shortnames id; Type: DEFAULT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.shortnames ALTER COLUMN id SET DEFAULT nextval('ccass.shortnames_id_seq'::regclass);


--
-- Name: acitems id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.acitems ALTER COLUMN id SET DEFAULT nextval('enigma.acitems_id_seq'::regclass);


--
-- Name: adviserships id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.adviserships ALTER COLUMN id SET DEFAULT nextval('enigma.adviserships_id_seq'::regclass);


--
-- Name: alias id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.alias ALTER COLUMN id SET DEFAULT nextval('enigma.alias_id_seq'::regclass);


--
-- Name: bbexch id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.bbexch ALTER COLUMN id SET DEFAULT nextval('enigma.bbexch_id_seq'::regclass);


--
-- Name: campaign campid; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.campaign ALTER COLUMN campid SET DEFAULT nextval('enigma.campaign_campid_seq'::regclass);


--
-- Name: capchanges ccid; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.capchanges ALTER COLUMN ccid SET DEFAULT nextval('enigma.capchanges_ccid_seq'::regclass);


--
-- Name: casetypes id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.casetypes ALTER COLUMN id SET DEFAULT nextval('enigma.casetypes_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.categories ALTER COLUMN id SET DEFAULT nextval('enigma.categories_id_seq'::regclass);


--
-- Name: coms id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.coms ALTER COLUMN id SET DEFAULT nextval('enigma.coms_id_seq'::regclass);


--
-- Name: currpair id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.currpair ALTER COLUMN id SET DEFAULT nextval('enigma.currpair_id_seq'::regclass);


--
-- Name: datasource id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.datasource ALTER COLUMN id SET DEFAULT nextval('enigma.datasource_id_seq'::regclass);


--
-- Name: directorships id1; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.directorships ALTER COLUMN id1 SET DEFAULT nextval('enigma.directorships_id1_seq'::regclass);


--
-- Name: dlreasons reasonid; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.dlreasons ALTER COLUMN reasonid SET DEFAULT nextval('enigma.dlreasons_reasonid_seq'::regclass);


--
-- Name: documents id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.documents ALTER COLUMN id SET DEFAULT nextval('enigma.documents_id_seq'::regclass);


--
-- Name: domchanges id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.domchanges ALTER COLUMN id SET DEFAULT nextval('enigma.domchanges_id_seq'::regclass);


--
-- Name: domiciles id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.domiciles ALTER COLUMN id SET DEFAULT nextval('enigma.domiciles_id_seq'::regclass);


--
-- Name: entitlements importid; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.entitlements ALTER COLUMN importid SET DEFAULT nextval('enigma.entitlements_importid_seq'::regclass);


--
-- Name: errorlog id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.errorlog ALTER COLUMN id SET DEFAULT nextval('enigma.errorlog_id_seq'::regclass);


--
-- Name: ess id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.ess ALTER COLUMN id SET DEFAULT nextval('enigma.ess_id_seq'::regclass);


--
-- Name: events eventid; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.events ALTER COLUMN eventid SET DEFAULT nextval('enigma.events_eventid_seq'::regclass);


--
-- Name: flights id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.flights ALTER COLUMN id SET DEFAULT nextval('enigma.flights_id_seq'::regclass);


--
-- Name: freg id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.freg ALTER COLUMN id SET DEFAULT nextval('enigma.freg_id_seq'::regclass);


--
-- Name: govitems id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.govitems ALTER COLUMN id SET DEFAULT nextval('enigma.govitems_id_seq'::regclass);


--
-- Name: hkports id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.hkports ALTER COLUMN id SET DEFAULT nextval('enigma.hkports_id_seq'::regclass);


--
-- Name: hkpxtypes id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.hkpxtypes ALTER COLUMN id SET DEFAULT nextval('enigma.hkpxtypes_id_seq'::regclass);


--
-- Name: issue id1; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.issue ALTER COLUMN id1 SET DEFAULT nextval('enigma.issue_id1_seq'::regclass);


--
-- Name: jails id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.jails ALTER COLUMN id SET DEFAULT nextval('enigma.jails_id_seq'::regclass);


--
-- Name: jailtypes id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.jailtypes ALTER COLUMN id SET DEFAULT nextval('enigma.jailtypes_id_seq'::regclass);


--
-- Name: judgments id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.judgments ALTER COLUMN id SET DEFAULT nextval('enigma.judgments_id_seq'::regclass);


--
-- Name: licrec id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.licrec ALTER COLUMN id SET DEFAULT nextval('enigma.licrec_id_seq'::regclass);


--
-- Name: lirorgteam id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lirorgteam ALTER COLUMN id SET DEFAULT nextval('enigma.lirorgteam_id_seq'::regclass);


--
-- Name: lirroles id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lirroles ALTER COLUMN id SET DEFAULT nextval('enigma.lirroles_id_seq'::regclass);


--
-- Name: lirstaff id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lirstaff ALTER COLUMN id SET DEFAULT nextval('enigma.lirstaff_id_seq'::regclass);


--
-- Name: lirteams id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lirteams ALTER COLUMN id SET DEFAULT nextval('enigma.lirteams_id_seq'::regclass);


--
-- Name: lirteamstaff id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lirteamstaff ALTER COLUMN id SET DEFAULT nextval('enigma.lirteamstaff_id_seq'::regclass);


--
-- Name: listings stockexid; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.listings ALTER COLUMN stockexid SET DEFAULT nextval('enigma.listings_stockexid_seq'::regclass);


--
-- Name: lsdoms lsdom; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsdoms ALTER COLUMN lsdom SET DEFAULT nextval('enigma.lsdoms_lsdom_seq'::regclass);


--
-- Name: lsemps id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsemps ALTER COLUMN id SET DEFAULT nextval('enigma.lsemps_id_seq'::regclass);


--
-- Name: lsjobs id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsjobs ALTER COLUMN id SET DEFAULT nextval('enigma.lsjobs_id_seq'::regclass);


--
-- Name: lsposts id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsposts ALTER COLUMN id SET DEFAULT nextval('enigma.lsposts_id_seq'::regclass);


--
-- Name: namechanges id1; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.namechanges ALTER COLUMN id1 SET DEFAULT nextval('enigma.namechanges_id1_seq'::regclass);


--
-- Name: namesex id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.namesex ALTER COLUMN id SET DEFAULT nextval('enigma.namesex_id_seq'::regclass);


--
-- Name: oldlsjobs id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.oldlsjobs ALTER COLUMN id SET DEFAULT nextval('enigma.oldlsjobs_id_seq'::regclass);


--
-- Name: oldlsposts id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.oldlsposts ALTER COLUMN id SET DEFAULT nextval('enigma.oldlsposts_id_seq'::regclass);


--
-- Name: olicrec id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.olicrec ALTER COLUMN id SET DEFAULT nextval('enigma.olicrec_id_seq'::regclass);


--
-- Name: pay id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.pay ALTER COLUMN id SET DEFAULT nextval('enigma.pay_id_seq'::regclass);


--
-- Name: persons personid; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.persons ALTER COLUMN personid SET DEFAULT nextval('enigma.persons_personid_seq'::regclass);


--
-- Name: positions positionid; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.positions ALTER COLUMN positionid SET DEFAULT nextval('enigma.positions_positionid_seq'::regclass);


--
-- Name: prhblock id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.prhblock ALTER COLUMN id SET DEFAULT nextval('enigma.prhblock_id_seq'::regclass);


--
-- Name: prhestate id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.prhestate ALTER COLUMN id SET DEFAULT nextval('enigma.prhestate_id_seq'::regclass);


--
-- Name: prhflat id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.prhflat ALTER COLUMN id SET DEFAULT nextval('enigma.prhflat_id_seq'::regclass);


--
-- Name: qtcentres id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.qtcentres ALTER COLUMN id SET DEFAULT nextval('enigma.qtcentres_id_seq'::regclass);


--
-- Name: repfilings id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.repfilings ALTER COLUMN id SET DEFAULT nextval('enigma.repfilings_id_seq'::regclass);


--
-- Name: sdi id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sdi ALTER COLUMN id SET DEFAULT nextval('enigma.sdi_id_seq'::regclass);


--
-- Name: sholdings id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sholdings ALTER COLUMN id SET DEFAULT nextval('enigma.sholdings_id_seq'::regclass);


--
-- Name: sources sourceid; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sources ALTER COLUMN sourceid SET DEFAULT nextval('enigma.sources_sourceid_seq'::regclass);


--
-- Name: stats id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.stats ALTER COLUMN id SET DEFAULT nextval('enigma.stats_id_seq'::regclass);


--
-- Name: stocklistings id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.stocklistings ALTER COLUMN id SET DEFAULT nextval('enigma.stocklistings_id_seq'::regclass);


--
-- Name: stories storyid; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.stories ALTER COLUMN storyid SET DEFAULT nextval('enigma.stories_storyid_seq'::regclass);


--
-- Name: ukch uktype; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.ukch ALTER COLUMN uktype SET DEFAULT nextval('enigma.ukch_uktype_seq'::regclass);


--
-- Name: ukchnats id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.ukchnats ALTER COLUMN id SET DEFAULT nextval('enigma.ukchnats_id_seq'::regclass);


--
-- Name: vehiclemakes id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.vehiclemakes ALTER COLUMN id SET DEFAULT nextval('enigma.vehiclemakes_id_seq'::regclass);


--
-- Name: web id; Type: DEFAULT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.web ALTER COLUMN id SET DEFAULT nextval('enigma.web_id_seq'::regclass);


--
-- Name: bigchanges idx_19990_primary; Type: CONSTRAINT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.bigchanges
    ADD CONSTRAINT idx_19990_primary PRIMARY KEY (atdate, issueid, partid);


--
-- Name: calendar idx_19993_primary; Type: CONSTRAINT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.calendar
    ADD CONSTRAINT idx_19993_primary PRIMARY KEY (tradedate);


--
-- Name: dailylog idx_19996_primary; Type: CONSTRAINT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.dailylog
    ADD CONSTRAINT idx_19996_primary PRIMARY KEY (issueid, atdate);


--
-- Name: holdings idx_20011_primary; Type: CONSTRAINT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.holdings
    ADD CONSTRAINT idx_20011_primary PRIMARY KEY (issueid, partid, atdate);


--
-- Name: missing idx_20014_primary; Type: CONSTRAINT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.missing
    ADD CONSTRAINT idx_20014_primary PRIMARY KEY (atdate, issueid);


--
-- Name: oldnames idx_20018_primary; Type: CONSTRAINT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.oldnames
    ADD CONSTRAINT idx_20018_primary PRIMARY KEY (oldnameid);


--
-- Name: parthold idx_20022_primary; Type: CONSTRAINT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.parthold
    ADD CONSTRAINT idx_20022_primary PRIMARY KEY (partid, issueid, atdate);


--
-- Name: participants idx_20026_primary; Type: CONSTRAINT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.participants
    ADD CONSTRAINT idx_20026_primary PRIMARY KEY (partid);


--
-- Name: pquotes idx_20031_primary; Type: CONSTRAINT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.pquotes
    ADD CONSTRAINT idx_20031_primary PRIMARY KEY (issueid, atdate);


--
-- Name: quotes idx_20044_primary; Type: CONSTRAINT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.quotes
    ADD CONSTRAINT idx_20044_primary PRIMARY KEY (issueid, atdate);


--
-- Name: sehkmonthend idx_20057_primary; Type: CONSTRAINT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.sehkmonthend
    ADD CONSTRAINT idx_20057_primary PRIMARY KEY (monthend);


--
-- Name: shortnames idx_20061_primary; Type: CONSTRAINT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.shortnames
    ADD CONSTRAINT idx_20061_primary PRIMARY KEY (id);


--
-- Name: specialdays idx_20066_primary; Type: CONSTRAINT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.specialdays
    ADD CONSTRAINT idx_20066_primary PRIMARY KEY (specialdate);


--
-- Name: unquotes idx_20069_primary; Type: CONSTRAINT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.unquotes
    ADD CONSTRAINT idx_20069_primary PRIMARY KEY (stockcode, atdate);


--
-- Name: acdata idx_17164_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.acdata
    ADD CONSTRAINT idx_17164_primary PRIMARY KEY (acitem, atdate);


--
-- Name: acitems idx_17169_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.acitems
    ADD CONSTRAINT idx_17169_primary PRIMARY KEY (id);


--
-- Name: activity idx_17177_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.activity
    ADD CONSTRAINT idx_17177_primary PRIMARY KEY (id);


--
-- Name: adjustments idx_17181_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.adjustments
    ADD CONSTRAINT idx_17181_primary PRIMARY KEY (issueid, exdate);


--
-- Name: advisers idx_17184_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.advisers
    ADD CONSTRAINT idx_17184_primary PRIMARY KEY (personid);


--
-- Name: adviserships idx_17189_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.adviserships
    ADD CONSTRAINT idx_17189_primary PRIMARY KEY (id);


--
-- Name: airlines idx_17193_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.airlines
    ADD CONSTRAINT idx_17193_primary PRIMARY KEY (icao);


--
-- Name: airports idx_17199_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.airports
    ADD CONSTRAINT idx_17199_primary PRIMARY KEY (iata);


--
-- Name: alias idx_17204_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.alias
    ADD CONSTRAINT idx_17204_primary PRIMARY KEY (id);


--
-- Name: bbexch idx_17215_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.bbexch
    ADD CONSTRAINT idx_17215_primary PRIMARY KEY (id);


--
-- Name: bodytype idx_17219_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.bodytype
    ADD CONSTRAINT idx_17219_primary PRIMARY KEY (id);


--
-- Name: buybacklog idx_17222_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.buybacklog
    ADD CONSTRAINT idx_17222_primary PRIMARY KEY (lastrun);


--
-- Name: campaign idx_17226_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.campaign
    ADD CONSTRAINT idx_17226_primary PRIMARY KEY (campid);


--
-- Name: capacity idx_17231_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.capacity
    ADD CONSTRAINT idx_17231_primary PRIMARY KEY (id);


--
-- Name: capchanges idx_17235_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.capchanges
    ADD CONSTRAINT idx_17235_primary PRIMARY KEY (ccid);


--
-- Name: capchangetypes idx_17241_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.capchangetypes
    ADD CONSTRAINT idx_17241_primary PRIMARY KEY (capchangetype);


--
-- Name: casetypes idx_17250_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.casetypes
    ADD CONSTRAINT idx_17250_primary PRIMARY KEY (id);


--
-- Name: categories idx_17255_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.categories
    ADD CONSTRAINT idx_17255_primary PRIMARY KEY (id);


--
-- Name: cattree idx_17260_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.cattree
    ADD CONSTRAINT idx_17260_primary PRIMARY KEY (childcat, parentcat);


--
-- Name: chartitems idx_17263_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.chartitems
    ADD CONSTRAINT idx_17263_primary PRIMARY KEY (chartid, dataitem);


--
-- Name: charts idx_17267_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.charts
    ADD CONSTRAINT idx_17267_primary PRIMARY KEY (id);


--
-- Name: charttypes idx_17270_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.charttypes
    ADD CONSTRAINT idx_17270_primary PRIMARY KEY (id);


--
-- Name: classifications idx_17273_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.classifications
    ADD CONSTRAINT idx_17273_primary PRIMARY KEY (company, category);


--
-- Name: codeshare idx_17276_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.codeshare
    ADD CONSTRAINT idx_17276_primary PRIMARY KEY (flightid, flightno);


--
-- Name: comeets idx_17279_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.comeets
    ADD CONSTRAINT idx_17279_primary PRIMARY KEY (orgid, comid, atdate);


--
-- Name: comex idx_17282_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.comex
    ADD CONSTRAINT idx_17282_primary PRIMARY KEY (orgid, atdate, comid);


--
-- Name: compos idx_17285_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.compos
    ADD CONSTRAINT idx_17285_primary PRIMARY KEY (orgid, dirid, comid, atdate);


--
-- Name: coms idx_17289_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.coms
    ADD CONSTRAINT idx_17289_primary PRIMARY KEY (id);


--
-- Name: corpwords idx_17293_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.corpwords
    ADD CONSTRAINT idx_17293_primary PRIMARY KEY (word);


--
-- Name: courts idx_17296_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.courts
    ADD CONSTRAINT idx_17296_primary PRIMARY KEY (id);


--
-- Name: currencies idx_17300_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.currencies
    ADD CONSTRAINT idx_17300_primary PRIMARY KEY (id);


--
-- Name: currpair idx_17307_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.currpair
    ADD CONSTRAINT idx_17307_primary PRIMARY KEY (id);


--
-- Name: data idx_17311_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.data
    ADD CONSTRAINT idx_17311_primary PRIMARY KEY (item, d);


--
-- Name: dataitems idx_17314_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.dataitems
    ADD CONSTRAINT idx_17314_primary PRIMARY KEY (id);


--
-- Name: datasource idx_17325_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.datasource
    ADD CONSTRAINT idx_17325_primary PRIMARY KEY (id);


--
-- Name: dateaccuracy idx_17333_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.dateaccuracy
    ADD CONSTRAINT idx_17333_primary PRIMARY KEY (accid);


--
-- Name: destor idx_17338_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.destor
    ADD CONSTRAINT idx_17338_primary PRIMARY KEY (flightid, seq);


--
-- Name: directorships idx_17342_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.directorships
    ADD CONSTRAINT idx_17342_primary PRIMARY KEY (id1);


--
-- Name: dismodes idx_17346_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.dismodes
    ADD CONSTRAINT idx_17346_primary PRIMARY KEY (id);


--
-- Name: dlreasons idx_17352_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.dlreasons
    ADD CONSTRAINT idx_17352_primary PRIMARY KEY (reasonid);


--
-- Name: doctypes idx_17356_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.doctypes
    ADD CONSTRAINT idx_17356_primary PRIMARY KEY (doctypeid);


--
-- Name: documents idx_17362_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.documents
    ADD CONSTRAINT idx_17362_primary PRIMARY KEY (id);


--
-- Name: domchanges idx_17368_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.domchanges
    ADD CONSTRAINT idx_17368_primary PRIMARY KEY (id);


--
-- Name: domiciles idx_17374_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.domiciles
    ADD CONSTRAINT idx_17374_primary PRIMARY KEY (id);


--
-- Name: donations idx_17380_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.donations
    ADD CONSTRAINT idx_17380_primary PRIMARY KEY (campaign, donor);


--
-- Name: dtsquotes idx_17384_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.dtsquotes
    ADD CONSTRAINT idx_17384_primary PRIMARY KEY (stockcode, date);


--
-- Name: enginesize idx_17389_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.enginesize
    ADD CONSTRAINT idx_17389_primary PRIMARY KEY (id);


--
-- Name: entitlements idx_17394_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.entitlements
    ADD CONSTRAINT idx_17394_primary PRIMARY KEY (importid);


--
-- Name: errorlog idx_17414_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.errorlog
    ADD CONSTRAINT idx_17414_primary PRIMARY KEY (id);


--
-- Name: ess idx_17424_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.ess
    ADD CONSTRAINT idx_17424_primary PRIMARY KEY (id);


--
-- Name: events idx_17434_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.events
    ADD CONSTRAINT idx_17434_primary PRIMARY KEY (eventid);


--
-- Name: filingcodes idx_17439_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.filingcodes
    ADD CONSTRAINT idx_17439_primary PRIMARY KEY (repid, sc);


--
-- Name: flights idx_17443_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.flights
    ADD CONSTRAINT idx_17443_primary PRIMARY KEY (id);


--
-- Name: forexrates idx_17452_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.forexrates
    ADD CONSTRAINT idx_17452_primary PRIMARY KEY (currpair, atdate);


--
-- Name: freg idx_17456_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.freg
    ADD CONSTRAINT idx_17456_primary PRIMARY KEY (id);


--
-- Name: freq idx_17460_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.freq
    ADD CONSTRAINT idx_17460_primary PRIMARY KEY (id);


--
-- Name: frstatus idx_17463_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.frstatus
    ADD CONSTRAINT idx_17463_primary PRIMARY KEY (id);


--
-- Name: fueltype idx_17466_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.fueltype
    ADD CONSTRAINT idx_17466_primary PRIMARY KEY (id);


--
-- Name: govac idx_17469_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.govac
    ADD CONSTRAINT idx_17469_primary PRIMARY KEY (d, govitem, ann);


--
-- Name: govadopt idx_17474_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.govadopt
    ADD CONSTRAINT idx_17474_primary PRIMARY KEY (tree, govitem);


--
-- Name: govitems idx_17480_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.govitems
    ADD CONSTRAINT idx_17480_primary PRIMARY KEY (id);


--
-- Name: heldas idx_17492_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.heldas
    ADD CONSTRAINT idx_17492_primary PRIMARY KEY (id);


--
-- Name: hkcrtypes idx_17495_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.hkcrtypes
    ADD CONSTRAINT idx_17495_primary PRIMARY KEY (prefix);


--
-- Name: hkdistrict idx_17498_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.hkdistrict
    ADD CONSTRAINT idx_17498_primary PRIMARY KEY (id);


--
-- Name: hkexdata idx_17501_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.hkexdata
    ADD CONSTRAINT idx_17501_primary PRIMARY KEY (issueid);


--
-- Name: hkports idx_17506_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.hkports
    ADD CONSTRAINT idx_17506_primary PRIMARY KEY (id);


--
-- Name: hkpx idx_17510_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.hkpx
    ADD CONSTRAINT idx_17510_primary PRIMARY KEY (d, port, pxtype);


--
-- Name: hkpxtypes idx_17516_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.hkpxtypes
    ADD CONSTRAINT idx_17516_primary PRIMARY KEY (id);


--
-- Name: hkregion idx_17520_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.hkregion
    ADD CONSTRAINT idx_17520_primary PRIMARY KEY (id);


--
-- Name: issue idx_17524_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.issue
    ADD CONSTRAINT idx_17524_primary PRIMARY KEY (id1);


--
-- Name: issuedshares idx_17529_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.issuedshares
    ADD CONSTRAINT idx_17529_primary PRIMARY KEY (issueid, atdate);


--
-- Name: jails idx_17535_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.jails
    ADD CONSTRAINT idx_17535_primary PRIMARY KEY (id);


--
-- Name: jailtypes idx_17540_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.jailtypes
    ADD CONSTRAINT idx_17540_primary PRIMARY KEY (id);


--
-- Name: judgments idx_17545_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.judgments
    ADD CONSTRAINT idx_17545_primary PRIMARY KEY (id);


--
-- Name: landreg idx_17555_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.landreg
    ADD CONSTRAINT idx_17555_primary PRIMARY KEY (statid, d);


--
-- Name: licrec idx_17559_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.licrec
    ADD CONSTRAINT idx_17559_primary PRIMARY KEY (id);


--
-- Name: licrecsum idx_17563_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.licrecsum
    ADD CONSTRAINT idx_17563_primary PRIMARY KEY (acttype, d);


--
-- Name: lirorgteam idx_17567_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lirorgteam
    ADD CONSTRAINT idx_17567_primary PRIMARY KEY (id);


--
-- Name: lirroles idx_17572_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lirroles
    ADD CONSTRAINT idx_17572_primary PRIMARY KEY (id);


--
-- Name: lirstaff idx_17577_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lirstaff
    ADD CONSTRAINT idx_17577_primary PRIMARY KEY (id);


--
-- Name: lirteams idx_17585_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lirteams
    ADD CONSTRAINT idx_17585_primary PRIMARY KEY (id);


--
-- Name: lirteamstaff idx_17590_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lirteamstaff
    ADD CONSTRAINT idx_17590_primary PRIMARY KEY (id);


--
-- Name: listings idx_17595_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.listings
    ADD CONSTRAINT idx_17595_primary PRIMARY KEY (stockexid);


--
-- Name: log idx_17601_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.log
    ADD CONSTRAINT idx_17601_primary PRIMARY KEY (name);


--
-- Name: lsadm idx_17607_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsadm
    ADD CONSTRAINT idx_17607_primary PRIMARY KEY (lsid, lsdom);


--
-- Name: lsalias idx_17610_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsalias
    ADD CONSTRAINT idx_17610_primary PRIMARY KEY (lsid);


--
-- Name: lsdoms idx_17618_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsdoms
    ADD CONSTRAINT idx_17618_primary PRIMARY KEY (lsdom);


--
-- Name: lsemps idx_17623_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsemps
    ADD CONSTRAINT idx_17623_primary PRIMARY KEY (id);


--
-- Name: lsjobs idx_17628_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsjobs
    ADD CONSTRAINT idx_17628_primary PRIMARY KEY (id);


--
-- Name: lsorgs idx_17632_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsorgs
    ADD CONSTRAINT idx_17632_primary PRIMARY KEY (lsid);


--
-- Name: lsposts idx_17642_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsposts
    ADD CONSTRAINT idx_17642_primary PRIMARY KEY (id);


--
-- Name: lsppl idx_17646_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsppl
    ADD CONSTRAINT idx_17646_primary PRIMARY KEY (lsid);


--
-- Name: lsroles idx_17654_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsroles
    ADD CONSTRAINT idx_17654_primary PRIMARY KEY (id);


--
-- Name: marketsforweb idx_17657_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.marketsforweb
    ADD CONSTRAINT idx_17657_primary PRIMARY KEY (stockexid);


--
-- Name: mergedpersons idx_17661_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.mergedpersons
    ADD CONSTRAINT idx_17661_primary PRIMARY KEY (oldp);


--
-- Name: missingcr idx_17665_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.missingcr
    ADD CONSTRAINT idx_17665_primary PRIMARY KEY (cr);


--
-- Name: missingorg idx_17671_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.missingorg
    ADD CONSTRAINT idx_17671_primary PRIMARY KEY (orgid);


--
-- Name: months idx_17675_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.months
    ADD CONSTRAINT idx_17675_primary PRIMARY KEY (monthid);


--
-- Name: namechanges idx_17680_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.namechanges
    ADD CONSTRAINT idx_17680_primary PRIMARY KEY (id1);


--
-- Name: namesex idx_17691_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.namesex
    ADD CONSTRAINT idx_17691_primary PRIMARY KEY (id);


--
-- Name: nationality idx_17697_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.nationality
    ADD CONSTRAINT idx_17697_primary PRIMARY KEY (personid, ukchnat);


--
-- Name: oldcr idx_17700_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.oldcr
    ADD CONSTRAINT idx_17700_primary PRIMARY KEY (personid);


--
-- Name: oldcrf idx_17704_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.oldcrf
    ADD CONSTRAINT idx_17704_primary PRIMARY KEY (fregid);


--
-- Name: oldlots idx_17708_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.oldlots
    ADD CONSTRAINT idx_17708_primary PRIMARY KEY (issueid, until);


--
-- Name: oldlsjobs idx_17712_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.oldlsjobs
    ADD CONSTRAINT idx_17712_primary PRIMARY KEY (id);


--
-- Name: oldlsorgs idx_17716_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.oldlsorgs
    ADD CONSTRAINT idx_17716_primary PRIMARY KEY (lsid);


--
-- Name: oldlsposts idx_17726_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.oldlsposts
    ADD CONSTRAINT idx_17726_primary PRIMARY KEY (id);


--
-- Name: oldlsppl idx_17730_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.oldlsppl
    ADD CONSTRAINT idx_17730_primary PRIMARY KEY (lsid);


--
-- Name: oldsfcids idx_17738_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.oldsfcids
    ADD CONSTRAINT idx_17738_primary PRIMARY KEY (sfcid);


--
-- Name: olicrec idx_17742_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.olicrec
    ADD CONSTRAINT idx_17742_primary PRIMARY KEY (id);


--
-- Name: organisations idx_17746_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.organisations
    ADD CONSTRAINT idx_17746_primary PRIMARY KEY (personid);


--
-- Name: orgdata idx_17756_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.orgdata
    ADD CONSTRAINT idx_17756_primary PRIMARY KEY (personid);


--
-- Name: orgtypes idx_17766_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.orgtypes
    ADD CONSTRAINT idx_17766_primary PRIMARY KEY (orgtype);


--
-- Name: ownerprof idx_17770_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.ownerprof
    ADD CONSTRAINT idx_17770_primary PRIMARY KEY (orgid, atdate);


--
-- Name: ownerstks idx_17778_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.ownerstks
    ADD CONSTRAINT idx_17778_primary PRIMARY KEY (orgid, atdate, ultimid, ot);


--
-- Name: ownertype idx_17781_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.ownertype
    ADD CONSTRAINT idx_17781_primary PRIMARY KEY (id);


--
-- Name: pay idx_17785_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.pay
    ADD CONSTRAINT idx_17785_primary PRIMARY KEY (id);


--
-- Name: payerrors idx_17790_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.payerrors
    ADD CONSTRAINT idx_17790_primary PRIMARY KEY (docid, errid, userid);


--
-- Name: payerrtype idx_17794_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.payerrtype
    ADD CONSTRAINT idx_17794_primary PRIMARY KEY (id);


--
-- Name: payfx idx_17797_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.payfx
    ADD CONSTRAINT idx_17797_primary PRIMARY KEY (d, repcurr, dispcurr);


--
-- Name: paylineerrors idx_17800_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.paylineerrors
    ADD CONSTRAINT idx_17800_primary PRIMARY KEY (payid, errid, userid);


--
-- Name: paylineerrtype idx_17805_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.paylineerrtype
    ADD CONSTRAINT idx_17805_primary PRIMARY KEY (id);


--
-- Name: payreview idx_17808_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.payreview
    ADD CONSTRAINT idx_17808_primary PRIMARY KEY (docid, userid);


--
-- Name: people idx_17812_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.people
    ADD CONSTRAINT idx_17812_primary PRIMARY KEY (personid);


--
-- Name: persons idx_17828_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.persons
    ADD CONSTRAINT idx_17828_primary PRIMARY KEY (personid);


--
-- Name: personstories idx_17832_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.personstories
    ADD CONSTRAINT idx_17832_primary PRIMARY KEY (personid, storyid);


--
-- Name: positions idx_17836_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.positions
    ADD CONSTRAINT idx_17836_primary PRIMARY KEY (positionid);


--
-- Name: prhblock idx_17842_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.prhblock
    ADD CONSTRAINT idx_17842_primary PRIMARY KEY (id);


--
-- Name: prhestate idx_17847_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.prhestate
    ADD CONSTRAINT idx_17847_primary PRIMARY KEY (id);


--
-- Name: prhflat idx_17852_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.prhflat
    ADD CONSTRAINT idx_17852_primary PRIMARY KEY (id);


--
-- Name: prisoners idx_17858_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.prisoners
    ADD CONSTRAINT idx_17858_primary PRIMARY KEY (jail, d);


--
-- Name: prisorigin idx_17861_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.prisorigin
    ADD CONSTRAINT idx_17861_primary PRIMARY KEY (d);


--
-- Name: ptoperators idx_17864_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.ptoperators
    ADD CONSTRAINT idx_17864_primary PRIMARY KEY (id);


--
-- Name: qt idx_17867_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.qt
    ADD CONSTRAINT idx_17867_primary PRIMARY KEY (qtid, d);


--
-- Name: qtbytype idx_17870_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.qtbytype
    ADD CONSTRAINT idx_17870_primary PRIMARY KEY (d);


--
-- Name: qtcentres idx_17874_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.qtcentres
    ADD CONSTRAINT idx_17874_primary PRIMARY KEY (id);


--
-- Name: rank idx_17882_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.rank
    ADD CONSTRAINT idx_17882_primary PRIMARY KEY (rankid);


--
-- Name: relationships idx_17887_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.relationships
    ADD CONSTRAINT idx_17887_primary PRIMARY KEY (id);


--
-- Name: relatives idx_17891_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.relatives
    ADD CONSTRAINT idx_17891_primary PRIMARY KEY (rel1, rel2);


--
-- Name: reorg idx_17896_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.reorg
    ADD CONSTRAINT idx_17896_primary PRIMARY KEY (fromorg, toorg);


--
-- Name: repdocs idx_17899_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.repdocs
    ADD CONSTRAINT idx_17899_primary PRIMARY KEY (repid, file);


--
-- Name: repfilings idx_17903_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.repfilings
    ADD CONSTRAINT idx_17903_primary PRIMARY KEY (id);


--
-- Name: roles idx_17910_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.roles
    ADD CONSTRAINT idx_17910_primary PRIMARY KEY (roleid);


--
-- Name: sdi idx_17915_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sdi
    ADD CONSTRAINT idx_17915_primary PRIMARY KEY (id);


--
-- Name: sdicap idx_17930_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sdicap
    ADD CONSTRAINT idx_17930_primary PRIMARY KEY (sdiid, capid, postype);


--
-- Name: sdievent idx_17933_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sdievent
    ADD CONSTRAINT idx_17933_primary PRIMARY KEY (sdiid, postype);


--
-- Name: sdireason idx_17936_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sdireason
    ADD CONSTRAINT idx_17936_primary PRIMARY KEY (id);


--
-- Name: sectypes idx_17939_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sectypes
    ADD CONSTRAINT idx_17939_primary PRIMARY KEY (typeid);


--
-- Name: sfcnews idx_17942_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sfcnews
    ADD CONSTRAINT idx_17942_primary PRIMARY KEY (storyid);


--
-- Name: sfcshort idx_17949_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sfcshort
    ADD CONSTRAINT idx_17949_primary PRIMARY KEY (issueid, atdate);


--
-- Name: sholdings idx_17953_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sholdings
    ADD CONSTRAINT idx_17953_primary PRIMARY KEY (id);


--
-- Name: snaplog idx_17961_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.snaplog
    ADD CONSTRAINT idx_17961_primary PRIMARY KEY (orgid, snapdate, userid, project);


--
-- Name: sources idx_17969_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sources
    ADD CONSTRAINT idx_17969_primary PRIMARY KEY (sourceid);


--
-- Name: statgov idx_17973_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.statgov
    ADD CONSTRAINT idx_17973_primary PRIMARY KEY (descrip);


--
-- Name: stats idx_17977_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.stats
    ADD CONSTRAINT idx_17977_primary PRIMARY KEY (id);


--
-- Name: status idx_17981_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.status
    ADD CONSTRAINT idx_17981_primary PRIMARY KEY (statusid);


--
-- Name: stocklistings idx_17986_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.stocklistings
    ADD CONSTRAINT idx_17986_primary PRIMARY KEY (id);


--
-- Name: stories idx_17995_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.stories
    ADD CONSTRAINT idx_17995_primary PRIMARY KEY (storyid);


--
-- Name: storytags idx_18004_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.storytags
    ADD CONSTRAINT idx_18004_primary PRIMARY KEY (storyid, catid);


--
-- Name: tdjourneys idx_18007_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.tdjourneys
    ADD CONSTRAINT idx_18007_primary PRIMARY KEY (d, vc);


--
-- Name: tdreglic idx_18010_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.tdreglic
    ADD CONSTRAINT idx_18010_primary PRIMARY KEY (d, vc);


--
-- Name: titles idx_18019_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.titles
    ADD CONSTRAINT idx_18019_primary PRIMARY KEY (titleid);


--
-- Name: tundir idx_18023_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.tundir
    ADD CONSTRAINT idx_18023_primary PRIMARY KEY (id);


--
-- Name: tunnels idx_18029_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.tunnels
    ADD CONSTRAINT idx_18029_primary PRIMARY KEY (id);


--
-- Name: tuntraff idx_18036_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.tuntraff
    ADD CONSTRAINT idx_18036_primary PRIMARY KEY (tunid, vc, d);


--
-- Name: ukappres idx_18041_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.ukappres
    ADD CONSTRAINT idx_18041_primary PRIMARY KEY (orgid, chid, appdate, resdate);


--
-- Name: ukch idx_18045_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.ukch
    ADD CONSTRAINT idx_18045_primary PRIMARY KEY (uktype);


--
-- Name: ukchnats idx_18051_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.ukchnats
    ADD CONSTRAINT idx_18051_primary PRIMARY KEY (id);


--
-- Name: ukhons idx_18055_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.ukhons
    ADD CONSTRAINT idx_18055_primary PRIMARY KEY (ukhons);


--
-- Name: uklog idx_18058_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.uklog
    ADD CONSTRAINT idx_18058_primary PRIMARY KEY (prefix);


--
-- Name: uknonhuman idx_18062_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.uknonhuman
    ADD CONSTRAINT idx_18062_primary PRIMARY KEY (chid);


--
-- Name: ukppl idx_18065_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.ukppl
    ADD CONSTRAINT idx_18065_primary PRIMARY KEY (chid);


--
-- Name: users idx_18068_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.users
    ADD CONSTRAINT idx_18068_primary PRIMARY KEY (id);


--
-- Name: vax idx_18071_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.vax
    ADD CONSTRAINT idx_18071_primary PRIMARY KEY (d, cohort, male);


--
-- Name: vaxcohorts idx_18094_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.vaxcohorts
    ADD CONSTRAINT idx_18094_primary PRIMARY KEY (id);


--
-- Name: veengine idx_18097_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.veengine
    ADD CONSTRAINT idx_18097_primary PRIMARY KEY (d, engid);


--
-- Name: vehicleclass idx_18100_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.vehicleclass
    ADD CONSTRAINT idx_18100_primary PRIMARY KEY (id);


--
-- Name: vehiclefr idx_18104_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.vehiclefr
    ADD CONSTRAINT idx_18104_primary PRIMARY KEY (vc, d, makeid, fuelid, bodyid, frstatid);


--
-- Name: vehiclefuel idx_18107_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.vehiclefuel
    ADD CONSTRAINT idx_18107_primary PRIMARY KEY (d, vc, fuelid);


--
-- Name: vehiclemakes idx_18111_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.vehiclemakes
    ADD CONSTRAINT idx_18111_primary PRIMARY KEY (id);


--
-- Name: vehicletypos idx_18115_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.vehicletypos
    ADD CONSTRAINT idx_18115_primary PRIMARY KEY (wrong);


--
-- Name: web idx_18119_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.web
    ADD CONSTRAINT idx_18119_primary PRIMARY KEY (id);


--
-- Name: webbhold idx_18123_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.webbhold
    ADD CONSTRAINT idx_18123_primary PRIMARY KEY (issueid);


--
-- Name: wsprivs idx_18126_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.wsprivs
    ADD CONSTRAINT idx_18126_primary PRIMARY KEY (userid, roleid);


--
-- Name: wsroles idx_18130_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.wsroles
    ADD CONSTRAINT idx_18130_primary PRIMARY KEY (id);


--
-- Name: wsroletabs idx_18135_primary; Type: CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.wsroletabs
    ADD CONSTRAINT idx_18135_primary PRIMARY KEY (roleid, tblname);


--
-- Name: idx_19993_settledate; Type: INDEX; Schema: ccass; Owner: -
--

CREATE INDEX idx_19993_settledate ON ccass.calendar USING btree (settledate, tradedate);


--
-- Name: idx_20018_fk_oldnames_part; Type: INDEX; Schema: ccass; Owner: -
--

CREATE INDEX idx_20018_fk_oldnames_part ON ccass.oldnames USING btree (partid);


--
-- Name: idx_20026_ccassid; Type: INDEX; Schema: ccass; Owner: -
--

CREATE INDEX idx_20026_ccassid ON ccass.participants USING btree (ccassid);


--
-- Name: idx_20026_partname; Type: INDEX; Schema: ccass; Owner: -
--

CREATE INDEX idx_20026_partname ON ccass.participants USING btree (partname);


--
-- Name: idx_20044_nozero; Type: INDEX; Schema: ccass; Owner: -
--

CREATE UNIQUE INDEX idx_20044_nozero ON ccass.quotes USING btree (issueid, noclose, atdate);


--
-- Name: idx_20061_nameindex; Type: INDEX; Schema: ccass; Owner: -
--

CREATE INDEX idx_20061_nameindex ON ccass.shortnames USING btree (shortname);


--
-- Name: idx_20069_nozero; Type: INDEX; Schema: ccass; Owner: -
--

CREATE UNIQUE INDEX idx_20069_nozero ON ccass.unquotes USING btree (stockcode, noclose, atdate);


--
-- Name: idx_17169_sourcename; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17169_sourcename ON enigma.acitems USING btree (datasource, sourcename);


--
-- Name: idx_17189_fk_adviserships_adviser; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17189_fk_adviserships_adviser ON enigma.adviserships USING btree (adviser);


--
-- Name: idx_17189_fk_adviserships_orgs; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17189_fk_adviserships_orgs ON enigma.adviserships USING btree (company);


--
-- Name: idx_17189_fk_adviserships_role; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17189_fk_adviserships_role ON enigma.adviserships USING btree (role);


--
-- Name: idx_17204_alias; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17204_alias ON enigma.alias USING btree (n1, n2, cn, personid);


--
-- Name: idx_17204_alias-people_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17204_alias-people_idx" ON enigma.alias USING btree (personid);


--
-- Name: idx_17204_ftadn1; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17204_ftadn1 ON enigma.alias USING gin (to_tsvector('simple'::regconfig, (dn1)::text));


--
-- Name: idx_17204_ftadn2; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17204_ftadn2 ON enigma.alias USING gin (to_tsvector('simple'::regconfig, (dn2)::text));


--
-- Name: idx_17204_ftalias; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17204_ftalias ON enigma.alias USING btree (dn1, dn2);


--
-- Name: idx_17215_des; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17215_des ON enigma.bbexch USING btree (des);


--
-- Name: idx_17226_fk_campaign_recip; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17226_fk_campaign_recip ON enigma.campaign USING btree (recipient);


--
-- Name: idx_17235_capchanges_issue_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17235_capchanges_issue_idx ON enigma.capchanges USING btree (issueid);


--
-- Name: idx_17235_fk_capchanges_type; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17235_fk_capchanges_type ON enigma.capchanges USING btree (capchangetype);


--
-- Name: idx_17235_unique; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17235_unique ON enigma.capchanges USING btree (issueid, effdate, capchangetype, exchid);


--
-- Name: idx_17250_casetypescourt_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17250_casetypescourt_idx ON enigma.casetypes USING btree (courtid);


--
-- Name: idx_17260_fk_cattree_parent; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17260_fk_cattree_parent ON enigma.cattree USING btree (parentcat);


--
-- Name: idx_17273_fk_classifications_cats; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17273_fk_classifications_cats ON enigma.classifications USING btree (category);


--
-- Name: idx_17285_compospeople_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17285_compospeople_idx ON enigma.compos USING btree (dirid);


--
-- Name: idx_17300_curr; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17300_curr ON enigma.currencies USING btree (currency);


--
-- Name: idx_17342_fk_directorships_org; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17342_fk_directorships_org ON enigma.directorships USING btree (company);


--
-- Name: idx_17342_fk_directorships_persons_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17342_fk_directorships_persons_idx ON enigma.directorships USING btree (director);


--
-- Name: idx_17342_fk_directorships_posn_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17342_fk_directorships_posn_idx ON enigma.directorships USING btree (positionid);


--
-- Name: idx_17362_docorgdate; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17362_docorgdate ON enigma.documents USING btree (orgid, doctypeid, recorddate);


--
-- Name: idx_17362_docs_repfilings_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17362_docs_repfilings_idx ON enigma.documents USING btree (repid);


--
-- Name: idx_17362_fk_docs_doctypes; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17362_fk_docs_doctypes ON enigma.documents USING btree (doctypeid);


--
-- Name: idx_17362_fk_docs_orgs; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17362_fk_docs_orgs ON enigma.documents USING btree (orgid);


--
-- Name: idx_17368_domchanges_dom_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17368_domchanges_dom_idx ON enigma.domchanges USING btree (olddom);


--
-- Name: idx_17368_domchanges_org_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17368_domchanges_org_idx ON enigma.domchanges USING btree (orgid);


--
-- Name: idx_17368_org-dc; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX "idx_17368_org-dc" ON enigma.domchanges USING btree (orgid, datechanged);


--
-- Name: idx_17380_fk_donations_currency; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17380_fk_donations_currency ON enigma.donations USING btree (doncurr);


--
-- Name: idx_17380_fk_donations_donor; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17380_fk_donations_donor ON enigma.donations USING btree (donor);


--
-- Name: idx_17394_entitlements_issue_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17394_entitlements_issue_idx ON enigma.entitlements USING btree (issueid);


--
-- Name: idx_17394_fk_entitlements_event1; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17394_fk_entitlements_event1 ON enigma.entitlements USING btree (event1);


--
-- Name: idx_17394_fk_entitlements_event2; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17394_fk_entitlements_event2 ON enigma.entitlements USING btree (event2);


--
-- Name: idx_17394_fk_entitlements_event3; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17394_fk_entitlements_event3 ON enigma.entitlements USING btree (event3);


--
-- Name: idx_17394_fk_entitlements_event4; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17394_fk_entitlements_event4 ON enigma.entitlements USING btree (event4);


--
-- Name: idx_17394_fk_entitlements_type1; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17394_fk_entitlements_type1 ON enigma.entitlements USING btree (capchangetype1);


--
-- Name: idx_17394_fk_entitlements_type2; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17394_fk_entitlements_type2 ON enigma.entitlements USING btree (capchangetype2);


--
-- Name: idx_17394_fk_entitlements_type3; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17394_fk_entitlements_type3 ON enigma.entitlements USING btree (capchangetype3);


--
-- Name: idx_17394_fk_entitlements_type4; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17394_fk_entitlements_type4 ON enigma.entitlements USING btree (capchangetype4);


--
-- Name: idx_17424_esspersons_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17424_esspersons_idx ON enigma.ess USING btree (orgid);


--
-- Name: idx_17424_ftn; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17424_ftn ON enigma.ess USING gin (to_tsvector('simple'::regconfig, (ename)::text));


--
-- Name: idx_17424_name; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17424_name ON enigma.ess USING btree (ename, cname);


--
-- Name: idx_17434_capchangetype_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17434_capchangetype_idx ON enigma.events USING btree (eventtype);


--
-- Name: idx_17434_importcol; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17434_importcol ON enigma.events USING btree (importid, subent);


--
-- Name: idx_17434_issue2_issue_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17434_issue2_issue_idx ON enigma.events USING btree (issue2);


--
-- Name: idx_17434_issuecum; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17434_issuecum ON enigma.events USING btree (issueid, cumdate, eventtype);


--
-- Name: idx_17434_issueex; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17434_issueex ON enigma.events USING btree (issueid, exdate, eventtype);


--
-- Name: idx_17443_schedfnarr; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17443_schedfnarr ON enigma.flights USING btree (sched, flightno, arrival);


--
-- Name: idx_17456_freg-2; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX "idx_17456_freg-2" ON enigma.freg USING btree (hostdom, regid);


--
-- Name: idx_17456_freg-org_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17456_freg-org_idx" ON enigma.freg USING btree (orgid);


--
-- Name: idx_17469_govac_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17469_govac_idx ON enigma.govac USING btree (govitem);


--
-- Name: idx_17474_fkadoptitems; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17474_fkadoptitems ON enigma.govadopt USING btree (govitem);


--
-- Name: idx_17480_heads; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17480_heads ON enigma.govitems USING btree (rev, h1, h2, h3);


--
-- Name: idx_17480_parentid; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17480_parentid ON enigma.govitems USING btree (parentid);


--
-- Name: idx_17480_search; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17480_search ON enigma.govitems USING gin (to_tsvector('simple'::regconfig, (txt)::text));


--
-- Name: idx_17480_tranferreimburse; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17480_tranferreimburse ON enigma.govitems USING btree (transfer, reimb);


--
-- Name: idx_17495_orgtype_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17495_orgtype_idx ON enigma.hkcrtypes USING btree (orgtype);


--
-- Name: idx_17498_district_region_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17498_district_region_idx ON enigma.hkdistrict USING btree (regionid);


--
-- Name: idx_17498_en_unique; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17498_en_unique ON enigma.hkdistrict USING btree (en);


--
-- Name: idx_17501_fk_hkexdata_issue; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17501_fk_hkexdata_issue ON enigma.hkexdata USING btree (issueid);


--
-- Name: idx_17506_name_unique; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17506_name_unique ON enigma.hkports USING btree (name);


--
-- Name: idx_17516_name_unique; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17516_name_unique ON enigma.hkpxtypes USING btree (name);


--
-- Name: idx_17520_en_unique; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17520_en_unique ON enigma.hkregion USING btree (en);


--
-- Name: idx_17524_fk_issue_orgs; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17524_fk_issue_orgs ON enigma.issue USING btree (issuer);


--
-- Name: idx_17535_name; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17535_name ON enigma.jails USING btree (name);


--
-- Name: idx_17540_txt; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17540_txt ON enigma.jailtypes USING btree (txt);


--
-- Name: idx_17545_casenum; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17545_casenum ON enigma.judgments USING btree (casetype, caseyear, caseseq);


--
-- Name: idx_17545_dis; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17545_dis ON enigma.judgments USING btree (dis);


--
-- Name: idx_17545_judgmentscasetype_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17545_judgmentscasetype_idx ON enigma.judgments USING btree (casetype);


--
-- Name: idx_17559_licrecacts_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17559_licrecacts_idx ON enigma.licrec USING btree (acttype);


--
-- Name: idx_17559_licrecorgs_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17559_licrecorgs_idx ON enigma.licrec USING btree (orgid);


--
-- Name: idx_17559_licrecpeople_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17559_licrecpeople_idx ON enigma.licrec USING btree (staffid);


--
-- Name: idx_17585_teamno; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17585_teamno ON enigma.lirteams USING btree (teamno);


--
-- Name: idx_17590_fklirstaff_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17590_fklirstaff_idx ON enigma.lirteamstaff USING btree (staffid);


--
-- Name: idx_17590_fklirteams; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17590_fklirteams ON enigma.lirteamstaff USING btree (teamid);


--
-- Name: idx_17607_lsadm-lsdom_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17607_lsadm-lsdom_idx" ON enigma.lsadm USING btree (lsdom);


--
-- Name: idx_17618_domname_unique; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17618_domname_unique ON enigma.lsdoms USING btree (domname);


--
-- Name: idx_17623_lsemps-orgs_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17623_lsemps-orgs_idx" ON enigma.lsemps USING btree (personid);


--
-- Name: idx_17628_lsjobs-emps_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17628_lsjobs-emps_idx" ON enigma.lsjobs USING btree (empid);


--
-- Name: idx_17628_lsjobs-lsppl_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17628_lsjobs-lsppl_idx" ON enigma.lsjobs USING btree (lsppl);


--
-- Name: idx_17632_lsorgs-orgs_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17632_lsorgs-orgs_idx" ON enigma.lsorgs USING btree (personid);


--
-- Name: idx_17642_posts-orgs_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17642_posts-orgs_idx" ON enigma.lsposts USING btree (lsorg);


--
-- Name: idx_17642_posts-ppl_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17642_posts-ppl_idx" ON enigma.lsposts USING btree (lsppl);


--
-- Name: idx_17646_lsppl-name; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17646_lsppl-name" ON enigma.lsppl USING btree (name1, name2, admhk);


--
-- Name: idx_17646_lsppl-people_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17646_lsppl-people_idx" ON enigma.lsppl USING btree (personid);


--
-- Name: idx_17680_datename; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17680_datename ON enigma.namechanges USING btree (datechanged, oldname);


--
-- Name: idx_17680_fk_namechanges_org; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17680_fk_namechanges_org ON enigma.namechanges USING btree (personid);


--
-- Name: idx_17680_ftoldname; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17680_ftoldname ON enigma.namechanges USING gin (to_tsvector('simple'::regconfig, (oldname)::text));


--
-- Name: idx_17680_namehash; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17680_namehash ON enigma.namechanges USING btree (namehash);


--
-- Name: idx_17680_oldname; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17680_oldname ON enigma.namechanges USING btree (oldname);


--
-- Name: idx_17691_name; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17691_name ON enigma.namesex USING btree (name);


--
-- Name: idx_17697_fk_nats_ukchnats_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17697_fk_nats_ukchnats_idx ON enigma.nationality USING btree (ukchnat);


--
-- Name: idx_17700_crn; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17700_crn ON enigma.oldcr USING btree (crn);


--
-- Name: idx_17704_crn; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17704_crn ON enigma.oldcrf USING btree (crn);


--
-- Name: idx_17712_lsjobs-emps_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17712_lsjobs-emps_idx" ON enigma.oldlsjobs USING btree (empid);


--
-- Name: idx_17712_lsjobs-lsppl_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17712_lsjobs-lsppl_idx" ON enigma.oldlsjobs USING btree (lsppl);


--
-- Name: idx_17716_lsorgs-orgs_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17716_lsorgs-orgs_idx" ON enigma.oldlsorgs USING btree (personid);


--
-- Name: idx_17726_posts-orgs_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17726_posts-orgs_idx" ON enigma.oldlsposts USING btree (lsorg);


--
-- Name: idx_17726_posts-ppl_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17726_posts-ppl_idx" ON enigma.oldlsposts USING btree (lsppl);


--
-- Name: idx_17730_lsppl-name; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17730_lsppl-name" ON enigma.oldlsppl USING btree (name1, name2, admhk);


--
-- Name: idx_17730_lsppl-people_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_17730_lsppl-people_idx" ON enigma.oldlsppl USING btree (personid);


--
-- Name: idx_17742_licrecacts_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17742_licrecacts_idx ON enigma.olicrec USING btree (acttype);


--
-- Name: idx_17742_licrecorgs_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17742_licrecorgs_idx ON enigma.olicrec USING btree (orgid);


--
-- Name: idx_17746_disdate_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17746_disdate_idx ON enigma.organisations USING btree (disdate);


--
-- Name: idx_17746_domincid; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17746_domincid ON enigma.organisations USING btree (domicile, incid);


--
-- Name: idx_17746_fk_organisations_dom; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17746_fk_organisations_dom ON enigma.organisations USING btree (domicile);


--
-- Name: idx_17746_fk_orgs_dismode; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17746_fk_orgs_dismode ON enigma.organisations USING btree (dismode);


--
-- Name: idx_17746_fk_orgs_orgtype_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17746_fk_orgs_orgtype_idx ON enigma.organisations USING btree (orgtype);


--
-- Name: idx_17746_ftn; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17746_ftn ON enigma.organisations USING gin (to_tsvector('simple'::regconfig, (name1)::text));


--
-- Name: idx_17746_incdate_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17746_incdate_idx ON enigma.organisations USING btree (incdate);


--
-- Name: idx_17746_name; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17746_name ON enigma.organisations USING btree (name1);


--
-- Name: idx_17746_namehash; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17746_namehash ON enigma.organisations USING btree (namehash);


--
-- Name: idx_17746_sfcid; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17746_sfcid ON enigma.organisations USING btree (sfcid);


--
-- Name: idx_17756_fk_orgdata_terr; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17756_fk_orgdata_terr ON enigma.orgdata USING btree (territory);


--
-- Name: idx_17785_paycurr_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17785_paycurr_idx ON enigma.pay USING btree (currid);


--
-- Name: idx_17785_payppl_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17785_payppl_idx ON enigma.pay USING btree (pplid);


--
-- Name: idx_17785_payuser_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17785_payuser_idx ON enigma.pay USING btree (userid);


--
-- Name: idx_17785_uq; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17785_uq ON enigma.pay USING btree (orgid, pplid, prank, d);


--
-- Name: idx_17785_uq2; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17785_uq2 ON enigma.pay USING btree (pplid, orgid, prank, d);


--
-- Name: idx_17790_payerrtype_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17790_payerrtype_idx ON enigma.payerrors USING btree (errid);


--
-- Name: idx_17800_errtype_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17800_errtype_idx ON enigma.paylineerrors USING btree (errid);


--
-- Name: idx_17808_submitted; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17808_submitted ON enigma.payreview USING btree (submitted);


--
-- Name: idx_17808_useridusers_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17808_useridusers_idx ON enigma.payreview USING btree (userid);


--
-- Name: idx_17812_birthday; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17812_birthday ON enigma.people USING btree (mob, dob);


--
-- Name: idx_17812_bymd; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17812_bymd ON enigma.people USING btree (yob, mob, dob);


--
-- Name: idx_17812_dn; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17812_dn ON enigma.people USING btree (dn1, dn2);


--
-- Name: idx_17812_fk_people_titles; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17812_fk_people_titles ON enigma.people USING btree (titleid);


--
-- Name: idx_17812_ftdn; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17812_ftdn ON enigma.people USING btree (dn1, dn2);


--
-- Name: idx_17812_ftdn1; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17812_ftdn1 ON enigma.people USING gin (to_tsvector('simple'::regconfig, (dn1)::text));


--
-- Name: idx_17812_ftdn2; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17812_ftdn2 ON enigma.people USING gin (to_tsvector('simple'::regconfig, (dn2)::text));


--
-- Name: idx_17812_hkid; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17812_hkid ON enigma.people USING btree (hkid);


--
-- Name: idx_17812_name; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17812_name ON enigma.people USING btree (name1, name2);


--
-- Name: idx_17812_namestem; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17812_namestem ON enigma.people USING btree (namestem);


--
-- Name: idx_17812_sfcid; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17812_sfcid ON enigma.people USING btree (sfcid);


--
-- Name: idx_17832_fk_personstories_1; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17832_fk_personstories_1 ON enigma.personstories USING btree (storyid);


--
-- Name: idx_17836_fk_positions_rank; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17836_fk_positions_rank ON enigma.positions USING btree (rank);


--
-- Name: idx_17836_fk_positions_status; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17836_fk_positions_status ON enigma.positions USING btree (status);


--
-- Name: idx_17842_est_block; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17842_est_block ON enigma.prhblock USING btree (estateid, en);


--
-- Name: idx_17842_prhblock_estate_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17842_prhblock_estate_idx ON enigma.prhblock USING btree (estateid);


--
-- Name: idx_17847_en_unique; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17847_en_unique ON enigma.prhestate USING btree (en);


--
-- Name: idx_17847_estate_district_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17847_estate_district_idx ON enigma.prhestate USING btree (district);


--
-- Name: idx_17852_block_flat; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17852_block_flat ON enigma.prhflat USING btree (blockid, flat);


--
-- Name: idx_17852_blockid_prhblock_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17852_blockid_prhblock_idx ON enigma.prhflat USING btree (blockid);


--
-- Name: idx_17891_fk_rel2_people; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17891_fk_rel2_people ON enigma.relatives USING btree (rel2);


--
-- Name: idx_17891_fk_relatives_relationships; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17891_fk_relatives_relationships ON enigma.relatives USING btree (relid);


--
-- Name: idx_17896_fk_toorg; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17896_fk_toorg ON enigma.reorg USING btree (toorg);


--
-- Name: idx_17903_newsid; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17903_newsid ON enigma.repfilings USING btree (newsid);


--
-- Name: idx_17903_url; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17903_url ON enigma.repfilings USING btree (url);


--
-- Name: idx_17915_cname_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17915_cname_idx ON enigma.sdi USING btree (cname);


--
-- Name: idx_17915_formfiling; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17915_formfiling ON enigma.sdi USING btree (form, filing);


--
-- Name: idx_17915_nameindex; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17915_nameindex ON enigma.sdi USING btree (name1, name2);


--
-- Name: idx_17915_reldate; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17915_reldate ON enigma.sdi USING btree (reldate);


--
-- Name: idx_17915_sdi_currency_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17915_sdi_currency_idx ON enigma.sdi USING btree (curr);


--
-- Name: idx_17915_sdi_issue_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17915_sdi_issue_idx ON enigma.sdi USING btree (issueid);


--
-- Name: idx_17915_sdi_people_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17915_sdi_people_idx ON enigma.sdi USING btree (dir);


--
-- Name: idx_17915_serno_unique; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17915_serno_unique ON enigma.sdi USING btree (serno);


--
-- Name: idx_17930_sdicap_capacity_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17930_sdicap_capacity_idx ON enigma.sdicap USING btree (capid);


--
-- Name: idx_17933_capafter_cap_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17933_capafter_cap_idx ON enigma.sdievent USING btree (capafter);


--
-- Name: idx_17933_capbefore_cap_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17933_capbefore_cap_idx ON enigma.sdievent USING btree (capbefore);


--
-- Name: idx_17933_reason_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17933_reason_idx ON enigma.sdievent USING btree (reason);


--
-- Name: idx_17939_typeshort; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17939_typeshort ON enigma.sectypes USING btree (typeshort);


--
-- Name: idx_17949_dateissue; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17949_dateissue ON enigma.sfcshort USING btree (atdate, issueid);


--
-- Name: idx_17953_quad; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17953_quad ON enigma.sholdings USING btree (issueid, holderid, atdate, heldas);


--
-- Name: idx_17953_sholders_holder_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17953_sholders_holder_idx ON enigma.sholdings USING btree (holderid);


--
-- Name: idx_17953_sholders_issue_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17953_sholders_issue_idx ON enigma.sholdings USING btree (issueid);


--
-- Name: idx_17969_sourcename; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17969_sourcename ON enigma.sources USING btree (sourcename);


--
-- Name: idx_17986_fk_stocklistings_dlreason; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17986_fk_stocklistings_dlreason ON enigma.stocklistings USING btree (reasonid);


--
-- Name: idx_17986_fk_stocklistings_listing; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17986_fk_stocklistings_listing ON enigma.stocklistings USING btree (stockexid);


--
-- Name: idx_17986_stocklistings_issue_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17986_stocklistings_issue_idx ON enigma.stocklistings USING btree (issueid);


--
-- Name: idx_17995_fk_stories_source; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17995_fk_stories_source ON enigma.stories USING btree (sourceid);


--
-- Name: idx_17995_index_storydate; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_17995_index_storydate ON enigma.stories USING btree (storydate);


--
-- Name: idx_17995_url; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_17995_url ON enigma.stories USING btree (url);


--
-- Name: idx_18004_fk_storytags_cats_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_18004_fk_storytags_cats_idx ON enigma.storytags USING btree (catid);


--
-- Name: idx_18045_api_unique; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_18045_api_unique ON enigma.ukch USING btree (api);


--
-- Name: idx_18051_descrip_unique; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_18051_descrip_unique ON enigma.ukchnats USING btree (descrip);


--
-- Name: idx_18065_ukppl-people_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX "idx_18065_ukppl-people_idx" ON enigma.ukppl USING btree (personid);


--
-- Name: idx_18068_username_unique; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_18068_username_unique ON enigma.users USING btree (name);


--
-- Name: idx_18119_fk_web_persons; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_18119_fk_web_persons ON enigma.web USING btree (personid);


--
-- Name: idx_18119_unique; Type: INDEX; Schema: enigma; Owner: -
--

CREATE UNIQUE INDEX idx_18119_unique ON enigma.web USING btree (personid, url);


--
-- Name: idx_18119_web_sources_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_18119_web_sources_idx ON enigma.web USING btree (source);


--
-- Name: idx_18126_privs_roles_idx; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_18126_privs_roles_idx ON enigma.wsprivs USING btree (roleid);


--
-- Name: idx_alias_dn1; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_alias_dn1 ON enigma.alias USING btree (dn1);


--
-- Name: idx_alias_dn1_dn2_combined_gin; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_alias_dn1_dn2_combined_gin ON enigma.alias USING gin (to_tsvector('simple'::regconfig, (((COALESCE(dn1, ''::character varying))::text || ' '::text) || (COALESCE(dn2, ''::character varying))::text)));


--
-- Name: idx_alias_dn1_gin; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_alias_dn1_gin ON enigma.alias USING gin (to_tsvector('simple'::regconfig, (dn1)::text));


--
-- Name: idx_alias_dn2; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_alias_dn2 ON enigma.alias USING btree (dn2);


--
-- Name: idx_alias_dn2_gin; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_alias_dn2_gin ON enigma.alias USING gin (to_tsvector('simple'::regconfig, (dn2)::text));


--
-- Name: idx_directorships_dates; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_directorships_dates ON enigma.directorships USING btree (company, apptdate, resdate);


--
-- Name: idx_documents_pay_filter; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_documents_pay_filter ON enigma.documents USING btree (orgid, doctypeid, recorddate, pay);


--
-- Name: idx_issue_type_issuer; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_issue_type_issuer ON enigma.issue USING btree (typeid, issuer, id1);


--
-- Name: idx_namechanges_oldname_lower_pattern; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_namechanges_oldname_lower_pattern ON enigma.namechanges USING btree (lower((oldname)::text) text_pattern_ops);


--
-- Name: idx_organisations_name1_lower_pattern; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_organisations_name1_lower_pattern ON enigma.organisations USING btree (lower((name1)::text) text_pattern_ops);


--
-- Name: idx_pay_d_currid; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_pay_d_currid ON enigma.pay USING btree (d, currid, orgid);


--
-- Name: idx_pay_year_prank; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_pay_year_prank ON enigma.pay USING btree (EXTRACT(year FROM d), prank, orgid, pplid);


--
-- Name: idx_payfx_lookup; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_payfx_lookup ON enigma.payfx USING btree (d, repcurr, dispcurr);


--
-- Name: idx_people_dn1; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_people_dn1 ON enigma.people USING btree (dn1);


--
-- Name: idx_people_dn1_dn2_combined_gin; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_people_dn1_dn2_combined_gin ON enigma.people USING gin (to_tsvector('simple'::regconfig, (((COALESCE(dn1, ''::character varying))::text || ' '::text) || (COALESCE(dn2, ''::character varying))::text)));


--
-- Name: idx_people_dn1_gin; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_people_dn1_gin ON enigma.people USING gin (to_tsvector('simple'::regconfig, (dn1)::text));


--
-- Name: idx_people_dn2; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_people_dn2 ON enigma.people USING btree (dn2);


--
-- Name: idx_people_dn2_gin; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_people_dn2_gin ON enigma.people USING gin (to_tsvector('simple'::regconfig, (dn2)::text));


--
-- Name: idx_stocklistings_composite; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_stocklistings_composite ON enigma.stocklistings USING btree (stockexid, issueid, firsttradedate, delistdate) WHERE ("2ndCtr" = false);


--
-- Name: idx_stocklistings_dates; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_stocklistings_dates ON enigma.stocklistings USING btree (issueid, firsttradedate, delistdate) WHERE ("2ndCtr" = false);


--
-- Name: idx_stocklistings_stockcode; Type: INDEX; Schema: enigma; Owner: -
--

CREATE INDEX idx_stocklistings_stockcode ON enigma.stocklistings USING btree (stockcode, stockexid);


--
-- Name: adviserships on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.adviserships FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_adviserships();


--
-- Name: comeets on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.comeets FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_comeets();


--
-- Name: compos on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.compos FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_compos();


--
-- Name: directorships on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.directorships FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_directorships();


--
-- Name: documents on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.documents FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_documents();


--
-- Name: entitlements on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.entitlements FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_entitlements();


--
-- Name: ess on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.ess FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_ess();


--
-- Name: events on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.events FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_events();


--
-- Name: govac on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.govac FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_govac();


--
-- Name: hkexdata on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.hkexdata FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_hkexdata();


--
-- Name: issuedshares on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.issuedshares FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_issuedshares();


--
-- Name: judgments on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.judgments FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_judgments();


--
-- Name: licrec on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.licrec FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_licrec();


--
-- Name: lsadm on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.lsadm FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_lsadm();


--
-- Name: lsemps on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.lsemps FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_lsemps();


--
-- Name: lsppl on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.lsppl FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_lsppl();


--
-- Name: namechanges on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.namechanges FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_namechanges();


--
-- Name: namesex on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.namesex FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_namesex();


--
-- Name: oldlsppl on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.oldlsppl FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_oldlsppl();


--
-- Name: olicrec on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.olicrec FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_olicrec();


--
-- Name: organisations on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.organisations FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_organisations();


--
-- Name: orgdata on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.orgdata FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_orgdata();


--
-- Name: ownerprof on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.ownerprof FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_ownerprof();


--
-- Name: pay on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.pay FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_pay();


--
-- Name: people on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.people FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_people();


--
-- Name: prhflat on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.prhflat FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_prhflat();


--
-- Name: relatives on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.relatives FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_relatives();


--
-- Name: sdi on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.sdi FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_sdi();


--
-- Name: sholdings on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.sholdings FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_sholdings();


--
-- Name: snaplog on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.snaplog FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_snaplog();


--
-- Name: stocklistings on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.stocklistings FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_stocklistings();


--
-- Name: uklog on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.uklog FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_uklog();


--
-- Name: uknonhuman on_update_current_timestamp; Type: TRIGGER; Schema: enigma; Owner: -
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.uknonhuman FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_uknonhuman();


--
-- Name: oldnames fk_oldnames_part; Type: FK CONSTRAINT; Schema: ccass; Owner: -
--

ALTER TABLE ONLY ccass.oldnames
    ADD CONSTRAINT fk_oldnames_part FOREIGN KEY (partid) REFERENCES ccass.participants(partid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: alias alias-people; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.alias
    ADD CONSTRAINT "alias-people" FOREIGN KEY (personid) REFERENCES enigma.people(personid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: prhflat blockid_prhblock; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.prhflat
    ADD CONSTRAINT blockid_prhblock FOREIGN KEY (blockid) REFERENCES enigma.prhblock(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: sdievent capafter_cap; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sdievent
    ADD CONSTRAINT capafter_cap FOREIGN KEY (capafter) REFERENCES enigma.capacity(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: sdievent capbefore_cap; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sdievent
    ADD CONSTRAINT capbefore_cap FOREIGN KEY (capbefore) REFERENCES enigma.capacity(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: capchanges capchanges_issue; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.capchanges
    ADD CONSTRAINT capchanges_issue FOREIGN KEY (issueid) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: events capchangetype; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.events
    ADD CONSTRAINT capchangetype FOREIGN KEY (eventtype) REFERENCES enigma.capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: casetypes casetypescourt; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.casetypes
    ADD CONSTRAINT casetypescourt FOREIGN KEY (courtid) REFERENCES enigma.courts(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: comeets comeetsorg; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.comeets
    ADD CONSTRAINT comeetsorg FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: comex comexorg; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.comex
    ADD CONSTRAINT comexorg FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: compos composorg; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.compos
    ADD CONSTRAINT composorg FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: compos compospeople; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.compos
    ADD CONSTRAINT compospeople FOREIGN KEY (dirid) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: acitems datasource; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.acitems
    ADD CONSTRAINT datasource FOREIGN KEY (datasource) REFERENCES enigma.datasource(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: hkdistrict district_region; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.hkdistrict
    ADD CONSTRAINT district_region FOREIGN KEY (regionid) REFERENCES enigma.hkregion(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: payreview dociddocs; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.payreview
    ADD CONSTRAINT dociddocs FOREIGN KEY (docid) REFERENCES enigma.documents(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: documents docs_repfilings; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.documents
    ADD CONSTRAINT docs_repfilings FOREIGN KEY (repid) REFERENCES enigma.repfilings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: domchanges domchanges_dom; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.domchanges
    ADD CONSTRAINT domchanges_dom FOREIGN KEY (olddom) REFERENCES enigma.domiciles(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: domchanges domchanges_org; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.domchanges
    ADD CONSTRAINT domchanges_org FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: entitlements entitlements_issue; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.entitlements
    ADD CONSTRAINT entitlements_issue FOREIGN KEY (issueid) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: paylineerrors errtype; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.paylineerrors
    ADD CONSTRAINT errtype FOREIGN KEY (errid) REFERENCES enigma.paylineerrtype(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: prhestate estate_district; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.prhestate
    ADD CONSTRAINT estate_district FOREIGN KEY (district) REFERENCES enigma.hkdistrict(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: filingcodes filingcodes_reps; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.filingcodes
    ADD CONSTRAINT filingcodes_reps FOREIGN KEY (repid) REFERENCES enigma.repfilings(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: advisers fk_advisers_orgs; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.advisers
    ADD CONSTRAINT fk_advisers_orgs FOREIGN KEY (personid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: adviserships fk_adviserships_adviser; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.adviserships
    ADD CONSTRAINT fk_adviserships_adviser FOREIGN KEY (adviser) REFERENCES enigma.advisers(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: adviserships fk_adviserships_orgs; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.adviserships
    ADD CONSTRAINT fk_adviserships_orgs FOREIGN KEY (company) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: adviserships fk_adviserships_role; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.adviserships
    ADD CONSTRAINT fk_adviserships_role FOREIGN KEY (role) REFERENCES enigma.roles(roleid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: campaign fk_campaign_recip; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.campaign
    ADD CONSTRAINT fk_campaign_recip FOREIGN KEY (recipient) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: capchanges fk_capchanges_type; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.capchanges
    ADD CONSTRAINT fk_capchanges_type FOREIGN KEY (capchangetype) REFERENCES enigma.capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: cattree fk_cattree_child; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.cattree
    ADD CONSTRAINT fk_cattree_child FOREIGN KEY (childcat) REFERENCES enigma.categories(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: cattree fk_cattree_parent; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.cattree
    ADD CONSTRAINT fk_cattree_parent FOREIGN KEY (parentcat) REFERENCES enigma.categories(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: classifications fk_classifications_cats; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.classifications
    ADD CONSTRAINT fk_classifications_cats FOREIGN KEY (category) REFERENCES enigma.categories(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: classifications fk_classifications_org; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.classifications
    ADD CONSTRAINT fk_classifications_org FOREIGN KEY (company) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: forexrates fk_currpair; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.forexrates
    ADD CONSTRAINT fk_currpair FOREIGN KEY (currpair) REFERENCES enigma.currpair(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: directorships fk_directorships_orgs; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.directorships
    ADD CONSTRAINT fk_directorships_orgs FOREIGN KEY (company) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: directorships fk_directorships_persons; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.directorships
    ADD CONSTRAINT fk_directorships_persons FOREIGN KEY (director) REFERENCES enigma.persons(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: directorships fk_directorships_posn; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.directorships
    ADD CONSTRAINT fk_directorships_posn FOREIGN KEY (positionid) REFERENCES enigma.positions(positionid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: documents fk_docs_doctypes; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.documents
    ADD CONSTRAINT fk_docs_doctypes FOREIGN KEY (doctypeid) REFERENCES enigma.doctypes(doctypeid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: documents fk_documents_orgs; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.documents
    ADD CONSTRAINT fk_documents_orgs FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: donations fk_donations_campaign; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.donations
    ADD CONSTRAINT fk_donations_campaign FOREIGN KEY (campaign) REFERENCES enigma.campaign(campid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: donations fk_donations_currency; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.donations
    ADD CONSTRAINT fk_donations_currency FOREIGN KEY (doncurr) REFERENCES enigma.currencies(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: donations fk_donations_donor; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.donations
    ADD CONSTRAINT fk_donations_donor FOREIGN KEY (donor) REFERENCES enigma.persons(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: entitlements fk_entitlements_event1; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.entitlements
    ADD CONSTRAINT fk_entitlements_event1 FOREIGN KEY (event1) REFERENCES enigma.events(eventid) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: entitlements fk_entitlements_event2; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.entitlements
    ADD CONSTRAINT fk_entitlements_event2 FOREIGN KEY (event2) REFERENCES enigma.events(eventid) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: entitlements fk_entitlements_event3; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.entitlements
    ADD CONSTRAINT fk_entitlements_event3 FOREIGN KEY (event3) REFERENCES enigma.events(eventid) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: entitlements fk_entitlements_event4; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.entitlements
    ADD CONSTRAINT fk_entitlements_event4 FOREIGN KEY (event4) REFERENCES enigma.events(eventid) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: entitlements fk_entitlements_type1; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.entitlements
    ADD CONSTRAINT fk_entitlements_type1 FOREIGN KEY (capchangetype1) REFERENCES enigma.capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: entitlements fk_entitlements_type2; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.entitlements
    ADD CONSTRAINT fk_entitlements_type2 FOREIGN KEY (capchangetype2) REFERENCES enigma.capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: entitlements fk_entitlements_type3; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.entitlements
    ADD CONSTRAINT fk_entitlements_type3 FOREIGN KEY (capchangetype3) REFERENCES enigma.capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: entitlements fk_entitlements_type4; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.entitlements
    ADD CONSTRAINT fk_entitlements_type4 FOREIGN KEY (capchangetype4) REFERENCES enigma.capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: events fk_events_entit; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.events
    ADD CONSTRAINT fk_events_entit FOREIGN KEY (importid) REFERENCES enigma.entitlements(importid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: reorg fk_fromorg; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.reorg
    ADD CONSTRAINT fk_fromorg FOREIGN KEY (fromorg) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: issue fk_issue_orgs; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.issue
    ADD CONSTRAINT fk_issue_orgs FOREIGN KEY (issuer) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: marketsforweb fk_marketsforweb_listings; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.marketsforweb
    ADD CONSTRAINT fk_marketsforweb_listings FOREIGN KEY (stockexid) REFERENCES enigma.listings(stockexid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: namechanges fk_namechanges_orgs; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.namechanges
    ADD CONSTRAINT fk_namechanges_orgs FOREIGN KEY (personid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: nationality fk_nats_people; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.nationality
    ADD CONSTRAINT fk_nats_people FOREIGN KEY (personid) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: nationality fk_nats_ukchnats; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.nationality
    ADD CONSTRAINT fk_nats_ukchnats FOREIGN KEY (ukchnat) REFERENCES enigma.ukchnats(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: organisations fk_organisations_dom; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.organisations
    ADD CONSTRAINT fk_organisations_dom FOREIGN KEY (domicile) REFERENCES enigma.domiciles(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: organisations fk_organisations_persons; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.organisations
    ADD CONSTRAINT fk_organisations_persons FOREIGN KEY (personid) REFERENCES enigma.persons(personid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: orgdata fk_orgdata_dom; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.orgdata
    ADD CONSTRAINT fk_orgdata_dom FOREIGN KEY (territory) REFERENCES enigma.domiciles(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: orgdata fk_orgdata_orgs; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.orgdata
    ADD CONSTRAINT fk_orgdata_orgs FOREIGN KEY (personid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: organisations fk_orgs_dismode; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.organisations
    ADD CONSTRAINT fk_orgs_dismode FOREIGN KEY (dismode) REFERENCES enigma.dismodes(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: organisations fk_orgs_orgtype; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.organisations
    ADD CONSTRAINT fk_orgs_orgtype FOREIGN KEY (orgtype) REFERENCES enigma.orgtypes(orgtype) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: people fk_people_persons; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.people
    ADD CONSTRAINT fk_people_persons FOREIGN KEY (personid) REFERENCES enigma.persons(personid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: people fk_people_titles; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.people
    ADD CONSTRAINT fk_people_titles FOREIGN KEY (titleid) REFERENCES enigma.titles(titleid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: personstories fk_personstories_1; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.personstories
    ADD CONSTRAINT fk_personstories_1 FOREIGN KEY (storyid) REFERENCES enigma.stories(storyid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: personstories fk_personstories_persons; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.personstories
    ADD CONSTRAINT fk_personstories_persons FOREIGN KEY (personid) REFERENCES enigma.persons(personid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: positions fk_positions_rank; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.positions
    ADD CONSTRAINT fk_positions_rank FOREIGN KEY (rank) REFERENCES enigma.rank(rankid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: positions fk_positions_status; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.positions
    ADD CONSTRAINT fk_positions_status FOREIGN KEY (status) REFERENCES enigma.status(statusid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: relatives fk_relatives_rel1; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.relatives
    ADD CONSTRAINT fk_relatives_rel1 FOREIGN KEY (rel1) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: relatives fk_relatives_rel2; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.relatives
    ADD CONSTRAINT fk_relatives_rel2 FOREIGN KEY (rel2) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: relatives fk_relatives_relid; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.relatives
    ADD CONSTRAINT fk_relatives_relid FOREIGN KEY (relid) REFERENCES enigma.relationships(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: stocklistings fk_stocklistings_dlreason; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.stocklistings
    ADD CONSTRAINT fk_stocklistings_dlreason FOREIGN KEY (reasonid) REFERENCES enigma.dlreasons(reasonid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: stocklistings fk_stocklistings_listing; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.stocklistings
    ADD CONSTRAINT fk_stocklistings_listing FOREIGN KEY (stockexid) REFERENCES enigma.listings(stockexid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: stories fk_stories_source; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.stories
    ADD CONSTRAINT fk_stories_source FOREIGN KEY (sourceid) REFERENCES enigma.sources(sourceid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: storytags fk_storytags_cats; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.storytags
    ADD CONSTRAINT fk_storytags_cats FOREIGN KEY (catid) REFERENCES enigma.categories(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: storytags fk_storytags_stories; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.storytags
    ADD CONSTRAINT fk_storytags_stories FOREIGN KEY (storyid) REFERENCES enigma.stories(storyid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: reorg fk_toorg; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.reorg
    ADD CONSTRAINT fk_toorg FOREIGN KEY (toorg) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: web fk_web_persons; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.web
    ADD CONSTRAINT fk_web_persons FOREIGN KEY (personid) REFERENCES enigma.persons(personid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: govadopt fkadoptitems; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.govadopt
    ADD CONSTRAINT fkadoptitems FOREIGN KEY (govitem) REFERENCES enigma.govitems(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: lirteamstaff fklirstaff; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lirteamstaff
    ADD CONSTRAINT fklirstaff FOREIGN KEY (staffid) REFERENCES enigma.lirstaff(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: lirteamstaff fklirteams; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lirteamstaff
    ADD CONSTRAINT fklirteams FOREIGN KEY (teamid) REFERENCES enigma.lirteams(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: ownerprof fkorg; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.ownerprof
    ADD CONSTRAINT fkorg FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: freg freg-dom; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.freg
    ADD CONSTRAINT "freg-dom" FOREIGN KEY (hostdom) REFERENCES enigma.domiciles(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: freg freg-org; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.freg
    ADD CONSTRAINT "freg-org" FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: govac govac; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.govac
    ADD CONSTRAINT govac FOREIGN KEY (govitem) REFERENCES enigma.govitems(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: hkexdata hkexdata_issue; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.hkexdata
    ADD CONSTRAINT hkexdata_issue FOREIGN KEY (issueid) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: events issue1_issue; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.events
    ADD CONSTRAINT issue1_issue FOREIGN KEY (issueid) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: events issue2_issue; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.events
    ADD CONSTRAINT issue2_issue FOREIGN KEY (issue2) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: issuedshares issuedshares_issue; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.issuedshares
    ADD CONSTRAINT issuedshares_issue FOREIGN KEY (issueid) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: judgments judgmentscasetype; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.judgments
    ADD CONSTRAINT judgmentscasetype FOREIGN KEY (casetype) REFERENCES enigma.casetypes(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: licrec licrecacts; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.licrec
    ADD CONSTRAINT licrecacts FOREIGN KEY (acttype) REFERENCES enigma.activity(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: licrec licrecorgs; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.licrec
    ADD CONSTRAINT licrecorgs FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: licrec licrecpeople; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.licrec
    ADD CONSTRAINT licrecpeople FOREIGN KEY (staffid) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: lsadm lsadm-lsdom; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsadm
    ADD CONSTRAINT "lsadm-lsdom" FOREIGN KEY (lsdom) REFERENCES enigma.lsdoms(lsdom) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: lsemps lsemps-orgs; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsemps
    ADD CONSTRAINT "lsemps-orgs" FOREIGN KEY (personid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: lsjobs lsjobs-emps; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsjobs
    ADD CONSTRAINT "lsjobs-emps" FOREIGN KEY (empid) REFERENCES enigma.lsemps(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: lsjobs lsjobs-lsppl; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsjobs
    ADD CONSTRAINT "lsjobs-lsppl" FOREIGN KEY (lsppl) REFERENCES enigma.lsppl(lsid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: lsorgs lsorgs-orgs; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsorgs
    ADD CONSTRAINT "lsorgs-orgs" FOREIGN KEY (personid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: lsposts lsposts-lsorgs; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsposts
    ADD CONSTRAINT "lsposts-lsorgs" FOREIGN KEY (lsorg) REFERENCES enigma.lsorgs(lsid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: lsposts lsposts-lsppl; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsposts
    ADD CONSTRAINT "lsposts-lsppl" FOREIGN KEY (lsppl) REFERENCES enigma.lsppl(lsid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: lsppl lsppl-people; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.lsppl
    ADD CONSTRAINT "lsppl-people" FOREIGN KEY (personid) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: oldcr oldcr-org; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.oldcr
    ADD CONSTRAINT "oldcr-org" FOREIGN KEY (personid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: oldcrf oldcrf-freg; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.oldcrf
    ADD CONSTRAINT "oldcrf-freg" FOREIGN KEY (fregid) REFERENCES enigma.freg(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: olicrec olicrec_acts; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.olicrec
    ADD CONSTRAINT olicrec_acts FOREIGN KEY (acttype) REFERENCES enigma.activity(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: olicrec olicrec_org; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.olicrec
    ADD CONSTRAINT olicrec_org FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: hkcrtypes orgtype; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.hkcrtypes
    ADD CONSTRAINT orgtype FOREIGN KEY (orgtype) REFERENCES enigma.orgtypes(orgtype) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: ownerstks ownerstksorgs; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.ownerstks
    ADD CONSTRAINT ownerstksorgs FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: paylineerrors pay; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.paylineerrors
    ADD CONSTRAINT pay FOREIGN KEY (payid) REFERENCES enigma.pay(id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: pay paycurr; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.pay
    ADD CONSTRAINT paycurr FOREIGN KEY (currid) REFERENCES enigma.currencies(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: payerrors payerrtype; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.payerrors
    ADD CONSTRAINT payerrtype FOREIGN KEY (errid) REFERENCES enigma.payerrtype(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: pay payorg; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.pay
    ADD CONSTRAINT payorg FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: pay payppl; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.pay
    ADD CONSTRAINT payppl FOREIGN KEY (pplid) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: pay payuser; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.pay
    ADD CONSTRAINT payuser FOREIGN KEY (userid) REFERENCES enigma.users(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: prhblock prhblock_estate; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.prhblock
    ADD CONSTRAINT prhblock_estate FOREIGN KEY (estateid) REFERENCES enigma.prhestate(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: prisoners prisoners_jail; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.prisoners
    ADD CONSTRAINT prisoners_jail FOREIGN KEY (jail) REFERENCES enigma.jails(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: wsprivs privs_roles; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.wsprivs
    ADD CONSTRAINT privs_roles FOREIGN KEY (roleid) REFERENCES enigma.wsroles(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: wsprivs privs_users; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.wsprivs
    ADD CONSTRAINT privs_users FOREIGN KEY (userid) REFERENCES enigma.users(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: sdievent reason; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sdievent
    ADD CONSTRAINT reason FOREIGN KEY (reason) REFERENCES enigma.sdireason(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: wsroletabs roletabs_roles; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.wsroletabs
    ADD CONSTRAINT roletabs_roles FOREIGN KEY (roleid) REFERENCES enigma.wsroles(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: sdi sdi_currency; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sdi
    ADD CONSTRAINT sdi_currency FOREIGN KEY (curr) REFERENCES enigma.currencies(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: sdi sdi_issue; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sdi
    ADD CONSTRAINT sdi_issue FOREIGN KEY (issueid) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: sdi sdi_persons; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sdi
    ADD CONSTRAINT sdi_persons FOREIGN KEY (dir) REFERENCES enigma.persons(personid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: sdicap sdicap_capacity; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sdicap
    ADD CONSTRAINT sdicap_capacity FOREIGN KEY (capid) REFERENCES enigma.capacity(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: sdicap sdicap_sdi; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sdicap
    ADD CONSTRAINT sdicap_sdi FOREIGN KEY (sdiid) REFERENCES enigma.sdi(id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: sdievent sdievent_sdi; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sdievent
    ADD CONSTRAINT sdievent_sdi FOREIGN KEY (sdiid) REFERENCES enigma.sdi(id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: sholdings sholders_holder; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sholdings
    ADD CONSTRAINT sholders_holder FOREIGN KEY (holderid) REFERENCES enigma.persons(personid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: sholdings sholders_issue; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.sholdings
    ADD CONSTRAINT sholders_issue FOREIGN KEY (issueid) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: stocklistings stocklistings_issue; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.stocklistings
    ADD CONSTRAINT stocklistings_issue FOREIGN KEY (issueid) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: ukppl ukppl-people; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.ukppl
    ADD CONSTRAINT "ukppl-people" FOREIGN KEY (personid) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: payreview useridusers; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.payreview
    ADD CONSTRAINT useridusers FOREIGN KEY (userid) REFERENCES enigma.users(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: web web_sources; Type: FK CONSTRAINT; Schema: enigma; Owner: -
--

ALTER TABLE ONLY enigma.web
    ADD CONSTRAINT web_sources FOREIGN KEY (source) REFERENCES enigma.sources(sourceid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

\unrestrict wrkBuFTHfsLs9oHdKPSxhh87Dze9PGnv1RvK8Bd3KYhZnsIfVKqUeDiZOhYjN7g

