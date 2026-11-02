-- Top statements by total time, with their I/O: the "what is slow on prod" list.
-- Read-only; run with:  uv run python scripts/pgq.py --csv -f docs/perf/top_statements.sql
-- Diff two runs by queryid rather than resetting pg_stat_statements.
SELECT queryid,
       calls,
       round(total_exec_time::numeric / 1000, 1)                         AS total_s,
       round(mean_exec_time::numeric, 1)                                 AS mean_ms,
       round(max_exec_time::numeric, 0)                                  AS max_ms,
       round(shared_blks_read::numeric / NULLIF(calls, 0), 0)            AS blks_read_per_call,
       round((shared_blk_read_time / NULLIF(calls, 0))::numeric, 1)      AS read_ms_per_call,
       temp_blks_written,
       left(regexp_replace(query, '\s+', ' ', 'g'), 160)                 AS query
FROM pg_stat_statements
WHERE dbid = (SELECT oid FROM pg_database WHERE datname = 'enigma')
ORDER BY total_exec_time DESC
LIMIT 40;
