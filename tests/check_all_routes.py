#!/usr/bin/env python3
"""Standing route-health gate for the Webb-site archive.

Complements ``compare_asp_flask.py`` (which checks ASP↔Flask fidelity but treats
row-count differences as MATCH_APPROX, so it cannot see a page that silently
renders *zero* rows). This gate checks three things the fidelity comparator can't:

  1. **Status** — every route returns the status we expect (200 for public
     pages, 410 for the intentionally-deferred interactive features, 200 for the
     sitemap). Catches hard 500s.
  2. **Content** — a curated set of data pages must actually contain data, not an
     empty table. Catches *silent* failures like the listedcoshk/.issuer bug,
     where the page returned 200 with no rows.
  3. **Sort links** — every sort value every fixtured page accepts (``?sort=``
     on most pages; ``sort1``/``s1``/``s2``/``s3`` on a few) must
     return 200 *and* the same number of rows as the unsorted page. A column
     header runs a different ORDER BY against the same query, so it is a
     separate code path that nothing else executes: tuntraff.asp's direction
     headers were 500s for the life of the Flask port (WEBBSITE-1G/1H) because
     one fixture per page only ever exercised one sort. The row-count half
     catches the other failure mode -- listed.asp answered 200 with an empty
     table when one row raised (WEBBSITE-1E/1F), because the route caught the
     error and rendered nothing. The reverse too: a sort link a page *offers*
     that its route does not handle is a header that does nothing when clicked.

It enumerates the live URL map (so newly-added routes show up as "uncovered"
until given a fixture) and exercises representative URLs — reusing the curated,
real-ID URLs already maintained in ``crawl_asp.py`` so the two stay in sync.

Usage:
    BASE_URL=http://127.0.0.1:8000 python tests/check_all_routes.py
    (default BASE_URL is http://127.0.0.1:8000 — the gunicorn origin)

    ROUTE_CHECK_SORTS=0   skip the sort sweep (~1100 requests, the slow part)
    ROUTE_CHECK_WORKERS=6 concurrency for the sweep

Exit code 0 = all checks passed; 1 = at least one failure.
"""
import os
import re
import sys
from concurrent.futures import ThreadPoolExecutor
from html import unescape
from urllib.parse import parse_qs, parse_qsl, urlencode, urljoin, urlsplit
from urllib.request import Request, urlopen
from urllib.error import HTTPError, URLError

BASE_URL = os.environ.get("BASE_URL", "http://127.0.0.1:8000").rstrip("/")
TIMEOUT = int(os.environ.get("ROUTE_CHECK_TIMEOUT", "30"))

# The route fixtures are pure data in route_fixtures.py (no requests, no proxy
# guard), so this script runs on the box's app venv with only the stdlib.
sys.path.insert(0, os.path.dirname(__file__))
import route_fixtures as ca  # noqa: E402
import sort_fixtures  # noqa: E402

# Sent on every request. Through Cloudflare, a client with no Accept-Language
# is challenged on /ccass/ (a WAF rule aimed at the 2026-09 scraper); the origin
# does not care. Override with ACCEPT_LANGUAGE= if a run needs to look different.
HEADERS = {
    "User-Agent": "webbsite-route-check/1 (+deploy/README.md)",
    "Accept-Language": os.environ.get("ACCEPT_LANGUAGE", "en-GB,en;q=0.8"),
}

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
    ("/dbpub/enigma.orgdata.asp?p=382", 200),  # 301 -> orgdata.asp (requests follows)
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
    # Regression guard for the enigma.orgdata.asp stub bug: orgdata.asp must show
    # the company (HSBC for p=382) and never the stub's "coming soon" placeholder.
    ("/dbpub/orgdata.asp", {"p": "382"}, r"HSBC", "Holders information coming soon"),
]


# Pages whose row count legitimately changes with the sort order. Every entry
# needs a reason, because the usual cause of a changed row count is a broken
# ORDER BY that the route caught and rendered as an empty table. These pages are
# held to a floor rather than exempted: turning the check off for them would let
# through, on exactly these pages, the failure it exists to catch.
SORT_ROW_COUNT_VARIES = {
    "/dbpub/lirstaff.asp":
        "collapses *consecutive* rows for the same staff member, faithful to the "
        "ASP, so a different order groups a different number of rows",
    "/dbpub/offpay.asp":
        "groups by year or by name depending on the sort, and prints a header "
        "row per group",
    # A page with parameters names just that variant; its other views keep the
    # exact check.
    "/dbpub/holders.asp?p=382&x=c":
        "condensed view: a company met twice in the ownership tree is expanded "
        "where it is met first, and the sort decides which that is -- so which "
        "intermediates are hidden and merged depends on it, as it did in the "
        "ASP. The expanded view (x=y) shows every row and is held exactly",
}

# A few pages run the same sort value down a different query depending on some
# other parameter, so one baseline exercises only half of each value. Each
# variant listed here is swept in full as well, against its own row count.
SORT_EXTRA_BASES = {
    "/dbpub/holders.asp": {
        "p=382&x=c": "condensed tree, sorted in Python by a separate key map",
        "p=382&x=y": "expanded tree, built by recursive queries",
    },
    "/dbpub/orgdata.asp": {
        "p=382&x=y": "holdings as a recursive tree rather than the flat query",
    },
    "/dbpub/leagueDirsHK.asp": {
        "m=20": "any non-default variant is sorted by PostgreSQL; the default "
                "table is cached and sorted in Python, so it never runs order_map",
    },
}

# Base parameters for pages whose only fixture is an EXTRA_URLS entry above, or
# that need different parameters to render rows than the fixture uses.
SORT_BASE_OVERRIDES = {
    # Renders the gated-off suspension notice, never a table.
    "/dbpub/HKIDindex120215.asp": None,
}

# A fixture that renders no rows makes every sort check on that page pass while
# testing nothing, so it FAILS unless it is named here -- otherwise a page whose
# data drifts out from under its fixture leaves the sweep as quietly as an
# extractor that returns nothing, which this design refuses to allow elsewhere.
# (Reporting it would not do: scripts/assert_box.py forwards only FAIL lines to
# the daily ping, so an INFO line reaches nobody.)
SORT_FIXTURE_TOO_THIN = {}


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


# Retrying is for a momentarily saturated origin, not a dead one: once this many
# probes in a row have failed to connect, the origin is down and a second attempt
# per URL only spends the invariants job's budget, turning a clear FAIL into an
# out-of-time BLIND.
GIVE_UP_RETRYING_AFTER = 10
_unreachable = 0


def probe(url):
    """(status, body). Status is None when the origin could not be reached.

    Retried once, because a single connection-level transient here otherwise
    turns the daily invariants run red for no reason -- one did, mid-sweep,
    against a page that answers in 15 ms.
    """
    global _unreachable
    attempts = 1 if _unreachable >= GIVE_UP_RETRYING_AFTER else 2
    last = "not attempted"
    for _ in range(attempts):
        try:
            with urlopen(Request(url, headers=HEADERS), timeout=TIMEOUT) as r:  # noqa: S310
                _unreachable = 0
                return r.status, r.read().decode("utf-8", "replace")
        except HTTPError as e:
            _unreachable = 0
            return e.code, e.read().decode("utf-8", "replace")
        except (URLError, OSError) as e:
            last = str(e)
    _unreachable += 1
    return None, last


def sort_base_urls():
    """{path: query string} -- one representative, data-rendering URL per page.

    Whatever fixture already exercises the page is reused, so adding a sort
    value to a route needs no new fixture and a new page needs only one. Where a
    page has several, the first wins, which makes fixture order load-bearing --
    but picking an empty one is a failure now (SORT_FIXTURE_TOO_THIN), not a
    quiet pass, so it cannot go unnoticed.
    """
    base = {}
    # Most specific first: a page listed both with and without parameters is
    # almost always empty without them, and an empty page makes its sort checks
    # vacuous (matches.asp needs org1/org2, overlap.asp needs p).
    for path, params in ca.DBPUB_ROUTES_WITH_PARAMS + ca.CCASS_ROUTES_WITH_PARAMS:
        base.setdefault(path, urlencode(params))
    for path, exp in EXTRA_URLS:
        if exp == 200:
            p, _, query = path.partition("?")
            if query:
                base.setdefault(p, query)
    for path in ca.DBPUB_ROUTES_NO_PARAMS + ca.CCASS_ROUTES_NO_PARAMS:
        base.setdefault(path, "")
    for path, exp in EXTRA_URLS:
        if exp == 200:
            base.setdefault(path.partition("?")[0], "")
    for path, override in SORT_BASE_OVERRIDES.items():
        if override is None:
            base.pop(path, None)
        else:
            base[path] = override
    return base


def check_sorts():
    """Every sort value must return 200 with the same rows as the unsorted page.

    Two failure modes, one check each:

      * a 500 -- tuntraff.asp's direction headers ordered a grouped query by a
        base column, which PostgreSQL rejects (WEBBSITE-1G/1H);
      * a 200 with an empty table -- the route catches the error and renders
        nothing, which is how listed.asp looked when one row raised
        (WEBBSITE-1E/1F) and how shortdate.asp?sort=diffdn looked when its
        ORDER BY named a column the SELECT never produced.

    Sorting cannot change which rows a page has, so the row count is the
    strongest cheap assertion available without parsing the table.

    Also checks the other direction: a sort link the page *offers* that its
    route does not handle is a dead header -- it returns 200, with exactly the
    rows it already had, in exactly the order it already had. So is a link that
    sends its sort parameter twice, since only the first copy is read. Only the
    unsorted page's links are read, so for a header that toggles direction this sees one
    of the two; a value linked *only* from an already-sorted page would be
    missed.
    """
    values, patterns = sort_fixtures.sort_values(), sort_fixtures.sort_patterns()
    base = sort_base_urls()
    failures, uncovered = [], []
    # (path, base query) pairs: each page's fixture, plus any variant that sends
    # the same sort values down a different query.
    targets = []
    for path in sorted(values):
        if expected_status(path) != 200 or path in KNOWN_MISSING:
            continue
        if path not in base:
            uncovered.append(path)
            continue
        targets.append((path, base[path]))
        targets.extend((path, q) for q in SORT_EXTRA_BASES.get(path, {}))

    # Six of gunicorn's 24 request slots (3 workers x 8 threads), so the daily
    # run leaves the site responsive to actual visitors while it sweeps.
    # One parameter varies per request, the others left at their defaults --
    # never the cross product. For leagueDirsHK.asp that still reaches its
    # three-term ORDER BY, because s2 and s3 have defaults of their own.
    workers = int(os.environ.get("ROUTE_CHECK_WORKERS", "6"))
    with ThreadPoolExecutor(max_workers=workers) as pool:
        bases = dict(zip(targets, pool.map(
            lambda t: measure(f"{BASE_URL}{t[0]}?{t[1]}", t[0]), targets)))
        jobs = [(path, query, param, value)
                for path, query in targets
                for param, vals in sorted(values[path].items())
                for value in vals]
        sorted_pages = dict(zip(jobs, pool.map(
            lambda j: measure(f"{BASE_URL}{j[0]}?{with_param(*j[1:])}"), jobs)))

    # Confirm before failing. The sweep runs six pages at a time on a small box,
    # and a whole-market page that answers in 1.2 s alone has hit the 8 s
    # statement timeout mid-sweep -- which listed.asp renders as an empty table
    # with a 200, indistinguishable from the bug this looks for. A broken ORDER
    # BY fails every time; contention does not. So whatever failed is measured
    # again, one request at a time, and only a repeat counts. A timeout this
    # forgives is not lost: the app logs it, and the log reaches Sentry.
    # Past CONFIRM_AT_MOST failures it is not contention but a broken deploy,
    # and re-measuring each at up to 8 s could run the daily job out of time
    # before it reported anything -- so they are reported as they stand.
    retried = [t for t in targets if base_problem(*bases[t][:2])]
    if len(retried) > CONFIRM_AT_MOST:
        retried = []
    for t in retried:
        bases[t] = measure(f"{BASE_URL}{t[0]}?{t[1]}", t[0])
    again = [j for j in jobs
             if not base_problem(*bases[j[:2]][:2])
             and sort_problem(j[0], j[1], bases[j[:2]][1], *sorted_pages[j][:2])]
    if len(again) > CONFIRM_AT_MOST:
        again = []
    for j in again:
        sorted_pages[j] = measure(f"{BASE_URL}{j[0]}?{with_param(*j[1:])}")
    retried = [f"{t[0]}?{t[1]}" for t in retried] + [
        f"{j[0]}?{with_param(*j[1:])}" for j in again]

    vacuous = []
    for path, query in targets:
        where = f"{path}?{query}"
        code, base_rows, links = bases[(path, query)]
        if code != 200:
            failures.append(f"SORT {where}: base page status {code}")
            print(f"  FAIL  {where}  (base page status {code})")
            continue
        if base_rows < 3:
            if path in SORT_FIXTURE_TOO_THIN:
                vacuous.append(f"{where} -- {SORT_FIXTURE_TOO_THIN[path]}")
            else:
                failures.append(f"SORT {where}: fixture renders no rows, so none "
                                "of this page's sort links are being checked")
                print(f"  FAIL  {where}  (fixture renders nothing to sort)")
            continue
        bad = 0
        for param, vals in sorted(values[path].items()):
            for value in vals:
                code, sorted_rows, _ = sorted_pages[(path, query, param, value)]
                problem = sort_problem(path, query, base_rows, code, sorted_rows)
                if problem:
                    label = f"{path}?{with_param(query, param, value)}"
                    failures.append(f"SORT {label}: {problem}")
                    print(f"  FAIL  {label}  ({problem})")
                    bad += 1
        # A sort link the route does not handle: the header is there, the click
        # does nothing. Resolved against the link's own target, because plenty
        # of these point at another page.
        for target, param, sent in sorted(links):
            if expected_status(target) != 200:
                continue
            link = f"{target}?{'&'.join(f'{param}={v}' for v in sent)}"
            if len(sent) > 1:
                # The server reads the first copy, so the one the header meant
                # to send is ignored -- orgdata.html once appended its s2 to a
                # query string that already carried the current one.
                failures.append(f"SORT {where}: links {link}, sending ?{param}= "
                                f"{len(sent)} times; only the first is read")
                print(f"  FAIL  {where}  (?{param}= sent {len(sent)} times -> {link})")
                bad += 1
            elif sent[0] and not sort_fixtures.handles(
                    target, param, sent[0], values, patterns):
                failures.append(f"SORT {where}: links {link}, "
                                "which that route does not handle")
                print(f"  FAIL  {where}  (dead link -> {link})")
                bad += 1
        if not bad:
            count = sum(len(v) for v in values[path].values())
            print(f"  ok    {where}  ({count} sort values, {base_rows} rows)")

    if retried:
        print(f"INFO: {len(retried)} measurement(s) failed once and were "
              "taken again one at a time; only a repeat failure is reported:")
        for url in retried:
            print(f"       {url}")
    if vacuous:
        print(f"INFO: {len(vacuous)} known-thin fixture(s), excluded from the sort "
              "checks by SORT_FIXTURE_TOO_THIN:")
        for entry in vacuous:
            print(f"       {entry}")
    if uncovered:
        print(f"INFO: {len(uncovered)} route(s) take a sort but have no fixture, so "
              "none of their sort links are exercised:")
        for path in uncovered:
            print(f"       {path}")
    return failures


# More failures than this in one pass are reported without re-measuring.
CONFIRM_AT_MOST = 20


def base_problem(code, rows):
    """Is this base page unfit to compare sorts against?"""
    return code != 200 or rows < 3


def sort_problem(path, query, base_rows, code, rows):
    """Why this sorted page is wrong, or None. Sorting cannot change the rows."""
    if code != 200:
        return f"status {code}"
    if path in SORT_ROW_COUNT_VARIES or f"{path}?{query}" in SORT_ROW_COUNT_VARIES:
        if rows < max(3, base_rows // 2):
            return (f"{rows} rows; this page regroups on sort, but not down "
                    f"from {base_rows}")
        return None
    if rows != base_rows:
        return f"{rows} rows vs {base_rows} unsorted"
    return None


def with_param(query, param, value):
    """`query` with ?param=value set, replacing any value it already carried."""
    pairs = [(k, v) for k, v in parse_qsl(query, keep_blank_values=True) if k != param]
    return urlencode(pairs + [(param, value)])


def measure(url, page_path=None):
    """(status, row count, sort links) for one page. The body is NOT retained.

    The sweep fetches ~1200 pages and the checks need only a status, a row
    count and (for the base page of each route) the set of sort links it
    offers. Keeping the decoded bodies alive until the end would hold hundreds
    of megabytes on a box that has been OOM-killed before -- some of these
    pages are five thousand rows.
    """
    code, body = probe(url)
    links = sort_links(body, page_path) if page_path else frozenset()
    return code, len(ROW.findall(body)), links


# A table row, or a row of one of the ownership trees (holders.asp,
# orgdata.asp?x=y), which are floated divs rather than a table; each numbers
# its rows with an anchor, as the ASP did, and a sort reorders those rows
# without adding or removing any.
ROW = re.compile(r"""<tr\b|<a name=["'][HD]\d+["']""", re.I)


def sort_links(body, page_path):
    """{(target path, param, (values sent...))} for every sort a page links to.

    A parameter counts as a sort if it is one of the names routes read sorts
    from, or if the value it carries is shaped like a sort key -- the second is
    how a real sort key sent under a name the target never reads is caught
    (league_dirs_hk.html once sent possum.asp `s=cagreldn`). Blank values are
    kept, because a blank first copy is exactly what shadows a real second one.
    """
    site = urlsplit(BASE_URL).netloc
    found = set()
    for href in re.findall(r"""href=['"]([^'"]*\?[^'"]*)['"]""", body):
        parts = urlsplit(urljoin(f"{BASE_URL}{page_path}", unescape(href)))
        if parts.netloc != site:
            continue
        for param, sent in parse_qs(parts.query, keep_blank_values=True).items():
            if param in sort_fixtures.SORT_PARAMS or any(
                    sort_fixtures.looks_like_sort_key(v) for v in sent):
                found.add((parts.path or page_path, param, tuple(sent)))
    return found


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

    # 3) sort links: every ?sort= value, and every sort link the page offers.
    if os.environ.get("ROUTE_CHECK_SORTS", "1") != "0":
        print("-" * 60)
        failures.extend(check_sorts())

    # 4) coverage report (informational): parameterless GET rules with no fixture
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
