#!/usr/bin/env bash
# Apply database/schema/functions.sql and views.sql to the enigma database,
# idempotently. Lifted from deploy/converge.sh (which still runs the same two
# blocks on every tick by calling this script) so a deployment that does not
# run converge.sh -- any host other than the one this repo's deploy/ describes
# -- can keep the schema in step with the code by running one script after each
# update. This is the only copy of the drift gates below.
#
# Run as the postgres OS user (peer auth), e.g.
#     sudo -u postgres scripts/apply_schema.sh
#     sudo -u postgres DRY_RUN=1 scripts/apply_schema.sh
#
#   DB=enigma     database to apply to
#   DRY_RUN=1     ask the database what is out of date and say what would be
#                 applied; change nothing
#   QUIET=1       say nothing when nothing needed applying (converge's ticks)
#   UNREACHABLE_OK=1
#                 a database that cannot be asked is skipped, exit 0 (converge:
#                 mid-restart is normal and the next tick retries). Unset, a
#                 one-shot run has no next tick, so it is a failure.
#   LOG_PREFIX    prefix for log lines (default "apply_schema")
#
# Exits 0 when both files are in place (applied now or already), non-zero when
# an apply fails or (without UNREACHABLE_OK) the database cannot be asked.
#
# functions.sql (enigma.totret/cagret/cagrel): applied when the three functions
# are not all present with the right signature and a NULLIF guard in the body --
# a plain restore brings back the MySQL-era bodies whose unguarded `/ firstQF`
# takes out every page that ranks returns. Coarse on purpose, as in converge.sh;
# scripts/assert_box.py compares the whole body against the file.
#
# views.sql: applied once per version of the file. A successful apply stamps the
# file's sha256 into enigma.hklistedordsever's COMMENT; a differing stamp (an
# edit, or a restore bringing back the view unstamped) applies it again. Not
# unconditionally: CREATE OR REPLACE locks a hot view.

set -uo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DB="${DB:-enigma}"
DRY="${DRY_RUN:-}"
FN_SRC="$REPO/database/schema/functions.sql"
VIEW_SRC="$REPO/database/schema/views.sql"
QUIET="${QUIET:-}"
UNREACHABLE_OK="${UNREACHABLE_OK:-}"
rc=0

log() { echo "${LOG_PREFIX:-apply_schema}: $*" >&2; }
uptodate() { [ -n "$QUIET" ] || log "$@"; }
unreachable() {   # <what> <psql output>
    [ -n "$UNREACHABLE_OK" ] && return 0
    log "could not ask $DB about $1: $(why "$2")"
    rc=1
}
psql_db() { psql -Atq -v ON_ERROR_STOP=1 -d "$DB" "$@"; }
# psql's useful line is the ERROR/FATAL one; its last line is often the caret.
why() { printf '%s\n' "$1" | grep -m1 -E 'ERROR|FATAL' || printf '%s\n' "$1" | tail -1; }

for f in "$FN_SRC" "$VIEW_SRC"; do
    [ -f "$f" ] || { log "FATAL: missing $f"; exit 1; }
done

# --- functions.sql ------------------------------------------------------------
if ! guarded=$(psql_db -c "SELECT count(*) FROM pg_proc p \
        JOIN pg_namespace n ON n.oid = p.pronamespace \
        WHERE n.nspname = 'enigma' AND p.proname IN ('totret', 'cagret', 'cagrel') \
          AND pg_get_function_arguments(p.oid) = 'id integer, fromdate date, todate date' \
          AND p.prosrc LIKE '%NULLIF%'" 2>&1); then
    unreachable functions "$guarded"
elif [ "$guarded" = 3 ]; then
    uptodate "functions.sql: up to date"
elif [ -n "$DRY" ]; then
    log "functions.sql: would apply ($guarded/3 guarded)"
elif fn_out=$(psql_db -f "$FN_SRC" 2>&1); then
    log "functions.sql: applied ($guarded/3 were guarded)"
else
    log "functions.sql: FAILED to apply: $(why "$fn_out")"
    rc=1
fi

# --- views.sql ----------------------------------------------------------------
view_sha=$(sha256sum "$VIEW_SRC" | cut -c1-64)
want="views.sql sha256 $view_sha"
if ! stamp=$(psql_db -c "SELECT COALESCE(obj_description( \
        to_regclass('enigma.hklistedordsever'), 'pg_class'), '')" 2>&1); then
    unreachable views "$stamp"
elif [ "$stamp" = "$want" ]; then
    uptodate "views.sql: up to date ($view_sha)"
elif [ -n "$DRY" ]; then
    log "views.sql: would apply ($view_sha; stamp is '${stamp:-none}')"
elif view_out=$(psql_db -f "$VIEW_SRC" \
        -c "COMMENT ON VIEW enigma.hklistedordsever IS '$want'" 2>&1); then
    log "views.sql: applied ($view_sha)"
else
    log "views.sql: FAILED to apply: $(why "$view_out")"
    rc=1
fi

exit $rc
