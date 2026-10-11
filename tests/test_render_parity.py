#!/usr/bin/env python3
"""Rendering parity: what a visitor sees under the default config is pinned.

The overlay seams (WEBBSITE_OVERLAY_DIR, SITE_NAME, templates/site/*.html) exist
so a deployment can re-brand the site WITHOUT editing upstream templates. They
must change nothing by themselves. This test renders every template the app
ships, with one fixed context, and compares a SHA-256 of each output against
tests/fixtures/render_parity.json -- a snapshot taken on the commit BEFORE the
seams were cut (df4f640), so "identical to before" is a measured fact, not a
review claim. It also proves an overlay actually applies: pointing
WEBBSITE_OVERLAY_DIR at tests/fixtures/overlay (which overrides only
site/banner.html) changes the banner on every page that has one, and nothing
else on any page.

No DB, no pytest needed -- same house style as tests/test_app_hardening.py:

    uv run python tests/test_render_parity.py           # check
    uv run python tests/test_render_parity.py --write   # re-snapshot (an intended change)

Templates are rendered through the app's own Jinja environment with
ChainableUndefined, so a template whose variables are missing still renders its
static text (titles, headers, footers, the banner) instead of raising. A
template that cannot render even so is recorded as such, and must stay so.
"""

import hashlib
import json
import os
import sys
from datetime import date
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

os.environ.setdefault("DATABASE_URL", "postgresql://stub:stub@127.0.0.1:1/stub")
# The default config is what is pinned: no overlay, no re-branding from the environment.
for _name in ("WEBBSITE_OVERLAY_DIR", "SITE_NAME", "SITE_SHORT_NAME", "CANONICAL_HOST", "SEARCH_DOMAIN"):
    os.environ.pop(_name, None)

from jinja2 import ChainableUndefined  # noqa: E402

GOLDEN = ROOT / "tests" / "fixtures" / "render_parity.json"
TEMPLATES = ROOT / "webbsite" / "templates"
OVERLAY = ROOT / "tests" / "fixtures" / "overlay"
REQUEST_PATH = "/dbpub/orgdata.asp?p=1"

# Every name a context processor would supply, fixed so the output does not
# depend on the date or the database.
FIXED_CONTEXT = {"now": date(2026, 1, 2), "data_asof": "2025-10-10", "ccass_asof": "2025-10-17"}

# Per-template fixtures: the least each needs to render IN FULL (not just its
# <title>) under ChainableUndefined -- a callable, a number, a real date where
# the template does arithmetic or formatting on one. Every template that uses
# a site seam must render in full (SEAM_MARKERS below); add its entry here.
class _Stats(dict):
    """status.html's counts: any key not given reads as a number to format."""

    def __missing__(self, key):
        return 123456


_TODAY = date(2026, 1, 2)
PAGE_CONTEXT = {
    "index.html": {"today": _TODAY},
    "pages/status.html": {"today": _TODAY, "stats": _Stats(ccass_latest=date(2025, 10, 17))},
    "dbpub/buybacksum.html": {"max_date": date(2025, 10, 10), "freq": "y", "year": 2025, "month": 0, "day": 0},
    "dbpub/holdings.html": {"nav_flags": {}, "person_flags": {}},
    "dbpub/sdidir.html": {"nav_flags": {}},
    "dbpub/sdidirco.html": {"nav_flags": {}},
    "dbpub/sdiissue.html": {"nav_flags": {}},
    "dbpub/str.html": {"i": 0},
    "dbeditor/index.html": {"session": lambda key: "", "makeSelect": lambda *a: "", "CStr": str},
}

# A template that references any of these carries a site seam, so its whole
# output -- not just its title -- must be compared.
SEAM_MARKERS = ("site_name", "site_short_name", "'site/", "config.POSTHOG")

# The banner varies by request path and by a view-supplied crhk_url; each branch
# is rendered on its own.
BANNER_CASES = [
    ("/dbpub/sfc/licrec.asp", {}),
    ("/dbpub/sdiissue.asp?i=1", {}),
    ("/dbpub/orgdata.asp?p=1", {}),
    ("/ccass/chldchg.asp", {}),
    ("/dbpub/orgdata.asp?p=1", {"crhk_url": "https://crhk.guru/company/0001234"}),
    ("/dbpub/orgdata.asp?p=1", {"crhk_url": "https://crhk.guru/company/brn/13937424"}),
]

# Where the banner lives. Before the seams were cut it was includes/_renavon_cta.html.
BANNER_TEMPLATES = ("site/banner.html", "includes/_renavon_cta.html")

_failures: list[str] = []


def check(name, got, want):
    if got != want:
        _failures.append(f"{name}: got {got!r}, want {want!r}")
    else:
        print(f"  ok  {name}")


def _app(overlay_dir=None):
    from webbsite import create_app, watermarks
    from webbsite.config import Config

    # The watermark context processor reads enigma.log; pin it instead.
    watermarks.log_val = lambda name: {"MBquotesDate": "2025-10-10", "GEMquotesDate": "2025-10-10"}.get(
        name, "2025-10-17"
    )
    if overlay_dir is None:
        return create_app()
    return create_app(type("OverlayConfig", (Config,), {"WEBBSITE_OVERLAY_DIR": str(overlay_dir)}))


def _render(app, env, name, path, extra=None, block=None):
    """One template's output (or just one of its blocks) under `path`."""
    with app.test_request_context(path):
        ctx = dict(FIXED_CONTEXT)
        ctx.update(extra or {})
        app.update_template_context(ctx)
        ctx.update(FIXED_CONTEXT)
        ctx.update(extra or {})
        try:
            template = env.get_template(name)
            if block is None:
                return template.render(ctx)
            return "".join(template.blocks[block](template.new_context(ctx)))
        except Exception as exc:  # recorded, not hidden: the snapshot pins it
            return f"!! {type(exc).__name__}"


def _defines_title(env, name):
    try:
        return "title" in env.get_template(name).blocks
    except Exception:
        return False


def _banner_template(app):
    names = set(app.jinja_env.list_templates())
    return next(n for n in BANNER_TEMPLATES if n in names)


def render_all(app):
    """{key: rendered text} for every shipped template plus each banner branch."""
    env = app.jinja_env.overlay(undefined=ChainableUndefined)
    # list_templates on the app's own loader: an overlay's extra files are not
    # part of the upstream surface being pinned.
    from jinja2 import FileSystemLoader

    upstream = FileSystemLoader(str(ROOT / "webbsite" / "templates")).list_templates()
    banner = _banner_template(app)
    out = {}
    for name in upstream:
        if name.endswith(".html") and name not in BANNER_TEMPLATES and not name.startswith("site/"):
            out[name] = _render(app, env, name, REQUEST_PATH, PAGE_CONTEXT.get(name))
            # The <title> block alone, so a page whose body cannot render
            # without real data still has its title pinned.
            if _defines_title(env, name):
                out[f"title: {name}"] = _render(app, env, name, REQUEST_PATH, PAGE_CONTEXT.get(name), block="title")
    for i, (path, extra) in enumerate(BANNER_CASES):
        out[f"banner#{i} {path} {sorted(extra.items())}"] = _render(app, env, banner, path, extra)
    return out


def _digest(text):
    return hashlib.sha256(text.encode()).hexdigest()


def snapshot(app):
    return {k: _digest(v) for k, v in sorted(render_all(app).items())}


def run():
    if os.environ.get("PLANTED_FAILURE"):
        check("planted failure (CI self-proof; expected to fail)", 1, 0)

    app = _app()
    golden = json.loads(GOLDEN.read_text())
    _text = render_all(app)
    got = {k: _digest(v) for k, v in _text.items()}

    # 1. Default config renders byte-identically to the pre-seam snapshot -----
    check("parity: same set of rendered keys", sorted(got), sorted(golden))
    differ = sorted(k for k in golden if k in got and got[k] != golden[k])
    check("parity: every template renders as before", differ, [])
    whole = [k for k in got if not k.startswith(("banner#", "title: "))]
    titles = [k for k in got if k.startswith("title: ")]
    # Floors, so a harness that quietly stops rendering cannot pass as parity.
    check("parity: >180 templates render whole", sum(not _text[k].startswith("!!") for k in whole) > 180, True)
    check("parity: >200 title blocks render", sum(not _text[k].startswith("!!") for k in titles) > 200, True)
    # No silent gaps: a template carrying a seam that renders only its title
    # would let a changed body through unchecked.
    seamed = sorted(
        str(f.relative_to(TEMPLATES)) for f in TEMPLATES.rglob("*.html")
        if not str(f.relative_to(TEMPLATES)).startswith("site/")
        and any(m in f.read_text() for m in SEAM_MARKERS)
    )
    check("parity: >40 templates carry a seam", len(seamed) > 40, True)
    check("parity: every seamed template renders in full (give it a PAGE_CONTEXT entry)",
          [n for n in seamed if _text.get(n, "!! missing").startswith("!!")], [])

    # 2. An overlay replaces site/banner.html, and nothing else ---------------
    default_text = _text
    overlay_text = render_all(_app(OVERLAY))

    marker = (OVERLAY / "templates" / "site" / "banner.html").read_text().strip()
    banners = [k for k in default_text if k.startswith("banner#")]
    check("overlay: every banner branch is the overlay's", all(overlay_text[k].strip() == marker for k in banners), True)

    env = app.jinja_env.overlay(undefined=ChainableUndefined)
    default_banner = _render(app, env, "site/banner.html", REQUEST_PATH)
    pages = [k for k in default_text if not k.startswith("banner#")]
    with_banner = [k for k in pages if default_banner in default_text[k]]
    check("overlay: the banner appears on many pages", len(with_banner) > 100, True)
    wrong = [
        k for k in pages
        if overlay_text[k] != default_text[k].replace(default_banner, marker)
    ]
    check("overlay: pages differ ONLY by the banner", wrong, [])

    if _failures:
        print("\nFAILED:")
        for f in _failures:
            print("  " + f)
        return 1
    print(f"\nrender parity: {len(golden)} renders pinned, overlay applied to {len(with_banner)} pages")
    return 0


def test_all():
    """pytest entry point (CI); the direct-run house style still works."""
    assert run() == 0, "\n".join(_failures)


if __name__ == "__main__":
    if sys.argv[1:] == ["--write"]:
        GOLDEN.parent.mkdir(parents=True, exist_ok=True)
        snap = snapshot(_app())
        GOLDEN.write_text(json.dumps(snap, indent=1, sort_keys=True) + "\n")
        print(f"wrote {len(snap)} digests to {GOLDEN.relative_to(ROOT)}")
        sys.exit(0)
    sys.exit(run())
