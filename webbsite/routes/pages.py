"""
Static content pages - About, Privacy, Tools, etc.
Serves static content pages from /pages/ directory
"""

from flask import Blueprint, render_template

bp = Blueprint("pages", __name__)


@bp.route("/aboutus.asp")
def aboutus():
    """
    About Us page - Mission, bio, copyright, disclaimer

    Pure static content page, no database queries
    """
    return render_template("pages/aboutus.html")


@bp.route("/privacypolicy.asp")
def privacypolicy():
    """
    Privacy Policy page

    Pure static content page, no database queries
    """
    return render_template("pages/privacypolicy.html")


@bp.route("/tools.asp")
def tools():
    """
    Tools page - Links to external resources

    Pure static content page, no database queries
    """
    return render_template("pages/tools.html")


@bp.route("/refer.asp")
def refer():
    """
    Refer a Friend page - Form to recommend Webb-site

    Pure static content page, no database queries
    """
    return render_template("pages/refer.html")


@bp.route("/hallofshame.asp")
def hallofshame():
    """
    Hall of Shame page

    Pure static content page, no database queries
    """
    return render_template("pages/hallofshame.html")


@bp.route("/stuff.asp")
def stuff():
    """
    Other Stuff page - Miscellaneous links

    Pure static content page, no database queries
    """
    return render_template("pages/stuff.html")


@bp.route("/mediaroom.asp")
def mediaroom():
    """
    Media Room page - Press coverage and media resources

    Pure static content page, no database queries
    """
    return render_template("pages/mediaroom.html")


@bp.route("/howtovote.asp")
def howtovote():
    """
    How to Vote guide

    Pure static content page, no database queries
    """
    return render_template("pages/howtovote.html")


@bp.route("/hkradio.asp")
def hkradio():
    """
    HK Radio page - Links to radio stations

    Pure static content page, no database queries
    """
    return render_template("pages/hkradio.html")


@bp.route("/TV.asp")
def tv():
    """
    TV page - Links to TV channels

    Pure static content page, no database queries
    """
    return render_template("pages/TV.html")


@bp.route("/electiondisclosures.asp")
def electiondisclosures():
    """
    Election Returns page

    Pure static content page, no database queries
    """
    return render_template("pages/electiondisclosures.html")


@bp.route("/loopholes.asp")
def loopholes():
    """
    Listing Loopholes page

    Pure static content page, no database queries
    """
    return render_template("pages/loopholes.html")


@bp.route("/about.asp")
def about():
    """
    About section index/redirect page

    Pure static content page, no database queries
    """
    return render_template("pages/about.html")


# One query per figure on the status page. Each is independent: a missing
# table or a timeout shows '?' for that figure only (and still reaches Sentry
# through execute_query's error log) instead of blanking the whole page.
_STATUS_COUNTS = {
    "orgs": "SELECT COUNT(*) AS count FROM enigma.organisations",
    "people": "SELECT COUNT(*) AS count FROM enigma.people",
    # Current HK-listed companies
    "listed": """
        SELECT COUNT(DISTINCT i.issuer) AS count
        FROM enigma.issue i
        JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
        WHERE sl.delistdate IS NULL
          AND sl.stockexid IN (1, 20)
          AND i.typeid NOT IN (1, 2, 40, 41, 46)
    """,
    # Current SFC licensees: Representative (394) and Responsible Officer (395)
    "sfc_licensees": """
        SELECT COUNT(DISTINCT d.director) AS count
        FROM enigma.directorships d
        WHERE d.positionid IN (394, 395)
          AND (d.resdate IS NULL OR d.resdate > CURRENT_DATE)
    """,
    # Solicitors in private practice: live Law Society posts, as hksols.asp
    # counts them (the MySQL-era enigma.hksols table was not carried over).
    "solicitors": """
        SELECT COUNT(DISTINCT lp.personid) AS count
        FROM enigma.lsposts ps
        JOIN enigma.lsppl lp ON ps.lsppl = lp.lsid
        WHERE NOT ps.dead
    """,
    # Announcements and financial reports (annual/interim reports, circulars,
    # results...); the MySQL-era enigma.reports table was not carried over.
    "reports": "SELECT COUNT(*) AS count FROM enigma.documents",
    # Planner estimate: an exact COUNT(*) over ccass.holdings exceeds the 8s
    # statement timeout.
    "ccass_holdings": (
        "SELECT reltuples::bigint AS count FROM pg_class"
        " WHERE oid = 'ccass.holdings'::regclass"
    ),
}


def _status_count(sql):
    from webbsite.db import execute_query

    try:
        rows = execute_query(sql)
        return rows[0]["count"] if rows else 0
    except Exception:
        return "?"


def _ccass_latest():
    """The loader's watermark. MAX(atdate) is a 22s full scan (no index leads
    with atdate)."""
    from datetime import date
    from webbsite import watermarks

    try:
        return date.fromisoformat(watermarks.ccass_done())
    except Exception:
        return None


@bp.route("/status.asp")
def status():
    """
    Site status and database coverage information
    Shows key statistics about the database content
    """
    from datetime import date

    stats = {key: _status_count(sql) for key, sql in _STATUS_COUNTS.items()}
    stats["ccass_latest"] = _ccass_latest()
    return render_template("pages/status.html", stats=stats, today=date.today())


@bp.route("/faq.asp")
@bp.route("/FAQWWW.asp")
def faq():
    """
    Frequently Asked Questions

    Pure static content page, no database queries
    """
    return render_template("pages/faq.html")


@bp.route("/sitemap.asp")
def sitemap():
    """
    Site map - Overview of all available pages and data categories

    Pure static content page, no database queries
    """
    return render_template("pages/sitemap.html")
