#!/usr/bin/env python3
"""Runnable checks for the deployment overlay and site identity (no DB, no pytest).

    uv run python tests/test_overlay.py

Pins webbsite/overlay.py: an overlay's templates and static files win, the
app's own are the fallback, url_for('static') is unchanged, and a configured
overlay that is missing or empty fails at startup instead of silently serving
upstream branding. Also pins SITE_NAME / SITE_SHORT_NAME reaching templates.
tests/test_render_parity.py proves the default (no overlay) renders as before.
"""

import os
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

os.environ.setdefault("DATABASE_URL", "postgresql://stub:stub@127.0.0.1:1/stub")
for _name in ("WEBBSITE_OVERLAY_DIR", "SITE_NAME", "SITE_SHORT_NAME"):
    os.environ.pop(_name, None)

from flask import render_template, render_template_string, url_for  # noqa: E402

from webbsite import create_app, watermarks  # noqa: E402
from webbsite.config import Config  # noqa: E402
from webbsite.overlay import OverlayError  # noqa: E402

OVERLAY = ROOT / "tests" / "fixtures" / "overlay"

# The watermark context processor reads enigma.log; pin it so nothing connects.
watermarks.log_val = lambda name: "2025-10-10"

_failures: list[str] = []


def check(name, got, want):
    if got != want:
        _failures.append(f"{name}: got {got!r}, want {want!r}")
    else:
        print(f"  ok  {name}")


def _config(**attrs):
    return type("TestConfig", (Config,), attrs)


def _raises(overlay_dir):
    try:
        create_app(_config(WEBBSITE_OVERLAY_DIR=overlay_dir))
    except OverlayError as exc:
        return str(exc)
    return None


def run():
    if os.environ.get("PLANTED_FAILURE"):
        check("planted failure (CI self-proof; expected to fail)", 1, 0)

    # 1. Templates: the overlay wins, the app is the fallback --------------------
    app = create_app(_config(WEBBSITE_OVERLAY_DIR=str(OVERLAY)))
    with app.test_request_context("/dbpub/orgdata.asp?p=1"):
        banner = render_template("site/banner.html")
        credit = render_template("site/footer_credit.html")
    check("overlay: site/banner.html is the overlay's", "OVERLAY BANNER" in banner, True)
    check("overlay: site/footer_credit.html falls back to the app's", "renavon-credit" in credit, True)

    # 2. Static: same endpoint and URL; overlay file wins, app file is the fallback
    client = app.test_client()
    with app.test_request_context("/"):
        check("static: url_for unchanged", url_for("static", filename="css/main.css"), "/static/css/main.css")
    check("static: overlay's css/main.css served", client.get("/static/css/main.css").data,
          b"/* overlay main.css */\n")
    check("static: overlay-only file served", client.get("/static/css/overlay-only.css").status_code, 200)
    check("static: app file falls back (favicon.ico)",
          client.get("/static/favicon.ico").data, (ROOT / "webbsite" / "static" / "favicon.ico").read_bytes())
    check("static: traversal is not served", client.get("/static/..%2F..%2Fconfig.py").status_code, 404)
    check("static: missing file 404s", client.get("/static/css/nope.css").status_code, 404)

    plain = create_app().test_client()
    check("no overlay: app's css/main.css served",
          plain.get("/static/css/main.css").data, (ROOT / "webbsite" / "static" / "css" / "main.css").read_bytes())

    # 3. A configured overlay that is not there fails loudly ----------------------
    with tempfile.TemporaryDirectory() as tmp:
        check("missing dir raises", _raises(str(Path(tmp) / "nope")) is not None, True)
        check("dir with neither templates/ nor static/ raises", _raises(tmp) is not None, True)
        (Path(tmp) / "static").mkdir()
        check("dir with only static/ is accepted", _raises(tmp), None)
    check("empty WEBBSITE_OVERLAY_DIR means no overlay", _raises(""), None)

    # 4. Site identity reaches templates ------------------------------------------
    named = create_app(_config(SITE_NAME="Example Archive", SITE_SHORT_NAME="Example"))
    with named.test_request_context("/errors"):
        page = render_template("errors/404.html")
        head = render_template("includes/dbheader.html")
    check("SITE_NAME: <title>", "<title>Page Not Found - Example Archive</title>" in page, True)
    check("SITE_NAME: og:site_name", '<meta property="og:site_name" content="Example Archive">' in page, True)
    check("SITE_SHORT_NAME: search box", 'value="search Example"' in head, True)
    check("SITE_SHORT_NAME: database brand", "<b>Example</b>" in head, True)
    with app.test_request_context("/"):
        check("defaults: site_name", render_template_string("{{ site_name }}"), "Renavon Hong Kong Database")
        check("defaults: canonical_host", render_template_string("{{ canonical_host }}"),
              app.config["CANONICAL_HOST"])

    if _failures:
        print("\nFAILED:")
        for f in _failures:
            print("  " + f)
        return 1
    print("\noverlay: all checks passed")
    return 0


def test_all():
    """pytest entry point (CI); the direct-run house style still works."""
    assert run() == 0, "\n".join(_failures)


if __name__ == "__main__":
    sys.exit(run())
