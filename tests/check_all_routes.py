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

# quotes.asp is a phantom in crawl_asp.py's list (no such ASP page ever existed;
# the real quote pages are hpw.asp/hpup.asp/pricesCSV.asp, all implemented). Kept
# here so its fixtures are excluded rather than failing.
KNOWN_MISSING = ("/dbpub/quotes.asp",)

# App-level / infra routes + the newly-ported dbpub pages (with representative
# params), and the deferred features that must be 410.
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
    ("/dbpub/cgrate.asp", 410),       # login-only rating write endpoint -> 410
    # Newly-ported pages.
    ("/dbpub/default.asp", 200),
    ("/dbpub/campaigns.asp", 200),
    ("/dbpub/donations.asp?camp=1", 200),
    ("/dbpub/idcheck.asp?ID=C668668", 200),
    ("/dbpub/yearendcos.asp?e=a&m=12", 200),
    ("/dbpub/lirstaff.asp", 200),
    ("/dbpub/lirstaffhist.asp?s=1", 200),
    ("/dbpub/natarts.asp?p=382", 200),
    ("/dbpub/hkpaxGoogle.asp", 200),
    ("/dbpub/hkflighthist.asp?al=CPA", 200),
    ("/dbpub/prices.asp?i=1", 200),
    ("/dbpub/hpw.asp?i=1088&f=m", 200),
    ("/dbpub/hpup.asp?i=1088", 200),
    ("/dbpub/offsum.asp?p=382", 200),
    ("/dbpub/offpay.asp?p=11600", 200),
    ("/dbpub/govest.asp?i=1251", 200),
    ("/dbpub/HKIDindex120215.asp", 200),  # suspension notice (publish gated off)
    # Routes whose broken queries were fixed (were silent-empty/500 before).
    ("/ccass/portchg.asp?p=7&d1=2024-06-03&d=2024-06-14", 200),
    ("/dbpub/buybacks.asp?i=1088&f=m", 200),
    ("/dbpub/buybacks.asp?i=1088&f=y", 200),
    ("/dbpub/overlap.asp?p=382", 200),
    ("/dbpub/pay.asp?p=382", 200),
    ("/dbpub/events.asp?i=1088", 200),
    ("/dbpub/matches.asp?org1=382&org2=382", 200),
    ("/dbpub/enigma.positions.asp?p=105", 200),  # 301 -> positions.asp (requests follows)
]

# Silent-failure guards: (path, params, must_match_regex, must_not_contain).
# Catch pages that 200 but render no data (the listedcoshk/.issuer failure mode),
# extended to the newly-ported pages.
CONTENT_CHECKS = [
    ("/dbpub/yearend.asp", {"e": "a"}, r"<td[^>]*>\s*[1-9][\d,]*\s*</td>", None),
    ("/dbpub/reportspeed.asp", {"y": "2023"}, r"orgdata\.asp\?p=\d+", None),
    ("/dbpub/leagueDirsHK.asp", {}, None, "No directors"),
    ("/dbpub/indexhk.asp", {"p": "A"}, r"articles\.asp\?p=\d+", None),
    ("/dbpub/campaigns.asp", {}, r"donations\.asp\?camp=\d+", None),
    ("/dbpub/donations.asp", {"camp": "1"}, r"(orgdata|natperson)\.asp\?p=\d+", None),
    ("/dbpub/idcheck.asp", {"ID": "C668668"}, r"check digit is:\s*9", None),
    ("/dbpub/yearendcos.asp", {"e": "a", "m": "12"}, r"orgdata\.asp\?p=\d+", None),
    ("/dbpub/lirstaff.asp", {}, r"lirstaffhist\.asp\?s=\d+", None),
    ("/dbpub/natarts.asp", {"p": "382"}, r"artsum", None),
    ("/dbpub/hpw.asp", {"i": "1088", "f": "m"}, r"Adj.{0,12}Close", None),
    ("/dbpub/offsum.asp", {"p": "382"}, r"positions\.asp\?p=\d+", None),
    ("/dbpub/offpay.asp", {"p": "11600"}, r"pay\.asp\?p=\d+", None),
    ("/dbpub/govest.asp", {"i": "1251"}, r"chart1", None),
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
    """(label, url, expected_status) tuples to probe (excludes KNOWN_MISSING)."""
    targets = []
    for path, exp in EXTRA_URLS:
        targets.append((path, url_for(path), exp))
    for path in ca.DBPUB_ROUTES_NO_PARAMS + ca.CCASS_ROUTES_NO_PARAMS:
        if path in KNOWN_MISSING:
            continue
        targets.append((path, url_for(path), expected_status(path)))
    for path, params in ca.DBPUB_ROUTES_WITH_PARAMS + ca.CCASS_ROUTES_WITH_PARAMS:
        if path in KNOWN_MISSING:
            continue
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

    # 2.5) reconciliations vs verified siblings (correctness, not just liveness)
    print("-" * 60)

    def _count(url, pat):
        code, body = probe(url)
        return len(re.findall(pat, body, re.M)) if code == 200 else -1

    # hpw monthly period rows must equal pricesCSV monthly rows (same data, two
    # independent code paths). hpw table = 1 header <tr> + N data rows.
    hpw_tr = _count(url_for("/dbpub/hpw.asp", {"i": "1088", "f": "m"}), r"<tr")
    csv_n = _count(url_for("/dbpub/pricesCSV.asp", {"i": "1088", "f": "m"}), r"^\d{4}-")
    if csv_n > 0 and hpw_tr - 1 == csv_n:
        print(f"  ok    reconcile hpw == pricesCSV periods ({csv_n})")
    else:
        failures.append(f"RECONCILE hpw vs pricesCSV: {hpw_tr - 1} vs {csv_n}")
        print(f"  FAIL  reconcile hpw({hpw_tr - 1}) != pricesCSV({csv_n})")

    # offsum: current (hide=Y) must be a non-empty subset of full history.
    allc = _count(url_for("/dbpub/offsum.asp", {"p": "382"}), r"positions\.asp")
    curc = _count(url_for("/dbpub/offsum.asp", {"p": "382", "hide": "Y"}), r"positions\.asp")
    if 0 < curc <= allc:
        print(f"  ok    reconcile offsum current({curc}) <= all({allc})")
    else:
        failures.append(f"RECONCILE offsum: current={curc} all={allc}")
        print(f"  FAIL  reconcile offsum current={curc} all={allc}")

    # Previously silent-empty (broken-query) routes must now render data rows.
    for label, url, minrows in [
        ("events i=1088", url_for("/dbpub/events.asp", {"i": "1088"}), 10),
        ("buybacks i=1088 f=m", url_for("/dbpub/buybacks.asp", {"i": "1088", "f": "m"}), 10),
        ("buybacks i=1088 f=y", url_for("/dbpub/buybacks.asp", {"i": "1088", "f": "y"}), 5),
        ("portchg p=7", url_for("/ccass/portchg.asp",
                                {"p": "7", "d1": "2024-06-03", "d": "2024-06-14"}), 10),
        ("pay p=382", url_for("/dbpub/pay.asp", {"p": "382"}), 5),
    ]:
        nrows = _count(url, r"<tr")
        if nrows >= minrows:
            print(f"  ok    data rows {label} ({nrows})")
        else:
            failures.append(f"DATA {label}: only {nrows} <tr> rows (< {minrows})")
            print(f"  FAIL  data rows {label} ({nrows} < {minrows})")

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

    if KNOWN_MISSING:
        print("-" * 60)
        print("INFO: known not-implemented in the Flask port (documented gap, "
              "excluded from checks):")
        for p in KNOWN_MISSING:
            print(f"       {p}")

    print("=" * 60)
    if failures:
        print(f"FAILED: {len(failures)} check(s)")
        return 1
    print("PASSED: all status and content checks green "
          f"({len(KNOWN_MISSING)} known-missing routes excluded)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
