#!/usr/bin/env bash
# The loader validation ladder from tests/refresh/README.md as one script, so CI
# and an operator run the identical thing. Needs a Postgres reachable through the
# PG* env vars as a superuser (PGHOST/PGUSER/PGPASSWORD), psql/createdb, and uv.
#
# Creates (dropping first) the fixture database enigma_pg_refreshtest, then:
#   1. role parity: DELETE / TRUNCATE / DROP must all be denied to webbsite_refresh
#   2. happy path: --dry-run (rollback), real load (commit), rerun ("up to date")
#   3. quarantine: --poison (one bigchanges row with |stkchg| > 100) must exit 0,
#      load the other seven datasets, and leave that row out
#   4. negatives: --bad-counts, --pre-freeze, missing log key -- each must exit 1
#      and leave the watermarks and row counts untouched
# Any deviation exits non-zero with the step named. Nothing here touches R2 or
# the droplet; HC_URL is unset so the loader's ping is a no-op.
set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/../.." && pwd)"
DB=enigma_pg_refreshtest
FIX="${FIXTURE_DIR:-$(mktemp -d)}"
export PGHOST="${PGHOST:-localhost}" PGUSER="${PGUSER:-postgres}"
LOADER_URL="postgresql://webbsite_refresh:refreshtest@${PGHOST}:${PGPORT:-5432}/$DB"

step() { echo; echo "== $*"; }
fail() { echo "LADDER FAILED at: $*" >&2; exit 1; }

step "fixture database"
dropdb --if-exists "$DB"
createdb "$DB"
psql -q -v ON_ERROR_STOP=1 -d "$DB" -f "$HERE/schema_fixture.sql"
psql -q -v ON_ERROR_STOP=1 -d "$DB" -c "INSERT INTO enigma.issue (id1) VALUES (1001), (1002);"

step "role parity: the loader role cannot DELETE / TRUNCATE / DROP"
for sql in "DELETE FROM ccass.quotes" "TRUNCATE ccass.quotes" "DROP TABLE ccass.quotes"; do
    if PGPASSWORD=refreshtest psql -q -U webbsite_refresh -d "$DB" -c "$sql" 2>/dev/null; then
        fail "role parity: '$sql' was ALLOWED"
    fi
    echo "  denied: $sql"
done

reset_watermarks() {
    psql -q -v ON_ERROR_STOP=1 -d "$DB" -c "UPDATE enigma.log SET val='2025-10-17' WHERE name='CCASSdateDone';" \
        -c "UPDATE enigma.log SET val='2025-10-10' WHERE name IN ('MBquotesDate','GEMquotesDate');"
}
watermark() { psql -Atq -d "$DB" -c "SELECT val FROM enigma.log WHERE name='MBquotesDate'"; }
rows() { psql -Atq -d "$DB" -c "SELECT count(*) FROM ccass.quotes"; }
loader() { (cd "$ROOT" && DATABASE_URL="$LOADER_URL" REFRESH_USERID=99 HC_URL='' uv run --script scripts/refresh/refresh.py "$@"); }
fixture() { (cd "$ROOT" && uv run --script tests/refresh/make_fixture.py "$@"); }

step "happy path"
fixture "$FIX/good" >/dev/null
loader --dry-run --source "$FIX/good" || fail "dry-run exit $?"
[ "$(rows)" = 0 ] || fail "dry-run committed rows"
loader --source "$FIX/good" || fail "load exit $?"
[ "$(rows)" -gt 0 ] || fail "load committed nothing"
[ "$(watermark)" != "2025-10-10" ] || fail "load did not advance MBquotesDate"
after_rows=$(rows); after_wm=$(watermark)
loader --source "$FIX/good" || fail "rerun exit $?"
[ "$(rows)" = "$after_rows" ] && [ "$(watermark)" = "$after_wm" ] || fail "rerun was not a no-op"
echo "  quarantine: $(psql -Atq -d "$DB" -c "SELECT count(*) FROM enigma.issuedshares WHERE issueid = 9000001") row(s) with the minted id in issuedshares (want 0)"
[ "$(psql -Atq -d "$DB" -c "SELECT count(*) FROM enigma.issuedshares WHERE issueid = 9000001")" = 0 ] || fail "minted issueid was not quarantined"

step "quarantine: --poison loads everything except the outlier row"
reset_watermarks
fixture "$FIX/poison" --poison >/dev/null
before_big=$(psql -Atq -d "$DB" -c "SELECT count(*) FROM ccass.bigchanges WHERE abs(stkchg) > 100")
loader --source "$FIX/poison" 2> "$FIX/poison.log" || fail "--poison: expected exit 0, got $?"
grep -q "quarantined 1 rows" "$FIX/poison.log" || fail "--poison: no quarantine line in the log"
[ "$(psql -Atq -d "$DB" -c "SELECT count(*) FROM ccass.bigchanges WHERE abs(stkchg) > 100")" = "$before_big" ] || fail "--poison: outlier row was loaded"
[ "$(watermark)" != "2025-10-10" ] || fail "--poison: the clean datasets were not loaded"
echo "  --poison: exit 0, outlier quarantined, the rest loaded"

step "negatives: each exits 1 with nothing committed"
for flag in --bad-counts --pre-freeze; do
    reset_watermarks
    before=$(rows)
    fixture "$FIX/neg$flag" "$flag" >/dev/null
    set +e; loader --source "$FIX/neg$flag"; rc=$?; set -e
    [ $rc -eq 1 ] || fail "$flag: expected exit 1, got $rc"
    [ "$(rows)" = "$before" ] || fail "$flag: rows changed"
    [ "$(watermark)" = "2025-10-10" ] || fail "$flag: watermark advanced"
    echo "  $flag: exit 1, nothing committed"
done
reset_watermarks
psql -q -v ON_ERROR_STOP=1 -d "$DB" -c "DELETE FROM enigma.log WHERE name='GEMquotesDate';"
set +e; loader --source "$FIX/good"; rc=$?; set -e
[ $rc -ne 0 ] || fail "missing log key: expected non-zero"
echo "  missing log key: exit $rc"

echo; echo "LADDER PASSED"
