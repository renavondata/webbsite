-- Inputs to the RAM/disk decision (plan phase 0 / phase 7). Read-only:
--   uv run python scripts/pgq.py -f docs/perf/sizing.sql
\echo == database size, collation, stats age
SELECT pg_size_pretty(pg_database_size('enigma')) AS db_size, datcollate, datctype
FROM pg_database WHERE datname = 'enigma';
SELECT stats_reset, now() - stats_reset AS stats_age FROM pg_stat_statements_info;

\echo == I/O share of statement time and ms per block read (< 0.05 = page cache, > 0.3 = device)
SELECT round((100 * sum(shared_blk_read_time) / NULLIF(sum(total_exec_time), 0))::numeric, 1) AS io_pct,
       round((sum(shared_blk_read_time) / NULLIF(sum(shared_blks_read), 0))::numeric, 3)    AS ms_per_read,
       pg_size_pretty(sum(shared_blks_read) * 8192)                                            AS read_since_reset
FROM pg_stat_statements;

\echo == hot read set: relations making up 90% of blocks read from disk
WITH r AS (
  SELECT relid::regclass AS rel, heap_blks_read + coalesce(idx_blks_read, 0)
         + coalesce(toast_blks_read, 0) AS blks,
         pg_total_relation_size(relid) AS bytes
  FROM pg_statio_user_tables
), c AS (
  SELECT rel, blks, bytes,
         sum(blks) OVER (ORDER BY blks DESC) / NULLIF(sum(blks) OVER (), 0) AS cum
  FROM r WHERE blks > 0
)
SELECT rel, blks, pg_size_pretty(bytes) AS size, round(cum::numeric, 3) AS cum
FROM c WHERE cum <= 0.9 OR cum = (SELECT min(cum) FROM c WHERE cum > 0.9)
ORDER BY blks DESC;

\echo == buffer cache settings
SELECT name, setting, unit FROM pg_settings
WHERE name IN ('shared_buffers', 'effective_cache_size', 'work_mem', 'maintenance_work_mem',
               'random_page_cost', 'effective_io_concurrency', 'jit');

\echo == tables the plan touches: rows, size, owner
SELECT c.oid::regclass AS rel, c.reltuples::bigint AS rows,
       pg_size_pretty(pg_relation_size(c.oid)) AS heap,
       pg_size_pretty(pg_indexes_size(c.oid)) AS indexes,
       pg_get_userbyid(c.relowner) AS owner
FROM pg_class c
WHERE c.oid IN ('enigma.people'::regclass, 'enigma.alias'::regclass, 'enigma.organisations'::regclass,
                'ccass.dailylog'::regclass, 'ccass.bigchanges'::regclass, 'ccass.quotes'::regclass,
                'ccass.holdings'::regclass, 'ccass.parthold'::regclass, 'enigma.issuedshares'::regclass,
                'enigma.flights'::regclass, 'enigma.judgments'::regclass, 'enigma.capchanges'::regclass,
                'enigma.prhflat'::regclass, 'enigma.sfcshort'::regclass, 'enigma.directorships'::regclass,
                'enigma.adjustments'::regclass)
ORDER BY pg_relation_size(c.oid) DESC;

\echo == schema owners
SELECT nspname, pg_get_userbyid(nspowner) AS owner FROM pg_namespace WHERE nspname IN ('enigma', 'ccass');

\echo == physical order of ccass.dailylog.atdate (1 = clustered, ~0 = scattered)
SELECT tablename, attname, correlation FROM pg_stats
WHERE schemaname = 'ccass' AND tablename IN ('dailylog', 'bigchanges') AND attname IN ('atdate', 'partid');
