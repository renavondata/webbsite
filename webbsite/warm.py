"""Fill the precompute cache before a visitor has to (webbsite/precompute.py).

Requests every precomputed page variant once, in-process through Flask's test
client: no gunicorn slot is used, and a page that is already current costs a
file read. Run by webbsite-warm.service after each successful data refresh and
every 10 minutes (deploys, the midnight date roll, a wiped cache).

    python -m webbsite.warm            # exit 1 if any page failed

A page counts as failed when it is not a 200 or it rendered after a caught
database error (the app marks those ``no-store``). Sequential on purpose: the
heavy pages compete for the same disk, and nobody is waiting on this.
"""

from __future__ import annotations

import sys
import time

# The orgtypes the incorporation pages offer in their dropdown.
INC_TYPES = (1, 19, 21, 26, 28)


def warm_urls() -> list[str]:
    """Every variant the routes precompute, default sort (sorting is per request)."""
    listed = [f"/dbpub/listed.asp?e={e}&t={t}" for e in "mgsrca" for t in "srwh"]
    inc = [f"/dbpub/{page}.asp" for page in ("incHKannual", "incHKmonth", "incHKsurvive")]
    inc_typed = [f"{u}?t={t}" for u in inc for t in INC_TYPES]
    return [
        *listed,
        *inc,
        *inc_typed,
        "/dbpub/shortsum.asp",
        "/dbpub/leagueDirsHK.asp",
    ]


def failed(response) -> bool:
    return response.status_code != 200 or "no-store" in response.headers.get("Cache-Control", "")


def main(urls=None, app=None) -> int:
    if app is None:
        from webbsite import create_app

        app = create_app()
    client = app.test_client()
    urls = urls or warm_urls()
    failures = []
    started = time.monotonic()
    for url in urls:
        t0 = time.monotonic()
        r = client.get(url, headers={"User-Agent": "webbsite-warm/1"})
        ms = (time.monotonic() - t0) * 1000
        status = "FAIL" if failed(r) else "ok"
        print(f"{status} {r.status_code} {ms:8.0f} ms  {url}  "
              f"{r.headers.get('Server-Timing', '')}", flush=True)
        if status == "FAIL":
            failures.append(url)
    total = time.monotonic() - started
    print(f"warmed {len(urls) - len(failures)} pages in {total:.1f} s; "
          f"{len(failures)} failed", flush=True)
    return 1 if failures else 0


if __name__ == "__main__":
    sys.exit(main())
