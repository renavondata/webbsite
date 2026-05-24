# Deploy artefacts (droplet `webbsite-web`)

Hosts the **frozen** Webb-site archive (the late David Webb's CC-BY data, data stops 2025-10-10)
on a single DigitalOcean droplet, migrated off Render. Self-hosted PostgreSQL + gunicorn under
systemd, fronted by Caddy + Cloudflare. Tracked here so changes go through PRs, not hand-edits.

## Topology
- **Droplet:** `webbsite-web`, `s-4vcpu-8gb`, region `sfo3`, VPC `default-sfo3` (co-located with
  `crhkguru-web` + `clickhouse`). Public IP `134.199.208.228`, private `10.124.0.4`.
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
```bash
ssh webbsite-web   # over Tailscale
sudo -u webbsite git -C /srv/webbsite pull --ff-only
sudo -u webbsite env HOME=/srv/webbsite /usr/local/bin/uv sync --frozen
systemctl restart webbsite
sleep 2
curl -fsS http://127.0.0.1:8000/health        # {"status":"ok"}
curl -fsS https://webbsite.renavon.com/health  # same via Caddy + Cloudflare
```

## Rebuild the data (rare)
The archive is static, so there is no scheduled import. To reload from a dump (e.g. the canonical
Google Drive archive, or a fresh `pg_dump` of the old Render DB while it still exists):
```bash
# directory-format parallel restore as postgres, objects owned by webbsite
sudo -u postgres pg_restore -d enigma -j4 --no-owner --role=webbsite --clean --if-exists <dumpdir>
sudo -u postgres vacuumdb -d enigma --analyze-only -j4
systemctl reload webbsite
```

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
11. Cut over: point Cloudflare `webbsite.renavon.com` at `134.199.208.228` (proxied); purge cache.
12. Decommission Render (web service `srv-d3p2o6s9c44c738krsv0` + db `webbsite-db`) after a soak;
    remove the temporary droplet IP from any allowlist.

## Day-to-day
| Command | Purpose |
|---|---|
| `systemctl status webbsite` | App health |
| `journalctl -u webbsite -f` | App logs |
| `systemctl status caddy` / `journalctl -u caddy` | Edge/TLS |
| `sudo -u postgres psql enigma` | DB shell |
| `ufw status verbose` | Firewall rules |
| `vmtouch /var/lib/postgresql/17/main` | Page-cache residency of the DB |
