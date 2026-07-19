#!/usr/bin/env python3
"""Render tests for the crhk_url branch of includes/_renavon_cta.html.

The contextual cross-link banner (included site-wide via base.html) grows a
highest-priority branch: when a view passes a ``crhk_url`` template variable, the
banner points at that company's crhk.guru registry profile instead of the generic
dataset targets. These tests render the include through the real Flask/Jinja env
and assert the branch selection and the injection-safe onclick contract.

No database is touched — a dummy DATABASE_URL lets create_engine build lazily
(pool_pre_ping defers the first real connection), and rendering the include never
requests one. Run from the repo root:

    uv run python tests/test_crhk_banner.py

Exits non-zero if any case fails.
"""

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# create_engine needs a URL string; a bogus one is fine — it is never connected.
os.environ.setdefault("DATABASE_URL", "postgresql://u:p@localhost:5432/db")

from flask import render_template

from webbsite import create_app


_app = create_app()


def _render(**context):
    with _app.test_request_context("/dbpub/orgdata.asp?p=123"):
        return render_template("includes/_renavon_cta.html", **context)


def run():
    failures = []

    def check(label, cond):
        if not cond:
            failures.append(label)

    # crhk_url present -> crhk branch wins over the generic orgdata target.
    crhk = _render(crhk_url="https://crhk.guru/company/0001234")
    check("crhk branch: links to the profile url", "https://crhk.guru/company/0001234" in crhk)
    check("crhk branch: fires bridge_cta_click", "bridge_cta_click" in crhk)
    check("crhk branch: crhkguru_company dataset", "target_dataset:'crhkguru_company'" in crhk)
    check("crhk branch: keeps banner UTM convention", "utm_campaign=bridge" in crhk)
    check("crhk branch: registry-profile copy", "Companies Registry profile" in crhk)
    check("crhk branch: suppresses generic archive copy", "This is a free archive" not in crhk)
    # The onclick must not interpolate the raw url/id — only literal + location.pathname.
    check("crhk branch: onclick uses location.pathname only", "source_path:location.pathname" in crhk)
    check("crhk branch: onclick has no raw url", "0001234" not in crhk.split("onclick=")[1].split(">")[0])

    # No crhk_url -> unchanged generic banner (orgdata maps to hkex_directors).
    generic = _render()
    check("generic branch: renders archive copy", "This is a free archive" in generic)
    check("generic branch: keeps orgdata dataset target", "target_dataset:'hkex_directors'" in generic)
    check("generic branch: no crhk dataset", "crhkguru_company" not in generic)

    # Falsy crhk_url (None) -> generic branch, never a broken crhk link.
    none_url = _render(crhk_url=None)
    check("none crhk_url: falls back to generic", "This is a free archive" in none_url)
    check("none crhk_url: no crhk dataset", "crhkguru_company" not in none_url)

    if failures:
        print(f"FAILED {len(failures)} checks:")
        for label in failures:
            print(f"  {label}")
        return 1

    print("PASSED all banner render checks")
    return 0


if __name__ == "__main__":
    sys.exit(run())
