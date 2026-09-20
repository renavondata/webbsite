#!/usr/bin/env bash
# database/schema/functions.sql against a real Postgres.
#
# The bug (WEBBSITE-1E/1F): enigma.totret/cagret/cagrel divide by the first
# closing price. In MySQL, where these bodies were written, `x / 0` is NULL; in
# PostgreSQL it raises division_by_zero, so ONE security priced at 0 aborted the
# whole SELECT and listed.asp?e=m&t=w rendered an empty table.
#
# This proves three things, in this order, because a check that has never gone
# red is decoration:
#   1. self-proof: the pre-fix bodies (inlined below, exactly as the live
#      database had them) raise on the zero-price row. If they do NOT raise,
#      the fixture no longer reproduces the bug and the rest is vacuous.
#   2. functions.sql returns NULL for that row instead of raising.
#   3. functions.sql did not change the answer for a normal row.
#
# Needs a Postgres reachable through the PG* env vars as a superuser, and psql/
# createdb. Nothing here touches production.
#
#     tests/test_return_functions.sh
set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
DB=enigma_pg_functest
export PGHOST="${PGHOST:-localhost}" PGUSER="${PGUSER:-postgres}"

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

step() { echo; echo "== $*"; }
fail() { echo "FAILED: $*" >&2; exit 1; }
q() { psql -Atq -v ON_ERROR_STOP=1 -d "$DB" -c "$1"; }

step "fixture database"
dropdb --if-exists "$DB"
createdb "$DB"

# The fixture is the part of the schema these functions read: quotes, the
# adjustment table getAdjust falls back from, and the two date helpers. The
# helpers are copied from the live database unchanged -- they are not what is
# being fixed, and a divergent copy would prove nothing.
psql -q -v ON_ERROR_STOP=1 -d "$DB" <<'SQL'
CREATE SCHEMA ccass;
CREATE SCHEMA enigma;

CREATE TABLE ccass.quotes (
    issueID  integer NOT NULL,
    atDate   date    NOT NULL,
    closing  double precision,
    noclose  boolean NOT NULL DEFAULT false,
    PRIMARY KEY (issueID, atDate)
);

CREATE TABLE enigma.adjustments (
    issueID   integer NOT NULL,
    exDate    date    NOT NULL,
    cumAdjust double precision NOT NULL,
    PRIMARY KEY (issueID, exDate)
);

CREATE FUNCTION ccass.firstQuoteDate(i integer, d date) RETURNS date
 LANGUAGE plpgsql STABLE AS $$
DECLARE answer DATE;
BEGIN
    SELECT MIN(atDate) INTO answer FROM ccass.quotes
    WHERE issueID = i AND noclose = false AND atDate >= d;
    RETURN answer;
END; $$;

CREATE FUNCTION ccass.lastQuoteDate(i integer, d date) RETURNS date
 LANGUAGE plpgsql STABLE AS $$
DECLARE answer DATE;
BEGIN
    SELECT MAX(atDate) INTO answer FROM ccass.quotes
    WHERE issueID = i AND noclose = false AND atDate <= d;
    RETURN answer;
END; $$;

CREATE FUNCTION enigma.getAdjust(i integer, d date) RETURNS double precision
 LANGUAGE plpgsql STABLE AS $$
BEGIN
    RETURN COALESCE((SELECT cumAdjust FROM enigma.adjustments
                     WHERE issueID = i AND exDate <= d
                     ORDER BY exDate DESC LIMIT 1), 1.0);
END; $$;

-- issue 1: an ordinary security. 2.0 -> 3.0 over 517 days.
-- issue 2: warrant 2461's shape -- a real quote (noclose = false) of 0 on the
--          first day, which is what fired in production.
-- issue 5295: the Tracker Fund, cagrel's benchmark.
INSERT INTO ccass.quotes (issueID, atDate, closing) VALUES
    (1,    DATE '2020-01-01',  2.0), (1,    DATE '2021-06-01',  3.0),
    (2,    DATE '2020-01-01',  0.0), (2,    DATE '2021-06-01',  5.0),
    (5295, DATE '2020-01-01', 20.0), (5295, DATE '2021-06-01', 22.0);
SQL

# The bodies as they stood before the fix, so step 1 tests the real thing.
cat > "$TMP/prefix.sql" <<'SQL'
CREATE OR REPLACE FUNCTION enigma.totret(id integer, fromdate date, todate date)
 RETURNS double precision LANGUAGE plpgsql STABLE AS $function$
DECLARE
    answer DOUBLE PRECISION; firstQFD DATE; lastQTD DATE;
    firstQF DOUBLE PRECISION; lastQT DOUBLE PRECISION;
BEGIN
    IF toDate IS NULL THEN toDate := CURRENT_DATE; END IF;
    IF fromDate IS NULL THEN fromDate := '1994-01-03'; END IF;
    firstQFD := ccass.firstQuoteDate(ID, fromDate);
    lastQTD := ccass.lastQuoteDate(ID, toDate);
    IF lastQTD > firstQFD THEN
        SELECT closing INTO firstQF FROM ccass.quotes
        WHERE issueID = ID AND atDate = firstQFD;
        SELECT closing INTO lastQT FROM ccass.quotes
        WHERE issueID = ID AND atDate = lastQTD;
        answer := enigma.getAdjust(ID, firstQFD) / enigma.getAdjust(ID, lastQTD) * lastQT / firstQF;
    END IF;
    RETURN answer;
END; $function$;
SQL

step "1. self-proof: the pre-fix body raises on the zero first close"
psql -q -v ON_ERROR_STOP=1 -d "$DB" -f "$TMP/prefix.sql"
q "SELECT enigma.totret(1, DATE '2020-01-01', DATE '2021-06-01')" >/dev/null \
    || fail "self-proof: the pre-fix body could not even compute the normal row"
if q "SELECT enigma.totret(2, DATE '2020-01-01', DATE '2021-06-01')" >/dev/null 2>&1; then
    fail "self-proof: the pre-fix body did NOT raise -- the fixture no longer reproduces the bug"
fi
echo "  pre-fix body raises division_by_zero, as in production"

step "2. functions.sql: zero first close is NULL, not an error"
psql -q -v ON_ERROR_STOP=1 -d "$DB" -f "$ROOT/database/schema/functions.sql"
for fn in totret cagret cagrel; do
    got=$(q "SELECT COALESCE(enigma.$fn(2, DATE '2020-01-01', DATE '2021-06-01')::text, 'NULL')") \
        || fail "$fn still raises on the zero first close"
    [ "$got" = "NULL" ] || fail "$fn on a zero first close: got '$got', want NULL"
    echo "  $fn -> NULL"
done

step "3. functions.sql: a normal row is unchanged"
# totret = adj ratio (1) * 3.0 / 2.0 = 1.5; 517 days between the two quotes.
# cagret = 1.5 ^ (365.25/517); cagrel = (1.5 / (22/20)) ^ (365.25/517).
check_val() {
    got=$(q "SELECT round(enigma.$1(1, DATE '2020-01-01', DATE '2021-06-01')::numeric, 6)") \
        || fail "$1 raised on the normal row"
    [ "$got" = "$2" ] || fail "$1 on the normal row: got '$got', want '$2'"
    echo "  $1 = $got"
}
want_cagret=$(q "SELECT round(POWER(1.5, 365.25/517.0)::numeric, 6)")
want_cagrel=$(q "SELECT round(POWER(1.5 / (22.0/20.0), 365.25/517.0)::numeric, 6)")
check_val totret 1.500000
check_val cagret "$want_cagret"
check_val cagrel "$want_cagrel"

step "4. applies onto a database that names the parameter differently"
# migrations/002 spells it issueid_param, and CREATE OR REPLACE cannot rename a
# parameter -- without the conditional DROP this file fails outright, so converge
# would fail every tick and the guard would never land on a rebuilt database.
psql -q -v ON_ERROR_STOP=1 -d "$DB" -c "DROP FUNCTION enigma.totret(integer, date, date)"
psql -q -v ON_ERROR_STOP=1 -d "$DB" <<'SQL'
CREATE FUNCTION enigma.totret(issueid_param integer, fromdate date, todate date)
 RETURNS double precision LANGUAGE plpgsql STABLE AS $function$
BEGIN RETURN 42; END; $function$;
SQL
psql -q -v ON_ERROR_STOP=1 -d "$DB" -f "$ROOT/database/schema/functions.sql" \
    || fail "functions.sql could not apply over the issueid_param signature"
got=$(q "SELECT pg_get_function_arguments('enigma.totret(integer,date,date)'::regprocedure)")
[ "$got" = "id integer, fromdate date, todate date" ] \
    || fail "parameter not renamed: got '$got'"
got=$(q "SELECT COALESCE(enigma.totret(2, DATE '2020-01-01', DATE '2021-06-01')::text, 'NULL')")
[ "$got" = "NULL" ] || fail "after the rename, the guard is not live: got '$got'"
echo "  dropped the clashing signature and applied the guarded body"

step "5. re-applying is a no-op (converge runs this on every tick)"
psql -q -v ON_ERROR_STOP=1 -d "$DB" -f "$ROOT/database/schema/functions.sql" \
    || fail "functions.sql is not re-appliable"
echo "  second apply clean"

step "6. a zero cumAdjust divisor is guarded too"
psql -q -v ON_ERROR_STOP=1 -d "$DB" \
    -c "INSERT INTO enigma.adjustments VALUES (1, DATE '2021-01-01', 0)"
got=$(q "SELECT COALESCE(enigma.totret(1, DATE '2020-01-01', DATE '2021-06-01')::text, 'NULL')") \
    || fail "totret raises when cumAdjust is 0"
[ "$got" = "NULL" ] || fail "totret with a zero cumAdjust: got '$got', want NULL"
echo "  totret -> NULL"

dropdb --if-exists "$DB"
echo
echo "all checks passed"
