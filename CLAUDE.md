# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Webb-site is an archive of 35 years of Hong Kong stock-market data — companies, people, securities,
corporate events, and CCASS beneficial ownership. The public site is a **Flask + Jinja2** (Python
3.13) reimplementation of the original Classic ASP site, backed by **PostgreSQL** (schemas `enigma`
+ `ccass`).

The data was compiled by the late **David Webb**, who released it under CC-BY 4.0. The original
dedicated server and its VB.NET scrapers were retired in late 2025, so the published dataset ends
**2025-10-10**. Data collection is being **revived** as renavon-monorepo pipelines that will feed
fresh data back into this database — see [Data revival](#data-revival). The retired VB.NET / MySQL /
Classic ASP / Access tiers are summarised under [Historical system](#historical-system).

## Hosting & Architecture

The site is served as a read-only archive that (for now) does not update; the [Data revival](#data-revival)
work will change that. Deployment (self-hosted DigitalOcean droplet, migrated off Render.com in May
2026 — managed cloud Postgres is poor value for a database that rarely changes):

- **App:** gunicorn (`gunicorn.conf.py`, gthread workers) under systemd, bound to `127.0.0.1:8000`.
- **Database:** self-hosted **PostgreSQL 17**, localhost-only, schemas `enigma` + `ccass`. The DB is a
  *derived artifact* — restorable from a `pg_dump` archive (kept in Cloudflare R2) and ultimately from
  the canonical Google Drive release.
- **TLS/edge:** **Caddy** terminates TLS on `:443` and reverse-proxies to gunicorn; **Cloudflare**
  fronts the site. The app emits `CDN-Cache-Control` with an aggressive, data-age TTL ladder
  (`webbsite/__init__.py`); since the data is static today, edge cache hit rates are high.
- **Hardening:** UFW denies inbound except `:443` from Cloudflare IP ranges (the origin is not exposed
  directly); SSH is over Tailscale only.
- **Deploy:** pushing to `master` *is* the deploy (a `site-deploy` timer fast-forwards, runs
  `uv sync --frozen`, reloads the service, and purges the Cloudflare edge cache). Infra-as-code
  (systemd unit, Caddyfile, ops runbook) lives in `deploy/` — see `deploy/README.md`.

> This is a **public repository.** Operational secrets and host-identifying details (origin IP, host
> identifiers, DB passwords, API tokens) are intentionally **not** committed here; they live in the
> operator's private notes. Keep it that way when editing.

### Status

- The public site is live and reimplemented in Flask. ASP→Flask fidelity was verified against an
  archived crawl of the original site (`tests/compare_asp_flask.py` vs `tests/ground_truth/asp_cache/`,
  archived in R2 — see `deploy/README.md`): the crawled route set (254 routes) matches the archived
  ASP 1:1.
- **Deferred / not implemented:** authenticated features (webbmail, vote, pollman, mailman), the
  database-editing interface (dbeditor), and some specialty routes — these depend on auth/write paths
  that don't apply to a read-only public archive.

## License and Attribution

The Webb-site datasets and software are released under the **Creative Commons CC-BY 4.0 license** —
free for commercial or non-commercial use with attribution. Data are provided "as is" without
liability.

Users are encouraged to:
- Mirror this repository on their own servers with public access
- Build upon these datasets and make them freely available
- Acknowledge Webb-site.com as the source when republishing

See `COPYRIGHT` for full details.

## Data Model

The live database has two schemas: `enigma` (core company/person/event data) and `ccass` (beneficial
ownership). Full notes: [`docs/database/enigma-schema.md`](docs/database/enigma-schema.md) and
[`docs/database/ccass-schema.md`](docs/database/ccass-schema.md).

### Key identifiers

- **issueID** — a security (links CCASS, quotes, events)
- **personID** — a person *or* organisation (one namespace for both)
- **stockCode** — HKEX code (HKEX recycles codes; historical mappings live in `stockListings`)
- **partID** — a CCASS participant
- **eventID** — a corporate action

### Enigma schema (core data)

- **Naming conventions.** Organisations: `name1` is unique (disambiguated with domicile code /
  incorporation or dissolution date). People: `(name1, name2)` is unique (`name2` may be null);
  English given name first (`Chan, David Chi Keung`); married women keep the maiden name last
  (`Lam Cheng, Yuet Ngor`). Simplified `dn1`/`dn2` and a 5-letter `namestem` are trigger-maintained.
- **directorships** — corporate officers. Right-open interval (includes `from`, excludes `until`).
  Each row has a `positionID` into `positions`, which carries `status` (Executive / Non-executive /
  INED) and `rank` (0 = Supervisory, 1 = Main Board).
- **adviserships** — corporate advisers (continuing roles like auditors vs one-time roles like IFAs).
- **Ownership analysis** — `ownerprof`, `ownerstks`, `sholdings` (snapshot ownership profiles and
  ultimate controllers with economic-interest percentages).
- **Committee analysis** — `comeets`, `comex`, `compos`, `coms` (board committees and attendance).
- **Content** — `stories`, `sources` (`sourceID = 1` is Webb-site.com), `personstories`,
  `storytags`, `categories`, `cattree`, `sfcnews`.
- **SFC licensees** and **Law Society** records populate directorships/positions; `lsemps` links a
  `personID` to an employer organisation.

### CCASS schema (beneficial ownership)

Tracks ownership through Hong Kong's Central Clearing and Settlement System, back to **2007-06-26**
(HKEX's own search shows only ~1 year).

- **holdings** — PK `(issueID, partID, atDate)`; optimised for holder changes within a stock.
- **parthold** — PK `(partID, issueID, atDate)`; optimised for a participant's holdings across stocks.
- **Change-only storage:** only *changes* are recorded, not unchanged daily holdings (queries read
  the latest `atDate ≤ d`). On delisting, final holdings are set to zero.
- **dailylog** — daily summaries incl. concentration metrics (top 5 / top 10).
- **quotes** — historic prices/volumes from the Daily Quotations Sheets since 1994-01-03;
  **pquotes** — parallel-trading quotes during splits/consolidations.
- **calendar** — settlement calendar (`tradeDate` → `settleDate`, normally T+2); **specialdays** —
  holidays / bad-weather / early closes; **shortnames** — SEHK short-names.
- **bigchanges** — significant ownership changes.
- Depends on enigma: `issue`, `organisations`, `secTypes`, `stockListings`, `listings` (board codes:
  1 = Main Board, 20 = GEM, 23 = REITs).

### Query gotchas (data facts)

- Dates are stored in **Hong Kong time**; CCASS queries must respect the settlement calendar.
- Currency: multi-currency via `currpair` / `forexrates`; issue currency is
  `LEFT JOIN currencies c ON i.SEHKcurr = c.id`, `COALESCE(c.currency, 'HKD')` (`enigma.issue` has no
  `currency` column).
- **Temporary/parallel counters:** suspended stocks may trade on temporary codes; `shortnames`
  maps historical codes with `fromDate`/`toDate`.
- **enigma.log** carries watermark keys used by the original scrapers and (going forward) the refresh
  loader: `CCASSdateDone`, `MBquotesDate`, `GEMquotesDate`, etc.

## Flask Application

```
app.py                         # entry point, creates the Flask app
webbsite/
├── __init__.py                # app factory + CDN-Cache-Control TTL ladder
├── config.py                  # environment/config
├── db.py                      # database helpers
├── asp_helpers.py             # ASP-compatibility functions (ported from functions1.asp)
├── diskcache.py               # JSON disk cache for heavy deterministic pages
├── routes/                    # route blueprints (search, quotes, events, dbpub/, ccass, articles, …)
├── sql/                       # SQL used by the app
└── templates/                 # Jinja2 templates (base.html, header.html, includes/, …)
```

Dependencies are managed with **`uv`** (`pyproject.toml` + `uv.lock`); there is no `requirements.txt`.
Run locally with `uv sync` then `uv run flask run` (see the top-level `README.md`).

### ASP → Flask / PostgreSQL patterns

**Always use parameterized queries** (never f-string interpolation — SQL-injection risk):

```python
from webbsite.db import get_db_connection

with get_db_connection() as conn:
    org = conn.execute(
        "SELECT * FROM enigma.organisations WHERE personID = %s",
        (person_id,),
    ).fetchone()
```

Request params go through `asp_helpers` (`get_int`, `get_str`, `get_bool`, `rem_space`); `apos()` is
retained only for parity and is deprecated in favour of parameterization.

**MySQL → PostgreSQL differences to watch for:**
- Modulo `%` → `MOD()`; `ROUND(double, int)` needs `ROUND(expr::numeric, n)`.
- Full-text search uses `to_tsvector()` / `to_tsquery()` (sanitize user input before `to_tsquery`).
- All tables are schema-qualified (`enigma.organisations`, `ccass.holdings`).
- Boolean aggregation: `SUM(bool)` → `SUM(bool::int)`; `LPAD(numeric)` → cast `::text` first.
- Local dev DSN: `postgresql://postgres:@localhost:5432/enigma_pg`; production reads `DATABASE_URL`.

## Data revival

Reviving collection is tracked in the **renavon-monorepo** roadmap
(`docs/superpowers/specs/2026-07-15-webbsite-revival-roadmap-design.md` in that repo). The plan
reimplements the retired scrapers as Scrapy pipelines (fetch → R2 bronze → ClickHouse → dbt) and
adds a reverse-refresh path that writes fresh, post-2025-10-10 rows back into this Postgres
(`enigma`/`ccass`) under a restricted role, keyed by the `enigma.log` watermarks above. Priority
order: **CCASS** (its ~1-year HKEX lookback makes the gap unrecoverable from ~Oct 2026), then quotes,
then SDI, then the long tail.

## Historical system

The original multi-tier system is **retired** and its source is **not** in this repo (it lives in
David Webb's canonical Google Drive release, under CC-BY 4.0, and in this repo's git history):

- **VB.NET scrapers** (`ScraperKit.vb`, `CCASS.vb`, `Quotes.vb`, `SFC.vb`, `CR.vb`, `UKCH.vb`, … ~20
  modules) — console apps that scraped HKEX/SFC/CR/Law Society/etc. on Windows, logging progress via
  `enigma.log` (`GetLog`/`PutLog`) and alerting via `ErrMail`.
- **MySQL 8.0** databases with master→slave replication; extra schemas `private` (keys), `mailvote`
  (login/polls), `iplog` (bot protection) that are **not** part of the live PostgreSQL archive.
- **Classic ASP** web interface (`dbpub/`, `ccass/`, `webbmail/`, `vote/`, `dbeditor/`) — the site
  the Flask app faithfully ports.
- **Access frontend** + a custom role/privilege editing system (`wsroles`/`wsprivs`, enforced by
  MySQL triggers) for manual data curation.

Original scraper schedules (for reference; **superseded** — the renavon pipelines set their own
cadence): Quotes 22:00 → CCASS 04:00 (CCASS depends on Quotes), SFC/GetFinancialReports overnight,
most other sources on weekday evenings, UKCH continuous. The load-bearing dependency was **CCASS
after Quotes**, and missing a day of CCASS for a delisted stock was unrecoverable (HKEX deletes it
immediately) — which is exactly why the revival treats CCASS as top priority.

---

- Assume Flask is always running with the latest code, and never stop or start it unless told to explicitly.
