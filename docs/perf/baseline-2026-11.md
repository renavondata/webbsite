# Latency baseline, 2026-11

The scoreboard for the latency programme. Every PR that changes a route's speed
updates its row (before → after) and links itself.

**Targets:** every page p95 ≤ 500 ms at the origin, search ≤ 200 ms, and the 8 s
statement timeout never reached. Why those numbers: web.dev rates TTFB ≤ 0.8 s
as "good", and network time comes on top of origin time. Google's crawl-budget
guide says that when latency rises, "Google crawls less", which matters for a
site of this size. The 2026-09-26 crawl saturated the origin.

**How measured:**
- Sentry spans, 30 days to 2026-11-01: `is_transaction:true project:webbsite`,
  grouped by transaction. Sentry samples about 5% of transactions.
- From #86 on, the `Server-Timing` header and the gunicorn access log.
- From #87 on, the daily route check's TSV.
- Prod SQL: `docs/perf/top_statements.sql` and `docs/perf/sizing.sql`, run
  through `scripts/pgq.py` (read-only).

## Site-wide

- **Overall:** p50 13 ms, p95 48 ms. About 5,700 sampled transactions over 1 s
  out of 5.58M.
- **Routes over budget:** about 60 with p95 > 500 ms; about 35 > 1 s.
- **Worst:** esstop 7.0 s, dishkcaltype 5.5 s and leagueDirsHK (max 50 s).
- **Search:** searchpeople's DB spans have p95 15 ms, but a cold common name
  ("jayne": 35k of 14.5M rows) hit the 8 s timeout (WEBBSITE-3C).

## Prod facts (2026-11-01)

| | |
|---|---|
| Postgres | 17.10, Ubuntu 24.04 (systemd 255) |
| Database | 78 GB, collation `C.UTF-8` (Postgres sorts by codepoint, the same as Python's default) |
| Box | 4 vCPU, 8 GB RAM (about 7.4 GB page cache), disk 165 GB, 60 % used, 67 GB free |
| Postgres memory | shared_buffers 2 GB, effective_cache_size 6 GB, work_mem 96 MB, random_page_cost 1.1 |
| Schema owner | `webbsite`, for both `enigma` and `ccass` |
| I/O | 26.8 % of statement time is block reads, 0.142 ms per read (mostly OS page cache); 12 TB read in 45 days |
| Hot read set | `ccass.holdings` (23 GB) + `ccass.parthold` (23 GB) = 85 % of blocks read; then `organisations` and `directorships` |
| `ccass.dailylog.atdate` | correlation 0.53: one date's rows are partly scattered |

**What reads the most.** From `pg_stat_statements` over 45 days:

- **natperson's positions query:** 8.1M calls, mean 11 ms. It leads total
  time through crawler volume, not cost per call.
- **chistory:** mean 372 ms, max 4.4 s. Cost is a per-row
  `enigma.outstanding()` call.
- **portchg/cholder recursive `parthold` scans:** mean 865 ms, of which about
  640 ms is reading blocks.
- **The daily pg_dump backup:** reads all of holdings and parthold (46 GB) every
  day, 36 runs of about 430 s each.

**Disk decision: no resize needed.**
- Everything planned (people_search about 6 GB, 8 indexes about 2 GB, the quotes
  covering index up to 1.8 GB) brings the disk to about 65 % used in steady
  state, against a 70 % limit.
- A rebuild peaks at about 75 % (old copy, sort temp and WAL), against 90 %.

**RAM decision: not yet.**
- The plan's rule is to move to a bigger box when disk-read share > 30 %, ms per
  read > 0.3 and the hot read set > 5.5 GB.
- Today: 26.8 %, 0.142 ms and 46 GB. Only the hot-read-set condition is met.
- Query shape comes first. Measure again after phases 4 and 5.

## Routes (Sentry, 30 days)

Fix types come from the 2026-11 route audit:
- **A:** an index or query rewrite;
- **B:** compute once per data version (`precompute.py`);
- **triage:** not yet analysed.

"Plan PR" refers to the numbered steps of the programme plan.

| route | p50 ms | p95 ms | max ms | fix type | plan PR |
|---|---:|---:|---:|---|---|
| `dbpub_statistics.esstop` | 2521 | 7028 | 7500 | B precompute | 10a |
| `sitemap.sitemap_index` | 6033 | 6033 | 6033 | B precompute | 10a |
| `dbpub_incorporations.dishkcaltype` | 115 | 5465 | 7181 | B precompute | 10c |
| `dbpub_statistics.dirs_hk_per_person` | 1905 | 5068 | 5068 | B precompute | 10b |
| `dbpub_statistics.namechange_hk` | 3207 | 4955 | 4955 | B precompute | 10a |
| `dbpub_incorporations.incukcaltype` | 2790 | 4952 | 4952 | B precompute | 10c |
| `dbpub_transport.hkflighthist` | 2995 | 4926 | 4926 | A index/rewrite | 14d |
| `dbpub_statistics.dirs_hk_age_distn` | 644 | 4745 | 4745 | B precompute | 10b |
| `dbpub_statistics.hk_dirs_type_sex` | 4659 | 4659 | 4659 | B precompute | 10b |
| `ccass.ncipchg` | 3252 | 4652 | 4652 | A index/rewrite | 14a |
| `dbpub_statistics.league_dirs_hk` | 1016 | 4556 | 50054 | B precompute | 8 / 17 |
| `dbpub_listings.listed` | 1142 | 4530 | 12514 | B precompute | 8 / 17 |
| `dbpub_statistics.boardcomp` | 785 | 4499 | 4790 | B precompute | 10b |
| `sitemap.sitemap_child` | 52 | 4036 | 4036 | B precompute | 10a |
| `ccass.ipstakes` | 2084 | 3937 | 4061 | A index/rewrite | 14a |
| `ccass.cconc` | 1929 | 3260 | 3276 | A index/rewrite | 14a |
| `dbpub_incorporations.inchksurvive` | 1528 | 3036 | 3036 | B precompute | 8 |
| `dbpub_statistics.hpw` | 581 | 2615 | 2685 | A index/rewrite | 14f |
| `ccass.cholder` | 253 | 2614 | 3694 | A index/rewrite | 14c |
| `dbpub_sfc.sfc_licount` | 1236 | 2505 | 4994 | B precompute | 10d |
| `dbpub_statistics.prhdistricts` | 984 | 2245 | 2245 | B precompute | 10a / 14e |
| `dbpub_solicitors.hk_sols_moves` | 669 | 2119 | 2119 | B precompute | 10a |
| `pages.status` | 1975 | 1975 | 1975 | triage (phase 5 tail) | — |
| `dbpub_statistics.hkflightscan` | 864 | 1928 | 1928 | B precompute | 10a |
| `dbpub_statistics.advbyrole` | 1372 | 1900 | 1900 | B precompute | 10d / 17 |
| `ccass.portchg` | 209 | 1869 | 2122 | A index/rewrite | 14c |
| `dbpub_statistics.judgments` | 271 | 1847 | 1847 | A index/rewrite | 14d |
| `dbpub_statistics.namechange_hk_listed` | 782 | 1813 | 1813 | B precompute | 10a |
| `dbpub_statistics.payleague` | 1443 | 1785 | 1785 | B precompute | 10d |
| `dbpub_market_data.mcap` | 613 | 1717 | 1818 | B precompute | 10d |
| `dbpub_short_selling.shortdate` | 658 | 1593 | 1616 | A index/rewrite | 14d |
| `ccass.brokhist` | 427 | 1543 | 1543 | A index/rewrite | 14b |
| `ccass.bigchangespart` | 447 | 1499 | 2069 | A index/rewrite | 14d |
| `dbpub_market_data.mcaphist` | 717 | 1382 | 1405 | B precompute | 10d |
| `dbpub_statistics.hksols` | 941 | 1331 | 1331 | B precompute | 10a |
| `dbpub_statistics.inedhkdstncos` | 308 | 1323 | 1323 | B precompute | 10b |
| `ccass.cconchist` | 370 | 1250 | 1335 | A index/rewrite | 14b |
| `dbpub_buybacks.buybacksum` | 525 | 1231 | 1282 | A index/rewrite | 14e |
| `dbpub_buybacks.buybacks_time` | 486 | 1201 | 1201 | A index/rewrite | 14e |
| `ccass.ctothist` | 167 | 1171 | 1209 | A index/rewrite | 14b |
| `dbpub_incorporations.oldest_hk_cos` | 275 | 1145 | 1205 | B precompute | 10a |
| `dbpub_incorporations.inchkcaltype` | 171 | 1099 | 1387 | B precompute | 10c |
| `dbpub_statistics.hk_stocks_by_board_lot` | 236 | 1056 | 1056 | A index/rewrite | 14e |
| `dbpub_statistics.payleague_org` | 763 | 1040 | 1040 | B precompute | 10d |
| `dbpub_market_data.alltotrets` | 519 | 914 | 924 | A index/rewrite | 14f / 17 |
| `dbpub_statistics.hkflights` | 358 | 892 | 912 | triage (phase 5 tail) | — |
| `dbpub_incorporations.disfcal` | 171 | 837 | 891 | triage (phase 5 tail) | — |
| `dbpub_statistics.auditorchanges` | 277 | 781 | 781 | triage (phase 5 tail) | — |
| `ccass.bigchangesissue` | 263 | 778 | 1152 | triage (phase 5 tail) | — |
| `ccass.nciphist` | 213 | 770 | 770 | triage (phase 5 tail) | — |
| `dbpub_corporate.holders` | 223 | 763 | 790 | triage (phase 5 tail) | — |
| `ccass.chistory` | 346 | 758 | 1486 | A index/rewrite | 14b |
| `dbpub_sfc.sfc_changes` | 362 | 728 | 728 | triage (phase 5 tail) | — |
| `ccass.reghist` | 174 | 727 | 805 | triage (phase 5 tail) | — |
| `dbpub_solicitors.hk_sol_firms` | 102 | 691 | 691 | triage (phase 5 tail) | — |
| `dbpub_corporate.splits` | 343 | 677 | 677 | triage (phase 5 tail) | — |
| `dbpub_statistics.reportspeed` | 204 | 666 | 666 | triage (phase 5 tail) | — |
| `dbpub_statistics.adviserships` | 48 | 633 | 2582 | triage (phase 5 tail) | — |
| `dbpub_incorporations.incfcal` | 237 | 612 | 978 | triage (phase 5 tail) | — |
| `dbpub_statistics.str_route` | 180 | 605 | 1681 | A index/rewrite | 14f |
| `dbpub_statistics.bornyear` | 45 | 601 | 751 | triage (phase 5 tail) | — |
| `dbpub_statistics.hksolsdom` | 189 | 579 | 599 | triage (phase 5 tail) | — |
| `dbpub_statistics.hklistcowebs` | 302 | 533 | 533 | triage (phase 5 tail) | — |
| `dbpub_statistics.prh_blocks` | 361 | 517 | 517 | triage (phase 5 tail) | — |
| `dbpub_statistics.prh_estates` | 321 | 459 | 459 | within budget | — |
| `dbpub_listings.delisted` | 210 | 425 | 434 | within budget | — |
| `dbpub_statistics.pricescsv` | 409 | 409 | 409 | within budget | — |
| `dbpub_sdi.sdilatest` | 89 | 363 | 363 | within budget | — |
| `dbpub_sdi.sdiissue` | 95 | 337 | 2002 | within budget | — |
| `dbpub_solicitors.hk_sols` | 254 | 331 | 331 | within budget | — |
| `dbpub_statistics.hpup` | 229 | 329 | 329 | within budget | — |
| `dbpub_statistics.prh_floors` | 263 | 328 | 328 | within budget | — |
| `dbpub_statistics.prh_units` | 103 | 316 | 414 | within budget | — |
| `dbpub_statistics.rightsoo` | 153 | 314 | 314 | within budget | — |
| `dbpub_statistics.latest_dirs_hk` | 234 | 312 | 312 | within budget | — |
| `dbpub_statistics.roles` | 304 | 304 | 304 | within budget | — |
