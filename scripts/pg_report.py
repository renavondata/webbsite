#!/usr/bin/env python3
"""Where the database spends its time -- the measurement that decides a resize.

    sudo -u postgres /srv/webbsite/.venv/bin/python scripts/pg_report.py [--days N]
    DATABASE_URL=... python scripts/pg_report.py     # any role sees its own statements

Reads pg_stat_statements (loaded by deploy/postgresql/conf.d/webbsite.conf) and
the per-table stats, and prints: the top statements by total and by mean time,
the cache-hit ratio per big table (how much of the 72 GB actually lives in the
8 GB box's memory), temp-file spills (work_mem too small), and how much of the
busy time is I/O (track_io_timing). Read-only; no arguments change anything.

The plan (2026-09-16) says: two weeks of this before any resize decision.
"""

from __future__ import annotations

import argparse
import os
import sys

import psycopg2


def q(cur, sql, params=None):
    cur.execute(sql, params)
    return cur.fetchall()


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--top", type=int, default=15)
    args = ap.parse_args()
    dsn = os.environ.get("DATABASE_URL") or "dbname=enigma"
    conn = psycopg2.connect(dsn, options="-c statement_timeout=60s")
    cur = conn.cursor()

    (loaded,) = q(cur, "SELECT count(*) FROM pg_extension WHERE extname = 'pg_stat_statements'")[0]
    if not loaded:
        print("pg_stat_statements is not installed (needs the restart after the conf.d change)")
        return 2

    print("== reset / uptime")
    for r in q(cur, "SELECT stats_reset, now() - stats_reset FROM pg_stat_statements_info"):
        print(f"   statements since {r[0]} ({r[1]})")

    print(f"\n== top {args.top} statements by total time")
    rows = q(cur, """
        SELECT round(total_exec_time::numeric / 1000, 1) AS total_s, calls,
               round(mean_exec_time::numeric, 1) AS mean_ms,
               round(100 * shared_blks_hit / nullif(shared_blks_hit + shared_blks_read, 0), 1) AS hit_pct,
               round((blk_read_time + blk_write_time)::numeric / 1000, 1) AS io_s,
               temp_blks_written, left(regexp_replace(query, '\\s+', ' ', 'g'), 110)
        FROM pg_stat_statements ORDER BY total_exec_time DESC LIMIT %s""", (args.top,))
    print("   total_s   calls   mean_ms  hit%%   io_s  temp_blks  query")
    for r in rows:
        print(f"   {r[0]:>7} {r[1]:>7} {r[2]:>9} {str(r[3] or '-'):>5} {r[4]:>6} {r[5]:>9}  {r[6]}")

    print(f"\n== top {args.top} statements by mean time (calls >= 20)")
    rows = q(cur, """
        SELECT round(mean_exec_time::numeric, 1), calls, round(max_exec_time::numeric, 1),
               left(regexp_replace(query, '\\s+', ' ', 'g'), 110)
        FROM pg_stat_statements WHERE calls >= 20 ORDER BY mean_exec_time DESC LIMIT %s""", (args.top,))
    print("   mean_ms   calls    max_ms  query")
    for r in rows:
        print(f"   {r[0]:>7} {r[1]:>7} {r[2]:>9}  {r[3]}")

    print("\n== I/O share of statement time")
    for r in q(cur, """
        SELECT round(sum(total_exec_time)::numeric / 1000), round(sum(blk_read_time)::numeric / 1000),
               round(100 * sum(blk_read_time) / nullif(sum(total_exec_time), 0), 1)
        FROM pg_stat_statements"""):
        print(f"   exec {r[0]}s, of which waiting on reads {r[1]}s ({r[2]}%)")

    print("\n== cache hit ratio, biggest tables (heap + index)")
    rows = q(cur, """
        SELECT s.schemaname || '.' || s.relname, pg_size_pretty(pg_total_relation_size(s.relid)),
               round(100.0 * (s.heap_blks_hit + coalesce(s.idx_blks_hit, 0))
                     / nullif(s.heap_blks_hit + s.heap_blks_read + coalesce(s.idx_blks_hit, 0) + coalesce(s.idx_blks_read, 0), 0), 1),
               s.heap_blks_read + coalesce(s.idx_blks_read, 0)
        FROM pg_statio_user_tables s ORDER BY pg_total_relation_size(s.relid) DESC LIMIT 12""")
    print("   table                              size       hit%   blocks read from disk")
    for r in rows:
        print(f"   {r[0]:<34} {r[1]:>8}   {str(r[2] or '-'):>5}   {r[3]}")

    print("\n== temp-file spills (work_mem too small for the sort/hash)")
    for r in q(cur, "SELECT temp_files, pg_size_pretty(temp_bytes) FROM pg_stat_database WHERE datname = current_database()"):
        print(f"   {r[0]} temp files, {r[1]} written since stats reset")

    print("\n== seq scans on big tables (a missing index shows up here)")
    for r in q(cur, """
        SELECT schemaname || '.' || relname, seq_scan, seq_tup_read, idx_scan
        FROM pg_stat_user_tables WHERE pg_total_relation_size(relid) > 500 * 1024 * 1024
        ORDER BY seq_tup_read DESC LIMIT 10"""):
        print(f"   {r[0]:<34} seq_scan={r[1]} rows_read_by_seq={r[2]} idx_scan={r[3]}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
