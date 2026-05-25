"""
Database homepage
"""

from flask import Blueprint, render_template, request, abort, current_app, Response
from datetime import date, timedelta
import calendar
import io
import re
from webbsite.db import execute_query, get_db
from webbsite.asp_helpers import get_int, get_bool, get_str

bp = Blueprint("dbpub_index", __name__)


@bp.route("/")
@bp.route("/index.asp")
@bp.route("/default.asp")
def index():
    """Database homepage - port of dbpub/default.asp"""
    return render_template("dbpub/index.html")


@bp.route("/cgrate.asp")
def cgrate():
    """cgrate.asp was a login-only AJAX endpoint for submitting a user's company
    rating (writes to enigma.scores). No login/write in the read-only archive, so
    return the standard 'not available' page like the other deferred features."""
    return render_template("unavailable.html"), 410
