"""
Articles routes - Redirect to Webb-site.com archive.org versions
Editorial content remains copyright David M. Webb
"""

import re
from flask import Blueprint, redirect, abort

bp = Blueprint("articles", __name__)


def validate_article_path(path: str) -> bool:
    """
    Validate article path to prevent open redirect attacks.
    Only allow alphanumeric characters, hyphens, underscores, and forward slashes.
    Reject path traversal attempts and protocol injection.
    """
    # Reject empty paths
    if not path:
        return False
    # Reject path traversal attempts
    if ".." in path:
        return False
    # Reject protocol injection attempts
    if "://" in path or path.startswith("//"):
        return False
    # Only allow safe characters: alphanumeric, hyphen, underscore, slash
    if not re.match(r'^[a-zA-Z0-9_/\-]+$', path):
        return False
    return True


@bp.route("/<path:article_path>.asp")
def article(article_path):
    """
    Redirect article requests to archive.org's Webb-site.com archive

    Pattern: https://web.archive.org/web/2/https://webb-site.com/articles/<article_path>.asp
    The /web/2/ automatically redirects to the latest available snapshot
    """
    # Security: validate path to prevent open redirect attacks
    if not validate_article_path(article_path):
        abort(400, description="Invalid article path")

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
