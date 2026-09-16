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
# Run as root by the backup unit; the dump itself runs as the postgres OS user
# (peer auth, no password). Restore: pg_restore -j4 -d enigma <file>, then
# database/schema/indexes.sql and deploy/README.md "Rebuild the data".
set -euo pipefail
exec runuser -u postgres -- pg_dump -Fc --no-owner --no-acl --dbname=enigma
