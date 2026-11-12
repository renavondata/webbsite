# /// script
# requires-python = ">=3.12"
# dependencies = []
# ///
"""Sentry triage feeder: turn this site's unresolved Sentry issues into triage work.

    SENTRY_AUTH_TOKEN=... SENTRY_ORG=... SENTRY_PROJECT=... \\
        uv run python scripts/sentry_triage.py feed --inbox DIR --state DIR [--dry-run]

It is the deterministic half of automatic triage. The other half is a headless
Claude Code run per alert, which diagnoses, fixes, verifies and merges under the
standing instructions in docs/operations/sentry-triage-prompt.md. This script
decides WHAT that run sees, and does the parts that need no judgement:

* **Stale issues are resolved here, unread.** A timeout, connection outage or
  performance issue with no event for STALE_DAYS is resolved in Sentry. If it
  recurs, Sentry reopens it as a regression and it comes back here as new. A
  real exception (kind "bug") is never resolved for age alone: a rare input
  that crashes a page is still a bug a month later.
* **Bursts are one incident, not N.** When several routes time out within a
  few minutes of each other, the box stalled (cold cache after a deploy purge,
  a Postgres restart, I/O). Triage page by page and you get N timeout bumps
  that fix nothing. Events that cluster across BURST_MIN_ROUTES or more routes
  within BURST_GAP_S of each other become one "burst" alert. An issue is only
  triaged on its own if it also has events outside every burst.
* **Each alert is the ops watchdog's format** (Subject:/Detail: headers, a
  blank line, the body), so the triage runner that already drives the
  watchdog's triage (cap, cooldown, worktree, mail) drives this one too.
* **The queue trickles.** At most --max-new alerts per run, none while the
  inbox still holds one, and at most --max-per-day per rolling 24 h, so a
  backlog arrives as a steady few a day rather than a flood of "rate limited,
  not triaged" mails.

State (--state) is one JSON file: the lastSeen at which each issue was queued,
the bursts already queued, and the times of recent enqueues. An issue is queued
again only when Sentry has seen it since.

The core is pure functions over plain dicts (tests/test_sentry_triage.py); the
HTTP and file I/O are at the edges, in main().
"""

from __future__ import annotations

import argparse
import json
import os
import sys
import urllib.parse
import urllib.request
from dataclasses import dataclass, field
from datetime import UTC, datetime, timedelta
from pathlib import Path

API = "https://sentry.io/api/0"
STALE_DAYS = 7
BURST_GAP_S = 120          # events this close in time are one cluster (single linkage)
BURST_MIN_ROUTES = 3       # ...and a cluster is a burst once it spans this many routes
EVENT_WINDOW = "48h"       # the burst/outside-burst look-back
ISSUE_WINDOW = "14d"
# Lower sorts first: what a human would want looked at first.
PRIORITY = {"bug": 0, "outage": 1, "burst": 2, "timeout": 3, "perf": 4}
# Only these may be resolved for age. A "bug" never is (module docstring).
STALE_KINDS = frozenset({"timeout", "outage", "perf"})
# Only these can make up a burst: a crash that happens to coincide is not the box.
BURST_KINDS = frozenset({"timeout", "outage"})


# --- pure core -------------------------------------------------------------------


def parse_ts(s: str) -> datetime:
    return datetime.fromisoformat(s.replace("Z", "+00:00"))


def kind_of(issue: dict) -> str:
    """bug | outage | timeout | perf, from Sentry's category and the title."""
    if issue.get("issueCategory") not in (None, "error"):
        return "perf"      # db_query, performance, ...: Sentry's own detectors
    title = issue.get("title", "")
    if "statement timeout" in title or "QueryCanceled" in title:
        return "timeout"
    if "connection to server" in title or "could not connect" in title:
        return "outage"
    return "bug"


def route_of(issue: dict) -> str:
    return issue.get("culprit") or "(no route)"


def is_stale(issue: dict, now: datetime, days: int = STALE_DAYS) -> bool:
    return (kind_of(issue) in STALE_KINDS
            and now - parse_ts(issue["lastSeen"]) >= timedelta(days=days))


@dataclass(frozen=True)
class Burst:
    start: datetime
    end: datetime
    issues: frozenset[str]          # shortIds
    routes: frozenset[str]
    event_ids: frozenset[str]

    @property
    def key(self) -> str:
        return "burst@" + self.start.strftime("%Y-%m-%dT%H:%MZ")


def _clusters(events: list[dict], gap_s: int) -> list[list[dict]]:
    """Single-linkage clusters by time: consecutive events <= gap_s apart."""
    ordered = sorted(events, key=lambda e: e["timestamp"])
    out: list[list[dict]] = []
    for e in ordered:
        if out and (parse_ts(e["timestamp"]) - parse_ts(out[-1][-1]["timestamp"])
                    ).total_seconds() <= gap_s:
            out[-1].append(e)
        else:
            out.append([e])
    return out


def find_bursts(events: list[dict], kinds: dict[str, str],
                gap_s: int = BURST_GAP_S, min_routes: int = BURST_MIN_ROUTES) -> list[Burst]:
    """Bursts among events whose issue is a timeout/outage. `kinds`: shortId -> kind."""
    eligible = [e for e in events if kinds.get(e["issue"]) in BURST_KINDS]
    return [
        Burst(
            start=parse_ts(c[0]["timestamp"]),
            end=parse_ts(c[-1]["timestamp"]),
            issues=frozenset(e["issue"] for e in c),
            routes=frozenset(e.get("transaction") or "?" for e in c),
            event_ids=frozenset(e["id"] for e in c),
        )
        for c in _clusters(eligible, gap_s)
        if len({e.get("transaction") for e in c}) >= min_routes
    ]


@dataclass(frozen=True)
class Incident:
    kind: str
    key: str                        # dedup key: shortId, or Burst.key
    issues: tuple[dict, ...]
    burst: Burst | None = None

    @property
    def priority(self) -> tuple:
        return (PRIORITY[self.kind], -sum(int(i.get("count", 0)) for i in self.issues))


def incidents(issues: list[dict], events: list[dict], state: dict,
              now: datetime) -> list[Incident]:
    """Everything new since `state`, highest priority first. Stale issues excluded."""
    by_id = {i["shortId"]: i for i in issues}
    kinds = {sid: kind_of(i) for sid, i in by_id.items()}
    bursts = find_bursts(events, kinds)
    in_burst = frozenset().union(*(b.event_ids for b in bursts)) if bursts else frozenset()
    # An issue whose recent events all sit inside bursts is explained by them. Only
    # ones that ALSO fail on their own, or that have no recent events in the window
    # fetched (an older issue still open), stand alone.
    outside = {e["issue"] for e in events if e["id"] not in in_burst}
    with_events = {e["issue"] for e in events}
    seen = state.get("issues", {})
    queued_bursts = set(state.get("bursts", []))

    def new(i: dict) -> bool:
        return seen.get(i["shortId"]) != i["lastSeen"]

    burst_incidents = [
        Incident("burst", b.key, tuple(by_id[s] for s in sorted(b.issues) if s in by_id), b)
        for b in bursts if b.key not in queued_bursts
    ]
    solo = [
        Incident(kinds[sid], sid, (i,))
        for sid, i in by_id.items()
        if new(i) and not is_stale(i, now)
        and (sid in outside or sid not in with_events or kinds[sid] not in BURST_KINDS)
    ]
    return sorted(burst_incidents + solo, key=lambda x: x.priority)


def mark_queued(state: dict, inc: Incident, now: datetime) -> dict:
    """The state after queueing `inc` (a new dict; `state` is not changed)."""
    issues = dict(state.get("issues", {}))
    bursts = list(state.get("bursts", []))
    if inc.burst:
        bursts = (bursts + [inc.key])[-200:]
    # A burst's members are marked too: once the burst ages out of the event window,
    # an unmarked member would look like a fresh solo issue for the same events.
    issues.update({i["shortId"]: i["lastSeen"] for i in inc.issues})
    enq = [t for t in state.get("enqueued", [])
           if now - parse_ts(t) < timedelta(days=1)] + [now.isoformat()]
    return {**state, "issues": issues, "bursts": bursts, "enqueued": enq}


def enqueued_last_day(state: dict, now: datetime) -> int:
    return sum(1 for t in state.get("enqueued", []) if now - parse_ts(t) < timedelta(days=1))


def _issue_lines(issues) -> str:
    return "\n".join(
        f"  {i['shortId']}  {i.get('count', '?')} events  "
        f"first {i.get('firstSeen', '?')[:16]}  last {i.get('lastSeen', '?')[:16]}\n"
        f"    {i.get('title', '')}\n    route: {route_of(i)}\n    {i.get('permalink', '')}"
        for i in issues
    )


def render_alert(inc: Incident, load: dict | None = None) -> str:
    """The alert file: Subject:/Detail: headers, a blank line, the body."""
    if inc.burst:
        b = inc.burst
        subject = (f"sentry burst: {len(b.routes)} routes failed together at "
                   f"{b.start:%Y-%m-%d %H:%M} UTC")
        detail = f"burst {b.key}"
        head = (f"{len(b.event_ids)} timeout/outage events on {len(b.routes)} routes between "
                f"{b.start:%H:%M:%S} and {b.end:%H:%M:%S} UTC. Several routes failing at once "
                f"points at the box, not at one query.\n\nRoutes: {', '.join(sorted(b.routes))}")
        if load:
            head += ("\n\nRequest load (Sentry spans, span.op:http.server):\n" + "\n".join(
                f"  {name}: {v.get('count()', '?')} requests, p95 "
                f"{round(v['p95(span.duration)']) if v.get('p95(span.duration)') else '?'} ms"
                for name, v in load.items()))
    else:
        i = inc.issues[0]
        subject = f"sentry {inc.kind}: {route_of(i)} ({i['shortId']})"
        detail = f"{inc.kind} {i['shortId']} {route_of(i)}"
        head = f"Kind: {inc.kind} (from Sentry's category and title; check it)."
    return (f"Subject: {subject}\nDetail: {detail}\n\n{head}\n\nIssues:\n"
            f"{_issue_lines(inc.issues)}\n")


# --- I/O edges --------------------------------------------------------------------


@dataclass
class Sentry:
    token: str
    org: str
    project: str
    calls: list = field(default_factory=list)

    def _req(self, method: str, url: str, body: dict | None = None):
        req = urllib.request.Request(
            url, method=method,
            data=json.dumps(body).encode() if body is not None else None,
            headers={"Authorization": f"Bearer {self.token}",
                     "Content-Type": "application/json"})
        with urllib.request.urlopen(req, timeout=60) as r:
            return json.load(r), r.headers.get("Link", "")

    def _pages(self, url: str, key: str | None = None, limit: int = 10) -> list:
        out = []
        for _ in range(limit):
            data, link = self._req("GET", url)
            out += data[key] if key else data
            nxt = [p for p in link.split(",") if 'rel="next"' in p and 'results="true"' in p]
            if not nxt:
                break
            url = nxt[0].split(";")[0].strip(" <>")
        return out

    def unresolved(self) -> list[dict]:
        q = urllib.parse.urlencode({"query": "is:unresolved", "statsPeriod": ISSUE_WINDOW,
                                    "limit": 100})
        return self._pages(f"{API}/projects/{self.org}/{self.project}/issues/?{q}")

    def events(self) -> list[dict]:
        q = urllib.parse.urlencode(
            [("dataset", "errors"), ("project", self.project), ("query", "is:unresolved"),
             ("field", "id"), ("field", "timestamp"), ("field", "issue"),
             ("field", "transaction"), ("sort", "-timestamp"), ("per_page", 100),
             ("statsPeriod", EVENT_WINDOW)])
        return self._pages(f"{API}/organizations/{self.org}/events/?{q}", key="data")

    def load(self, start: datetime, end: datetime) -> dict:
        q = urllib.parse.urlencode(
            [("dataset", "spans"), ("project", self.project),
             ("query", "span.op:http.server"), ("field", "count()"),
             ("field", "p95(span.duration)"),
             ("start", start.strftime("%Y-%m-%dT%H:%M:%S")),
             ("end", end.strftime("%Y-%m-%dT%H:%M:%S"))])
        data, _ = self._req("GET", f"{API}/organizations/{self.org}/events/?{q}")
        return (data.get("data") or [{}])[0]

    def resolve(self, issue: dict) -> None:
        self._req("PUT", f"{API}/organizations/{self.org}/issues/{issue['id']}/",
                  {"status": "resolved"})


def burst_load(sentry: Sentry, b: Burst) -> dict:
    """Request volume and p95 in the burst, and in the same span a day earlier."""
    lo, hi = b.start - timedelta(minutes=5), b.end + timedelta(minutes=5)
    try:
        return {"during the burst": sentry.load(lo, hi),
                "same window a day earlier": sentry.load(lo - timedelta(days=1),
                                                         hi - timedelta(days=1))}
    except Exception as exc:     # load is a hint for the agent; never block the alert
        return {"(could not fetch load)": {"count()": str(exc)}}


def write_alert(inbox: Path, text: str, now: datetime, n: int) -> Path:
    """tmp + rename, so the runner never reads half a file; names sort by time."""
    name = f"{now:%Y%m%dT%H%M%S}{now.microsecond:06d}-{os.getpid()}-{n}.alert"
    tmp = inbox / f".{name}.tmp"
    tmp.write_text(text)
    tmp.rename(inbox / name)
    return inbox / name


def log(msg: str) -> None:
    print(f"sentry-triage: {msg}", file=sys.stderr)


def feed(args, sentry: Sentry, now: datetime) -> int:
    state_file = Path(args.state) / "state.json"
    state = json.loads(state_file.read_text()) if state_file.exists() else {}
    inbox = Path(args.inbox)

    issues = sentry.unresolved()
    stale = [i for i in issues if is_stale(i, now)]
    for i in stale:
        log(f"stale {kind_of(i)} {i['shortId']} ({route_of(i)}, last seen "
            f"{i['lastSeen'][:16]}): {'would resolve' if args.dry_run else 'resolved'}")
        if not args.dry_run:
            sentry.resolve(i)

    todo = incidents([i for i in issues if i not in stale], sentry.events(), state, now)
    pending = sorted(inbox.glob("*.alert")) if inbox.exists() else []
    room = min(args.max_new, args.max_per_day - enqueued_last_day(state, now))
    log(f"{len(issues)} unresolved, {len(stale)} stale, {len(todo)} new incident(s), "
        f"{len(pending)} already queued, room for {max(room, 0) if not pending else 0}")
    if pending or room <= 0:
        return 0

    for n, inc in enumerate(todo[:room]):
        text = render_alert(inc, burst_load(sentry, inc.burst) if inc.burst else None)
        if args.dry_run:
            print(text)
            continue
        inbox.mkdir(parents=True, exist_ok=True)
        path = write_alert(inbox, text, now, n)
        state = mark_queued(state, inc, now)
        log(f"queued {inc.kind} {inc.key} -> {path.name}")
    if not args.dry_run:
        state_file.parent.mkdir(parents=True, exist_ok=True)
        tmp = state_file.with_suffix(".tmp")
        tmp.write_text(json.dumps(state, indent=1, sort_keys=True))
        tmp.rename(state_file)
    return 0


def main(argv: list[str] | None = None) -> int:
    p = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    sub = p.add_subparsers(dest="cmd", required=True)
    f = sub.add_parser("feed", help="resolve stale issues and queue new incidents")
    f.add_argument("--inbox", required=True, help="triage runner's inbox directory")
    f.add_argument("--state", required=True, help="directory for state.json")
    f.add_argument("--max-new", type=int, default=1)
    f.add_argument("--max-per-day", type=int, default=6)
    f.add_argument("--dry-run", action="store_true",
                   help="print the alerts; resolve, write and record nothing")
    args = p.parse_args(argv)

    missing = [v for v in ("SENTRY_AUTH_TOKEN", "SENTRY_ORG", "SENTRY_PROJECT")
               if not os.environ.get(v)]
    if missing:
        log(f"not set: {', '.join(missing)}")
        return 2
    sentry = Sentry(os.environ["SENTRY_AUTH_TOKEN"], os.environ["SENTRY_ORG"],
                    os.environ["SENTRY_PROJECT"])
    return feed(args, sentry, datetime.now(UTC))


if __name__ == "__main__":
    sys.exit(main())
