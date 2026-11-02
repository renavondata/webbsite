#!/usr/bin/env bash
# Build, check and swap the derived tables declared in database/derived/*.sql.
#
# A derived table is data computed from other tables (enigma.people_search from
# enigma.people), kept because computing it per request is too slow. It is a
# function of git plus the source data, so a fresh box rebuilds it unaided: this
# script is run by scripts/db_build.sh, which converge starts whenever a derived
# table is missing, empty or stale. Never by hand on the box (it is cattle).
#
# Each file starts with a header:
#   -- derived-tables: <schema.table> [<schema.table> ...]
#   -- fingerprint: <one SELECT returning one text value; must be cheap, O(log n)>
#   -- size-gb: <final size, for the disk preflight>
#   -- backup: exclude-data          (optional; deploy/backup-producer.sh must match)
# and its body builds ONLY <table>_new objects (indexes named <table>_new_*).
#
# A build: drop leftover _new tables, run the body, ANALYZE, then in one short
# transaction (lock_timeout 3 s, retried) drop the live tables, rename the _new
# ones and their indexes into place, and stamp each with
#   COMMENT 'derived sha256=<file sha> fingerprint=<value> built=<utc>'.
# The fingerprint is taken BEFORE the build, so a source that changes mid-build
# leaves the result marked stale (safe side). No view may reference a derived
# table: a view binds by OID and would keep pointing at the dropped one.
#
# Usage:
#   build_derived.sh NAME            build database/derived/NAME.sql now
#   build_derived.sh --check NAME    exit 0 fresh, 1 missing/empty/stale, 2 cannot tell
#   build_derived.sh --stale         build every derived table that is not fresh
#   build_derived.sh --needed        exit 0 if any derived table is not fresh, else 1
#
# Env: DB (default enigma); PSQL_CMD (default "runuser -u postgres -- psql", CI
# uses plain psql with PG* env); DERIVED_DIR (default <repo>/database/derived).

set -uo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DB="${DB:-enigma}"
DERIVED_DIR="${DERIVED_DIR:-$REPO/database/derived}"
read -r -a PSQL <<< "${PSQL_CMD:-runuser -u postgres -- psql}"

log() { echo "build_derived: $*" >&2; }
q() { "${PSQL[@]}" -X -Atq -v ON_ERROR_STOP=1 -d "$DB" -c "$1"; }

header() {   # <file> <key>
    sed -n "s/^-- $2: //p" "$1" | head -1
}

stamp_for() {   # <file> -> "sha256=<sha> fingerprint=<fp>"; fails if the fingerprint query does
    local f="$1" sha fp
    sha=$(sha256sum "$f" | cut -d' ' -f1)
    fp=$(q "$(header "$f" fingerprint)") || return 1
    echo "sha256=$sha fingerprint=$fp"
}

check() {   # <name>: 0 fresh, 1 not fresh, 2 cannot tell
    local f="$DERIVED_DIR/$1.sql" stamp t comment exists
    [ -f "$f" ] || { log "no such derived table file: $f"; return 2; }
    stamp=$(stamp_for "$f") || return 2
    for t in $(header "$f" derived-tables); do
        # Two queries: a statement naming a missing table fails to parse even
        # in a CASE branch that would never run.
        exists=$(q "SELECT to_regclass('$t') IS NOT NULL") || return 2
        if [ "$exists" = t ]; then
            comment=$(q "SELECT CASE WHEN NOT EXISTS (SELECT 1 FROM $t) THEN 'empty'
                                     ELSE coalesce(obj_description('$t'::regclass, 'pg_class'), '') END") \
                || return 2
        else
            comment=missing
        fi
        case "$comment" in
            missing|empty) log "$t: $comment"; return 1 ;;
            "derived $stamp "*) ;;
            *) log "$t: stale (has '${comment:0:120}', want '$stamp')"; return 1 ;;
        esac
    done
    return 0
}

preflight() {   # <file>: refuse a build that could fill the disk Postgres lives on
    local f="$1" gb need avail datadir
    gb=$(header "$f" size-gb); gb=${gb:-1}
    datadir=$(q "SHOW data_directory") || return 1
    avail=$(df -B1 --output=avail "$datadir" 2>/dev/null | tail -1 | tr -d ' ')
    need=$(awk -v g="$gb" 'BEGIN { printf "%d", g * 2.5 * 1e9 }')
    if [ -n "$avail" ] && [ "$avail" -lt "$need" ]; then
        log "refusing $(basename "$f"): ${avail} bytes free on $datadir, need ${need} (2.5 x ${gb} GB)"
        return 1
    fi
}

build() {   # <name>
    local name="$1" f="$DERIVED_DIR/$1.sql" stamp tables t sch tbl owner swap i
    [ -f "$f" ] || { log "no such derived table file: $f"; return 1; }
    preflight "$f" || return 1
    stamp=$(stamp_for "$f") || { log "$name: fingerprint query failed"; return 1; }
    tables=$(header "$f" derived-tables)
    log "$name: building ($stamp)"

    {
        echo "SET statement_timeout = 0; SET maintenance_work_mem = '1GB';"
        for t in $tables; do echo "DROP TABLE IF EXISTS ${t}_new;"; done
        cat "$f"
        for t in $tables; do echo "ANALYZE ${t}_new;"; done
    } | "${PSQL[@]}" -X -q -v ON_ERROR_STOP=1 -d "$DB" >/dev/null || { log "$name: build FAILED"; return 1; }

    # The swap: one transaction, so readers see either the old tables or the new.
    swap="SET lock_timeout = '3s'; BEGIN;"
    for t in $tables; do
        sch=${t%%.*}; tbl=${t#*.}
        owner=$(q "SELECT pg_get_userbyid(nspowner) FROM pg_namespace WHERE nspname = '$sch'") || return 1
        swap+="
DROP TABLE IF EXISTS $t;
ALTER TABLE ${t}_new RENAME TO $tbl;
SELECT format('ALTER INDEX %I.%I RENAME TO %I', schemaname, indexname,
              replace(indexname, '${tbl}_new', '$tbl'))
  FROM pg_indexes WHERE schemaname = '$sch' AND tablename = '$tbl' AND indexname LIKE '${tbl}\\_new%'
\\gexec
ALTER TABLE $t OWNER TO \"$owner\";
COMMENT ON TABLE $t IS 'derived $stamp built=$(date -u +%Y-%m-%dT%H:%M:%SZ)';"
    done
    swap+="
COMMIT;"
    for i in 1 2 3 4 5; do
        if echo "$swap" | "${PSQL[@]}" -X -q -v ON_ERROR_STOP=1 -d "$DB" >/dev/null; then
            log "$name: swapped in"
            return 0
        fi
        log "$name: swap attempt $i failed (lock wait?); retrying"
        sleep $((i * 5))
    done
    log "$name: swap FAILED; the _new tables are left for the next run to replace"
    return 1
}

names() { for f in "$DERIVED_DIR"/*.sql; do [ -f "$f" ] && basename "$f" .sql; done; }

case "${1:-}" in
    --check)  check "${2:?usage: --check NAME}"; exit $? ;;
    --needed)   # "cannot tell" (database unreachable) is not "needed"
        for n in $(names); do
            check "$n" 2>/dev/null; r=$?
            [ "$r" = 1 ] && exit 0
        done
        exit 1 ;;
    --stale)
        rc=0
        for n in $(names); do
            check "$n"; r=$?
            case "$r" in
                0) ;;
                1) build "$n" || rc=1 ;;
                *) log "$n: cannot tell whether it is fresh; not building"; rc=1 ;;
            esac
        done
        exit $rc ;;
    ""|-*)    sed -n '2,/^set -uo/p' "$0" | sed 's/^# \{0,1\}//' | head -32; exit 2 ;;
    *)        build "$1"; exit $? ;;
esac
