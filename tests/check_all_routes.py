#!/usr/bin/env python3
"""Standing route-health gate for the Webb-site archive.

Complements ``compare_asp_flask.py`` (which checks ASP↔Flask fidelity but treats
row-count differences as MATCH_APPROX, so it cannot see a page that silently
renders *zero* rows). This gate checks two things the fidelity comparator can't:

  1. **Status** — every route returns the status we expect (200 for public
     pages, 410 for the intentionally-deferred interactive features, 200 for the
     sitemap). Catches hard 500s.
  2. **Content** — a curated set of data pages must actually contain data, not an
     empty table. Catches *silent* failures like the listedcoshk/.issuer bug,
     where the page returned 200 with no rows.

It enumerates the live URL map (so newly-added routes show up as "uncovered"
until given a fixture) and exercises representative URLs — reusing the curated,
real-ID URLs already maintained in ``crawl_asp.py`` so the two stay in sync.

Usage:
    BASE_URL=http://127.0.0.1:8000 python tests/check_all_routes.py
    (default BASE_URL is http://127.0.0.1:8000 — the gunicorn origin)

Exit code 0 = all checks passed; 1 = at least one failure.
"""
import os
import re
import sys
from urllib.parse import urlencode

import requests

BASE_URL = os.environ.get("BASE_URL", "http://127.0.0.1:8000").rstrip("/")
TIMEOUT = int(os.environ.get("ROUTE_CHECK_TIMEOUT", "30"))

# crawl_asp.py sys.exit()s at import if this isn't set; we only want its URL
# constants, not its crawler, so satisfy the guard with a dummy value.
os.environ.setdefault("BRIGHTDATA_UNBLOCKER_PROXY", "unused-by-this-script")
sys.path.insert(0, os.path.dirname(__file__))
import crawl_asp as ca  # noqa: E402

# Deferred interactive features: every path under these must be 410 Gone.
DEFERRED_PREFIXES = ("/webbmail", "/vote", "/pollman", "/mailman", "/dbeditor")

# App-level / infra routes not in the crawl lists.
EXTRA_URLS = [
    ("/", 200),
    ("/health", 200),
    ("/robots.txt", 200),
    ("/sitemap.xml", 200),
    ("/sitemap-pages-0.xml", 200),
    ("/sitemap-companies-0.xml", 200),
    # Deferred features must return 410, not 500.
    ("/webbmail/login.asp", 410),
    ("/webbmail/mystocks.asp", 410),
    ("/vote/poll.asp", 410),
    ("/pollman/default.asp", 410),
    ("/dbeditor/org.asp", 410),
]

# Silent-failure guards: (path, params, must_match_regex, must_not_contain).
# Targeted at the four routes fixed for the listedcoshk/.issuer view bug, which
# previously rendered an empty 200. Each asserts the page actually has data.
CONTENT_CHECKS = [
    ("/dbpub/yearend.asp", {"e": "a"}, r"<td[^>]*>\s*[1-9][\d,]*\s*</td>", None),
    ("/dbpub/reportspeed.asp", {"y": "2023"}, r"orgdata\.asp\?p=\d+", None),
    ("/dbpub/leagueDirsHK.asp", {}, None, "No directors"),
    ("/dbpub/indexhk.asp", {"p": "A"}, r"articles\.asp\?p=\d+", None),
]


def url_for(path, params=None):
    q = f"?{urlencode(params)}" if params else ""
    return f"{BASE_URL}{path}{q}"


def expected_status(path):
    for pre in DEFERRED_PREFIXES:
        if path == pre or path.startswith(pre + "/"):
            return 410
    return 200


def collect_targets():
    """(label, url, expected_status) tuples to probe."""
    targets = []
    for path, exp in EXTRA_URLS:
        targets.append((path, url_for(path), exp))
    for path in ca.DBPUB_ROUTES_NO_PARAMS + ca.CCASS_ROUTES_NO_PARAMS:
        targets.append((path, url_for(path), expected_status(path)))
    for path, params in ca.DBPUB_ROUTES_WITH_PARAMS + ca.CCASS_ROUTES_WITH_PARAMS:
        label = f"{path}?{urlencode(params)}"
        targets.append((label, url_for(path, params), expected_status(path)))
    return targets


def probe(url):
    try:
        r = requests.get(url, timeout=TIMEOUT)
        return r.status_code, r.text
    except requests.RequestException as e:
        return None, str(e)


def main():
    print(f"Route-health gate against {BASE_URL}\n" + "=" * 60)
    failures = []

    # 1) status checks
    for label, url, exp in collect_targets():
        code, _ = probe(url)
        if code != exp:
            failures.append(f"STATUS {label}: expected {exp}, got {code}")
            print(f"  FAIL  {label}  (expected {exp}, got {code})")

    # 2) content (silent-failure) checks
    print("-" * 60)
    for path, params, must_match, must_not in CONTENT_CHECKS:
        url = url_for(path, params)
        code, body = probe(url)
        label = f"{path}?{urlencode(params)}" if params else path
        if code != 200:
            failures.append(f"CONTENT {label}: status {code}")
            print(f"  FAIL  {label}  (status {code})")
            continue
        if must_match and not re.search(must_match, body, re.I):
            failures.append(f"CONTENT {label}: no data (missing /{must_match}/)")
            print(f"  FAIL  {label}  (empty? missing /{must_match}/)")
        elif must_not and must_not.lower() in body.lower():
            failures.append(f"CONTENT {label}: empty marker '{must_not}'")
            print(f"  FAIL  {label}  (empty marker '{must_not}')")
        else:
            print(f"  ok    {label}")

    # 3) coverage report (informational): parameterless GET rules with no fixture
    try:
        os.environ.setdefault("DATABASE_URL", "postgresql://x@localhost/x")
        sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
        from webbsite import create_app
        rules = {r.rule for r in create_app().url_map.iter_rules()
                 if "GET" in (r.methods or set()) and not r.arguments}
        covered = {t[0].split("?")[0] for t in collect_targets()}
        uncovered = sorted(
            p for p in rules - covered
            if not p.startswith(("/static", "/sitemap-"))
            and p not in ("/sitemap.xml",)
        )
        if uncovered:
            print("-" * 60)
            print(f"INFO: {len(uncovered)} parameterless route(s) without a fixture "
                  "(not failed, just uncovered):")
            for p in uncovered:
                print(f"       {p}")
    except Exception as e:  # coverage report is best-effort
        print(f"INFO: coverage report skipped ({e})")

    print("=" * 60)
    if failures:
        print(f"FAILED: {len(failures)} check(s)")
        return 1
    print("PASSED: all status and content checks green")
    return 0


if __name__ == "__main__":
    sys.exit(main())
