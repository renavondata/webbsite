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
if [ -f "$CADDY_SRC" ] && ! cmp -s "$CADDY_SRC" "$CADDY_DST" 2>/dev/null; then
    if command -v caddy >/dev/null 2>&1; then
        caddy validate --adapter caddyfile --config "$CADDY_SRC" >/dev/null 2>&1 \
            || die "deploy/Caddyfile does not validate; refusing to install it"
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

[ -n "$DRY" ] && { log "dry run; units_changed=$changed_units caddy_changed=$changed_caddy"; exit $rc; }

# --- apply -----------------------------------------------------------------
if [ "$changed_units" = 1 ]; then
    systemctl daemon-reload || { log "daemon-reload failed"; rc=1; }
fi

if [ "$changed_caddy" = 1 ]; then
    # reload, not restart: keeps connections and the internal CA intact. On
    # failure, put the previous file back so the NEXT reload cannot inherit a
    # broken config, and report non-zero so the deploy stops before touching the app.
    if systemctl reload caddy; then
        log "caddy reloaded"
    else
        log "caddy reload FAILED; restoring previous Caddyfile"
        [ -f "$CADDY_DST.bak" ] && cp -a "$CADDY_DST.bak" "$CADDY_DST" && systemctl reload caddy
        rc=1
    fi
fi

# Caddy is not ours to own beyond this file, but it must be running and enabled;
# `enable` is idempotent and costs nothing, and its absence is what made the
# 2026-09-11 kill permanent.
systemctl is-enabled --quiet caddy || systemctl enable --quiet caddy || true

[ "$changed_units$changed_caddy" = "00" ] || log "converge complete (units=$changed_units caddy=$changed_caddy)"
exit $rc
