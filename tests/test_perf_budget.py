#!/usr/bin/env python3
"""Runnable checks for the latency budget and the route check's timing pass. No DB.

    uv run python tests/test_perf_budget.py

Pins:
  1. Server-Timing parsing (webbsite/timing.py's format, and garbage);
  2. the budget verdict: 500 ms pages, 200 ms search, known-slow ceilings;
  3. KNOWN_OVER_BUDGET is well formed and no bigger than its pin (it may only
     shrink), and the `timeout_s=` overrides in routes do not grow;
  4. check_all_routes.report_timings: a 200 with dberr fails; report mode never
     fails on time; enforce mode fails a page still slow when re-measured warm,
     passes one that is fast warm or under its known ceiling; the TSV is written
     and files past 30 days are pruned.
"""

import os
import re
import sys
import tempfile
from datetime import date
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

import check_all_routes as car  # noqa: E402
import perf_budget as pb  # noqa: E402

_failures: list[str] = []


def check(name, got, want):
    if got != want:
        _failures.append(f"{name}: got {got!r}, want {want!r}")
    else:
        print(f"  ok  {name}")


def sample(url, ms, status=200, dberr=False, phase="status"):
    st = {"app": float(ms), "db": 1.0}
    if dberr:
        st["dberr"] = True
    return (phase, url, status, float(ms) + 5, st)


def run():
    if os.environ.get("PLANTED_FAILURE"):
        check("planted failure (CI self-proof; expected to fail)", 1, 0)

    # 1. parsing ----------------------------------------------------------------
    check("parse: full header",
          pb.parse_server_timing('app;dur=12.3, db;dur=5.0;desc="3q", render;dur=2.2, '
                                 'cpu;dur=7.0, cache;desc="hit", dberr'),
          {"app": 12.3, "db": 5.0, "db_n": 3, "render": 2.2, "cpu": 7.0,
           "cache": "hit", "dberr": True})
    check("parse: missing header", pb.parse_server_timing(None), {})
    check("parse: garbage skipped", pb.parse_server_timing("app;dur=x, ;;, db;desc=zq"), {})

    # 2. verdicts ---------------------------------------------------------------
    check("verdict: page within budget", pb.verdict("/dbpub/listed.asp", 499), None)
    check("verdict: page over budget", pb.verdict("/dbpub/listed.asp", 501) is not None, True)
    check("verdict: search held to 200 ms",
          pb.verdict("/dbpub/searchpeople.asp", 250) is not None, True)
    saved = dict(pb.KNOWN_OVER_BUDGET)
    try:
        pb.KNOWN_OVER_BUDGET["/dbpub/slow.asp"] = (900, "test")
        check("verdict: known-slow under its ceiling passes", pb.verdict("/dbpub/slow.asp", 800), None)
        check("verdict: known-slow over its ceiling fails",
              pb.verdict("/dbpub/slow.asp", 901) is not None, True)
    finally:
        pb.KNOWN_OVER_BUDGET.clear()
        pb.KNOWN_OVER_BUDGET.update(saved)
    check("percentile: p50 of 1..10", pb.percentile(list(range(1, 11)), 50), 5)
    check("percentile: p95 of 1..100", pb.percentile(list(range(1, 101)), 95), 95)

    # 3. the ratchets -----------------------------------------------------------
    bad = [p for p, v in pb.KNOWN_OVER_BUDGET.items()
           if not (p.startswith("/") and isinstance(v[0], int)
                   and v[0] > pb.budget_ms(p) and v[1].strip())]
    check("known-slow entries are well formed (path, ceiling > budget, reason)", bad, [])
    check("known-slow list no bigger than its pin (it may only shrink)",
          len(pb.KNOWN_OVER_BUDGET) <= pb.KNOWN_OVER_BUDGET_PINNED, True)
    sites = [line for f in sorted((HERE.parent / "webbsite" / "routes").rglob("*.py"))
             for line in f.read_text().splitlines()
             if re.search(r"\btimeout_s=(?!None)", line) and "def " not in line]
    check(f"timeout_s overrides do not grow ({len(sites)} <= {pb.TIMEOUT_S_SITES_PINNED})",
          len(sites) <= pb.TIMEOUT_S_SITES_PINNED, True)

    # 4. report_timings ---------------------------------------------------------
    fast, slow = "http://x/dbpub/a.asp", "http://x/dbpub/b.asp"
    broken = "http://x/dbpub/c.asp"
    samples = [sample(fast, 50), sample(slow, 900), sample(broken, 30, dberr=True)]

    got = car.report_timings(samples, remeasure=lambda u: sample(u, 900), mode="report")
    check("report mode: only the swallowed failure fails",
          [f.split(": ")[0] for f in got], [f"DBERR {broken}"])

    got = car.report_timings(samples, remeasure=lambda u: sample(u, 900), mode="enforce")
    check("enforce: still slow warm fails",
          sorted(f.split(": ")[0] for f in got), sorted([f"DBERR {broken}", f"BUDGET {slow}"]))

    got = car.report_timings(samples, remeasure=lambda u: sample(u, 100), mode="enforce")
    check("enforce: fast when warm passes", [f for f in got if f.startswith("BUDGET")], [])

    saved = dict(pb.KNOWN_OVER_BUDGET)
    try:
        pb.KNOWN_OVER_BUDGET["/dbpub/b.asp"] = (1000, "test")
        got = car.report_timings(samples, remeasure=lambda u: sample(u, 900), mode="enforce")
        check("enforce: known-slow under its ceiling passes",
              [f for f in got if f.startswith("BUDGET")], [])
    finally:
        pb.KNOWN_OVER_BUDGET.clear()
        pb.KNOWN_OVER_BUDGET.update(saved)

    check("non-200 and unreachable samples are not judged",
          car.report_timings([sample(slow, 9000, status=404), ("status", slow, None, 1.0, {})],
                             mode="enforce"), [])

    with tempfile.TemporaryDirectory() as d:
        old = Path(d, "2026-01-01.tsv")
        old.write_text("x")
        keep = Path(d, "notes.txt")
        keep.write_text("x")
        car.report_timings(samples, mode="report", out_dir=d, today=date(2026, 11, 1))
        tsv = Path(d, "2026-11-01.tsv").read_text().splitlines()
        check("tsv: header + one line per request", len(tsv), 1 + len(samples))
        check("tsv: url is the last column", tsv[1].split("\t")[-1], fast)
        check("tsv: files past 30 days pruned, others kept", (old.exists(), keep.exists()),
              (False, True))

    if _failures:
        print("\nFAILED:")
        for f in _failures:
            print("  " + f)
        return 1
    print("\nall perf-budget checks passed")
    return 0


def test_all():
    assert run() == 0


if __name__ == "__main__":
    sys.exit(run())
