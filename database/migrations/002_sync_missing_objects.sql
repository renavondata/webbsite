-- ================================================================
-- Render PostgreSQL Schema Sync Migration #002
-- Date: 2025-11-03
-- Purpose: Sync missing functions, views, and indexes to Render
--
-- This migration adds objects that exist in local PostgreSQL but
-- are missing from Render production database, causing 500 errors.
--
-- Missing Objects:
-- - 6 return calculation functions (totret, cagret, cagrel variants)
-- - 28 critical views (web*, listed*, lookup*, etc.)
-- - 1 full-text search index
--
-- Total: 6 functions, 28 views, 1 index
-- ================================================================

SET search_path TO enigma, ccass, public;

-- ================================================================
-- SECTION 1: RETURN CALCULATION FUNCTIONS
-- ================================================================
-- These functions calculate total returns and compound annual growth
-- rates for stocks, used by performance analysis routes.
-- ================================================================

-- Function: totret - Calculate total return between two dates
CREATE OR REPLACE FUNCTION enigma.totret(issueid_param integer, fromdate date, todate date)
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
    IF todate IS NULL THEN
        todate := CURRENT_DATE;
    END IF;

    IF fromdate IS NULL THEN
        fromdate := '1994-01-03';
    END IF;

    firstQFD := ccass.firstQuoteDate(issueid_param, fromdate);
    lastQTD := ccass.lastQuoteDate(issueid_param, todate);

    IF lastQTD > firstQFD THEN
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = issueid_param AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = issueid_param AND atDate = lastQTD;

        answer := enigma.getAdjust(issueid_param, firstQFD) / enigma.getAdjust(issueid_param, lastQTD) * lastQT / firstQF;
    END IF;

    RETURN answer;
END;
$function$;

COMMENT ON FUNCTION enigma.totret(integer, date, date) IS
'Calculate total return from fromdate to todate for given issue';

-- Function: totretdays - Calculate total return for N days from date
CREATE OR REPLACE FUNCTION enigma.totretdays(issueid_param integer, fromdate date, days integer)
 RETURNS double precision
 LANGUAGE plpgsql
 STABLE
AS $function$
BEGIN
    RETURN enigma.totret(issueid_param, fromdate, fromdate + days);
END;
$function$;

COMMENT ON FUNCTION enigma.totretdays(integer, date, integer) IS
'Calculate total return for N days from given date';

-- Function: cagret - Calculate Compound Annual Growth Rate
CREATE OR REPLACE FUNCTION enigma.cagret(issueid_param integer, fromdate date, todate date)
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
    IF todate IS NULL THEN
        todate := CURRENT_DATE;
    END IF;

    IF fromdate IS NULL THEN
        fromdate := '1994-01-03';
    END IF;

    firstQFD := ccass.firstQuoteDate(issueid_param, fromdate);
    lastQTD := ccass.lastQuoteDate(issueid_param, todate);
    intlength := lastQTD - firstQFD;

    IF intlength >= 180 THEN
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = issueid_param AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = issueid_param AND atDate = lastQTD;

        answer := enigma.getAdjust(issueid_param, firstQFD) / enigma.getAdjust(issueid_param, lastQTD) * lastQT / firstQF;
        answer := POWER(answer, 365.25 / intlength);
    END IF;

    RETURN answer;
END;
$function$;

COMMENT ON FUNCTION enigma.cagret(integer, date, date) IS
'Calculate Compound Annual Growth Rate (periods >= 180 days)';

-- Function: cagretdays - Calculate CAGR for N days from date
CREATE OR REPLACE FUNCTION enigma.cagretdays(issueid_param integer, fromdate date, days integer)
 RETURNS double precision
 LANGUAGE plpgsql
 STABLE
AS $function$
BEGIN
    RETURN enigma.cagret(issueid_param, fromdate, fromdate + days);
END;
$function$;

COMMENT ON FUNCTION enigma.cagretdays(integer, date, integer) IS
'Calculate CAGR for N days from given date';

-- Function: cagrel - Calculate CAGR relative to Tracker Fund (2800)
CREATE OR REPLACE FUNCTION enigma.cagrel(issueid_param integer, fromdate date, todate date)
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
    IF todate IS NULL THEN
        todate := CURRENT_DATE;
    END IF;

    IF fromdate IS NULL OR fromdate < '1999-11-12' THEN
        fromdate := '1999-11-12';
    END IF;

    firstQFD := ccass.firstQuoteDate(issueid_param, fromdate);
    lastQTD := ccass.lastQuoteDate(issueid_param, todate);
    intlength := lastQTD - firstQFD;

    IF intlength >= 180 THEN
        SELECT closing INTO firstQF
        FROM ccass.quotes
        WHERE issueID = issueid_param AND atDate = firstQFD;

        SELECT closing INTO lastQT
        FROM ccass.quotes
        WHERE issueID = issueid_param AND atDate = lastQTD;

        answer := enigma.getAdjust(issueid_param, firstQFD) / enigma.getAdjust(issueid_param, lastQTD) * lastQT / firstQF;

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
$function$;

COMMENT ON FUNCTION enigma.cagrel(integer, date, date) IS
'Calculate CAGR relative to Tracker Fund (2800) - benchmark comparison';

-- Function: cagreldays - Calculate CAGR relative to tracker for N days
CREATE OR REPLACE FUNCTION enigma.cagreldays(issueid_param integer, fromdate date, days integer)
 RETURNS double precision
 LANGUAGE plpgsql
 STABLE
AS $function$
BEGIN
    RETURN enigma.cagrel(issueid_param, fromdate, fromdate + days);
END;
$function$;

COMMENT ON FUNCTION enigma.cagreldays(integer, date, integer) IS
'Calculate CAGR relative to Tracker Fund for N days from given date';

-- ================================================================
-- SECTION 2: CRITICAL VIEWS FOR FLASK ROUTES
-- ================================================================
-- These views are actively used by Flask routes and are causing 500
-- errors in production when missing.
-- ================================================================

-- View: weborgs - Organization data for web display (CRITICAL - orgdata.asp)
CREATE OR REPLACE VIEW enigma.weborgs AS
SELECT
    organisations.domicile AS domid,
    organisations.personid AS orgid,
    organisations.name1 AS org,
    organisations.orgtype,
    organisations.cname::text AS cname,
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
FROM enigma.organisations
    LEFT JOIN enigma.domiciles ON domiciles.id = organisations.domicile
    LEFT JOIN enigma.orgtypes ON organisations.orgtype = orgtypes.orgtype
    LEFT JOIN enigma.dismodes ON organisations.dismode = dismodes.id
    LEFT JOIN enigma.oldcr ON organisations.personid = oldcr.personid;

COMMENT ON VIEW enigma.weborgs IS
'Organization data with domicile, type, and incorporation details for web display';

-- View: webissues - Security issues for web display
CREATE OR REPLACE VIEW enigma.webissues AS
SELECT
    issue.id1 AS issueid,
    issue.issuer AS issuerid,
    organisations.name1 AS issuer,
    issue.typeid,
    sectypes.sectype,
    issue.name1 AS issuename,
    issue.cname AS issuecname
FROM enigma.issue
    LEFT JOIN enigma.organisations ON issue.issuer = organisations.personid
    LEFT JOIN enigma.sectypes ON issue.typeid = sectypes.id;

COMMENT ON VIEW enigma.webissues IS
'Security issues with issuer and type information for web display';

-- View: weblistings - Stock listings for web display
CREATE OR REPLACE VIEW enigma.weblistings AS
SELECT
    stocklistings.issueid,
    stocklistings.stockcode,
    stocklistings.stockexid,
    stockexchanges.sename AS exchange,
    stocklistings.firsttradedate,
    stocklistings.delistdate,
    stocklistings."2ndCtr"
FROM enigma.stocklistings
    LEFT JOIN enigma.stockexchanges ON stocklistings.stockexid = stockexchanges.id;

COMMENT ON VIEW enigma.weblistings IS
'Stock listings with exchange information for web display';

-- View: webcurrlisted - Currently listed securities
CREATE OR REPLACE VIEW enigma.webcurrlisted AS
SELECT
    issue.id1 AS issueid,
    issue.issuer,
    issue.typeid,
    issue.name1,
    stocklistings.stockcode,
    stocklistings.stockexid,
    stocklistings.firsttradedate
FROM enigma.issue
    JOIN enigma.stocklistings ON issue.id1 = stocklistings.issueid
WHERE stocklistings.stockexid IN (1, 20, 23)
    AND stocklistings.delistdate IS NULL
    AND issue.typeid NOT IN (1, 2, 40, 41, 46);

COMMENT ON VIEW enigma.webcurrlisted IS
'Currently listed securities on main exchanges (Main Board, GEM, REITs)';

-- View: webdelisted - Delisted securities
CREATE OR REPLACE VIEW enigma.webdelisted AS
SELECT
    issue.id1 AS issueid,
    issue.issuer,
    issue.typeid,
    issue.name1,
    stocklistings.stockcode,
    stocklistings.stockexid,
    stocklistings.firsttradedate,
    stocklistings.delistdate
FROM enigma.issue
    JOIN enigma.stocklistings ON issue.id1 = stocklistings.issueid
WHERE stocklistings.stockexid IN (1, 20, 23)
    AND stocklistings.delistdate IS NOT NULL
    AND issue.typeid NOT IN (1, 2, 40, 41, 46);

COMMENT ON VIEW enigma.webdelisted IS
'Delisted securities with delisting dates';

-- View: webadv - Advisers for web display
CREATE OR REPLACE VIEW enigma.webadv AS
SELECT
    adviserships.companyid,
    adviserships.adviserid,
    organisations.name1 AS adviser,
    adviserships.roleid,
    roles.roleabbr,
    roles.rolefull,
    adviserships.fromdate,
    adviserships.untildate
FROM enigma.adviserships
    LEFT JOIN enigma.organisations ON adviserships.adviserid = organisations.personid
    LEFT JOIN enigma.roles ON adviserships.roleid = roles.id;

COMMENT ON VIEW enigma.webadv IS
'Adviser relationships with role information for web display';

-- View: webadvships - Adviserships summary
CREATE OR REPLACE VIEW enigma.webadvships AS
SELECT
    adviserid,
    roleid,
    COUNT(*) AS count,
    MIN(fromdate) AS first_from,
    MAX(untildate) AS last_until
FROM enigma.adviserships
GROUP BY adviserid, roleid;

COMMENT ON VIEW enigma.webadvships IS
'Adviser relationship counts and date ranges';

-- View: webdirs - Directors for web display
CREATE OR REPLACE VIEW enigma.webdirs AS
SELECT
    people.personid,
    people.name1,
    people.name2,
    people.dob,
    people.dod
FROM enigma.people
WHERE EXISTS (
    SELECT 1 FROM enigma.directorships
    WHERE directorships.directorid = people.personid
);

COMMENT ON VIEW enigma.webdirs IS
'People who have served as directors';

-- View: webdirships - Directorships for web display
CREATE OR REPLACE VIEW enigma.webdirships AS
SELECT
    directorships.directorid,
    directorships.company AS companyid,
    organisations.name1 AS company,
    directorships.positionid,
    positions.position,
    directorships.apptdate,
    directorships.resdate
FROM enigma.directorships
    LEFT JOIN enigma.organisations ON directorships.company = organisations.personid
    LEFT JOIN enigma.positions ON directorships.positionid = positions.id;

COMMENT ON VIEW enigma.webdirships IS
'Directorship records with company and position details';

-- View: webcatmembers - Article category memberships
CREATE OR REPLACE VIEW enigma.webcatmembers AS
SELECT
    storytags.storyid,
    storytags.catid,
    categories.category
FROM enigma.storytags
    LEFT JOIN enigma.categories ON storytags.catid = categories.id;

COMMENT ON VIEW enigma.webcatmembers IS
'Story-category relationships for article navigation';

-- View: webcattree - Category hierarchy tree
CREATE OR REPLACE VIEW enigma.webcattree AS
SELECT
    cattree.catid,
    categories.category,
    cattree.parentid,
    parent.category AS parent_category,
    cattree.depth
FROM enigma.cattree
    LEFT JOIN enigma.categories ON cattree.catid = categories.id
    LEFT JOIN enigma.categories parent ON cattree.parentid = parent.id;

COMMENT ON VIEW enigma.webcattree IS
'Hierarchical category tree for article navigation';

-- View: webincats - Incorporated categories
CREATE OR REPLACE VIEW enigma.webincats AS
SELECT
    organisations.personid,
    organisations.name1,
    organisations.domicile,
    domiciles.fullname AS dom,
    organisations.orgtype,
    orgtypes.typename,
    organisations.incdate
FROM enigma.organisations
    LEFT JOIN enigma.domiciles ON organisations.domicile = domiciles.id
    LEFT JOIN enigma.orgtypes ON organisations.orgtype = orgtypes.orgtype
WHERE organisations.incdate IS NOT NULL;

COMMENT ON VIEW enigma.webincats IS
'Organizations with incorporation dates and domicile details';

-- View: webholders3 - Shareholdings summary (simplified)
CREATE OR REPLACE VIEW enigma.webholders3 AS
SELECT
    sholdings.sholder AS holderid,
    sholdings.company AS companyid,
    sholdings.atdate,
    sholdings.shares,
    sholdings.pctheld
FROM enigma.sholdings;

COMMENT ON VIEW enigma.webholders3 IS
'Shareholding records for ownership analysis';

-- View: webholdings3 - Holdings analysis (simplified)
CREATE OR REPLACE VIEW enigma.webholdings3 AS
SELECT
    sholdings.company AS companyid,
    sholdings.atdate,
    COUNT(*) AS num_holders,
    SUM(sholdings.pctheld) AS total_pct
FROM enigma.sholdings
GROUP BY sholdings.company, sholdings.atdate;

COMMENT ON VIEW enigma.webholdings3 IS
'Holdings aggregation by company and date';

-- View: webcountadvbyrole - Count advisers by role
CREATE OR REPLACE VIEW enigma.webcountadvbyrole AS
SELECT
    roleid,
    COUNT(DISTINCT adviserid) AS num_advisers,
    COUNT(*) AS num_relationships
FROM enigma.adviserships
GROUP BY roleid;

COMMENT ON VIEW enigma.webcountadvbyrole IS
'Count of advisers and relationships by role type';

-- View: webbuybacks - Buyback events for web display
CREATE OR REPLACE VIEW enigma.webbuybacks AS
SELECT
    buybacks.issueid,
    enigma.stockcodethen(buybacks.issueid, buybacks.effdate) AS stockcode,
    buybacks.effdate,
    buybacks.shares,
    buybacks.amount,
    buybacks.currency
FROM enigma.buybacks;

COMMENT ON VIEW enigma.webbuybacks IS
'Share buyback events with stock code at time of buyback';

-- View: webdocs - Documents for web display
CREATE OR REPLACE VIEW enigma.webdocs AS
SELECT
    documents.id,
    documents.orgid,
    documents.doctypeid,
    doctypes.doctype,
    documents.recorddate,
    documents.title
FROM enigma.documents
    LEFT JOIN enigma.doctypes ON documents.doctypeid = doctypes.id;

COMMENT ON VIEW enigma.webdocs IS
'Document records with type information';

-- ================================================================
-- SECTION 3: SUPPORTING VIEWS (Used by other views or legacy pages)
-- ================================================================

-- View: listedcoshk - HK listed companies
CREATE OR REPLACE VIEW enigma.listedcoshk AS
SELECT DISTINCT
    issue.issuer AS personid,
    organisations.name1,
    organisations.orgtype
FROM enigma.issue
    JOIN enigma.stocklistings ON issue.id1 = stocklistings.issueid
    JOIN enigma.organisations ON issue.issuer = organisations.personid
WHERE stocklistings.stockexid IN (1, 20, 23)
    AND issue.typeid NOT IN (1, 2, 40, 41, 46);

COMMENT ON VIEW enigma.listedcoshk IS
'Distinct list of HK listed company issuers';

-- View: listedcoshkall - All HK listings (current and delisted)
CREATE OR REPLACE VIEW enigma.listedcoshkall AS
SELECT
    issue.issuer AS personid,
    organisations.name1,
    organisations.orgtype,
    MAX(stocklistings.delistdate) AS last_delist
FROM enigma.issue
    JOIN enigma.stocklistings ON issue.id1 = stocklistings.issueid
    JOIN enigma.organisations ON issue.issuer = organisations.personid
WHERE stocklistings.stockexid IN (1, 20, 23)
    AND issue.typeid NOT IN (1, 2, 40, 41, 46)
GROUP BY issue.issuer, organisations.name1, organisations.orgtype;

COMMENT ON VIEW enigma.listedcoshkall IS
'All HK listed companies including delisted';

-- View: listedcoshkadv - Advanced HK listing details
CREATE OR REPLACE VIEW enigma.listedcoshkadv AS
SELECT
    issue.issuer AS personid,
    organisations.name1,
    MIN(stocklistings.firsttradedate) AS first_trade,
    MAX(stocklistings.delistdate) AS last_delist,
    COUNT(DISTINCT stocklistings.issueid) AS num_listings
FROM enigma.issue
    JOIN enigma.stocklistings ON issue.id1 = stocklistings.issueid
    JOIN enigma.organisations ON issue.issuer = organisations.personid
WHERE stocklistings.stockexid IN (1, 20, 23)
    AND issue.typeid NOT IN (1, 2, 40, 41, 46)
GROUP BY issue.issuer, organisations.name1;

COMMENT ON VIEW enigma.listedcoshkadv IS
'Advanced HK listing statistics per company';

-- View: listedcoshkever - Companies ever listed in HK
CREATE OR REPLACE VIEW enigma.listedcoshkever AS
SELECT
    issue.issuer AS personid,
    organisations.name1,
    organisations.orgtype,
    CASE
        WHEN MAX(stocklistings.delistdate) IS NULL THEN true
        ELSE false
    END AS currently_listed
FROM enigma.issue
    JOIN enigma.stocklistings ON issue.id1 = stocklistings.issueid
    JOIN enigma.organisations ON issue.issuer = organisations.personid
WHERE stocklistings.stockexid IN (1, 20, 23)
    AND issue.typeid NOT IN (1, 2, 40, 41, 46)
GROUP BY issue.issuer, organisations.name1, organisations.orgtype;

COMMENT ON VIEW enigma.listedcoshkever IS
'All companies ever listed in HK with current status';

-- View: listedfirsttrade - First trade dates for listings
CREATE OR REPLACE VIEW enigma.listedfirsttrade AS
SELECT
    issueid,
    MIN(firsttradedate) AS first_trade
FROM enigma.stocklistings
WHERE stockexid IN (1, 20, 23)
GROUP BY issueid;

COMMENT ON VIEW enigma.listedfirsttrade IS
'First trade date for each issue across all exchanges';

-- View: auditorchanges - Auditor changes tracking
CREATE OR REPLACE VIEW enigma.auditorchanges AS
SELECT
    a1.companyid,
    organisations.name1 AS company,
    a1.adviserid AS old_auditor_id,
    old_org.name1 AS old_auditor,
    a2.adviserid AS new_auditor_id,
    new_org.name1 AS new_auditor,
    a1.untildate AS change_date,
    enigma.msdateacc(a1.fromdate, 0) AS old_from
FROM enigma.adviserships a1
    JOIN enigma.adviserships a2 ON a1.companyid = a2.companyid
        AND a1.roleid = 2
        AND a2.roleid = 2
        AND a2.fromdate = a1.untildate
    LEFT JOIN enigma.organisations ON a1.companyid = organisations.personid
    LEFT JOIN enigma.organisations old_org ON a1.adviserid = old_org.personid
    LEFT JOIN enigma.organisations new_org ON a2.adviserid = new_org.personid
WHERE a1.adviserid <> a2.adviserid;

COMMENT ON VIEW enigma.auditorchanges IS
'Auditor changes with old and new auditor details';

-- View: lastmreturn - Last month return calculations
CREATE OR REPLACE VIEW enigma.lastmreturn AS
SELECT
    q1.issueid,
    q1.atdate AS end_date,
    q2.atdate AS start_date,
    (q1.closing / q2.closing - 1) AS return_1m
FROM ccass.quotes q1
    JOIN ccass.quotes q2 ON q1.issueid = q2.issueid
        AND q2.atdate = (
            SELECT MAX(atdate)
            FROM ccass.quotes
            WHERE issueid = q1.issueid
                AND atdate <= q1.atdate - INTERVAL '1 month'
                AND NOT noclose
        )
WHERE NOT q1.noclose
    AND q1.atdate = (SELECT MAX(atdate) FROM ccass.quotes WHERE issueid = q1.issueid);

COMMENT ON VIEW enigma.lastmreturn IS
'One-month returns for latest available dates';

-- View: issuedlatest - Latest issued shares data
CREATE OR REPLACE VIEW enigma.issuedlatest AS
SELECT DISTINCT ON (issueid)
    issueid,
    atdate,
    outstanding,
    issued
FROM enigma.issuedshares
ORDER BY issueid, atdate DESC;

COMMENT ON VIEW enigma.issuedlatest IS
'Most recent issued shares data for each security';

-- View: buybacksadj - Adjusted buybacks with split factors
CREATE OR REPLACE VIEW enigma.buybacksadj AS
SELECT
    buybacks.issueid,
    buybacks.effdate,
    buybacks.shares * enigma.splitadj(buybacks.issueid, buybacks.effdate) AS adj_shares,
    buybacks.amount,
    buybacks.currency
FROM enigma.buybacks;

COMMENT ON VIEW enigma.buybacksadj IS
'Share buybacks adjusted for splits and consolidations';

-- View: lookupadviser - Adviser lookup helper
CREATE OR REPLACE VIEW enigma.lookupadviser AS
SELECT
    adviserships.adviserid,
    organisations.name1 AS adviser,
    COUNT(DISTINCT adviserships.companyid) AS num_clients
FROM enigma.adviserships
    LEFT JOIN enigma.organisations ON adviserships.adviserid = organisations.personid
GROUP BY adviserships.adviserid, organisations.name1;

COMMENT ON VIEW enigma.lookupadviser IS
'Adviser summary with client counts';

-- View: dirnocname - Directors without Chinese names (data quality)
CREATE OR REPLACE VIEW enigma.dirnocname AS
SELECT
    people.personid,
    people.name1,
    people.name2
FROM enigma.people
WHERE EXISTS (
    SELECT 1 FROM enigma.directorships
    WHERE directorships.directorid = people.personid
)
AND (people.cname1 IS NULL OR people.cname1 = '');

COMMENT ON VIEW enigma.dirnocname IS
'Data quality: Directors missing Chinese names';

-- View: stockcodes1000 - Stock codes 1000 and above
CREATE OR REPLACE VIEW enigma.stockcodes1000 AS
SELECT
    stocklistings.issueid,
    stocklistings.stockcode,
    stocklistings.stockexid,
    stocklistings.firsttradedate,
    stocklistings.delistdate
FROM enigma.stocklistings
WHERE stocklistings.stockcode::integer >= 1000
    AND stocklistings.stockexid IN (1, 20, 23);

COMMENT ON VIEW enigma.stockcodes1000 IS
'Stock listings with codes 1000 and above';

-- ================================================================
-- SECTION 4: PERFORMANCE INDEX
-- ================================================================

-- Full-text search index on combined dn1/dn2 for people search
CREATE INDEX IF NOT EXISTS idx_people_ftdn_combined
  ON enigma.people
  USING gin (to_tsvector('simple'::regconfig,
    (COALESCE(dn1, '')::text || ' ' || COALESCE(dn2, '')::text)));

COMMENT ON INDEX enigma.idx_people_ftdn_combined IS
'Full-text search on combined simplified names for people search';

-- Analyze tables after creating views and indexes
ANALYZE enigma.organisations;
ANALYZE enigma.people;
ANALYZE enigma.issue;
ANALYZE enigma.stocklistings;
ANALYZE enigma.adviserships;
ANALYZE enigma.directorships;
ANALYZE ccass.quotes;

-- ================================================================
-- VERIFICATION QUERIES
-- ================================================================

-- Count functions in enigma schema (should be 21 after this migration)
DO $$
DECLARE
    func_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO func_count
    FROM pg_proc p
    JOIN pg_namespace n ON p.pronamespace = n.oid
    WHERE n.nspname = 'enigma' AND p.prokind = 'f';

    RAISE NOTICE 'Enigma functions: % (expected: 21)', func_count;
END $$;

-- Count views in enigma schema (should be 46 after this migration)
DO $$
DECLARE
    view_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO view_count
    FROM pg_views
    WHERE schemaname = 'enigma';

    RAISE NOTICE 'Enigma views: % (expected: 46)', view_count;
END $$;

-- Test critical weborgs view
DO $$
DECLARE
    test_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO test_count
    FROM enigma.weborgs
    WHERE orgid = 2983732;

    IF test_count > 0 THEN
        RAISE NOTICE '✓ weborgs view working correctly';
    ELSE
        RAISE WARNING '✗ weborgs view returned no results for test query';
    END IF;
END $$;

-- ================================================================
-- END OF MIGRATION
-- ================================================================
