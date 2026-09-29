#!/usr/bin/env bash
# backup-producer.sh -- write the one thing on this box that is not derivable
# from git to stdout, for site-deploy's backup.sh to encrypt and ship.
#
# That thing is the enigma database (schemas enigma + ccass, ~72 GB): the May
# 2026 base dump in R2 plus every daily refresh since. The refresh feed is
# overwritten upstream each day, so post-freeze rows exist only here and in
# renavon's warehouse. pg_dump -Fc streams (no local temp file; the box has
# less free disk than the database), --no-owner/--no-acl so a restore into a
# fresh cluster does not need the original roles to exist first.
#
# site-deploy runs this AS the postgres OS user (site.toml backup_user), so the
# dump uses peer auth with no password and no runuser. site-deploy reads it once
# and runs its text with bash (postgres cannot read root's verified tree), with
# stdin on /dev/null and none of /etc/webbsite/backup-env: it must stay
# self-contained bash under 128 KiB. Its stderr lands in the failure alert, so it
# must never print a secret (peer auth over the socket has none). Restore: pg_restore -j4 -d enigma <file>, then
# database/schema/indexes.sql and deploy/README.md "Rebuild the data".
set -euo pipefail
exec pg_dump -Fc --no-owner --no-acl --dbname=enigma
