"""Fill the precompute cache before a visitor has to (webbsite/precompute.py).

Requests every precomputed page variant once, in-process through Flask's test
client: no gunicorn slot is used, and a page that is already current costs a
file read. Run by scripts/warm_loop.py every 10 minutes and after each deploy
(data refreshes, the midnight date roll, a wiped cache).

    python -m webbsite.warm            # exit 1 if any page failed

A page counts as failed when it is not a 200 or it rendered after a caught
database error (the app marks those ``no-store``). Sequential on purpose: the
heavy pages compete for the same disk, and nobody is waiting on this.

Participant holdings lists are warmed by calling the kept compute directly and not
through the page: there are about 600, and rendering them all every round would cost
far more than the file reads that a round of already current lists comes to.
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
        *[f"/dbpub/ESStop.asp?p={p}" for p in range(3)],
        "/dbpub/namechangeHK.asp",
        "/dbpub/namechangeHKlisted.asp",
        "/dbpub/prhdistricts.asp",
        "/dbpub/HKflightscan.asp?ad=a",
        "/dbpub/HKflightscan.asp?ad=d",
        *[f"/dbpub/hksols.asp?p={p}" for p in range(6)],
        "/dbpub/HKsolsmoves.asp",
        "/sitemap.xml",  # every child sitemap's list
        "/dbpub/dirsHKPerPerson.asp",
        "/dbpub/DirsHKAgeDistn.asp",
        "/dbpub/HKdirsTypeSex.asp",
        *[f"/dbpub/mcap.asp?e={e}&t={t}" for e in "mgsrca" for t in "swh"],
        *[f"/dbpub/mcaphist.asp?e={e}&t={t}" for e in "mgsrca" for t in "swh"],
        "/dbpub/payleague.asp",
        "/dbpub/payleagueorg.asp",
        "/dbpub/advbyrole.asp",
        "/dbpub/oldestHKcos.asp",
        "/dbpub/oldestHKcos.asp?a=1",
        "/dbpub/incHKcaltype.asp",
        "/dbpub/disHKcaltype.asp",
        *[f"/dbpub/incUKcaltype.asp?dom={dom}" for dom in (116, 112, 311)],
        "/dbpub/boardcomp.asp",
        "/dbpub/INEDHKDistnCos.asp",
        "/dbpub/SFClicount.asp",
        "/ccass/cconc.asp",
        "/ccass/ipstakes.asp",
    ]


def failed(response) -> bool:
    return response.status_code != 200 or "no-store" in response.headers.get("Cache-Control", "")


def warm_cholder(app) -> tuple[int, int]:
    """Every active participant's default list; returns (warmed, failed)."""
    from webbsite.routes.ccass import cholder_warm_list, kept_cholder_rows

    try:
        with app.test_request_context():
            d, parts = cholder_warm_list()
    except Exception as ex:
        print(f"FAIL cholder list: {ex}", flush=True)
        return 0, 1
    failed_n = 0
    for part in parts:
        url = f"/ccass/cholder.asp?part={part}"
        t0 = time.monotonic()
        try:
            with app.test_request_context():  # one connection and failure flag per list
                kept_cholder_rows(part, d, False)
            print(f"ok 200 {(time.monotonic() - t0) * 1000:8.0f} ms  {url}", flush=True)
        except Exception as ex:
            failed_n += 1
            print(f"FAIL {url}: {ex}", flush=True)
    return len(parts) - failed_n, failed_n


def main(urls=None, app=None) -> int:
    if app is None:
        from webbsite import create_app

        app = create_app()
    client = app.test_client()
    warm_lists = urls is None
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
    lists_ok, lists_failed = warm_cholder(app) if warm_lists else (0, 0)
    total = time.monotonic() - started
    print(f"warmed {len(urls) - len(failures)} pages and {lists_ok} lists in {total:.1f} s; "
          f"{len(failures) + lists_failed} failed", flush=True)
    return 1 if failures or lists_failed else 0


if __name__ == "__main__":
    sys.exit(main())
