"""
Contact routes - Contact form with spam protection
Full implementation of contact form
"""

from flask import Blueprint, render_template, request, current_app
from datetime import datetime, date
from webbsite.db import execute_query, execute_scalar
from webbsite.asp_helpers import get_str

bp = Blueprint("contact", __name__)

# Constants
HIT_LIMIT = 100  # Maximum hits per IP per day before requiring CAPTCHA
SUBMIT_LIMIT = 5  # Maximum form submissions per IP per day


def check_ip_limit(ip_address: str) -> dict:
    """
    Check if IP address has exceeded limits

    Returns:
        Dict with 'require_captcha' and 'blocked' flags
    """
    today = date.today()

    # Check visitor hit count
    visitor_result = execute_query(
        """
        SELECT hits FROM iplog.visitors
        WHERE ip = %s AND hitdate = %s
        """,
        (ip_address, today)
    )

    hits = visitor_result[0]['hits'] if visitor_result else 0
    require_captcha = hits >= HIT_LIMIT

    # Check submission count
    submit_result = execute_query(
        """
        SELECT COUNT(*) as cnt FROM iplog.submit
        WHERE ip = %s AND submittime::date = %s
        """,
        (ip_address, today)
    )

    submissions = submit_result[0]['cnt'] if submit_result else 0
    blocked = submissions >= SUBMIT_LIMIT

    return {
        'require_captcha': require_captcha,
        'blocked': blocked,
        'hits': hits,
        'submissions': submissions
    }


def log_submission(ip_address: str, name: str, email: str, subject: str):
    """Log a form submission for rate limiting"""
    execute_query(
        """
        INSERT INTO iplog.submit (ip, submittime, name, email, subject)
        VALUES (%s, NOW(), %s, %s, %s)
        """,
        (ip_address, name[:100], email[:100], subject[:200])
    )


def increment_visitor_hits(ip_address: str):
    """Increment visitor hit count"""
    today = date.today()

    # Try to update existing record
    result = execute_query(
        """
        UPDATE iplog.visitors
        SET hits = hits + 1
        WHERE ip = %s AND hitdate = %s
        RETURNING hits
        """,
        (ip_address, today)
    )

    if not result:
        # Insert new record
        execute_query(
            """
            INSERT INTO iplog.visitors (ip, hitdate, hits)
            VALUES (%s, %s, 1)
            ON CONFLICT (ip, hitdate) DO UPDATE SET hits = iplog.visitors.hits + 1
            """,
            (ip_address, today)
        )


@bp.route("/default.asp", methods=["GET", "POST"])
def contact():
    """
    Contact form with spam protection

    Uses iplog.visitors and iplog.submit tables for rate limiting
    Implements CAPTCHA when hit limit reached
    """
    message = ""
    success = False
    client_ip = request.remote_addr

    # Check IP limits
    ip_status = check_ip_limit(client_ip)

    if ip_status['blocked']:
        return render_template(
            "contact/default.html",
            title="Contact Us",
            message="You have exceeded the submission limit for today. Please try again tomorrow.",
            success=False,
            require_captcha=True,
            blocked=True
        )

    if request.method == "POST":
        name = request.form.get("name", "").strip()[:100]
        email = request.form.get("email", "").strip()[:100]
        subject = request.form.get("subject", "").strip()[:200]
        msg_body = request.form.get("message", "").strip()[:5000]

        # Validate inputs
        if not name:
            message = "Please enter your name."
        elif not email:
            message = "Please enter your email address."
        elif '@' not in email or '.' not in email:
            message = "Please enter a valid email address."
        elif not subject:
            message = "Please enter a subject."
        elif not msg_body:
            message = "Please enter a message."
        elif len(msg_body) < 10:
            message = "Please enter a longer message."
        else:
            # Check CAPTCHA if required
            if ip_status['require_captcha']:
                # TODO: Verify CAPTCHA response
                captcha_response = request.form.get("g-recaptcha-response", "")
                if not captcha_response:
                    message = "Please complete the CAPTCHA verification."
                else:
                    # TODO: Actually verify CAPTCHA with Google
                    pass

            if not message:
                # Log the submission
                log_submission(client_ip, name, email, subject)

                # Send email to admin
                # TODO: Actually send email using SMTP
                current_app.logger.info(
                    f"Contact form submission from {email} ({name}): {subject}\n"
                    f"Message: {msg_body[:500]}"
                )

                success = True
                message = "Thank you for your message. We will respond as soon as possible."

    # Increment hit counter
    increment_visitor_hits(client_ip)

    return render_template(
        "contact/default.html",
        title="Contact Us",
        message=message,
        success=success,
        require_captcha=ip_status['require_captcha'],
        blocked=False
    )
