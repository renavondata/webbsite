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
    return render_template("pages/tv.html")


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


@bp.route("/status.asp")
def status():
    """
    Site status and database coverage information
    Shows key statistics about the database content
    """
    from datetime import date
    from webbsite.db import execute_query

    # Get database statistics
    stats = {}

    try:
        # Count organizations
        result = execute_query("SELECT COUNT(*) as count FROM enigma.organisations")
        stats['orgs'] = result[0]['count'] if result else 0

        # Count people
        result = execute_query("SELECT COUNT(*) as count FROM enigma.people WHERE isPerson = TRUE")
        stats['people'] = result[0]['count'] if result else 0

        # Count current HK-listed companies
        result = execute_query("""
            SELECT COUNT(DISTINCT i.issuer) as count
            FROM enigma.issue i
            JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
            WHERE sl.delistdate IS NULL
              AND sl.stockexid IN (1, 20)
              AND i.typeid NOT IN (1, 2, 40, 41, 46)
        """)
        stats['listed'] = result[0]['count'] if result else 0

        # Count CCASS records
        result = execute_query("SELECT COUNT(*) as count FROM ccass.holdings")
        stats['ccass_holdings'] = result[0]['count'] if result else 0

        # Get latest CCASS date
        result = execute_query("SELECT MAX(atdate) as latest FROM ccass.holdings")
        stats['ccass_latest'] = result[0]['latest'] if result and result[0]['latest'] else None

        # Count SFC licensees (current)
        result = execute_query("""
            SELECT COUNT(DISTINCT d.director) as count
            FROM enigma.directorships d
            WHERE d.positionid IN (394, 395)
              AND (d.resdate IS NULL OR d.resdate > CURRENT_DATE)
        """)
        stats['sfc_licensees'] = result[0]['count'] if result else 0

        # Count HK solicitors
        result = execute_query("""
            SELECT COUNT(DISTINCT personid) as count
            FROM enigma.hksols
            WHERE live = TRUE
        """)
        stats['solicitors'] = result[0]['count'] if result else 0

        # Count financial reports
        result = execute_query("SELECT COUNT(*) as count FROM enigma.reports")
        stats['reports'] = result[0]['count'] if result else 0

    except Exception as ex:
        # If database queries fail, show placeholder values
        stats = {
            'orgs': '?',
            'people': '?',
            'listed': '?',
            'ccass_holdings': '?',
            'ccass_latest': None,
            'sfc_licensees': '?',
            'solicitors': '?',
            'reports': '?'
        }

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
