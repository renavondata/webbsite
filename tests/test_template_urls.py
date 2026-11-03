"""Per-row links written out in the largest templates: url_for was half of mcap's render.

These pin the literal links to what url_for would build, so a moved route fails here.

Run:  uv run pytest -q tests/test_template_urls.py
"""

import os
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

os.environ.setdefault("DATABASE_URL", "postgresql://x@127.0.0.1:1/x")


@pytest.mark.parametrize("template, literal, endpoint, kwargs", [
    ("dbpub/mcap.html", "/dbpub/orgdata.asp?p={{ row.issuer }}",
     "dbpub_statistics.orgdata", {"p": "ID"}),
    ("dbpub/mcap.html", "/dbpub/code.asp?code={{ row.stockcode }}",
     "dbpub_listings.code", {"code": "ID"}),
    ("dbpub/mcaphist.html", "/dbpub/orgdata.asp?p={{ row.issuer }}",
     "dbpub_statistics.orgdata", {"p": "ID"}),
    ("dbpub/mcaphist.html", "/dbpub/code.asp?code={{ row.stockcode }}",
     "dbpub_listings.code", {"code": "ID"}),
    ("ccass/cholder.html", "/dbpub/orgdata.asp?p={{ holding.personID }}",
     "dbpub_statistics.orgdata", {"p": "ID"}),
    ("ccass/cholder.html", "/ccass/chistory.asp?i={{ holding.issueID }}&amp;part={{ part }}",
     "ccass.chistory", {"i": "ID", "part": "ID"}),
])
def test_literal_link_is_what_url_for_builds(template, literal, endpoint, kwargs):
    import re

    from flask import url_for
    from markupsafe import escape

    from webbsite import create_app

    assert literal in (ROOT / "webbsite" / "templates" / template).read_text()
    app = create_app()
    with app.test_request_context():
        built = str(escape(url_for(endpoint, **kwargs)))
    assert re.sub(r"\{\{.*?\}\}", "ID", literal) == built
