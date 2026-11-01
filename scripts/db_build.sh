#!/usr/bin/env bash
# Bring the database's derived objects up to what git declares: the indexes in
# database/schema/indexes.sql and the derived tables in database/derived/.
#
# The box is cattle: a fresh box restored from the R2 dump must reach the fast
# state with no hand-run step. Converge (deploy/converge.sh) asks `db_build.sh
# --needed` every tick and, when something is missing, starts the
# webbsite-db-build unit, which runs this. It replaces "apply indexes.sql by
# hand after a restore".
#
#   db_build.sh            build what is missing (as the unit does)
#   db_build.sh --needed   exit 0 if anything is missing/invalid/stale, else 1;
#                          cheap enough for every converge tick
#
# Safety:
# - Indexes are built CONCURRENTLY (reads and writes continue). A failed
#   concurrent build leaves an INVALID index that IF NOT EXISTS would then skip
#   forever, so INVALID indexes of the names indexes.sql declares are dropped
#   (concurrently) first and rebuilt.
# - Derived tables are built into _new tables and swapped (scripts/build_derived.sh),
#   with a disk preflight: a build that could fill the disk is refused, because a
#   full disk stops Postgres.
# - It does not start while the refresh loader runs (the next tick retries).
#   Overlap the other way round is safe: CONCURRENTLY tolerates the loader's
#   writes, and the derived tables read tables the loader does not write.
# - A failure leaves a marker; converge does not retry for 6 h, so a refused
#   build cannot re-trigger every two minutes.
#
# Env: DB (default enigma), PSQL_CMD (default "runuser -u postgres -- psql"),
# STATE_DIR (default /var/lib/webbsite-db-build, the unit's StateDirectory).

set -uo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DB="${DB:-enigma}"
INDEXES_SQL="${INDEXES_SQL:-$REPO/database/schema/indexes.sql}"
STATE_DIR="${STATE_DIR:-/var/lib/webbsite-db-build}"
read -r -a PSQL <<< "${PSQL_CMD:-runuser -u postgres -- psql}"
export DB PSQL_CMD="${PSQL_CMD:-runuser -u postgres -- psql}"

log() { echo "db_build: $*" >&2; }
q() { "${PSQL[@]}" -X -Atq -v ON_ERROR_STOP=1 -d "$DB" -c "$1"; }

index_names() {   # the names indexes.sql declares (the same regex assert_box uses)
    grep -oE 'CREATE[[:space:]]+INDEX[[:space:]]+(CONCURRENTLY[[:space:]]+)?IF[[:space:]]+NOT[[:space:]]+EXISTS[[:space:]]+[A-Za-z0-9_]+' \
        "$INDEXES_SQL" | awk '{print $NF}'
}

names_array() {   # 'a','b',... for SQL
    index_names | sed "s/.*/'&'/" | paste -sd, -
}

# Indexes from indexes.sql that are missing or INVALID, as schema.name / name.
indexes_missing() {
    q "SELECT n FROM unnest(ARRAY[$(names_array)]) AS n
       WHERE NOT EXISTS (SELECT 1 FROM pg_class c JOIN pg_index i ON i.indexrelid = c.oid
                         JOIN pg_namespace s ON s.oid = c.relnamespace
                         WHERE s.nspname IN ('enigma', 'ccass') AND c.relname = n AND i.indisvalid)"
}

indexes_invalid() {
    q "SELECT s.nspname || '.' || c.relname FROM pg_class c JOIN pg_index i ON i.indexrelid = c.oid
       JOIN pg_namespace s ON s.oid = c.relnamespace
       WHERE s.nspname IN ('enigma', 'ccass') AND NOT i.indisvalid
         AND c.relname = ANY(ARRAY[$(names_array)])"
}

if [ "${1:-}" = "--needed" ]; then
    missing=$(indexes_missing) || exit 1       # cannot tell -> not needed this tick
    [ -n "$missing" ] && exit 0
    "$REPO/scripts/build_derived.sh" --needed
    exit $?
fi

if command -v systemctl >/dev/null 2>&1 && systemctl is-active --quiet webbsite-refresh.service; then
    log "the refresh loader is running; leaving this to a later tick"
    exit 0
fi

rc=0
for idx in $(indexes_invalid); do
    log "dropping INVALID index $idx (a failed concurrent build) before rebuilding it"
    q "DROP INDEX CONCURRENTLY IF EXISTS $idx" || rc=1
done
missing=$(indexes_missing)
if [ -n "$missing" ]; then
    log "building indexes: $(echo "$missing" | paste -sd' ' -)"
    { echo "SET statement_timeout = 0; SET maintenance_work_mem = '1GB';"; cat "$INDEXES_SQL"; } \
        | "${PSQL[@]}" -X -q -v ON_ERROR_STOP=1 -d "$DB" >/dev/null || { log "indexes.sql FAILED"; rc=1; }
fi

"$REPO/scripts/build_derived.sh" --stale || rc=1

mkdir -p "$STATE_DIR" 2>/dev/null
if [ "$rc" = 0 ]; then
    rm -f "$STATE_DIR/failed"
    log "done"
else
    date -u +%s > "$STATE_DIR/failed" 2>/dev/null
    log "FAILED; converge will not retry for 6 h (remove $STATE_DIR/failed to retry sooner)"
fi
exit $rc
