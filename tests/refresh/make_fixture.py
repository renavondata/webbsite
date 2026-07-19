# /// script
# requires-python = ">=3.12"
# dependencies = ["pyarrow>=16"]
# ///
"""Generate a local webbsite-refresh feed fixture for refresh.py --source.

Writes the R2 layout (8 <dataset>/data.parquet + _manifest.json) with a tiny
synthetic dataset: 3 issueids — 1001 and 1002 exist in the fixture DB's
enigma.issue; 9000001 is a renavon-minted id that must be QUARANTINED on the
issuedshares path (and load fine everywhere else — only issuedshares carries
the FK).

Negatives:
  --poison      absurd bigchanges stkchg (=250) -> loader must exit 1
  --bad-counts  manifest rows off by one on quotes -> loader must exit 1
  --pre-freeze  one holdings row dated 2025-10-10 -> loader must exit 1

Usage:
    uv run --script tests/refresh/make_fixture.py /tmp/refresh-fixture [--poison ...]
"""

from __future__ import annotations

import argparse
import hashlib
import json
from datetime import date, datetime, timezone
from pathlib import Path

import pyarrow as pa
import pyarrow.parquet as pq

D1, D2 = date(2026, 7, 16), date(2026, 7, 17)
ISSUE_A, ISSUE_B, ISSUE_MINTED = 1001, 1002, 9000001


def _id(*parts) -> str:
    return hashlib.md5("-".join(map(str, parts)).encode()).hexdigest()


def _write(out: Path, dataset: str, table: pa.Table) -> dict:
    d = out / dataset
    d.mkdir(parents=True, exist_ok=True)
    pq.write_table(table, d / "data.parquet")
    return {"key": f"fixture/{dataset}/data.parquet", "rows": table.num_rows}


def build(out: Path, poison: bool, bad_counts: bool, pre_freeze: bool) -> None:
    tables: dict[str, dict] = {}

    holdings_dates = [date(2025, 10, 10) if pre_freeze else D1, D1, D2, D2]
    holdings = pa.table(
        {
            "partid": pa.array([1, 2, 1, 2], pa.int64()),
            "issueid": pa.array([ISSUE_A, ISSUE_A, ISSUE_B, ISSUE_MINTED], pa.int64()),
            "holding": pa.array([1000, 2000, 3000, 4000], pa.int64()),
            "atdate": pa.array(holdings_dates, pa.date32()),
            "id": [_id("h", i) for i in range(4)],
        }
    )
    e = _write(out, "webbsite_ccass_holdings", holdings)
    e["max_atdate"] = str(D2)
    tables["webbsite_ccass_holdings"] = e

    dailylog = pa.table(
        {
            "atdate": pa.array([D1, D2], pa.date32()),
            "issueid": pa.array([ISSUE_A, ISSUE_B], pa.int64()),
            **{
                c: pa.array([10, 20], pa.int64())
                for c in (
                    "intermedhldg", "intermedcnt", "nciphldg", "ncipcnt",
                    "ciphldg", "cipcnt", "c5", "c10", "custhldg", "brokhldg",
                )
            },
            "id": [_id("d", i) for i in range(2)],
        }
    )
    e = _write(out, "webbsite_ccass_dailylog", dailylog)
    e["max_atdate"] = str(D2)
    tables["webbsite_ccass_dailylog"] = e

    bigchanges = pa.table(
        {
            "atdate": pa.array([D2], pa.date32()),
            "issueid": pa.array([ISSUE_A], pa.int64()),
            "partid": pa.array([1], pa.int64()),
            "stkchg": pa.array([250.0 if poison else 0.012], pa.float64()),
            "prevdate": pa.array([D1], pa.date32()),
            "id": [_id("b", 0)],
        }
    )
    e = _write(out, "webbsite_ccass_bigchanges", bigchanges)
    e["max_atdate"] = str(D2)
    tables["webbsite_ccass_bigchanges"] = e

    issuedshares = pa.table(
        {
            "issueid": pa.array([ISSUE_A, ISSUE_MINTED], pa.int64()),
            "atdate": pa.array([D2, D2], pa.date32()),
            "outstanding": pa.array([5_000_000.0, 123.0], pa.float64()),
            "id": [_id("i", i) for i in range(2)],
        }
    )
    e = _write(out, "webbsite_issuedshares", issuedshares)
    e["max_atdate"] = str(D2)
    tables["webbsite_issuedshares"] = e

    def quote_cols(n: int, key_name: str, keys: list[int]) -> dict:
        return {
            key_name: pa.array(keys, pa.int64() if key_name == "issueid" else pa.int32()),
            "atdate": pa.array([D2] * n, pa.date32()),
            **{
                c: pa.array([1.5] * n, pa.float64())
                for c in ("prevclose", "closing", "ask", "bid", "high", "low", "vol", "turn")
            },
            "susp": pa.array([False] * n),
            "newsusp": pa.array([False] * n),
            "noclose": pa.array([False] * n),
        }

    quotes = pa.table({**quote_cols(2, "issueid", [ISSUE_A, ISSUE_B]), "id": [_id("q", i) for i in range(2)]})
    e = _write(out, "webbsite_quotes", quotes)
    e["max_atdate"] = str(D2)
    if bad_counts:
        e["rows"] += 1  # manifest lies -> staged-count validation must exit 1
    tables["webbsite_quotes"] = e

    pquotes = pa.table({**quote_cols(1, "issueid", [ISSUE_A]), "id": [_id("p", 0)]})
    e = _write(out, "webbsite_pquotes", pquotes)
    e["max_atdate"] = str(D2)
    tables["webbsite_pquotes"] = e

    unquotes = pa.table({**quote_cols(1, "stockcode", [17001]), "id": [_id("u", 0)]})
    e = _write(out, "webbsite_unquotes", unquotes)
    e["max_atdate"] = str(D2)
    tables["webbsite_unquotes"] = e

    calendar = pa.table(
        {
            "tradedate": pa.array([D1, D2], pa.date32()),
            "settledate": pa.array([date(2026, 7, 20), date(2026, 7, 21)], pa.date32()),
            "deferred": pa.array([False, False]),
            "id": [_id("c", i) for i in range(2)],
        }
    )
    e = _write(out, "webbsite_calendar", calendar)
    e["max_atdate"] = str(D2)
    tables["webbsite_calendar"] = e

    manifest = {
        "completed_at": datetime.now(timezone.utc).isoformat(timespec="seconds"),
        "tables": tables,
    }
    (out / "_manifest.json").write_text(json.dumps(manifest, indent=2, sort_keys=True))
    print(f"fixture written to {out} (poison={poison} bad_counts={bad_counts} pre_freeze={pre_freeze})")


def main() -> None:
    p = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    p.add_argument("out", type=Path)
    p.add_argument("--poison", action="store_true")
    p.add_argument("--bad-counts", action="store_true")
    p.add_argument("--pre-freeze", action="store_true")
    args = p.parse_args()
    build(args.out, args.poison, args.bad_counts, args.pre_freeze)


if __name__ == "__main__":
    main()
