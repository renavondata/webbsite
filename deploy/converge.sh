#!/usr/bin/env bash
# Make webbsite-web a function of this repo.
#
# Run as root, either by hand or from site-deploy's per-tick hook. Idempotent and
# silent when nothing changed, so a 2-minute cadence costs nothing.
#
# WHY. Until 2026-09 deploy/ was documentation: auto-deploy.sh did
# `git ff -> uv sync -> systemctl reload -> cf-purge` and never looked at it, so
# every unit and the Caddyfile were hand-installed and the headers claiming
# "source of truth" were aspirational. They had already drifted (webbsite.service
# in git lacked the ExecReload the deploy contract depends on). The cost came due
# on 2026-09-11: Caddy's unit was tracked nowhere, so nobody noticed it had no
# Restart= policy, and one OOM kill became five days of 521s.
#
# TRUST BOUNDARY -- read before widening this. Installing repo-declared systemd
# units is root-equivalent by construction: a unit's ExecStart runs as root, so
# whoever can merge to master can run code as root on this box. That is the same
# bargain renavon's dataguru-converge makes, and it is acceptable for the same
# reason -- merge access is the trust boundary, and it is not open to the public
# even though the repo is readable by everyone. It does mean the sudoers grant
# below must never be handed to anything less trusted than a merge.
#
# The DEST allowlist is defence in depth against accident, not against an
# attacker: a stray file dropped in deploy/systemd/ cannot silently become a live
# unit, because only the paths named here are ever installed.

set -uo pipefail

REPO="${REPO_DIR:-/srv/webbsite}"
DRY="${CONVERGE_DRY_RUN:-}"     # set to 1 to print actions without taking them
changed_units=0
changed_caddy=0
rc=0

# Both write to STDERR on purpose: install_file() reports "changed" on stdout and
# is read through a command substitution, so a log line on stdout would be
# captured as part of its result and silently break change detection.
log() { echo "converge: $*" >&2; }
die() { log "FATAL: $*"; exit 1; }

[ "$(id -u)" -eq 0 ] || [ -n "$DRY" ] || die "must run as root (or set CONVERGE_DRY_RUN=1)"
[ -d "$REPO/deploy" ] || die "no deploy/ under $REPO"

# src (relative to $REPO)                        -> dst (absolute)
# Add a line here to bring another file under convergence. Nothing else is touched:
# postgresql.service, ufw and sshd are deliberately NOT managed from this repo.
MAP="
deploy/systemd/webbsite.service                  /etc/systemd/system/webbsite.service
deploy/systemd/webbsite-refresh.service          /etc/systemd/system/webbsite-refresh.service
deploy/systemd/webbsite-refresh.timer            /etc/systemd/system/webbsite-refresh.timer
deploy/systemd/webbsite-refresh-failed.service   /etc/systemd/system/webbsite-refresh-failed.service
deploy/systemd/webbsite-invariants.service       /etc/systemd/system/webbsite-invariants.service
deploy/systemd/webbsite-invariants.timer         /etc/systemd/system/webbsite-invariants.timer
deploy/systemd/caddy.service.d/override.conf     /etc/systemd/system/caddy.service.d/override.conf
"

install_file() {   # <src> <dst>; echoes "changed" when it wrote
    local src="$REPO/$1" dst="$2"
    [ -f "$src" ] || { log "missing in repo, skipped: $1"; return 0; }
    if cmp -s "$src" "$dst" 2>/dev/null; then return 0; fi
    if [ -n "$DRY" ]; then log "would install $1 -> $dst"; echo changed; return 0; fi
    mkdir -p "$(dirname "$dst")" || return 1
    install -o root -g root -m 0644 "$src" "$dst" || return 1
    log "installed $1 -> $dst"
    echo changed
}

# --- systemd units ---------------------------------------------------------
while read -r src dst; do
    [ -z "$src" ] && continue
    out=$(install_file "$src" "$dst") || { log "install failed: $src"; rc=1; }
    [ "$out" = changed ] && changed_units=1
done <<< "$(echo "$MAP" | sed '/^[[:space:]]*$/d')"

# --- Caddyfile -------------------------------------------------------------
# Validated BEFORE it is installed: a Caddyfile that fails to parse would take
# the site down on the next reload, which is the exact failure class this whole
# change exists to prevent.
CADDY_SRC="$REPO/deploy/Caddyfile"
CADDY_DST=/etc/caddy/Caddyfile
CADDY_LOG=/var/log/caddy/access.log
if [ -f "$CADDY_SRC" ] && ! cmp -s "$CADDY_SRC" "$CADDY_DST" 2>/dev/null; then
    if command -v caddy >/dev/null 2>&1; then
        # `caddy validate` OPENS the access log to prove it can write it. Run as
        # the caddy user, not root: a root-run validate would create the file
        # root-owned and the daemon's next reload would fail on it. The file is
        # pre-created with the daemon's ownership for the same reason.
        if [ -z "$DRY" ] && id caddy >/dev/null 2>&1; then
            [ -e "$CADDY_LOG" ] || install -o caddy -g caddy -m 0640 /dev/null "$CADDY_LOG"
            runuser -u caddy -- caddy validate --adapter caddyfile --config "$CADDY_SRC" >/dev/null 2>&1 \
                || die "deploy/Caddyfile does not validate (as caddy); refusing to install it"
        else
            caddy validate --adapter caddyfile --config "$CADDY_SRC" >/dev/null 2>&1 \
                || die "deploy/Caddyfile does not validate; refusing to install it"
        fi
    fi
    if [ -n "$DRY" ]; then
        log "would install deploy/Caddyfile -> $CADDY_DST"
    else
        cp -a "$CADDY_DST" "$CADDY_DST.bak" 2>/dev/null
        install -o root -g root -m 0644 "$CADDY_SRC" "$CADDY_DST" || die "could not install Caddyfile"
        log "installed deploy/Caddyfile -> $CADDY_DST"
    fi
    changed_caddy=1
fi

# --- PostgreSQL --------------------------------------------------------------
# The tuning that used to live only in postgresql.auto.conf (hand ALTER SYSTEM)
# is deploy/postgresql/conf.d/webbsite.conf, installed into the cluster's
# conf.d. Convergence here is install + reload; a setting that needs a restart
# is REPORTED, never restarted -- that is a person's call, a few seconds of
# downtime, best taken after the 02:45 UTC refresh.
PG_SRC="$REPO/deploy/postgresql/conf.d/webbsite.conf"
PG_DIR=/etc/postgresql/17/main/conf.d
PG_DST="$PG_DIR/webbsite.conf"
changed_pg=0
# Applied further down (after the dry-run exit), but checked for HERE so the CI
# dry run greps the same "missing in repo" line for it as for every other file.
FN_SRC="$REPO/database/schema/functions.sql"
[ -f "$FN_SRC" ] || log "missing in repo, skipped: database/schema/functions.sql"
if [ -f "$PG_SRC" ] && [ -d "$PG_DIR" ] && ! cmp -s "$PG_SRC" "$PG_DST" 2>/dev/null; then
    if [ -n "$DRY" ]; then
        log "would install deploy/postgresql/conf.d/webbsite.conf -> $PG_DST"
    else
        install -o postgres -g postgres -m 0644 "$PG_SRC" "$PG_DST" || { log "could not install $PG_DST"; rc=1; }
        log "installed deploy/postgresql/conf.d/webbsite.conf -> $PG_DST"
    fi
    changed_pg=1
fi

[ -n "$DRY" ] && { log "dry run; units_changed=$changed_units caddy_changed=$changed_caddy pg_changed=$changed_pg"; exit $rc; }

# --- apply -----------------------------------------------------------------
if [ "$changed_units" = 1 ]; then
    systemctl daemon-reload || { log "daemon-reload failed"; rc=1; }
fi

# Every timer this repo declares is enabled and running. Installing a unit file
# does nothing by itself; a timer that is merely present fires never, which is
# indistinguishable from a job that is fine. Idempotent, silent when already so.
# Deliberate downtime is `systemctl mask <timer>`, which this respects.
while read -r src dst; do
    [ -z "$src" ] && continue
    case "$dst" in *.timer) ;; *) continue ;; esac
    t=$(basename "$dst")
    if [ "$(systemctl is-enabled "$t" 2>/dev/null)" = masked ]; then continue; fi
    if ! systemctl is-enabled --quiet "$t" 2>/dev/null || ! systemctl is-active --quiet "$t" 2>/dev/null; then
        systemctl enable --now --quiet "$t" && log "enabled $t" || { log "could not enable $t"; rc=1; }
    fi
done <<< "$(echo "$MAP" | sed '/^[[:space:]]*$/d')"

# Caddy must be enabled and running. `enable` is idempotent and costs nothing;
# its absence is not what made the 2026-09-11 kill permanent, but the absence of
# any assertion that caddy is UP is. A unit sitting in `failed` stays there
# forever -- Restart= governs future exits, not a terminal state already reached
# -- so a dead proxy is only ever revived by something asking. This asks, every
# tick. Deliberate downtime is `systemctl mask caddy`, which this respects.
systemctl is-enabled --quiet caddy || systemctl enable --quiet caddy || true
caddy_was_down=0
if ! systemctl is-active --quiet caddy; then
    caddy_was_down=1
    log "caddy is $(systemctl is-active caddy) -- starting it"
    systemctl start caddy || { log "could not start caddy"; rc=1; }
fi

if [ "$changed_caddy" = 1 ] && [ "$caddy_was_down" = 0 ]; then
    # reload, not restart: keeps in-flight connections and the internal CA intact.
    # On failure, put the previous file back so the NEXT reload cannot inherit a
    # broken config, and report non-zero so the deploy stops before touching the app.
    if systemctl reload caddy; then
        log "caddy reloaded"
    elif grep -qsE '^[[:space:]]*admin[[:space:]]+off' "$CADDY_DST.bak"; then
        # The RUNNING daemon was started from a Caddyfile with `admin off`, so
        # it has no endpoint for `reload` to talk to and the reload fails no
        # matter how good the new file is. Rolling back would re-install `admin
        # off` and fail again on every tick, forever. This is the one case where
        # a restart is right: it happens exactly once, on the tick that turns
        # the endpoint on, and costs a few seconds of TLS.
        log "caddy reload failed and the PREVIOUS Caddyfile had 'admin off'; restarting caddy once"
        systemctl restart caddy || { log "caddy restart FAILED"; rc=1; }
    else
        log "caddy reload FAILED; restoring previous Caddyfile"
        [ -f "$CADDY_DST.bak" ] && cp -a "$CADDY_DST.bak" "$CADDY_DST" && systemctl reload caddy
        rc=1
    fi
elif [ "$changed_caddy" = 1 ]; then
    # It was down and we just started it, so it already read the new file. Reloading
    # here would be redundant, and on a cold start the reload can lose a race with
    # the daemon coming up and report a failure that would roll back a GOOD config.
    log "caddy started with the new Caddyfile; no reload needed"
fi

# Postgres: make the tracked file authoritative, then reload. postgresql.auto.conf
# (ALTER SYSTEM) outranks conf.d, so any key our file declares that auto.conf
# still carries is RESET there -- once, on the tick that installs the file, and
# again if anyone ALTER SYSTEMs it back. The extension is created when its
# library is finally loaded (i.e. on the first tick after the restart).
psql_pg() { runuser -u postgres -- psql -Atq -v ON_ERROR_STOP=1 "$@"; }
if [ "$changed_pg" = 1 ] && id postgres >/dev/null 2>&1; then
    for k in $(grep -oE '^[a-z_]+(\.[a-z_]+)?' "$PG_SRC"); do
        if [ "$(psql_pg -c "SELECT 1 FROM pg_file_settings WHERE name = '$k' AND sourcefile LIKE '%postgresql.auto.conf'" 2>/dev/null)" = 1 ]; then
            psql_pg -c "ALTER SYSTEM RESET $k" >/dev/null && log "postgres: reset $k in postgresql.auto.conf; conf.d is authoritative now"
        fi
    done
    if systemctl reload postgresql@17-main; then
        log "postgres reloaded"
    else
        log "postgres reload FAILED"; rc=1
    fi
    pending=$(psql_pg -c "SELECT string_agg(name, ', ') FROM pg_settings WHERE pending_restart" 2>/dev/null)
    [ -n "$pending" ] && log "postgres: RESTART REQUIRED to apply: $pending (converge never restarts it)"
fi
if id postgres >/dev/null 2>&1 && [ -z "$DRY" ]; then
    psql_pg -d enigma -c "CREATE EXTENSION IF NOT EXISTS pg_stat_statements" >/dev/null 2>&1 \
        && [ "$(psql_pg -d enigma -c "SELECT count(*) FROM pg_extension WHERE extname = 'pg_stat_statements'")" = 1 ] \
        || true   # library not loaded yet (pre-restart): silent, the invariants job reports it
fi

# The return calculations (enigma.totret/cagret/cagrel). Unlike the indexes
# these are CREATE OR REPLACE and instant, so converge owns them rather than
# leaving a manual post-restore step: a plain restore brings back the MySQL-era
# bodies whose unguarded `/ firstQF` takes out every page that ranks returns,
# and nothing else on the box would notice.
#
# Gated on drift rather than applied every tick. Rewriting pg_proc 720x a day
# invalidates cached plans in the long-lived gunicorn connections for no reason,
# and it would mean the one interesting event -- a restore reverting the guard --
# never appears in the log. The gate is deliberately coarse (present, right
# parameter name, a guard in the body); scripts/assert_box.py compares the whole
# body against the file daily, so a subtler edit is still caught, just not here.
if [ -f "$FN_SRC" ] && id postgres >/dev/null 2>&1 && [ -z "$DRY" ]; then
    guarded=$(psql_pg -d enigma -c "SELECT count(*) FROM pg_proc p \
        JOIN pg_namespace n ON n.oid = p.pronamespace \
        WHERE n.nspname = 'enigma' AND p.proname IN ('totret', 'cagret', 'cagrel') \
          AND pg_get_function_arguments(p.oid) = 'id integer, fromdate date, todate date' \
          AND p.prosrc LIKE '%NULLIF%'" 2>/dev/null)
    if [ -z "$guarded" ]; then
        :   # could not ask (mid-restart, saturated): silent, like the extension
            # check above; the invariants job reports it daily either way.
    elif [ "$guarded" != 3 ]; then
        if fn_out=$(psql_pg -d enigma -f "$FN_SRC" 2>&1); then
            log "postgres: applied database/schema/functions.sql ($guarded/3 were guarded)"
        else
            log "postgres: database/schema/functions.sql FAILED to apply: $(printf '%s' "$fn_out" | tail -1)"
            rc=1
        fi
    fi
fi

[ "$changed_units$changed_caddy$changed_pg" = "000" ] || log "converge complete (units=$changed_units caddy=$changed_caddy pg=$changed_pg)"
exit $rc
