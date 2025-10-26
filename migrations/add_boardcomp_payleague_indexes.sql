-- Migration: Add indexes for boardcomp.asp and payleague.asp performance
-- Date: 2025-10-26
-- Purpose: Optimize queries for board composition and director pay league tables

-- Index for directorships date filtering (used in boardcomp WHERE clause)
-- Speeds up queries filtering directors active at a specific date
CREATE INDEX IF NOT EXISTS idx_directorships_dates
ON enigma.directorships (company, apptdate, resdate);

-- Index for stocklistings date filtering with 2ndCtr exclusion
-- Critical for finding active listings at a given date
CREATE INDEX IF NOT EXISTS idx_stocklistings_dates
ON enigma.stocklistings (issueid, firsttradedate, delistdate)
WHERE "2ndCtr" = FALSE;

-- Index for issue type and issuer filtering
-- Speeds up filtering by security type (excluding warrants, etc.)
CREATE INDEX IF NOT EXISTS idx_issue_type_issuer
ON enigma.issue (typeid, issuer, id1);

-- Composite index for stocklistings common query pattern
-- Covers the most common filters in board/listing queries
CREATE INDEX IF NOT EXISTS idx_stocklistings_composite
ON enigma.stocklistings (stockexid, issueid, firsttradedate, delistdate)
WHERE "2ndCtr" = FALSE;

-- Index for stockcode lookups (used in boardcomp for sorting)
CREATE INDEX IF NOT EXISTS idx_stocklistings_stockcode
ON enigma.stocklistings (stockcode, stockexid);

-- Index for pay table year filtering
-- Speeds up payleague queries filtering by financial year
CREATE INDEX IF NOT EXISTS idx_pay_year_prank
ON enigma.pay (EXTRACT(YEAR FROM d), prank, orgid, pplid);

-- Index for pay table with currency
-- Speeds up currency conversion joins
CREATE INDEX IF NOT EXISTS idx_pay_d_currid
ON enigma.pay (d, currid, orgid);

-- Index for payfx currency conversion lookups
CREATE INDEX IF NOT EXISTS idx_payfx_lookup
ON enigma.payfx (d, repcurr, dispcurr);

-- Index for documents pay flag
-- Speeds up filtering companies with pay data
CREATE INDEX IF NOT EXISTS idx_documents_pay_filter
ON enigma.documents (orgid, doctypeid, recorddate, pay);

-- Analyze tables to update statistics after creating indexes
ANALYZE enigma.directorships;
ANALYZE enigma.stocklistings;
ANALYZE enigma.issue;
ANALYZE enigma.pay;
ANALYZE enigma.payfx;
ANALYZE enigma.documents;
