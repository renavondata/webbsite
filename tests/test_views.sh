#!/usr/bin/env bash
# database/schema/views.sql against a real Postgres.
#
# The bug: enigma.hklistedordsever was a SELECT DISTINCT view, which cannot take
# a join predicate, so positions.asp's `LEFT JOIN hklistedordsever h ON
# company = h.issuer` built the whole view (~40 ms) to look up one company.
#
# Proves, in this order, because a check that has never gone red is decoration:
#   1. self-proof: joined on issuer, the old DISTINCT view is NOT driven by the
#      issuer index. If it is, the fixture no longer reproduces the bug.
#   2. views.sql replaces it in place (CREATE OR REPLACE over the old one) and
#      the join IS then driven by the issuer index.
#   3. same rows as the old definition, including the cases DISTINCT and the
#      filters existed for.
#
# Needs a Postgres reachable through the PG* env vars as a superuser, and psql/
# createdb. Nothing here touches production.
#
#     tests/test_views.sh
set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
DB=enigma_pg_viewtest
export PGHOST="${PGHOST:-localhost}" PGUSER="${PGUSER:-postgres}"

step() { echo; echo "== $*"; }
fail() { echo "FAILED: $*" >&2; exit 1; }
q() { psql -Atq -v ON_ERROR_STOP=1 -d "$DB" -c "$1"; }

step "fixture database"
dropdb --if-exists "$DB"
createdb "$DB"

# Only the columns the view reads, with the live indexes it depends on.
psql -q -v ON_ERROR_STOP=1 -d "$DB" <<'SQL'
CREATE SCHEMA enigma;
CREATE SCHEMA ccass;

CREATE TABLE enigma.issue (
    id1    integer PRIMARY KEY,
    issuer bigint   NOT NULL,
    typeid smallint NOT NULL
);
CREATE INDEX idx_17524_fk_issue_orgs ON enigma.issue (issuer);

CREATE TABLE enigma.stocklistings (
    issueid   integer NOT NULL,
    stockexid integer NOT NULL,
    "2ndCtr"  boolean NOT NULL DEFAULT false
);
CREATE INDEX idx_17986_stocklistings_issue_idx ON enigma.stocklistings (issueid);

INSERT INTO enigma.issue VALUES
    (1, 100, 0),   -- listed on Main Board AND later GEM: two rows, one issue
    (2, 100, 0),   -- only ever on a temporary counter: excluded
    (3, 100, 5),   -- listed, but not an ordinary-share type: excluded
    (4, 200, 0),   -- listed only on a board outside (1, 20, 23): excluded
    (5, 200, 42),  -- REIT board, type 42: included
    (6, 300, 0);   -- never listed: excluded
INSERT INTO enigma.stocklistings VALUES
    (1, 1, false), (1, 20, false),
    (2, 1, true),
    (3, 1, false),
    (4, 71, false),
    (5, 23, false);

-- Filler so an index is a plausible plan at all.
INSERT INTO enigma.issue SELECT g, 1000 + g, 0 FROM generate_series(10, 5009) g;
INSERT INTO enigma.stocklistings SELECT g, 1, false FROM generate_series(10, 5009) g;
ANALYZE;

-- The old definition, exactly as webbsite/sql/position_summary_functions.sql had it.
CREATE VIEW enigma.hklistedordsever AS
SELECT DISTINCT sl.issueid, i.issuer
FROM enigma.stocklistings sl
JOIN enigma.issue i ON sl.issueid = i.id1
WHERE sl.stockexid IN (1, 20, 23)
  AND sl."2ndCtr" = FALSE
  AND i.typeid IN (0, 6, 7, 8, 10, 42);
CREATE TABLE old_rows AS SELECT * FROM enigma.hklistedordsever;

-- positions.asp's shape: one company, joined on issuer.
CREATE TABLE d (company bigint);
INSERT INTO d VALUES (100);
ANALYZE d;
SQL

# Plans are compared with every alternative to a parameterised nested loop
# switched off, so the only question left is whether the view CAN take the
# predicate -- not what a tiny fixture happens to make cheapest.
plan() {
    psql -Atq -v ON_ERROR_STOP=1 -d "$DB" <<'SQL'
SET enable_seqscan = off; SET enable_hashjoin = off; SET enable_mergejoin = off;
EXPLAIN (COSTS OFF) SELECT h.issueid FROM d LEFT JOIN enigma.hklistedordsever h ON d.company = h.issuer;
SQL
}
PUSHED='Index Cond: (issuer = d.company)'

step "1. self-proof: the old DISTINCT view is not driven by the issuer index"
old_plan=$(plan)
if grep -qF "$PUSHED" <<<"$old_plan"; then
    echo "$old_plan"
    fail "the old view already takes the join predicate; the fixture no longer reproduces the bug"
fi
echo "ok: old plan has no '$PUSHED'"

step "2. views.sql replaces it in place and the join is driven by the issuer index"
psql -q -v ON_ERROR_STOP=1 -d "$DB" -f "$ROOT/database/schema/views.sql"
new_plan=$(plan)
grep -qF "$PUSHED" <<<"$new_plan" || { echo "$new_plan"; fail "new view is not driven by the issuer index"; }
echo "ok: new plan has '$PUSHED'"

step "3. same rows as the old definition"
extra=$(q "SELECT count(*) FROM (SELECT * FROM enigma.hklistedordsever EXCEPT SELECT * FROM old_rows) x")
missing=$(q "SELECT count(*) FROM (SELECT * FROM old_rows EXCEPT SELECT * FROM enigma.hklistedordsever) x")
dupes=$(q "SELECT count(*) - count(DISTINCT (issueid, issuer)) FROM enigma.hklistedordsever")
fixture=$(q "SELECT string_agg(issueid || ':' || issuer, ' ' ORDER BY issueid) FROM enigma.hklistedordsever WHERE issueid < 10")
[ "$extra" = 0 ] || fail "$extra rows the old view did not have"
[ "$missing" = 0 ] || fail "$missing rows of the old view are gone"
[ "$dupes" = 0 ] || fail "$dupes duplicate rows (the old view was DISTINCT)"
[ "$fixture" = "1:100 5:200" ] || fail "fixture rows are '$fixture', want '1:100 5:200'"
echo "ok: identical rows, no duplicates, fixture = $fixture"

dropdb "$DB"
echo
echo "PASS"
