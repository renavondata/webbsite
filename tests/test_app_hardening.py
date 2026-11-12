#!/usr/bin/env python3
"""Runnable checks for the 2026-09 "stop the bleeding" changes (no DB, no pytest).

Same house style as tests/test_health.py: a plain script, run it directly.

    uv run python tests/test_app_hardening.py

Pins the DB-free half of the fixes that landed after the 2026-09-11 outage:
  1. escape_like() neutralises LIKE wildcards (a `%` in ?n= was a full scan);
  2. decimals_to_float() removes the Decimal/float mix that 500'd sdicap.asp;
  3. every /ccass/*.asp route rejects a pre-history date with a cheap 400
     BEFORE touching the database (the pre-flight used to cover 4 of 19);
  4. /contact/* is 410 Gone and Disallowed, not a 500 on a missing schema;
  5. every response carries an X-Request-Id, echoing the proxy's when given.

Routes are exercised through the test client with the DB engine pointed at a
port nothing listens on: a guard that lets a request reach the database shows
up as a connection error, not a 400 -- which is the point.
"""

import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

import hermetic  # noqa: E402

hermetic.isolate()

from decimal import Decimal  # noqa: E402

from webbsite import DEFERRED_FEATURE_PREFIXES, ROBOTS_DISALLOW, create_app  # noqa: E402
from webbsite.asp_helpers import decimals_to_float, escape_like  # noqa: E402

_failures: list[str] = []


def check(name, got, want):
    if got != want:
        _failures.append(f"{name}: got {got!r}, want {want!r}")
    else:
        print(f"  ok  {name}")


def run():
    # CI's self-proof: with PLANTED_FAILURE set this script must exit 1, or the
    # gate is decoration. Nothing else changes.
    if os.environ.get("PLANTED_FAILURE"):
        check("planted failure (CI self-proof; expected to fail)", 1, 0)

    # 1. LIKE escaping -------------------------------------------------------
    check("escape_like: plain text untouched", escape_like("Cheung Kong"), "Cheung Kong")
    check("escape_like: % escaped", escape_like("50%"), "50\\%")
    check("escape_like: _ escaped", escape_like("a_b"), "a\\_b")
    check("escape_like: backslash escaped first", escape_like("a\\%"), "a\\\\\\%")
    check("escape_like: None -> empty", escape_like(None), "")

    # 2. Decimal coercion -----------------------------------------------------
    row = {"avprice": Decimal("1.25"), "vol": 10, "name": "x", "d": None}
    check("decimals_to_float: dict", decimals_to_float(row),
          {"avprice": 1.25, "vol": 10, "name": "x", "d": None})
    check("decimals_to_float: list", decimals_to_float([{"a": Decimal("2")}]), [{"a": 2.0}])
    check("decimals_to_float: None", decimals_to_float(None), None)
    coerced = decimals_to_float({"a": Decimal("1"), "b": 2.0})
    check("decimals_to_float: float / former-Decimal divides", coerced["b"] / coerced["a"], 2.0)

    app = create_app()
    app.config["TESTING"] = True
    client = app.test_client()

    # 3. CCASS pre-flight on every route ------------------------------------------
    ccass_routes = sorted(
        r.rule for r in app.url_map.iter_rules() if r.endpoint.startswith("ccass.")
    )
    check("ccass: route count still 19", len(ccass_routes), 19)
    for rule in ccass_routes:
        if rule.endswith("CCASSnotes.asp"):
            continue  # static notes page: no query parameters, nothing to guard
        resp = client.get(rule + "?d=1999-01-01")
        check(f"ccass: {rule} rejects pre-history date with 400", resp.status_code, 400)
    resp = client.get("/ccass/cholder.asp?part=abc")
    check("ccass: cholder rejects non-numeric part", resp.status_code, 400)
    resp = client.get("/ccass/cholder.asp?part=99999999")
    check("ccass: cholder rejects out-of-range part", resp.status_code, 400)
    resp = client.get("/ccass/ncipchg.asp?d2=2000-01-01")
    check("ccass: d2 is validated too", resp.status_code, 400)

    # 4. /contact is gone, and stays out of the index ---------------------------
    check("contact: in DEFERRED_FEATURE_PREFIXES", "/contact" in DEFERRED_FEATURE_PREFIXES, True)
    check("contact: Disallowed in robots", "/contact/" in ROBOTS_DISALLOW, True)
    check("contact: /contact/default.asp -> 410", client.get("/contact/default.asp").status_code, 410)
    check("robots.txt lists /contact/", b"Disallow: /contact/" in client.get("/robots.txt").data, True)

    # 5. Request id --------------------------------------------------------------
    resp = client.get("/health")
    rid = resp.headers.get("X-Request-Id", "")
    check("request id: minted when absent (32-hex uuid)", len(rid), 32)
    resp = client.get("/health", headers={"X-Request-Id": "caddy-abc-123"})
    check("request id: proxy's id echoed", resp.headers.get("X-Request-Id"), "caddy-abc-123")
    resp = client.get("/contact/x.asp", headers={"X-Request-Id": "r410"})
    check("request id: present on a short-circuited 410", resp.headers.get("X-Request-Id"), "r410")
    resp = client.get("/health", headers={"User-Agent": "Mozilla/5.0 (compatible; SemrushBot/7)"})
    check("request id: present on a bot 403", len(resp.headers.get("X-Request-Id", "")), 32)

    # 5b. A crawler that ignores robots.txt is refused before any query ----------
    # (2026-11-12: 14.6k historical portchg.asp pairs from one crawler in a day.)
    # The stub DB refuses connections, so a 403 proves no query ran.
    crawler = {"User-Agent": "Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; "
                             "compatible; Claude-SearchBot/1.0; +searchbot@anthropic.com)"}
    browser = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 "
                             "(KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36"}
    url = "/ccass/portchg.asp?d=2012-10-30&d1=2012-10-29&p=24"
    resp = client.get(url, headers=crawler)
    check("crawler: Disallowed portchg -> 403", resp.status_code, 403)
    check("crawler: the 403 is never cached", resp.headers.get("Cache-Control"), "no-store")
    check("crawler: no CDN TTL on the 403", resp.headers.get("CDN-Cache-Control"), None)
    check("browser: same URL is not refused",
          client.get(url, headers=browser).status_code != 403, True)
    for ua in ("Googlebot/2.1 (+http://www.google.com/bot.html)", "bingbot/2.0",
               "GoogleOther", "SomeCrawler/1", "Mozilla/5.0 (compatible; Yahoo! Slurp)"):
        check(f"crawler: {ua!r} refused on chldchg",
              client.get("/ccass/chldchg.asp?i=1", headers={"User-Agent": ua}).status_code, 403)
    check("crawler: wildcard rule (?page=all) refused",
          client.get("/dbpub/SFClicount.asp?page=all", headers=crawler).status_code, 403)
    check("crawler: CUBOT phone is a browser",
          client.get(url, headers={"User-Agent": "Mozilla/5.0 (Linux; Android 10; CUBOT X30)"})
          .status_code != 403, True)
    check("crawler: percent-encoded query still refused",
          client.get("/dbpub/SFClicount.asp?page=%61ll", headers=crawler).status_code, 403)
    check("link preview: Slackbot unfurls a shared Disallowed link",
          client.get(url, headers={"User-Agent": "Slackbot-LinkExpanding 1.0 (+https://api.slack.com/robots)"})
          .status_code != 403, True)
    check("crawler: allowed page not refused",
          client.get("/robots.txt", headers=crawler).status_code, 200)
    from webbsite import robots_disallowed
    check("robots_disallowed: prefix of path", robots_disallowed("/ccass/portchg.asp?p=1"), True)
    check("robots_disallowed: other path", robots_disallowed("/ccass/cholder.asp?part=1"), False)
    check("robots_disallowed: sort then page", robots_disallowed("/dbpub/x.asp?sort=a&page=2"), True)
    check("robots_disallowed: sort alone", robots_disallowed("/dbpub/x.asp?sort=a"), False)

    # 6. SWR probe: each variant's headers reach the edge exactly as declared --
    # the cache-header hook must not rewrite them, or the probe tests nothing.
    from webbsite import SWR_PROBE_HEADERS
    for variant, want in SWR_PROBE_HEADERS.items():
        resp = client.get(f"/_probe/swr/{variant}")
        got = {k: resp.headers.get(k) for k in
               ("Cache-Control", "CDN-Cache-Control", "Cloudflare-CDN-Cache-Control")
               if resp.headers.get(k) is not None}
        check(f"swr probe {variant}: headers as declared", (resp.status_code, got), (200, want))
    check("swr probe: unknown variant 404", client.get("/_probe/swr/x").status_code, 404)
    check("swr probe: Disallowed in robots", b"Disallow: /_probe/" in client.get("/robots.txt").data, True)

    if _failures:
        print("\nFAILED:")
        for f in _failures:
            print("  " + f)
        return 1
    print(f"\nall {len(ccass_routes) + 40} checks passed")
    return 0


def test_all():
    """pytest entry point (CI); the direct-run house style still works."""
    assert run() == 0, "\n".join(_failures)


if __name__ == "__main__":
    sys.exit(run())
