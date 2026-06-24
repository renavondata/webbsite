# Deploy artefacts (droplet `webbsite-web`)

Hosts the **frozen** Webb-site archive (the late David Webb's CC-BY data, data stops 2025-10-10)
on a single DigitalOcean droplet, migrated off Render. Self-hosted PostgreSQL + gunicorn under
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
  systemd/webbsite.service   # gunicorn unit (captured from the box)
  Caddyfile                  # /etc/caddy/Caddyfile (captured from the box)
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

## Rebuild the data (rare)
The archive is static, so there is no scheduled import. To reload, restore the `pg_dump` archive
held in Cloudflare R2 (or rebuild from the canonical Google Drive release):
```bash
# directory-format parallel restore as postgres, objects owned by webbsite
sudo -u postgres pg_restore -d enigma -j4 --no-owner --role=webbsite --clean --if-exists <dumpdir>
sudo -u postgres vacuumdb -d enigma --analyze-only -j4
systemctl reload webbsite
```

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
