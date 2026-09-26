-- Position Summary Helper Functions for possum.asp
-- These functions support the Position Summary Analysis page

-- Function: service(apptDate, resDate, snap)
-- Calculate service years between appointment and resignation dates
-- If still serving (resDate is NULL or future), calculate to snap date
CREATE OR REPLACE FUNCTION enigma.service(
    apptDate DATE,
    resDate DATE,
    snap DATE
)
RETURNS DOUBLE PRECISION
LANGUAGE plpgsql IMMUTABLE
AS $$
DECLARE
    answer DOUBLE PRECISION := NULL;
BEGIN
    IF apptDate IS NOT NULL AND (resDate IS NULL OR resDate <> '1000-01-01'::DATE) THEN
        IF resDate IS NOT NULL AND resDate < snap THEN
            answer := (resDate - apptDate) / 365.25;
        ELSE
            answer := (snap - apptDate) / 365.25;
        END IF;
    END IF
;
    RETURN answer;
END;
$$;

-- Function: MSdateAcc(d, accuracy)
-- Format date based on accuracy level from dateaccuracy table
-- accuracy: 0=exact day, 1=year only, 2=month, 3=unknown, 4=year (before), 5=month (before)
CREATE OR REPLACE FUNCTION enigma.MSdateAcc(
    d DATE,
    a SMALLINT
)
RETURNS VARCHAR(10)
LANGUAGE plpgsql IMMUTABLE
AS $$
BEGIN
    CASE
        WHEN a = 3 THEN RETURN 'U';  -- Unknown
        WHEN d IS NULL THEN RETURN '';
        WHEN a IN (1, 4) THEN RETURN TO_CHAR(d, 'YYYY');  -- Year only
        WHEN a IN (2, 5) THEN RETURN TO_CHAR(d, 'YYYY-MM');  -- Month precision
        ELSE RETURN TO_CHAR(d, 'YYYY-MM-DD');  -- Exact day
    END CASE;
END;
$$;

-- Function: orgName(personID, date)
-- Get organization name as it was at a specific date
-- Looks up old names from namechanges table, falls back to current name
--
-- personID is BIGINT to match enigma.organisations.personid; an INT overload
-- previously installed here couldn't resolve calls with bigint arguments
-- (company/orgid columns), raising "function ... does not exist".
DROP FUNCTION IF EXISTS enigma.orgName(INT, DATE);

CREATE OR REPLACE FUNCTION enigma.orgName(
    p BIGINT,
    d DATE
)
RETURNS VARCHAR(255)
LANGUAGE plpgsql STABLE
AS $$
DECLARE
    n VARCHAR(255);
BEGIN
    -- Try to find old name that was in effect at date d
    SELECT COALESCE(
        (SELECT oldName
         FROM enigma.namechanges
         WHERE oldName IS NOT NULL
           AND dateChanged >= d
           AND personID = p
         ORDER BY dateChanged
         LIMIT 1),
        (SELECT name1 FROM enigma.organisations WHERE personID = p)
    ) INTO n;

    RETURN n;
END;
$$;

-- View enigma.hklistedordsever lives in database/schema/views.sql, which
-- converge applies. Its old DISTINCT definition here could not take a join
-- predicate; re-running this file must not bring it back.

-- Grant permissions
-- Argument lists are explicit because enigma.MSdateAcc has a second,
-- separately-installed (DATE, INTEGER) overload (used by call sites that
-- pass a bare integer literal) -- an unqualified GRANT is ambiguous once
-- both overloads exist and aborts the rest of this script.
GRANT EXECUTE ON FUNCTION enigma.service(DATE, DATE, DATE) TO PUBLIC;
GRANT EXECUTE ON FUNCTION enigma.MSdateAcc(DATE, SMALLINT) TO PUBLIC;
GRANT EXECUTE ON FUNCTION enigma.orgName(BIGINT, DATE) TO PUBLIC;
