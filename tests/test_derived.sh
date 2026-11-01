#!/usr/bin/env bash
# scripts/build_derived.sh and scripts/db_build.sh against a real Postgres.
#
# Proves, in order (a check that has never gone red is decoration):
#   1. self-proof: on a fresh database the derived tables are reported missing
#      (--check exits 1, --needed says build), and so are the fixture indexes.
#   2. db_build.sh builds the missing index and people_search from scratch; then
#      everything is fresh and --needed says nothing to do (the cold-start path a
#      restored box takes).
#   3. the built table has one row per (lexeme, person), in key order, with the
#      tokfreq counts, the renamed index, and the schema owner.
#   4. a second run is a no-op (the build stamp is unchanged).
#   5. a new person (the fingerprint moves) makes it stale; --stale rebuilds it.
#   6. an emptied table (a restore with --exclude-table-data) is rebuilt; a
#      leftover _new table from a crashed build is replaced, not tripped over.
#   7. an INVALID index of a declared name is dropped and rebuilt.
#
# Needs a Postgres reachable through the PG* env vars as a superuser, and psql/
# createdb. Nothing here touches production.
#
#     tests/test_derived.sh
set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
DB=enigma_pg_derivedtest
export PGHOST="${PGHOST:-localhost}" PGUSER="${PGUSER:-postgres}"
WORK=$(mktemp -d)
trap 'dropdb --if-exists "$DB" >/dev/null 2>&1; rm -rf "$WORK"' EXIT

export DB PSQL_CMD=psql STATE_DIR="$WORK/state" INDEXES_SQL="$WORK/indexes.sql"
BD="$ROOT/scripts/build_derived.sh"
DBB="$ROOT/scripts/db_build.sh"

step() { echo; echo "== $*"; }
fail() { echo "FAILED: $*" >&2; exit 1; }
q() { psql -Atq -v ON_ERROR_STOP=1 -d "$DB" -c "$1"; }
rc_of() { set +e; "$@" >/dev/null 2>&1; local r=$?; set -e; echo "$r"; }

step "fixture database"
dropdb --if-exists "$DB"
createdb "$DB"
psql -q -v ON_ERROR_STOP=1 -d "$DB" <<'SQL'
CREATE SCHEMA enigma;
CREATE SCHEMA ccass;
CREATE TABLE enigma.people (
    personid bigint PRIMARY KEY, name1 varchar(90) NOT NULL, name2 varchar(63),
    cname varchar(20), yob integer, mob smallint, dob smallint,
    dn1 varchar(90) NOT NULL, dn2 varchar(63));
INSERT INTO enigma.people VALUES
    (1, 'Chan', 'Tai Man', NULL, 1950, 1, 2, 'Chan', 'Tai Man'),
    (2, 'Chan', 'Jayne', NULL, NULL, NULL, NULL, 'Chan', 'Jayne'),
    (3, 'Smith', 'John', NULL, 1970, NULL, NULL, 'Smith', 'John'),
    (4, 'Lee', NULL, NULL, NULL, NULL, NULL, 'Lee', NULL),
    (5, 'Wong', 'Xiao-Ping', NULL, NULL, NULL, NULL, 'Wong', 'Xiao-Ping');
SQL
echo "CREATE INDEX IF NOT EXISTS idx_people_dn1_test ON enigma.people (dn1);" > "$INDEXES_SQL"

step "1. self-proof: a fresh database needs everything"
[ "$(rc_of "$BD" --check people_search)" = 1 ] || fail "--check did not report a missing table"
[ "$(rc_of "$BD" --needed)" = 0 ] || fail "--needed did not ask for a build"
[ "$(rc_of "$DBB" --needed)" = 0 ] || fail "db_build --needed did not ask for a build"

step "2. db_build.sh builds from scratch, then nothing is needed"
"$DBB" || fail "db_build.sh failed"
[ "$(rc_of "$BD" --check people_search)" = 0 ] || fail "not fresh after the build"
[ "$(rc_of "$DBB" --needed)" = 1 ] || fail "db_build --needed still asks for a build"
[ "$(q "SELECT count(*) FROM pg_indexes WHERE indexname = 'idx_people_dn1_test'")" = 1 ] \
    || fail "the declared index was not built"
[ ! -e "$STATE_DIR/failed" ] || fail "a successful run left a failure marker"

step "3. contents"
want=$(q "SELECT count(*) FROM enigma.people p, unnest(tsvector_to_array(to_tsvector('simple',
          COALESCE(p.dn1,'') || ' ' || COALESCE(p.dn2,''))))")
[ "$(q "SELECT count(*) FROM enigma.people_search")" = "$want" ] || fail "row count != lexeme count"
[ "$(q "SELECT string_agg(personid::text, ',' ORDER BY name1, name2, personid)
        FROM enigma.people_search WHERE token = 'chan'")" = "2,1" ] || fail "token 'chan' rows wrong"
[ "$(q "SELECT n FROM enigma.people_tokfreq WHERE token = 'chan'")" = 2 ] || fail "tokfreq wrong"
[ "$(q "SELECT count(*) FROM enigma.people_search WHERE token = 'xiao-ping'")" = 1 ] \
    || fail "hyphenated name lexeme missing"
[ "$(q "SELECT count(*) FROM pg_indexes WHERE indexname IN ('people_search_key', 'people_tokfreq_pkey')")" = 2 ] \
    || fail "indexes not renamed into place"
[ "$(q "SELECT count(*) FROM pg_class WHERE relname LIKE 'people\_%\_new%'")" = 0 ] \
    || fail "_new objects left behind"
[ "$(q "SELECT tableowner FROM pg_tables WHERE tablename = 'people_search'")" \
  = "$(q "SELECT pg_get_userbyid(nspowner) FROM pg_namespace WHERE nspname = 'enigma'")" ] \
    || fail "owner is not the schema owner"

step "4. a second run is a no-op"
before=$(q "SELECT obj_description('enigma.people_search'::regclass, 'pg_class')")
"$BD" --stale || fail "--stale failed on a fresh table"
[ "$(q "SELECT obj_description('enigma.people_search'::regclass, 'pg_class')")" = "$before" ] \
    || fail "--stale rebuilt a fresh table"

step "5. a new person makes it stale; --stale rebuilds"
q "INSERT INTO enigma.people VALUES (6, 'Ng', 'Jayne', NULL, NULL, NULL, NULL, 'Ng', 'Jayne')"
[ "$(rc_of "$BD" --check people_search)" = 1 ] || fail "a moved fingerprint was not stale"
"$BD" --stale || fail "--stale rebuild failed"
[ "$(q "SELECT n FROM enigma.people_tokfreq WHERE token = 'jayne'")" = 2 ] || fail "rebuild missed the new person"

step "6. emptied (restore) and crashed-build leftovers"
q "TRUNCATE enigma.people_search"
[ "$(rc_of "$BD" --check people_search)" = 1 ] || fail "an empty table was not stale"
q "CREATE TABLE enigma.people_search_new (junk int)"
"$BD" --stale || fail "rebuild over a leftover _new failed"
[ "$(rc_of "$BD" --check people_search)" = 0 ] || fail "not fresh after the rebuild"

step "7. an INVALID declared index is dropped and rebuilt"
q "UPDATE pg_index SET indisvalid = false WHERE indexrelid = 'enigma.idx_people_dn1_test'::regclass"
[ "$(rc_of "$DBB" --needed)" = 0 ] || fail "an invalid index was not reported"
"$DBB" || fail "db_build.sh failed on an invalid index"
[ "$(q "SELECT indisvalid FROM pg_index WHERE indexrelid = 'enigma.idx_people_dn1_test'::regclass")" = t ] \
    || fail "the invalid index was not rebuilt"

echo
echo PASS
