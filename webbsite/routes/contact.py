"""
Contact routes - Contact form with spam protection
Skeleton implementation for 1 route
"""

from flask import Blueprint, render_template, request
from datetime import datetime

bp = Blueprint("contact", __name__)


@bp.route("/default.asp", methods=["GET", "POST"])
def contact():
    """
    Contact form with spam protection

    Uses iplog.visitors and iplog.submit tables for rate limiting
    Implements Captcha when hit limit reached

    Tables used: iplog.visitors, iplog.submit
    """
    if request.method == "POST":
        name = request.form.get("name", "")
        email = request.form.get("email", "")
        subject = request.form.get("subject", "")
        message = request.form.get("message", "")

        # Get client IP
        client_ip = request.remote_addr

        # TODO: Check IP against iplog.visitors
        # BotChk function in functions1.asp checks for 100-hit limit
        # If over limit, require Captcha

        # TODO: Check IP against iplog.submit
        # Limit number of submissions per IP per day

        # TODO: Validate Captcha if required

        # TODO: Send email to Webb-site admin
        # Use mail configuration from private.keys table

        # TODO: Log submission in iplog.submit

        return render_template(
            "contact/default.html",
            message="Thank you for your message. [Not yet implemented]",
        )

    # TODO: Check if Captcha required for this IP
    require_captcha = False

    return render_template("contact/default.html", require_captcha=require_captcha)
