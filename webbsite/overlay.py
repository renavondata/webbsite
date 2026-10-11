"""Deployment overlay: a directory whose templates and static files win over the app's.

webbsite is an open-source app that more than one operator can run. What makes a
deployment *theirs* -- its name, banner, footer credit, analytics -- lives in
small templates under ``webbsite/templates/site/`` and in two config values
(``SITE_NAME``, ``SITE_SHORT_NAME``). An operator re-brands without forking by
pointing ``WEBBSITE_OVERLAY_DIR`` at a directory laid out like::

    <overlay>/templates/site/banner.html   # replaces webbsite/templates/site/banner.html
    <overlay>/static/css/extra.css         # served at /static/css/extra.css

Any template or static file may be overridden this way, not only ``site/``; the
``site/`` includes are the ones meant for it, and the only ones whose names are
kept stable for that purpose.

Templates: the overlay's ``templates/`` is searched first, then the app's own.
Static: the existing ``static`` endpoint is kept (so ``url_for('static', ...)``
is unchanged everywhere) and its view tries ``<overlay>/static`` first, falling
back to the app's static folder. No new URL prefix, no template edits.

An overlay that is configured but missing is a startup error, never a silent
fallback to upstream branding: a typo in a unit file would otherwise ship the
wrong site with every check green.
"""

from __future__ import annotations

import os
from pathlib import Path

from flask import send_from_directory
from jinja2 import ChoiceLoader, FileSystemLoader
from werkzeug.security import safe_join


class OverlayError(RuntimeError):
    """WEBBSITE_OVERLAY_DIR is set but does not name a usable overlay."""


def apply(app, overlay_dir: str | None) -> Path | None:
    """Layer ``overlay_dir`` over ``app``'s templates and static files.

    Returns the resolved overlay path, or None when no overlay is configured
    (``overlay_dir`` empty or None). Raises OverlayError when one is configured
    but is not a directory, or has neither ``templates/`` nor ``static/``.
    """
    if not overlay_dir:
        return None
    root = Path(overlay_dir).expanduser().resolve()
    if not root.is_dir():
        raise OverlayError(f"WEBBSITE_OVERLAY_DIR={overlay_dir!r} is not a directory")
    templates, static = root / "templates", root / "static"
    if not templates.is_dir() and not static.is_dir():
        raise OverlayError(f"WEBBSITE_OVERLAY_DIR={overlay_dir!r} has neither templates/ nor static/")

    if templates.is_dir():
        app.jinja_loader = ChoiceLoader([FileSystemLoader(str(templates)), app.jinja_loader])
        # jinja_env is created lazily from jinja_loader; if something already
        # touched it, point the live environment at the same chain.
        if "jinja_env" in app.__dict__:
            app.jinja_env.loader = app.jinja_loader

    if static.is_dir():
        upstream_static = app.view_functions["static"]

        def static_with_overlay(filename):
            path = safe_join(str(static), filename)
            if path is not None and os.path.isfile(path):
                return send_from_directory(static, filename)
            return upstream_static(filename=filename)

        app.view_functions["static"] = static_with_overlay

    app.logger.info("overlay applied from %s", root)
    return root
