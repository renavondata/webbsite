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
CREATE OR REPLACE FUNCTION enigma.orgName(
    p INT,
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

-- View: hklistedordsever
-- All issueIDs that were ever HK-listed ordinary shares
-- Used to determine which directorships have performance metrics
CREATE OR REPLACE VIEW enigma.hklistedordsever AS
SELECT DISTINCT sl.issueid, i.issuer
FROM enigma.stocklistings sl
JOIN enigma.issue i ON sl.issueid = i.id1
WHERE sl.stockexid IN (1, 20, 23)  -- Main Board, GEM, REITs
  AND sl."2ndCtr" = FALSE  -- Not temporary counter
  AND i.typeid IN (0, 6, 7, 8, 10, 42);  -- Ordinary shares and related types

-- Grant permissions
GRANT EXECUTE ON FUNCTION enigma.service TO PUBLIC;
GRANT EXECUTE ON FUNCTION enigma.MSdateAcc TO PUBLIC;
GRANT EXECUTE ON FUNCTION enigma.orgName TO PUBLIC;
GRANT SELECT ON enigma.hklistedordsever TO PUBLIC;
