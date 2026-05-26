"""XML sitemap for crawler discovery of this static archive.

Serves a sitemap *index* (`/sitemap.xml`) plus paginated child sitemaps
(`/sitemap-<name>-<page>.xml`). The data never changes, so responses carry a
long edge TTL and are effectively served from Cloudflare.

Scope is intentionally bounded to the HK-core, high-value pages:
  - "pages": every parameterless public page (browse / index / category pages),
    auto-discovered from the URL map and filtered against the robots Disallow
    list so a disallowed path is never advertised; and
  - "companies": every company ever listed in Hong Kong, as
    `orgdata.asp?p=<personid>` (source: enigma.listedcoshkever, ~thousands).

Natural-person pages and the full global organisations table (~19.5M rows,
mostly UK Companies House records) are deliberately omitted for now — they can
be added as further entries in `_SOURCES` once their counts and query timing are
confirmed on the box.
"""

from xml.sax.saxutils import escape

from flask import Blueprint, Response, abort, current_app

from webbsite import ROBOTS_DISALLOW
from webbsite.db import execute_query

bp = Blueprint("sitemap", __name__)

_URLS_PER_SITEMAP = 50000  # sitemaps.org protocol cap
_cache: dict[str, list[str]] = {}  # data is static -> memoise per worker
DATA_FREEZE = "2025-10-10"  # data collection ended here; every page's <lastmod>


def _host() -> str:
    return current_app.config["CANONICAL_HOST"]


def _disallowed(path: str) -> bool:
    for d in ROBOTS_DISALLOW:
        if d.endswith("/"):
            if path == d[:-1] or path.startswith(d):
                return True
        elif path == d:
            return True
    return False


def _static_page_paths() -> list[str]:
    """Every parameterless public GET page, minus disallowed/utility routes."""
    skip_prefixes = ("/static", "/contact", "/webbmail", "/vote",
                     "/pollman", "/mailman", "/dbeditor")
    out = set()
    for rule in current_app.url_map.iter_rules():
        if "GET" not in (rule.methods or set()) or rule.arguments:
            continue
        path = rule.rule
        if any(path == p or path.startswith(p + "/") for p in skip_prefixes):
            continue
        if path in ("/health", "/robots.txt", "/sitemap.xml") or path.startswith("/sitemap-"):
            continue
        if _disallowed(path):
            continue
        out.add(path)
    return sorted(out)


def _company_paths() -> list[str]:
    rows = execute_query(
        "SELECT DISTINCT personid FROM enigma.listedcoshkever ORDER BY personid"
    )
    return [f"/dbpub/orgdata.asp?p={r['personid']}" for r in rows]


def _sfc_firm_paths() -> list[str]:
    """SFClicensees.asp?p=<orgid> — every firm that has SFC licence records."""
    rows = execute_query(
        "SELECT DISTINCT orgid FROM enigma.olicrec ORDER BY orgid"
    )
    return [f"/dbpub/SFClicensees.asp?p={r['orgid']}" for r in rows]


def _sfc_person_paths() -> list[str]:
    """sfclicrec.asp?p=<staffid> — every SFC-licensed individual."""
    rows = execute_query(
        "SELECT DISTINCT staffid FROM enigma.licrec ORDER BY staffid"
    )
    return [f"/dbpub/sfclicrec.asp?p={r['staffid']}" for r in rows]


def _natperson_paths() -> list[str]:
    """natperson.asp?p=<personid>, scoped to HK-relevant natural persons.

    Officers of HK-ever-listed companies (reusing the same listedcoshkever filter
    as _company_paths) plus SFC licensees. The people joins guarantee each id is a
    natural person, not a corporate director, and exclude the ~19.5M global
    Companies House persons that have no HK connection.
    """
    rows = execute_query(
        """
        SELECT personid FROM (
            SELECT DISTINCT d.director AS personid
            FROM enigma.directorships d
            JOIN enigma.people pe         ON pe.personid = d.director
            JOIN enigma.listedcoshkever l ON l.personid = d.company
            UNION
            SELECT DISTINCT lr.staffid
            FROM enigma.licrec lr
            JOIN enigma.people pe ON pe.personid = lr.staffid
        ) t
        ORDER BY personid
        """
    )
    return [f"/dbpub/natperson.asp?p={r['personid']}" for r in rows]


# child-sitemap registry: name -> callable returning an ordered list of paths.
# Names are hyphen-free so the /sitemap-<name>-<int:page>.xml route stays unambiguous.
_SOURCES = {
    "pages": _static_page_paths,
    "companies": _company_paths,
    "sfcfirms": _sfc_firm_paths,
    "sfcpersons": _sfc_person_paths,
    "people": _natperson_paths,
}


def _paths(name: str) -> list[str]:
    if name not in _cache:
        _cache[name] = _SOURCES[name]()
    return _cache[name]


def _xml_response(body: str) -> Response:
    resp = Response(
        f'<?xml version="1.0" encoding="UTF-8"?>\n{body}',
        mimetype="application/xml",
    )
    # Static archive: cache hard at the edge, modestly in the browser.
    resp.headers["Cache-Control"] = "public, max-age=86400"
    resp.headers["CDN-Cache-Control"] = "max-age=2592000"
    return resp


@bp.route("/sitemap.xml")
def sitemap_index() -> Response:
    host = _host()
    children = []
    for name in _SOURCES:
        n = len(_paths(name))
        n_chunks = max(1, -(-n // _URLS_PER_SITEMAP))  # ceil; at least one
        children += [f"/sitemap-{name}-{k}.xml" for k in range(n_chunks)]
    items = "".join(
        f"<sitemap><loc>https://{host}{escape(c)}</loc></sitemap>" for c in children
    )
    return _xml_response(
        f'<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">{items}</sitemapindex>'
    )


@bp.route("/sitemap-<name>-<int:page>.xml")
def sitemap_child(name: str, page: int) -> Response:
    if name not in _SOURCES:
        abort(404)
    paths = _paths(name)
    start = page * _URLS_PER_SITEMAP
    if start >= len(paths) and not (page == 0 and not paths):
        abort(404)
    host = _host()
    chunk = paths[start:start + _URLS_PER_SITEMAP]
    items = "".join(
        f"<url><loc>https://{host}{escape(p)}</loc><lastmod>{DATA_FREEZE}</lastmod></url>"
        for p in chunk
    )
    return _xml_response(
        f'<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">{items}</urlset>'
    )
