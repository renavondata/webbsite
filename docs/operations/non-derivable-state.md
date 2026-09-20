# Non-derivable state

Everything that runs this site and is **not** a function of git. If a bullet here
could be derived from the repo, it does not belong here. Each item says how to
enumerate it, where its record lives, and how to restore it. Names only — the
values live where the "Record" column says, never in this public repo.

The test of this document: a fresh droplet, this repo, `site-deploy`, and the
items below should reproduce the running site. Anything that turns out to be
missing gets added here, not fixed by hand on the box.

## 1. `/etc/webbsite/*` — capability values (root-only files)

| File | Names | Record | Restore |
|---|---|---|---|
| `env` (root:webbsite 0640) | see `deploy/required-env.txt` `env` rows: DB DSN, `SECRET_KEY`, deploy knobs, CF purge token + zone id, `SENTRY_DSN`, probe/heartbeat URLs | operator keyring (`secret-tool`), per-name | write the file; `sudo deploy/env-check.sh` until clean |
| `refresh-env` (root:root 0600) | `refresh-env` rows: loader DSN (`webbsite_refresh` role), R2 read-only token, `HC_URL`, `SENTRY_DSN` | keyring `WEBBSITE_REFRESH_R2_*`; the operator's monitoring instance for the ping URL | same |
| `ops-env` (root:root 0600) | `HC_API_KEY`, `HC_INVARIANTS_URL` | keyring `HC_SELFHOST_API_KEY` | same |
| `cf-env`, `backup-env` (root:root 0600) | `CF_CONFIG_TOKEN`; the backup writer token + age recipient (Phases 4–5) | keyring | same |

`deploy/env-check.sh` asserts every declared name is present and no undeclared
name exists; the daily invariants job runs it.

## 2. The operator's monitoring instance — the checks themselves

- **Enumerate:** `deploy/checks.txt` (names, sizing, status); live list via the
  API with `HC_API_KEY`.
- **Record:** the check *definitions* are described there; their ping URLs are
  the capabilities in §1. All tagged `dataguru webbsite`, all on the shared
  email channel.
- **Restore:** create each check with the sizing in `checks.txt` (API v3),
  attach the channel, **ping it once before arming its timer**, put the new
  URL in the matching env file. Renavon's `dataguru-checks-armed` sweep and
  `hc_assert_channels.py` catch a paused or channel-less check; the invariants
  job catches a missing one.

## 3. Sentry

- **Enumerate:** project `webbsite` in the renavon organisation (platform
  python-flask).
- **Record:** DSN in the keyring as `WEBBSITE_SENTRY_DSN`; alert mail from
  Sentry is already classified by renavon's on-call triage.
- **Restore:** create the project, copy its DSN into `env` and `refresh-env`.

## 4. Cloudflare (zone `renavon.com`, datagurullc account)

- **Enumerate:** `deploy/cloudflare.json` (the rules that mention this host;
  captured verbatim 2026-09-16), the proxied DNS record `webbsite.renavon.com`
  → origin, SSL mode "Full", the plan (Free at time of writing).
- **Record:** tokens in the keyring, each single-zone and single-purpose:
  cache purge (`CF_CACHE_PURGE_TOKEN` on the box), config (`CF_CONFIG_TOKEN`).
  The zone itself is renavon's; this repo declares only its own host's rules.
- **Restore:** DNS by hand (it is the zone owner's); rules via the reconciler's
  `--apply`; purge/config tokens minted least-privilege per the `cloudflare-api`
  recipe and scope-verified (in-scope op works, `purge_cache` denied on the
  config token).

## 5. R2 (datagurullc account)

| Object | What | Restore from |
|---|---|---|
| `hkdata/webbsite-refresh/` | the daily feed: 8 Parquet + `_manifest.json`, **overwritten daily** | renavon re-exports (`dbt build --select tag:webbsite`) |
| `hkdata/webbsite-backup/enigma-render-final-20260524/` | the base `pg_dump -Fd` of the frozen archive | canonical Google Drive release |
| `hkdata/webbsite-backup/asp_cache-ground-truth-20260715.tar.zst` | the archived ASP crawl the fidelity tests compare against | not regenerable (the ASP site is gone) |
| `webbsite-backups/` (Phase 5) | weekly age-encrypted `pg_dump -Fc`, bucket-scoped writer token | — |

Read token: `webbsite-refresh-loader-readonly` (keyring `WEBBSITE_REFRESH_R2_*`).

## 6. The database

**Derived, in principle:** base dump (§5) + `database/schema/indexes.sql` +
`database/schema/functions.sql` (the return calculations; converge reapplies them
every tick because a restore reverts them silently) +
the latest feed replayed by `scripts/refresh/refresh.py` = the live `enigma`
database. The post-freeze rows exist in this Postgres and in renavon's
warehouse; the weekly backup (Phase 5) is belt-and-braces. Roles and grants
(`webbsite`, `webbsite_refresh` with no DELETE/TRUNCATE/DDL) are the runbook
in `deploy/README.md`; `tests/refresh/schema_fixture.sql` carries the same
grants and the ladder proves them.

## 7. The box

- **Identity:** DigitalOcean droplet `webbsite-web` (`s-4vcpu-8gb`, sfo3);
  Tailscale node, tagged, Tailscale SSH on; local admin `g` (NOPASSWD).
- **Provisioned once by** `site-deploy/host/{cloud-init.yaml,provision.sh,harden.sh}`;
  **kept in step by** `site-deploy` (host layer) and `deploy/converge.sh` (this repo).
- **Not converged from anywhere yet:** the Postgres cluster's existence and
  `pg_hba.conf`, ufw's Cloudflare ranges (site-deploy Phase 3b), the
  `/srv/site-deploy` and `/srv/webbsite` checkouts and their read-only deploy
  keys, the sudoers grants (`webbsite-deploy`, `webbsite-converge`, both
  written by `site-deploy/bin/install.sh`).

## 8. Keyring keys this site relies on (names)

`WEBBSITE_SENTRY_DSN`, `WEBBSITE_REFRESH_R2_ACCESS_KEY_ID`,
`WEBBSITE_REFRESH_R2_SECRET`, `HC_SELFHOST_API_KEY`, the Cloudflare purge and
config tokens (see the `cloudflare-api` skill's inventory), and the age
identity for backups (escrow the **whole identity file**, per renavon's gotcha).
