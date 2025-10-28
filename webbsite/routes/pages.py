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
