# ADR 001 — Pull-based R2 → Postgres refresh

Date: 2026-07-19 · Status: accepted

## Context

The archive froze at 2025-10-10 when David Webb's scrapers retired. Collection
was revived as renavon-monorepo pipelines (Scrapy → bronze R2 → ClickHouse →
dbt), which now produce webbsite-shaped exports for CCASS holdings/dailylog/
bigchanges, issued shares, quotes (quotes/pquotes/unquotes) and the settlement
calendar. Fresh rows must reach this droplet's Postgres (`enigma`/`ccass`)
daily without compromising the archive's integrity or the host's security
posture (tailnet-only SSH, no inbound surface beyond Cloudflare→Caddy).

## Decision

A **pull-based loader** on the droplet (`scripts/refresh/refresh.py`, PEP 723
uv script, systemd timer 02:45/06:45 UTC):

- **The droplet pulls; renavon pushes nothing.** Renavon's scoped sync writes
  Parquet + `_manifest.json` to `r2://hkdata/webbsite-refresh/`; the loader
  reads with an Object-Read-only R2 token. Renavon holds no credentials to
  this host or database.
- **Manifest-gated.** Renavon writes the manifest only after a fully clean
  export run; the loader hard-fails on a table-set mismatch and no-ops when
  the manifest's watermarks don't advance past `enigma.log`.
- **One transaction.** TEMP-table staging → validation (row counts vs
  manifest; hard freeze guard `> 2025-10-10`; PK-duplicate check; bigchanges
  sanity bound; issuedshares FK quarantine of renavon-minted issueids) →
  `INSERT … ON CONFLICT DO UPDATE` into the 9 targets (holdings and parthold
  from one file) → forward-only watermark UPDATE — all commit or roll back
  together, so the site can never claim freshness the data doesn't have.
- **Delete-less role.** `webbsite_refresh` has SELECT/INSERT/UPDATE on the 9
  targets + `UPDATE(val)` on `enigma.log` + MAINTAIN (ANALYZE) — no DELETE,
  no TRUNCATE, no DDL. Re-running a load is a no-op; corrections flow by
  renavon re-export + idempotent re-apply; row retraction is admin-only SQL.
- **Short edge TTLs instead of purges.** The freshness rework (webbsite #25)
  put mutable "latest" views on a 1h/4h TTL ladder keyed off `enigma.log`
  watermarks, so a load becomes visible within ≤4h with no cache purge and no
  coupling between the loader and Cloudflare.

## Alternatives rejected

- **SSH push from renavon** — grants an external system shell on the origin;
  inverts the trust boundary for zero functional gain.
- **Direct Postgres writes from renavon** — requires exposing Postgres beyond
  localhost (or tailnet-joining a Render cron) and couples renavon deploys to
  this database's schema; the R2 feed is a clean, replayable interface.
- **Logical replication from a renavon-side Postgres** — no such Postgres
  exists (renavon is ClickHouse); introducing one to replicate 8 tables is
  pure operational surface.
- **Purge-based freshness** — edge purges couple the loader to Cloudflare
  credentials and fail unsafe (a purge without a load serves slow misses; a
  load without a purge serves stale for 30d under the old TTLs). The TTL
  ladder self-heals within hours with neither credential nor coupling.

## Consequences

- The site's freshness lag is bounded by feed-publish (22:00 UTC) + load
  (02:45 UTC) + edge TTL (≤4h): fresh data is user-visible by ~07:00 UTC
  worst-case, no purges involved.
- `issuedshares` rows for post-freeze listings (renavon-minted issueids ≥9e6)
  quarantine until `enigma.issue` itself is refreshed — a documented gap, not
  an error; the dailylog/holdings paths carry those securities meanwhile.
- A wedged upstream (no new manifest) leaves the loader silently no-opping —
  covered by the healthcheck's freshness budget (success ping only while
  `CCASSdateDone` is within 4 trading days of the latest calendar row).
