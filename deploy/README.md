# Deploy artefacts (droplet `webbsite-web`)

> **Deploy knobs now live in `deploy/site.toml`, not only in `/etc/webbsite/env`.**
> `site-deploy`'s poller reads that file every tick, and it wins over the
> environment. Secrets stay in `/etc/webbsite/env`. Two invariants are recorded
> there because they are not independent: the reload verb is `reload` (SIGHUP),
> which needs `ExecReload` in the unit *and* `preload_app = False` in
> `gunicorn.conf.py` — change one and you must change all three.
>
> The poller also now probes `/health` after the reload and refuses to purge
> Cloudflare unless it answers, so a deploy that breaks the app leaves the edge
> serving the cached old site instead of a cold broken one.

Hosts the Webb-site archive (the late David Webb's CC-BY data; frozen baseline 2025-10-10,
**refreshed daily** from renavon pipelines — see "Daily data refresh" below) on a single
DigitalOcean droplet, migrated off Render. Self-hosted PostgreSQL + gunicorn under
systemd, fronted by Caddy + Cloudflare. Tracked here so changes go through PRs, not hand-edits.

## Topology
- **Droplet:** `webbsite-web`, `s-4vcpu-8gb`, region `sfo3`, VPC `default-sfo3`. The origin IP and
  other host-identifying details are **not** committed to this public repo (the origin sits behind
  Cloudflare + UFW); they live in the operator's private notes.
- **App:** gunicorn (`gunicorn.conf.py`: gthread, 3×8) on `127.0.0.1:8000`, `User=webbsite`,
  checkout at `/srv/webbsite`, env in `/etc/webbsite/env`.
- **DB:** self-hosted PostgreSQL 17, localhost-only, role `webbsite`, database `enigma`
  (schemas `enigma` + `ccass`). The DB is a *derived artifact* — see "Rebuild the data" below.
- **TLS/edge:** Caddy `:443` (`tls internal`) → app; Cloudflare zone `renavon.com`
  (`webbsite.renavon.com`, proxied, SSL mode "Full").
- **Access:** SSH over **Tailscale** only; UFW denies public `:22`/`:80` and allows `:443` from
  Cloudflare IP ranges only.

## Layout
```
deploy/
  systemd/webbsite.service                # gunicorn unit
  systemd/webbsite-refresh.service        # daily R2 -> Postgres loader (oneshot)
  systemd/webbsite-refresh.timer          # fires the loader 02:45 + 06:45 UTC
  systemd/webbsite-refresh-failed.service # OnFailure= hook: /fail ping with the journal tail
  systemd/caddy.service.d/override.conf   # Restart= + memory cap for the proxy
  Caddyfile                               # /etc/caddy/Caddyfile
  converge.sh                             # installs all of the above on every deploy tick (root)
  site.toml                               # site-deploy knobs, reviewable here
  required-env.txt                        # every env NAME the box must/may carry, by file
  env-check.sh                            # asserts required-env.txt against /etc/webbsite (names only)
  checks.txt                              # the monitoring checks this deployment expects
  README.md
```
Everything under `deploy/` is *applied*, not documented: `converge.sh` installs the units and the
Caddyfile on every tick. `.github/workflows/tests.yml` is the merge gate (lint, DB-free unit checks,
a planted-failure self-proof, shellcheck, a converge dry-run, `caddy validate`, the loader ladder
against a real Postgres) and fast-forwards `ci-green` on a passing `master` run; the box follows
that ref once site-deploy's `deploy_ref` knob lands (see `site.toml`).

## Deploy a code change

**Deployment is automatic — pushing to `master` *is* the deploy.** `webbsite-web` runs
`site-deploy@webbsite.timer` (the shared `site-deploy` toolkit at `/srv/site-deploy`): every ~2 min
it polls `origin/master`, and when it advances, fast-forwards → `uv sync --frozen` → reloads the
service → purges the Cloudflare edge cache. A merged PR is live within ~2 minutes. Watch it:
```bash
journalctl -u site-deploy@webbsite -f   # "deployed <sha> (reload)" then "cf-purge: ok (zone …)"
```

### Edge-cache purge (required, or HTML changes stay invisible)
The auto-deploy purges Cloudflare via `site-deploy/bin/cf-purge.sh`, which needs two keys in
`/etc/webbsite/env`:
```
CF_ZONE_ID=c754c09daa8fb9cce8e4977d44cbd246   # renavon.com (in the datagurullc CF account)
CF_CACHE_PURGE_TOKEN=<single-zone Cache-Purge API token>
```
Without them `cf-purge.sh` is a silent no-op and pages (`cdn-cache-control: max-age=2592000`, 30d)
keep serving stale HTML — so a sitewide change (e.g. the base-template cross-sell banner) stays
invisible to cached visitors. Mint a least-privilege **Cache Purge** token scoped to the single
renavon.com zone via the `cloudflare-api` recipe (renavon.com is reached through the datagurullc
legacy key+email; never wire that global key into the box).

### Manual deploy (fallback — timer down, or to force a deploy)
Tailscale SSH lands as `g` (sudo), so privileged steps need `sudo`:
```bash
ssh webbsite-web
sudo -u webbsite git -C /srv/webbsite pull --ff-only
sudo -u webbsite sh -c 'cd /srv/webbsite && env HOME=/srv/webbsite /usr/local/bin/uv sync --frozen'
sudo systemctl restart webbsite
sleep 2
curl -fsS http://127.0.0.1:8000/health         # {"status":"ok"}
curl -fsS https://webbsite.renavon.com/health  # via Caddy + Cloudflare
```
The edge purge is automatic on the next timer deploy; `site-deploy/bin/cf-purge.sh` is the tool if you need to force one.

## Daily data refresh (R2 → Postgres)

The frozen 2025-10-10 baseline is **refreshed daily** by a pull-based loader (ADR
`docs/architecture/decisions/001-pull-based-postgres-refresh.md`): the renavon
`renavon-webbsite-refresh` cron publishes 8 Parquet exports + `_manifest.json` to
`r2://hkdata/webbsite-refresh/` at 22:00 UTC Mon–Fri; `webbsite-refresh.timer` fires
`scripts/refresh/refresh.py` at 02:45/06:45 UTC, which stages, validates, and upserts into
`ccass.{holdings,parthold,dailylog,bigchanges,quotes,pquotes,unquotes,calendar}` +
`enigma.issuedshares` in ONE transaction, then advances the `enigma.log` watermarks
(`MBquotesDate`/`GEMquotesDate` = quotes max; `CCASSdateDone` = min(ccass, quotes)) that
`webbsite/watermarks.py` serves to the app. No cache purge — mutable pages sit on the
1h/4h TTL ladder and self-heal within ≤4h.

**The `webbsite_refresh` role** (loader's only credential — no DELETE/TRUNCATE/DDL):
```sql
CREATE ROLE webbsite_refresh LOGIN PASSWORD '<generate>';
GRANT CONNECT, TEMPORARY ON DATABASE enigma TO webbsite_refresh;
GRANT USAGE ON SCHEMA ccass, enigma TO webbsite_refresh;
GRANT SELECT, INSERT, UPDATE ON
    ccass.holdings, ccass.parthold, ccass.dailylog, ccass.bigchanges,
    ccass.quotes, ccass.pquotes, ccass.unquotes, ccass.calendar,
    enigma.issuedshares TO webbsite_refresh;
GRANT SELECT ON enigma.issue TO webbsite_refresh;
GRANT SELECT, UPDATE (val) ON enigma.log TO webbsite_refresh;
GRANT MAINTAIN ON  -- PG17: ANALYZE after load
    ccass.holdings, ccass.parthold, ccass.dailylog, ccass.bigchanges,
    ccass.quotes, ccass.pquotes, ccass.unquotes, ccass.calendar,
    enigma.issuedshares TO webbsite_refresh;
```
After creating it, **verify the negative**: `DELETE FROM ccass.quotes` as
`webbsite_refresh` must fail with `permission denied`.

**Pre-flight** (once): the three log keys must already exist — the loader only
UPDATEs them (`SELECT name, val FROM enigma.log WHERE name IN
('CCASSdateDone','MBquotesDate','GEMquotesDate')` must return 3 rows) — and pick a
`REFRESH_USERID` that doesn't collide with historical curators (`SELECT DISTINCT
userid FROM enigma.issuedshares ORDER BY 1` — any unused positive integer).

**`/etc/webbsite/refresh-env`** (root:root 0600 — systemd injects it before
dropping privileges):
```
DATABASE_URL=postgresql://webbsite_refresh:<pw>@localhost:5432/enigma
R2_ENDPOINT=https://<account>.r2.cloudflarestorage.com
R2_ACCESS_KEY_ID=...    # Object-Read-only R2 API token scoped to the hkdata bucket
R2_SECRET_ACCESS_KEY=...
R2_BUCKET=hkdata
R2_PREFIX=webbsite-refresh
REFRESH_USERID=<chosen above>
HC_URL=https://<your-healthchecks-host>/ping/<uuid>   # dead-man check for this loader (daily, grace 6h)
```
The R2 token must be **Object Read only**, scoped to the `hkdata` bucket (Cloudflare
dashboard → R2 → Manage API Tokens). Never reuse a write-capable key here.

**Install / enable:**
```bash
sudo cp /srv/webbsite/deploy/systemd/webbsite-refresh.{service,timer} /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now webbsite-refresh.timer
```

**First supervised run:** `sudo systemctl start webbsite-refresh` after a manual
`--dry-run` as the service user:
```bash
sudo -u webbsite sh -c 'cd /srv/webbsite && set -a && . /etc/webbsite/refresh-env && set +a && env HOME=/srv/webbsite /usr/local/bin/uv run --script scripts/refresh/refresh.py --dry-run'
```
(Root can read the env file; the one-liner is for the supervised bootstrap only.)

**Monitoring:** `HC_URL` is code-optional and operationally required. `ping_healthcheck`
returns early when it is unset, so an unset value is a loader that runs every day
reporting to nobody — which is what it did from go-live on 2026-07-19 until it was
noticed and set on 2026-09-16 while investigating an unrelated outage (the
`webbsite-refresh` check on the operator's Healthchecks instance, tag `dataguru`,
grace 6h). A missing dead-man does not fail; it just never speaks, and nothing
distinguishes that from health — check that instance's own paused-check sweep, not
just this file, if you're auditing whether monitoring actually exists.

**Crash before the ping:** `webbsite-refresh.service` carries
`OnFailure=webbsite-refresh-failed.service`, which posts the loader's last 60 journal lines to
`HC_URL/fail`, and an `ExecStartPre=-…/start` ping so a hung run pages at grace. Both are no-ops
when `HC_URL` is unset. That closes the "unit exited 1 and nothing announced it" half of issue
#28; the per-dataset quarantine half is separate.

**Env names:** `deploy/required-env.txt` lists every name each `/etc/webbsite/*` file must
(`required`) or may (`optional`) carry, and what its absence costs; `sudo deploy/env-check.sh`
asserts it in both directions (a required name missing, or a name on the box nobody declared) and
never reads a value. `deploy/checks.txt` is the matching inventory of monitoring checks.

**Error reporting:** `SENTRY_DSN` (optional, in both `/etc/webbsite/env` and
`/etc/webbsite/refresh-env`; `SENTRY_ENVIRONMENT` defaults to `production`) turns on
Sentry for the app and the loader. Unset means silent, exactly like `HC_URL`: a
mirror runs fine without it, but *this* deployment is not observed without it —
`/dbpub/sdicap.asp` threw the same TypeError ~500 times a day for weeks before
anyone looked at the journal. The app's Flask integration reports unhandled
exceptions; its logging integration also promotes every ERROR log line to an event,
which is how the routes' broad `except Exception` blocks (which render an empty
page) become visible: `webbsite/db.py` logs at ERROR before raising. Every response
carries an `X-Request-Id` (minted by Caddy, `deploy/Caddyfile`; echoed by the app;
last field of gunicorn's access log; a Sentry tag), so one string joins the Caddy
access log (`/var/log/caddy/access.log`, JSON), the journal, and an event.

The loader pings `HC_URL` on success **only while fresh**
(`CCASSdateDone` within 4 trading days of the latest `ccass.calendar` row) and
`/fail` otherwise — so a silently-wedged upstream trips the healthcheck even
though the loader itself exits 0. Exit codes: 0 loaded/up-to-date, 1 validation
(nothing committed), 2 infrastructure.

**Corrections / rollback:** renavon re-exports and the loader re-applies
(idempotent upserts). Row *retraction* is admin-only SQL by design — the loader
role cannot DELETE. Pages self-heal within the ≤4h edge TTL; no purge needed.

**Local validation:** `tests/refresh/run_ladder.sh` (needs a local Postgres superuser via
`PGHOST`/`PGUSER`) builds the fixture DB and runs the whole ladder — role-parity denials,
dry-run, real load, idempotent no-op rerun, `--poison`/`--bad-counts`/`--pre-freeze`/missing-log-key
each exiting 1 with nothing committed. CI runs the same script against a Postgres 17 service
container on every push. (A real 3.9M-row feed loaded in 43s on 2026-07-19.)

## Rebuild the data (rare)
To reload the **frozen baseline**, restore the `pg_dump` archive
held in Cloudflare R2 (or rebuild from the canonical Google Drive release):
```bash
# directory-format parallel restore as postgres, objects owned by webbsite
sudo -u postgres pg_restore -d enigma -j4 --no-owner --role=webbsite --clean --if-exists <dumpdir>
sudo -u postgres vacuumdb -d enigma --analyze-only -j4
systemctl reload webbsite
```

**Fidelity baseline (ASP→Flask parity):** the only surviving crawl of the original ASP site
(`tests/ground_truth/asp_cache/`, 254 routes — webb-site.com is gone and it is not regenerable) is
archived alongside the pg_dump at `r2:hkdata/webbsite-backup/asp_cache-ground-truth-20260715.tar.zst`.
It is git-ignored, not committed. Restore it under `tests/ground_truth/` to re-run
`tests/compare_asp_flask.py`.

## Performance / Postgres tuning
The tuning in step 4 below is applied via `ALTER SYSTEM` (persisted to
`postgresql.auto.conf`). **`shared_buffers` only takes effect after a full
Postgres restart** — a reload is not enough — so confirm the live value rather
than trusting the config:
```bash
sudo -u postgres psql -tAc "SHOW shared_buffers;"          # expect 2GB, not 128MB
sudo -u postgres psql -tAc "SELECT name, pending_restart FROM pg_settings WHERE pending_restart;"
# if shared_buffers is still the 128MB default, it never restarted:
sudo -u postgres psql -tAc "ALTER SYSTEM SET shared_buffers = '2GB';"
sudo -u postgres psql -tAc "ALTER SYSTEM SET effective_cache_size = '6GB';"
systemctl restart postgresql && systemctl restart webbsite
```
The data is static, so this is a one-time correction. `vmtouch /var/lib/postgresql/17/main`
shows how much of the DB is resident; the CCASS working set should stay warm.

## Move to a dedicated domain (when decided)
The app is domain-agnostic: canonical/OG URLs, the XML sitemap, and the Google
site-search box all derive from `CANONICAL_HOST` (and `SEARCH_DOMAIN`), which
default to `webbsite.renavon.com`. Moving domains needs **no code change**:
1. Stand up the new Cloudflare zone; point the host at the origin IP (proxied).
2. Set `CANONICAL_HOST=<new-host>` (and optionally `SEARCH_DOMAIN`) in
   `/etc/webbsite/env`; `systemctl restart webbsite`.
3. Add a **301** from `webbsite.renavon.com` → the new host (Cloudflare rule on
   the old zone) to preserve link equity.
4. Purge the Cloudflare cache on both zones; resubmit `https://<new-host>/sitemap.xml`
   to Google/Bing Search Console.

## Bootstrap (one-time, performed 2026-05) — summary
1. `doctl compute droplet create webbsite-web --region sfo3 --size s-4vcpu-8gb --image ubuntu-24-04-x64 --vpc-uuid <default-sfo3> --ssh-keys <steel>`.
2. Add PGDG + Caddy apt repos; `apt install postgresql-17 caddy vmtouch ufw`; install `uv` to `/usr/local/bin`.
3. `useradd --system --shell /bin/bash --home-dir /srv/webbsite webbsite`.
4. PostgreSQL: create role `webbsite` (login, non-super) + db `enigma` owned by it; `ALTER SYSTEM`
   tuning (`shared_buffers=2GB`, `effective_cache_size=6GB`, `maintenance_work_mem=1GB`,
   `work_mem=96MB`, `max_connections=40`, `listen_addresses='localhost'`, `random_page_cost=1.1`).
5. Data: `pg_dump -Fd -j4` the Render DB (temporarily allowlist the droplet IP in Render) →
   `pg_restore -j4 --no-owner --role=webbsite` into `enigma`; `vacuumdb --analyze-only`.
6. `/etc/webbsite/env` (0640 root:webbsite): `DATABASE_URL=postgresql://webbsite:<pw>@localhost:5432/enigma`,
   `SECRET_KEY=<generated>`, `FLASK_ENV=production`, `PORT=8000`.
7. Install `systemd/webbsite.service`; `systemctl enable --now webbsite`.
8. Install `Caddyfile`; `systemctl restart caddy`.
9. `tailscale up --ssh --hostname=webbsite-web`; verify tailnet SSH.
10. UFW: default deny in; allow on `tailscale0`; allow `443/tcp` from Cloudflare IPv4+IPv6 ranges;
    `enable`. (No public 22/80.)
11. Cut over: point Cloudflare `webbsite.renavon.com` at the droplet IP (proxied); purge cache.
12. Decommissioned Render (web service + Postgres deleted) after archiving a final `pg_dump` to R2,
    and removed the temporary droplet IP from Render's allowlist.

## When the site is down (Cloudflare 521)

A 521 means Cloudflare reached the origin and got nothing. **The app is usually
fine — check the proxy first.**

**Do not trust the front page.** `/` is a 302 to `/dbpub/` and Cloudflare keeps
serving that from cache long after the origin dies, so the site can look alive
while every real page 521s. Probe `/health` instead: it is `no-store`, so it
always comes from the origin.

```bash
curl -sI https://webbsite.renavon.com/health | head -1   # origin, through the edge
ssh <box> 'curl -s localhost:8000/health'                # the app itself
ssh <box> 'systemctl status caddy webbsite postgresql'
```

If the app answers on localhost and the edge does not, it is Caddy or the network.

### 2026-09-11: Caddy OOM-killed, down five days

A distributed scraper walked `/dbpub/*` with randomised IDs, spoofed Chrome
user-agents and residential proxies. Every URL was unique, so ~99.8% missed the
edge cache and hit the origin. The app kept up — 200s in 90–340 ms — but
concurrency exceeded its 24 request slots, connections piled into gunicorn's
then-2048-deep accept queue, and Caddy held a live proxy request for each one
until it reached 4.7 GB RSS on an 8 GB box with no swap. The global OOM killer
chose it. The distro unit had no `Restart=`, so it never came back, and nothing
probed the site from outside.

The scrape did not stop. Over the 71 hours to 2026-09-16 the zone took 13.4M
requests, of which **6.9M still reached the origin** and 521'd — 27 req/s
average, peaking at 142 req/s. The rest were blocked at the edge by the
`/ccass/` rules added after the incident, which is also why the origin-bound
rate had fallen to 3–5 req/s by 16 Sept. Read zone-level request counts with
care: most of that traffic never touches the origin, and the number that matters
for capacity is the 521 (or 2xx) count, not the total.

Fixed by `deploy/systemd/caddy.service.d/override.conf` (restart policy + memory
cap), `dial_timeout` in the Caddyfile, a shallower gunicorn backlog, swap, and a
Cloudflare rule blocking the scraper's forged bare-host `Referer` on `/dbpub/`
as well as `/ccass/`. The *reason* it went unnoticed for five days is tracked
separately — see "Monitoring" above and renavon-monorepo#1612.

## Converge: how `deploy/` reaches the box

`deploy/` used to be documentation — nothing installed it, and the "source of
truth" headers were a claim. Since 2026-09 `deploy/converge.sh` installs the
tracked units and the Caddyfile on every deploy tick, armed by `converge = true`
in `deploy/site.toml`. Edit a unit here, push, and the box has it within ~2
minutes; hand-edit the box and it is reverted just as fast.

```bash
# What would change, without changing it (safe anywhere, needs no root):
CONVERGE_DRY_RUN=1 REPO_DIR=$PWD bash deploy/converge.sh
```

It needs one sudoers grant, installed once:

```bash
echo 'webbsite ALL=(root) NOPASSWD: /srv/webbsite/deploy/converge.sh' \
  | sudo tee /etc/sudoers.d/webbsite-converge
sudo chmod 0440 /etc/sudoers.d/webbsite-converge
sudo visudo -c
```

Without it every deploy fails at the converge step with `sudo: a password is
required` and **does not reload** — the old code keeps serving, the edge is not
purged, and `systemctl --failed` shows it. That is the intended failure: a box
whose config did not apply must not take the new code.

**What that grant means.** A systemd unit's `ExecStart` runs as root, so on this
box **merge access to this repo is root access**. The repo is public to read;
merge is not, and that is the boundary. Never widen the grant beyond that one
path, and never hand it to anything less trusted than a merge.

## Day-to-day
| Command | Purpose |
|---|---|
| `systemctl status webbsite` | App health |
| `journalctl -u webbsite -f` | App logs |
| `systemctl status caddy` / `journalctl -u caddy` | Edge/TLS |
| `sudo -u postgres psql enigma` | DB shell |
| `ufw status verbose` | Firewall rules |
| `vmtouch /var/lib/postgresql/17/main` | Page-cache residency of the DB |

### Deploy-contract gotcha: preload_app vs `systemctl reload` (2026-07-16 incident)
Gunicorn does **not** reload application code on SIGHUP when `preload_app = True` —
workers are recycled from the stale master image while Jinja reads new templates
from disk. A deploy whose templates call newly-added Python (a Jinja global,
filter, or context key) then 500s until a full `systemctl restart`. This took
orgdata.asp down on 2026-07-16 (#20 reverted it). `gunicorn.conf.py` therefore
pins `preload_app = False`; if preload is ever re-enabled, the site-deploy step
for this site must switch from `reload` to `restart` first.
