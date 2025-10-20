-- Enigma Schema Custom Functions Migration
-- Port MySQL functions to PostgreSQL
-- Date: 2025-10-20

SET search_path TO enigma, public;

-- ============================================================
-- Function: MSdateAcc
-- Purpose: Format date based on accuracy level
-- Usage: Used in auditorchanges view and others
-- ============================================================

CREATE OR REPLACE FUNCTION enigma.MSdateAcc(d DATE, a INTEGER)
RETURNS VARCHAR(10)
LANGUAGE plpgsql
IMMUTABLE
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

-- ============================================================
-- Function: nameppl
-- Purpose: Concatenate person name parts (Last, First format)
-- Usage: Used in dirnocname and many other views (13 occurrences)
-- ============================================================

CREATE OR REPLACE FUNCTION enigma.nameppl(n1 VARCHAR(255), n2 VARCHAR(255))
RETURNS VARCHAR(255)
LANGUAGE sql
IMMUTABLE
AS $$
    SELECT n1 || COALESCE(', ' || n2, '')
$$;

-- ============================================================
-- Function: fnameppl (variant with Chinese name support)
-- Purpose: Format person name with optional Chinese name
-- Usage: Similar to nameppl but includes Chinese name fallback
-- ============================================================

-- Note: fnameppl definition would go here if needed
-- For now, focusing on the two functions actually used in views

-- ============================================================
-- Missing Functions (Not Yet Ported)
-- ============================================================

-- The following functions are used in lower-priority views:
-- - STOCKCODETHEN(issueID, date) - Get stock code at specific date (used in buybacksadj)
-- - SPLITADJ(issueID, date) - Split adjustment factor (used in buybacksadj)
-- - OUTSTANDING(issueID, date) - Outstanding shares (used in currentlistedshareshk)
--
-- These functions are not defined in the MySQL dump and may be defined
-- in VB.NET code or stored procedures. They can be ported when needed
-- for the views that use them.
