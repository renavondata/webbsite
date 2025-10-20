-- CCASS Schema Views Migration
-- Generated from MySQL dump: ccassStructure-2025-10-11-600.sql
-- Total: 3 views
-- Date: 2025-10-20

SET search_path TO ccass, enigma, public;

-- ============================================================
-- CCASS Views
-- ============================================================

-- View: maxdate
-- No dependencies
CREATE OR REPLACE VIEW ccass.maxdate AS
select ccass.holdings.partID AS partID,ccass.holdings.issueID AS issueID,max(ccass.holdings.atDate) AS "Max(atDate)" from ccass.holdings group by ccass.holdings.partID,ccass.holdings.issueID;

-- View: holdingsperdate
-- No dependencies
CREATE OR REPLACE VIEW ccass.holdingsperdate AS
select ccass.holdings.atDate AS Atdate,count(ccass.holdings.holding) AS "Count(holding)" from ccass.holdings group by ccass.holdings.atDate order by ccass.holdings.atDate;

-- View: latestholdings
-- Depends on: maxdate (must be created first)
CREATE OR REPLACE VIEW ccass.latestholdings AS
select ccass.holdings.partID AS partID,ccass.holdings.issueID AS issueID,ccass.holdings.holding AS holding,ccass.holdings.atDate AS atDate from ccass.maxdate join ccass.holdings on(((ccass.maxdate."Max(atDate)" = ccass.holdings.atDate) and (ccass.maxdate.issueID = ccass.holdings.issueID) and (ccass.maxdate.partID = ccass.holdings.partID))) where (ccass.holdings.holding > 0);

