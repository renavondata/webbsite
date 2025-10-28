"""
Articles routes - Redirect to Webb-site.com archive.org versions
Editorial content remains copyright David M. Webb
"""

from flask import Blueprint, redirect

bp = Blueprint("articles", __name__)


@bp.route("/<path:article_path>.asp")
def article(article_path):
    """
    Redirect article requests to archive.org's Webb-site.com archive

    Pattern: https://web.archive.org/web/2/https://webb-site.com/articles/<article_path>.asp
    The /web/2/ automatically redirects to the latest available snapshot
    """
    archive_url = f"https://web.archive.org/web/2/https://webb-site.com/articles/{article_path}.asp"
    return redirect(archive_url, code=301)  # Permanent redirect


@bp.route("/")
@bp.route("/index.html")
def articles_index():
    """
    Redirect articles index to archive.org
    """
    return redirect(
        "https://web.archive.org/web/2/https://webb-site.com/articles/", code=301
    )
