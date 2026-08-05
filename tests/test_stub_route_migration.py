#!/usr/bin/env python3
"""Mechanical validation for the enigma.orgdata.asp / enigma.positions.asp migration.

Both were spurious ASP-migration artifacts — no such original ASP pages ever
existed. ``enigma.orgdata.asp`` rendered dbpub/orgdata.html with a context
shaped nothing like what that template expects, so the page silently rendered
almost empty (nav bar + rating widget + a hardcoded "Holders information
coming soon" placeholder, no matter what personID was requested — this is
what was reported for https://webbsite.renavon.com/dbpub/enigma.orgdata.asp?p=382).
``enigma.positions.asp`` had already been fixed the same way. Both now just
301-redirect to the real, fully-featured route, and every template link goes
straight to the real endpoint instead of through the stub.

This script checks, without touching the database or a running server:

1. No template links to the stub endpoints anymore (`url_for('dbpub_statistics.
   enigma_orgdata', ...)` / `url_for('dbpub_statistics.enigma_positions', ...)`)
   — every company/person link goes straight to the real route.
2. The stub routes still exist (old bookmarks/external links shouldn't 404)
   and, exercised through Flask's test client, redirect to the correct real
   path with the query string preserved — verified for both the empty-query
   case and the exact reported URL (p=382).
3. The real endpoints the templates and redirects point at actually resolve
   via `url_for` (catches typos in the mass template rewrite).

A dummy DATABASE_URL lets create_engine build lazily (pool_pre_ping defers
the first real connection); the redirect happens before any query runs, so
nothing here needs a database.

Run from the repo root:
    uv run python tests/test_stub_route_migration.py
Exits non-zero if any check fails.
"""

import os
import re
import sys
from pathlib import Path

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.environ.setdefault("DATABASE_URL", "postgresql://u:p@localhost:5432/db")

from webbsite import create_app  # noqa: E402

REPO_ROOT = Path(__file__).resolve().parent.parent
TEMPLATES_DIR = REPO_ROOT / "webbsite" / "templates"

STUB_ENDPOINTS = ("dbpub_statistics.enigma_orgdata", "dbpub_statistics.enigma_positions")
REAL_ENDPOINTS = ("dbpub_statistics.orgdata", "dbpub_corporate.positions")

app = create_app()
failures = []


def check(label, cond):
    if not cond:
        failures.append(label)
        print(f"  FAIL  {label}")
    else:
        print(f"  ok    {label}")


# 1) No template references the stub endpoints anymore.
print("-- template scan --")
offenders = []
for path in TEMPLATES_DIR.rglob("*.html"):
    text = path.read_text(encoding="utf-8")
    for stub in STUB_ENDPOINTS:
        if re.search(re.escape(stub), text):
            offenders.append(f"{path.relative_to(REPO_ROOT)} references {stub}")
check("no template links to a stub endpoint", not offenders)
for o in offenders:
    print(f"        {o}")

# 2) Real endpoints resolve (catches typos from the mass rewrite).
print("-- endpoint resolution --")
with app.test_request_context():
    from flask import url_for

    for endpoint in REAL_ENDPOINTS + STUB_ENDPOINTS:
        try:
            url_for(endpoint, p=1)
            check(f"url_for('{endpoint}') resolves", True)
        except Exception as ex:
            check(f"url_for('{endpoint}') resolves ({ex})", False)

# 3) Stub routes still exist and redirect to the real route, query string intact.
print("-- redirect behaviour (Flask test client, no DB hit) --")
client = app.test_client()

cases = [
    ("/dbpub/enigma.orgdata.asp?p=382", "/dbpub/orgdata.asp?p=382"),
    ("/dbpub/enigma.orgdata.asp", "/dbpub/orgdata.asp"),
    ("/dbpub/enigma.positions.asp?p=105", "/dbpub/positions.asp?p=105"),
]
for stub_path, expected_target in cases:
    resp = client.get(stub_path)
    check(f"{stub_path} -> 301", resp.status_code == 301)
    location = resp.headers.get("Location", "")
    check(f"{stub_path} -> Location == {expected_target} (got {location!r})", location == expected_target)

print()
if failures:
    print(f"FAILED {len(failures)} checks:")
    for label in failures:
        print(f"  {label}")
    sys.exit(1)

print("PASSED all stub-route migration checks")
sys.exit(0)
