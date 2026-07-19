# Deploy artefacts (droplet `webbsite-web`)

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
  systemd/webbsite.service           # gunicorn unit (captured from the box)
  systemd/webbsite-refresh.service   # daily R2 -> Postgres loader (oneshot)
  systemd/webbsite-refresh.timer     # fires the loader 02:45 + 06:45 UTC
  Caddyfile                          # /etc/caddy/Caddyfile (captured from the box)
  README.md
```

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
HC_URL=https://hc-ping.com/<uuid>   # optional healthchecks.io check (daily, grace 6h)
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

**Monitoring:** the loader pings `HC_URL` on success **only while fresh**
(`CCASSdateDone` within 4 trading days of the latest `ccass.calendar` row) and
`/fail` otherwise — so a silently-wedged upstream trips the healthcheck even
though the loader itself exits 0. Exit codes: 0 loaded/up-to-date, 1 validation
(nothing committed), 2 infrastructure.

**Corrections / rollback:** renavon re-exports and the loader re-applies
(idempotent upserts). Row *retraction* is admin-only SQL by design — the loader
role cannot DELETE. Pages self-heal within the ≤4h edge TTL; no purge needed.

**Local validation:** see `tests/refresh/` (schema fixture + feed generator +
the negative flags) — the full ladder ran green 2026-07-19: dry-run, real load,
idempotent no-op rerun, `--poison`/`--bad-counts`/`--pre-freeze`/missing-log-key
each exit 1 with nothing committed, role-parity denials, and a real 3.9M-row
feed load in 43s.

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
