"""The Sentry triage feeder's pure core (scripts/sentry_triage.py): no network.

What these pin is what decides the agent's workload: which issues are resolved
unread, which collapse into one burst, and which are queued again.
"""

import importlib.util
import os
import sys
from datetime import UTC, datetime, timedelta

_spec = importlib.util.spec_from_file_location(
    "sentry_triage",
    os.path.join(os.path.dirname(__file__), "..", "scripts", "sentry_triage.py"),
)
st = importlib.util.module_from_spec(_spec)
sys.modules["sentry_triage"] = st  # dataclasses look their module up here
_spec.loader.exec_module(st)

NOW = datetime(2026, 11, 12, 12, 0, tzinfo=UTC)
TIMEOUT = "OperationalError: (psycopg2.errors.QueryCanceled) canceling statement due to statement timeout"


def iso(dt):
    return dt.isoformat().replace("+00:00", "Z")


def issue(sid, title=TIMEOUT, route="r", last=NOW, category="error", count=1):
    return {"id": sid.lower(), "shortId": sid, "title": title, "culprit": route,
            "lastSeen": iso(last), "firstSeen": iso(last), "issueCategory": category,
            "count": str(count)}


def event(sid, route, at, eid=None):
    return {"id": eid or f"{sid}-{at.timestamp()}", "issue": sid, "transaction": route,
            "timestamp": at.isoformat()}


def test_kinds():
    assert st.kind_of(issue("A")) == "timeout"
    assert st.kind_of(issue("A", title='OperationalError: connection to server at "localhost" failed')) == "outage"
    assert st.kind_of(issue("A", title="ZeroDivisionError: float division by zero")) == "bug"
    assert st.kind_of(issue("A", title="N+1 Query", category="db_query")) == "perf"


def test_stale_never_resolves_a_bug():
    old = NOW - timedelta(days=30)
    assert st.is_stale(issue("A", last=old), NOW)
    assert st.is_stale(issue("A", title="N+1 Query", category="db_query", last=old), NOW)
    assert not st.is_stale(issue("A", title="KeyError: 'x'", last=old), NOW)
    assert not st.is_stale(issue("A", last=NOW - timedelta(days=6)), NOW)


def test_burst_needs_enough_routes_close_together():
    t = NOW - timedelta(hours=1)
    kinds = {"A": "timeout", "B": "timeout", "C": "timeout"}
    close = [event("A", "a", t), event("B", "b", t + timedelta(seconds=90)),
             event("C", "c", t + timedelta(seconds=170))]
    assert len(st.find_bursts(close, kinds)) == 1
    # Same three routes, but spread out: no burst.
    apart = [event("A", "a", t), event("B", "b", t + timedelta(minutes=10)),
             event("C", "c", t + timedelta(minutes=20))]
    assert st.find_bursts(apart, kinds) == []
    # One route failing many times is that route's problem, not the box's.
    one_route = [event("A", "a", t + timedelta(seconds=s)) for s in (0, 10, 20, 30)]
    assert st.find_bursts(one_route, kinds) == []


def test_a_crash_inside_a_burst_is_not_swallowed():
    t = NOW - timedelta(hours=1)
    issues = [issue("A", route="a"), issue("B", route="b"), issue("C", route="c"),
              issue("BUG", title="UnboundLocalError: x", route="d")]
    events = [event("A", "a", t), event("B", "b", t), event("C", "c", t),
              event("BUG", "d", t)]
    got = st.incidents(issues, events, {}, NOW)
    assert [i.kind for i in got] == ["bug", "burst"]
    assert {x["shortId"] for x in got[1].issues} == {"A", "B", "C"}


def test_an_issue_failing_outside_the_burst_also_stands_alone():
    t = NOW - timedelta(hours=3)
    issues = [issue("A", route="a"), issue("B", route="b"), issue("C", route="c")]
    events = [event("A", "a", t), event("B", "b", t), event("C", "c", t),
              event("A", "a", t + timedelta(hours=2))]
    kinds = [(i.kind, i.key) for i in st.incidents(issues, events, {}, NOW)]
    assert ("timeout", "A") in kinds and ("timeout", "B") not in kinds
    assert any(k == "burst" for k, _ in kinds)


def test_queued_once_until_sentry_sees_it_again():
    i = issue("BUG", title="KeyError: 'x'")
    first = st.incidents([i], [], {}, NOW)
    state = st.mark_queued({}, first[0], NOW)
    assert st.incidents([i], [], state, NOW) == []
    again = {**i, "lastSeen": iso(NOW + timedelta(minutes=5))}
    assert [x.key for x in st.incidents([again], [], state, NOW)] == ["BUG"]


def test_burst_members_do_not_resurface_once_the_burst_ages_out():
    t = NOW - timedelta(hours=1)
    issues = [issue(s, route=s.lower(), last=t) for s in "ABC"]
    events = [event(s, s.lower(), t) for s in "ABC"]
    burst = st.incidents(issues, events, {}, NOW)
    assert [b.kind for b in burst] == ["burst"]
    state = st.mark_queued({}, burst[0], NOW)
    # Two days on, the events have left the 48 h window but the issues are still open.
    assert st.incidents(issues, [], state, NOW + timedelta(days=2)) == []


def test_daily_count_forgets_old_enqueues():
    state = {"enqueued": [iso(NOW - timedelta(hours=25)), iso(NOW - timedelta(hours=1))]}
    assert st.enqueued_last_day(state, NOW) == 1


def test_alert_is_the_watchdog_format():
    text = st.render_alert(st.Incident("bug", "BUG", (issue("BUG", title="KeyError: 'x'", route="p.q"),)))
    head, _, body = text.partition("\n\n")
    assert head.splitlines()[0] == "Subject: sentry bug: p.q (BUG)"
    assert head.splitlines()[1].startswith("Detail: bug BUG")
    assert "KeyError" in body
