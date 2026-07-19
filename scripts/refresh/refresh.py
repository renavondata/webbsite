# /// script
# requires-python = ">=3.12"
# dependencies = [
#     "boto3>=1.34",
#     "pyarrow>=16",
#     "psycopg2-binary>=2.9",
# ]
# ///
"""Pull-based R2 -> Postgres refresh loader (ADR 001).

Pulls the renavon `webbsite-refresh` feed (8 Parquet exports + _manifest.json,
produced daily by the renavon-webbsite-refresh cron) and upserts it into the
live enigma/ccass schemas under the restricted `webbsite_refresh` role, then
advances the enigma.log watermarks the Flask app's freshness layer
(webbsite/watermarks.py) reads.

Design invariants (see docs/architecture/decisions/001-*.md):
  * The droplet PULLS; renavon has no credentials to this host or database.
  * The manifest gates everything: written by renavon only after a fully
    clean export run, so a partial upstream snapshot is never loaded.
  * One transaction: staging, validation, upserts into all targets, and the
    watermark advance COMMIT (or roll back) together — the site can never
    claim a freshness the data doesn't have.
  * Idempotent upserts (INSERT ... ON CONFLICT DO UPDATE) under a role with
    NO DELETE/TRUNCATE/DDL: re-running a load is a no-op, corrections flow
    by re-export + re-apply, and row retraction is a documented admin path.
  * Hard freeze guard: no staged row may carry a date <= 2025-10-10 — the
    frozen archive is renavon's input baseline, never its write target.

Usage (normally driven by webbsite-refresh.timer):
    uv run --script scripts/refresh/refresh.py [--dry-run] [--confirm]
        [--source DIR] [--table NAME]

Exit codes: 0 = loaded or already up to date; 1 = validation failure (nothing
committed); 2 = infrastructure failure (R2/network/Postgres unavailable).
"""

from __future__ import annotations

import argparse
import io
import json
import logging
import os
import sys
import tempfile
import urllib.request
from dataclasses import dataclass
from pathlib import Path

FREEZE_DATE = "2025-10-10"  # the frozen-archive boundary; staged rows must be strictly after

log = logging.getLogger("webbsite-refresh")


@dataclass(frozen=True)
class Target:
    """One manifest dataset -> one or two Postgres targets."""

    dataset: str  # manifest key / R2 folder name
    columns: tuple[str, ...]  # export column order (loader drops the trailing `id`)
    date_column: str  # freeze-guard + watermark column
    upserts: tuple[tuple[str, tuple[str, ...]], ...]  # (pg_table, pk_columns)


TABLES: dict[str, Target] = {
    t.dataset: t
    for t in (
        Target(
            "webbsite_ccass_holdings",
            ("partid", "issueid", "holding", "atdate"),
            "atdate",
            # One file feeds BOTH holdings mirrors (issueid-major and partid-major PKs).
            (
                ("ccass.holdings", ("issueid", "partid", "atdate")),
                ("ccass.parthold", ("partid", "issueid", "atdate")),
            ),
        ),
        Target(
            "webbsite_ccass_dailylog",
            (
                "atdate", "issueid", "intermedhldg", "intermedcnt", "nciphldg",
                "ncipcnt", "ciphldg", "cipcnt", "c5", "c10", "custhldg", "brokhldg",
            ),
            "atdate",
            (("ccass.dailylog", ("issueid", "atdate")),),
        ),
        Target(
            "webbsite_ccass_bigchanges",
            ("atdate", "issueid", "partid", "stkchg", "prevdate"),
            "atdate",
            (("ccass.bigchanges", ("atdate", "issueid", "partid")),),
        ),
        Target(
            "webbsite_issuedshares",
            ("issueid", "atdate", "outstanding"),
            "atdate",
            (("enigma.issuedshares", ("issueid", "atdate")),),
        ),
        Target(
            "webbsite_quotes",
            (
                "issueid", "atdate", "prevclose", "closing", "ask", "bid", "high",
                "low", "vol", "turn", "susp", "newsusp", "noclose",
            ),
            "atdate",
            (("ccass.quotes", ("issueid", "atdate")),),
        ),
        Target(
            "webbsite_pquotes",
            (
                "issueid", "atdate", "prevclose", "closing", "ask", "bid", "high",
                "low", "vol", "turn", "susp", "newsusp", "noclose",
            ),
            "atdate",
            (("ccass.pquotes", ("issueid", "atdate")),),
        ),
        Target(
            "webbsite_unquotes",
            (
                "stockcode", "atdate", "prevclose", "closing", "ask", "bid", "high",
                "low", "vol", "turn", "susp", "newsusp", "noclose",
            ),
            "atdate",
            (("ccass.unquotes", ("stockcode", "atdate")),),
        ),
        Target(
            "webbsite_calendar",
            ("tradedate", "settledate", "deferred"),
            "tradedate",
            (("ccass.calendar", ("tradedate",)),),
        ),
    )
}

# enigma.log keys this loader owns (all must pre-exist — see deploy/README).
LOG_CCASS = "CCASSdateDone"
LOG_MB = "MBquotesDate"
LOG_GEM = "GEMquotesDate"


class ValidationError(Exception):
    """Data failed a pre-commit check: exit 1, nothing committed."""


# ---------------------------------------------------------------------------
# Configuration (from /etc/webbsite/refresh-env via the systemd unit)
# ---------------------------------------------------------------------------


def env(name: str, default: str | None = None) -> str:
    val = os.environ.get(name, default)
    if val is None:
        raise SystemExit(f"missing required environment variable {name}")
    return val


# ---------------------------------------------------------------------------
# Fetch: manifest + parquet, from R2 (boto3) or a local --source dir
# ---------------------------------------------------------------------------


def r2_client():
    import boto3

    return boto3.client(
        "s3",
        endpoint_url=env("R2_ENDPOINT"),
        aws_access_key_id=env("R2_ACCESS_KEY_ID"),
        aws_secret_access_key=env("R2_SECRET_ACCESS_KEY"),
        region_name="auto",
    )


def fetch_manifest(source: Path | None) -> dict:
    if source:
        raw = (source / "_manifest.json").read_bytes()
    else:
        obj = r2_client().get_object(
            Bucket=env("R2_BUCKET", "hkdata"),
            Key=f"{env('R2_PREFIX', 'webbsite-refresh')}/_manifest.json",
        )
        raw = obj["Body"].read()
    manifest = json.loads(raw)
    tables = manifest.get("tables")
    if not isinstance(tables, dict):
        raise ValidationError("manifest has no tables map")
    # Contract check: EXACT set equality. An unknown dataset means renavon
    # ships something this loader doesn't understand; a missing one means the
    # snapshot is incomplete. Either way: hard fail, load nothing.
    if set(tables) != set(TABLES):
        raise ValidationError(
            f"manifest table set mismatch: manifest-only="
            f"{sorted(set(tables) - set(TABLES))} loader-only="
            f"{sorted(set(TABLES) - set(tables))}"
        )
    return manifest


def download_parquet(dataset: str, entry: dict, dest_dir: Path, source: Path | None) -> Path:
    dest = dest_dir / f"{dataset}.parquet"
    if source:
        # Local fixture layout mirrors R2: <source>/<dataset>/data.parquet
        dest = source / dataset / "data.parquet"
        if not dest.exists():
            raise ValidationError(f"fixture file missing: {dest}")
        return dest
    r2_client().download_file(env("R2_BUCKET", "hkdata"), entry["key"], str(dest))
    return dest


# ---------------------------------------------------------------------------
# needs_run: compare manifest watermarks against enigma.log
# ---------------------------------------------------------------------------


def read_log_watermarks(cur) -> dict[str, str]:
    cur.execute(
        "SELECT name, val FROM enigma.log WHERE name IN (%s, %s, %s)",
        (LOG_CCASS, LOG_MB, LOG_GEM),
    )
    rows = dict(cur.fetchall())
    missing = {LOG_CCASS, LOG_MB, LOG_GEM} - set(rows)
    if missing:
        # Pre-flight (deploy/README) requires these keys to exist; the loader
        # only ever UPDATEs them (an INSERT would need broader privileges).
        raise ValidationError(f"enigma.log keys missing: {sorted(missing)}")
    return rows


def needs_run(manifest: dict, watermarks: dict[str, str]) -> bool:
    """Anything in the manifest strictly beyond the current watermarks?"""
    quotes_max = manifest["tables"]["webbsite_quotes"].get("max_atdate")
    ccass_max = manifest["tables"]["webbsite_ccass_holdings"].get("max_atdate")
    fresh_quotes = bool(quotes_max) and quotes_max > min(
        watermarks[LOG_MB], watermarks[LOG_GEM]
    )
    fresh_ccass = bool(ccass_max) and ccass_max > watermarks[LOG_CCASS]
    return fresh_quotes or fresh_ccass


# ---------------------------------------------------------------------------
# Staging + validation + upsert (all inside ONE transaction)
# ---------------------------------------------------------------------------


def stage_table(cur, target: Target, parquet_path: Path, expected_rows: int) -> int:
    """COPY the parquet (minus the trailing export `id`) into a TEMP table."""
    import pyarrow.csv as pacsv
    import pyarrow.parquet as pq

    staging = f"stg_{target.dataset}"
    first_pg_table = target.upserts[0][0]
    cols = ", ".join(target.columns)
    # LIKE the real target so types/NOT NULLs match exactly; drop the columns
    # the export doesn't carry (issuedshares' modified/userid get set at upsert).
    cur.execute(
        f"CREATE TEMP TABLE {staging} ON COMMIT DROP AS "
        f"SELECT {cols} FROM {first_pg_table} WITH NO DATA"
    )

    table = pq.read_table(parquet_path)
    got_cols = table.column_names
    want_cols = [*target.columns, "id"]
    if got_cols != want_cols:
        raise ValidationError(
            f"{target.dataset}: parquet columns {got_cols} != expected {want_cols}"
        )
    table = table.drop_columns(["id"])  # R23 row-identity column — loader contract drops it

    buf = io.BytesIO()
    pacsv.write_csv(
        table, buf, pacsv.WriteOptions(include_header=False, quoting_style="needed")
    )
    buf.seek(0)
    cur.copy_expert(f"COPY {staging} ({cols}) FROM STDIN WITH (FORMAT csv)", buf)

    cur.execute(f"SELECT count(*) FROM {staging}")  # noqa: S608 — staging name is loader-owned
    staged = cur.fetchone()[0]
    if staged != expected_rows:
        raise ValidationError(
            f"{target.dataset}: staged {staged} rows != manifest {expected_rows}"
        )
    return staged


def validate_staged(cur, target: Target) -> None:
    staging = f"stg_{target.dataset}"
    date_col = target.date_column

    # Freeze guard: the frozen archive (<= 2025-10-10) is never a write target.
    cur.execute(
        f"SELECT count(*) FROM {staging} WHERE {date_col} <= %s", (FREEZE_DATE,)
    )
    if (n := cur.fetchone()[0]) > 0:
        raise ValidationError(
            f"{target.dataset}: {n} rows dated on/before the {FREEZE_DATE} freeze"
        )

    # PK-duplicate guard (one file, one grain).
    pk = ", ".join(target.upserts[0][1])
    cur.execute(
        f"SELECT count(*) FROM (SELECT 1 FROM {staging} "
        f"GROUP BY {pk} HAVING count(*) > 1) d"
    )
    if (n := cur.fetchone()[0]) > 0:
        raise ValidationError(f"{target.dataset}: {n} duplicate PK groups")

    if target.dataset == "webbsite_ccass_bigchanges":
        # Sanity bound, not a business rule: |stkchg| beyond 100x issued is
        # parse corruption. (Values slightly over 1.0 are expected while the
        # issued-shares series is seed-only — post-freeze issuance missing
        # from the denominator — and self-heal as daily SDW captures land.)
        cur.execute(f"SELECT count(*) FROM {staging} WHERE abs(stkchg) > 100")
        if (n := cur.fetchone()[0]) > 0:
            raise ValidationError(f"bigchanges: {n} rows with |stkchg| > 100")
        cur.execute(f"SELECT count(*) FROM {staging} WHERE abs(stkchg) > 1")
        if (n := cur.fetchone()[0]) > 0:
            log.warning("bigchanges: %d rows with |stkchg| > 100%% (seed-only denominator era)", n)


def quarantine_unknown_issueids(cur) -> int:
    """issuedshares only: drop staged rows whose issueid is not in enigma.issue.

    The FK (issuedshares_issue -> issue.id1) would reject them; renavon-minted
    ids (>= 9e6) for post-freeze listings are EXPECTED here until the
    enigma.issue dimension itself is refreshed — logged and excluded, never an
    error.
    """
    cur.execute(
        "DELETE FROM stg_webbsite_issuedshares s "
        "WHERE NOT EXISTS (SELECT 1 FROM enigma.issue i WHERE i.id1 = s.issueid)"
    )
    if cur.rowcount:
        log.warning(
            "issuedshares: quarantined %d rows with issueids unknown to enigma.issue",
            cur.rowcount,
        )
    return cur.rowcount


def upsert(cur, target: Target, refresh_userid: int) -> dict[str, int]:
    """INSERT ... ON CONFLICT DO UPDATE from staging into each PG target."""
    staging = f"stg_{target.dataset}"
    counts = {}
    for pg_table, pk in target.upserts:
        cols = list(target.columns)
        select_cols = ", ".join(cols)
        insert_cols = select_cols
        params: tuple = ()
        if pg_table == "enigma.issuedshares":
            # The export doesn't carry modified/userid; the BEFORE-UPDATE
            # trigger only fires on UPDATE, so the INSERT path sets both.
            insert_cols += ", modified, userid"
            select_cols += ", now(), %s"
            params = (refresh_userid,)
        non_pk = [c for c in cols if c not in pk]
        set_clause = ", ".join(f"{c} = EXCLUDED.{c}" for c in non_pk)
        if pg_table == "enigma.issuedshares":
            set_clause += ", modified = now(), userid = EXCLUDED.userid"
        conflict_action = f"DO UPDATE SET {set_clause}" if set_clause else "DO NOTHING"
        cur.execute(
            f"INSERT INTO {pg_table} ({insert_cols}) "
            f"SELECT {select_cols} FROM {staging} "
            f"ON CONFLICT ({', '.join(pk)}) {conflict_action}",
            params,
        )
        counts[pg_table] = cur.rowcount
    return counts


def advance_watermarks(cur, manifest: dict, watermarks: dict[str, str]) -> dict[str, str]:
    """Forward-only watermark advance, atomic with the data upserts.

    Quotes-before-CCASS (the original scrapers' dependency): MB/GEM advance to
    the quotes max; CCASSdateDone advances to min(ccass max, MB, GEM) so the
    site never claims CCASS coverage beyond the quotes that price it.
    """
    tables = manifest["tables"]
    quotes_max = tables["webbsite_quotes"].get("max_atdate")
    ccass_max = tables["webbsite_ccass_holdings"].get("max_atdate")

    new = dict(watermarks)
    if quotes_max:
        new[LOG_MB] = max(new[LOG_MB], quotes_max)
        new[LOG_GEM] = max(new[LOG_GEM], quotes_max)
    if ccass_max:
        new[LOG_CCASS] = max(
            new[LOG_CCASS], min(ccass_max, new[LOG_MB], new[LOG_GEM])
        )

    for name in (LOG_MB, LOG_GEM, LOG_CCASS):
        if new[name] != watermarks[name]:
            # Forward-only: `val < %s` makes a concurrent/stale run harmless.
            cur.execute(
                "UPDATE enigma.log SET val = %s WHERE name = %s AND val < %s",
                (new[name], name, new[name]),
            )
    return new


# ---------------------------------------------------------------------------
# Post-commit: ANALYZE + freshness healthcheck
# ---------------------------------------------------------------------------


def analyze(conn, touched: list[str]) -> None:
    with conn.cursor() as cur:
        for t in touched:
            cur.execute(f"ANALYZE {t}")
    conn.commit()


def freshness_ok(cur, ccass_done: str, budget_trading_days: int = 4) -> bool:
    """Is CCASSdateDone within N trading days of the latest known trade date?"""
    cur.execute(
        "SELECT count(*) FROM ccass.calendar WHERE tradedate > %s", (ccass_done,)
    )
    return cur.fetchone()[0] <= budget_trading_days


def ping_healthcheck(ok: bool, body: str) -> None:
    url = os.environ.get("HC_URL")
    if not url:
        return
    try:
        target = url if ok else f"{url}/fail"
        urllib.request.urlopen(  # noqa: S310 — operator-configured healthchecks.io URL
            urllib.request.Request(target, data=body.encode()[:100_000]), timeout=10
        )
    except OSError as e:  # never fail the load over a ping
        log.warning("healthcheck ping failed: %s", e)


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------


def run(args: argparse.Namespace) -> int:
    import psycopg2

    manifest = fetch_manifest(args.source)
    selected = {args.table: TABLES[args.table]} if args.table else TABLES

    conn = psycopg2.connect(env("DATABASE_URL"))
    conn.autocommit = False
    try:
        with conn.cursor() as cur:
            watermarks = read_log_watermarks(cur)
            if not args.table and not needs_run(manifest, watermarks):
                log.info(
                    "up to date (log: %s) — nothing to load",
                    {k: watermarks[k] for k in (LOG_CCASS, LOG_MB, LOG_GEM)},
                )
                conn.rollback()
                ping_healthcheck(True, "up to date")
                return 0

        with tempfile.TemporaryDirectory(prefix="webbsite-refresh-") as tmp:
            tmp_dir = Path(tmp)
            files = {
                name: download_parquet(name, manifest["tables"][name], tmp_dir, args.source)
                for name in selected
            }

            with conn.cursor() as cur:
                # Serialize concurrent loads (timer double-fire, manual run).
                cur.execute("SELECT pg_advisory_xact_lock(hashtext('webbsite-refresh'))")

                touched: list[str] = []
                total_upserts: dict[str, int] = {}
                for name, target in selected.items():
                    staged = stage_table(
                        cur, target, files[name], manifest["tables"][name]["rows"]
                    )
                    validate_staged(cur, target)
                    if name == "webbsite_issuedshares":
                        staged -= quarantine_unknown_issueids(cur)
                    counts = upsert(cur, target, int(env("REFRESH_USERID", "0")))
                    total_upserts.update(counts)
                    touched.extend(t for t, _ in target.upserts)
                    log.info("%s: staged %d -> upserts %s", name, staged, counts)

                if args.table:
                    log.warning("--table run: watermarks NOT advanced")
                    new_marks = watermarks
                else:
                    new_marks = advance_watermarks(cur, manifest, watermarks)

            if args.dry_run:
                conn.rollback()
                log.info("dry-run: rolled back (would have advanced log to %s)", new_marks)
                return 0
            if args.confirm:
                answer = input(f"COMMIT {sum(total_upserts.values())} upserts, log -> {new_marks}? [y/N] ")
                if answer.strip().lower() != "y":
                    conn.rollback()
                    log.info("aborted by operator; rolled back")
                    return 0

            conn.commit()
            log.info("committed; log now %s", new_marks)

        analyze(conn, sorted(set(touched)))

        with conn.cursor() as cur:
            fresh = freshness_ok(cur, new_marks[LOG_CCASS])
        conn.rollback()
        ping_healthcheck(
            fresh,
            f"loaded; log={new_marks}"
            + ("" if fresh else " — STALE beyond the trading-day budget"),
        )
        return 0
    finally:
        conn.close()


def main() -> int:
    logging.basicConfig(level=logging.INFO, format="%(asctime)s %(levelname)s %(message)s")
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument("--dry-run", action="store_true", help="full pipeline, ROLLBACK at the end")
    parser.add_argument("--confirm", action="store_true", help="prompt before COMMIT")
    parser.add_argument("--source", type=Path, default=None, help="local fixture dir instead of R2")
    parser.add_argument("--table", choices=sorted(TABLES), default=None,
                        help="load ONE dataset (debugging; watermarks not advanced)")
    args = parser.parse_args()

    try:
        return run(args)
    except ValidationError as e:
        log.error("VALIDATION FAILED (nothing committed): %s", e)
        ping_healthcheck(False, f"validation failed: {e}")
        return 1
    except Exception as e:  # noqa: BLE001 — top-level infra classifier
        log.exception("infrastructure failure: %s", e)
        ping_healthcheck(False, f"infra failure: {e}")
        return 2


if __name__ == "__main__":
    sys.exit(main())
