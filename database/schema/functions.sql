-- Return-calculation functions (enigma.totret / cagret / cagrel).
--
-- Idempotent, like database/schema/indexes.sql: apply after any restore
--     sudo -u postgres psql -d enigma -f database/schema/functions.sql
-- and scripts/assert_box.py checks daily that the live bodies still carry the
-- guard below. This file -- not database/migrations/002_sync_missing_objects.sql,
-- which is the retired Render bootstrap and declares a different parameter name
-- (issueid_param, which CREATE OR REPLACE cannot change) -- is what the live
-- database has.
--
-- Why the NULLIFs:
--   The bodies came across from MySQL unchanged, where `x / 0` evaluates to
--   NULL. In PostgreSQL it raises division_by_zero, so one security with a zero
--   price aborted the whole query and took the page with it -- listed.asp?e=m&t=w
--   returned an empty table because warrant 2461 (issueID 33358) closed at 0 on
--   its first quote date (WEBBSITE-1E/1F). 663 currently-listed securities have
--   a zero first close.
--   ccass.firstQuoteDate filters on `noclose = false`, so a 0 there is a real
--   quote of zero, not a missing one; there is no return to compute either way.
--   NULLIF restores the MySQL result -- NULL, which every caller already renders
--   as a blank cell -- rather than inventing a number.
-- Every divisor is guarded, not just the one that fired: enigma.adjustments has
-- no zero cumAdjust today, but nothing in the schema forbids one.

SET search_path TO enigma, ccass, public;

-- CREATE OR REPLACE cannot rename an input parameter, so a database whose
-- bodies came from database/migrations/002_sync_missing_objects.sql (parameter
-- `issueid_param`, the retired Render bootstrap) rejects this whole file with
-- "cannot change name of input parameter" -- and converge would then fail on
-- every tick forever, leaving the guard unapplied in exactly the rebuild case
-- it exists for. Drop only a clashing signature, so the ordinary path (live,
-- and any pg_restore of the R2 baseline, both of which already spell it `id`)
-- keeps CREATE OR REPLACE and with it the function's owner and grants.
DO $drop_clashing$
DECLARE
    fn     text;
    target regprocedure;
    want   CONSTANT text := 'id integer, fromdate date, todate date';
BEGIN
    FOREACH fn IN ARRAY ARRAY['totret', 'cagret', 'cagrel'] LOOP
        -- to_regprocedure is NULL when that exact signature does not exist, so
        -- this never touches an unrelated overload. (pg_get_function_identity_
        -- arguments is NOT the test to use here: it includes parameter names.)
        target := to_regprocedure(format('enigma.%I(integer, date, date)', fn));
        IF target IS NOT NULL AND pg_get_function_arguments(target::oid) <> want THEN
            -- Rare (a rebuild from 002); the recreate below is then owned by
            -- whoever runs this file rather than by the previous owner.
            RAISE NOTICE 'dropping % : parameter names differ from this file', target;
            EXECUTE format('DROP FUNCTION %s', target::text);
        END IF;
    END LOOP;
END
$drop_clashing$;

-- Total return between two dates.
CREATE OR REPLACE FUNCTION enigma.totret(id integer, fromdate date, todate date)
 RETURNS double precision
 LANGUAGE plpgsql
 STABLE
AS $function$
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

        answer := enigma.getAdjust(ID, firstQFD)
                  / NULLIF(enigma.getAdjust(ID, lastQTD), 0)
                  * lastQT / NULLIF(firstQF, 0);
    END IF;

    RETURN answer;
END;
$function$;

COMMENT ON FUNCTION enigma.totret(integer, date, date) IS
'Total return from fromDate to toDate; NULL when the first close is 0 (MySQL x/0 semantics)';

-- Compound annual growth rate over the same interval (periods >= 180 days).
CREATE OR REPLACE FUNCTION enigma.cagret(id integer, fromdate date, todate date)
 RETURNS double precision
 LANGUAGE plpgsql
 STABLE
AS $function$
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

        answer := enigma.getAdjust(ID, firstQFD)
                  / NULLIF(enigma.getAdjust(ID, lastQTD), 0)
                  * lastQT / NULLIF(firstQF, 0);
        answer := POWER(answer, 365.25 / intlength);
    END IF;

    RETURN answer;
END;
$function$;

COMMENT ON FUNCTION enigma.cagret(integer, date, date) IS
'CAGR over periods >= 180 days; NULL when the first close is 0 (MySQL x/0 semantics)';

-- CAGR relative to the Tracker Fund (issueID 5295).
CREATE OR REPLACE FUNCTION enigma.cagrel(id integer, fromdate date, todate date)
 RETURNS double precision
 LANGUAGE plpgsql
 STABLE
AS $function$
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

        answer := enigma.getAdjust(ID, firstQFD)
                  / NULLIF(enigma.getAdjust(ID, lastQTD), 0)
                  * lastQT / NULLIF(firstQF, 0);

        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = 5295 AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = 5295 AND atDate = lastQTD;

        trackRet := enigma.getAdjust(5295, firstQFD)
                    / NULLIF(enigma.getAdjust(5295, lastQTD), 0)
                    * lastQT / NULLIF(firstQF, 0);
        answer := POWER(answer / NULLIF(trackRet, 0), 365.25 / intlength);
    END IF;

    RETURN answer;
END;
$function$;

COMMENT ON FUNCTION enigma.cagrel(integer, date, date) IS
'CAGR relative to the Tracker Fund (2800); NULL when a first close is 0 (MySQL x/0 semantics)';
