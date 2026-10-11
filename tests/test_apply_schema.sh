#!/usr/bin/env bash
# scripts/apply_schema.sh against a real Postgres.
#
# Proves, in order: a dry run changes nothing and says what it would apply; a
# real run applies both files (three guarded functions, the view stamped with
# views.sql's sha256); a second run is a no-op; a drifted stamp re-applies the
# view; an apply that fails, and a database that cannot be asked, both exit
# non-zero (unless UNREACHABLE_OK); QUIET silences a no-op; converge.sh has no
# copy of its own. Peer auth is replaced by the PG* env vars, which psql honours.
#
# Needs a Postgres reachable through the PG* env vars as a superuser, and psql/
# createdb. Nothing here touches production.
#
#     tests/test_apply_schema.sh
set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
APPLY="$ROOT/scripts/apply_schema.sh"
DB=enigma_pg_applyschematest
export PGHOST="${PGHOST:-localhost}" PGUSER="${PGUSER:-postgres}"

step() { echo; echo "== $*"; }
fail() { echo "FAILED: $*" >&2; exit 1; }
q() { psql -Atq -v ON_ERROR_STOP=1 -d "$DB" -c "$1"; }
guarded() {
    q "SELECT count(*) FROM pg_proc p JOIN pg_namespace n ON n.oid = p.pronamespace
       WHERE n.nspname = 'enigma' AND p.proname IN ('totret', 'cagret', 'cagrel')
         AND p.prosrc LIKE '%NULLIF%'"
}
stamp() { q "SELECT COALESCE(obj_description(to_regclass('enigma.hklistedordsever'), 'pg_class'), '')"; }
want="views.sql sha256 $(sha256sum "$ROOT/database/schema/views.sql" | cut -c1-64)"

step "fixture database"
dropdb --if-exists "$DB"
createdb "$DB"
trap 'dropdb --if-exists "$DB"' EXIT
psql -q -v ON_ERROR_STOP=1 -d "$DB" <<'SQL'
CREATE SCHEMA enigma;
CREATE SCHEMA ccass;
CREATE TABLE enigma.issue (id1 integer PRIMARY KEY, issuer bigint NOT NULL, typeid smallint NOT NULL);
CREATE TABLE enigma.stocklistings (issueid integer NOT NULL, stockexid integer NOT NULL,
                                   "2ndCtr" boolean NOT NULL DEFAULT false);
SQL

step "dry run: reports both, changes nothing"
out=$(DB="$DB" DRY_RUN=1 "$APPLY" 2>&1) || fail "dry run exited non-zero: $out"
echo "$out"
grep -q "functions.sql: would apply" <<<"$out" || fail "dry run did not report functions.sql"
grep -q "views.sql: would apply" <<<"$out" || fail "dry run did not report views.sql"
[ "$(guarded)" = 0 ] || fail "dry run created functions"
[ "$(stamp)" = "" ] || fail "dry run created the view"

step "apply: both files land"
out=$(DB="$DB" "$APPLY" 2>&1) || fail "apply exited non-zero: $out"
echo "$out"
[ "$(guarded)" = 3 ] || fail "expected 3 guarded functions, got $(guarded)"
[ "$(stamp)" = "$want" ] || fail "view stamp is '$(stamp)', want '$want'"

step "second run: no-op"
out=$(DB="$DB" "$APPLY" 2>&1) || fail "second run exited non-zero: $out"
echo "$out"
grep -q "functions.sql: up to date" <<<"$out" || fail "functions re-applied"
grep -q "views.sql: up to date" <<<"$out" || fail "view re-applied"

step "QUIET second run: silent"
out=$(DB="$DB" QUIET=1 "$APPLY" 2>&1) || fail "quiet run exited non-zero: $out"
[ -z "$out" ] || fail "QUIET no-op run printed: $out"

step "drifted stamp: view re-applied"
q "COMMENT ON VIEW enigma.hklistedordsever IS 'restored from an old dump'"
out=$(DB="$DB" "$APPLY" 2>&1) || fail "re-apply exited non-zero: $out"
echo "$out"
grep -q "views.sql: applied" <<<"$out" || fail "drifted view not re-applied"
[ "$(stamp)" = "$want" ] || fail "view not re-stamped"

step "a failed apply exits non-zero"
q "DROP TABLE enigma.stocklistings CASCADE"
if out=$(DB="$DB" "$APPLY" 2>&1); then fail "apply over a missing table exited 0: $out"; fi
echo "$out"
grep -q "views.sql: FAILED" <<<"$out" || fail "failure not reported"

step "an unreachable database exits non-zero"
if out=$(DB="${DB}_absent" "$APPLY" 2>&1); then fail "missing database exited 0: $out"; fi
echo "$out"

step "UNREACHABLE_OK: skipped, exit 0 (converge's ticks)"
out=$(DB="${DB}_absent" UNREACHABLE_OK=1 "$APPLY" 2>&1) || fail "UNREACHABLE_OK exited non-zero: $out"

step "one copy: converge.sh calls the script and carries no gate SQL of its own"
grep -q 'scripts/apply_schema.sh' "$ROOT/deploy/converge.sh" || fail "converge.sh does not call apply_schema.sh"
if grep -nE 'prosrc|hklistedordsever|views\.sql sha256' "$ROOT/deploy/converge.sh"; then
    fail "converge.sh still has its own copy of the gates"
fi

echo
echo "apply_schema.sh: all checks passed"
