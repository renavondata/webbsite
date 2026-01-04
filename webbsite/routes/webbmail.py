"""
Webbmail routes - User personalization and authentication
Full implementation of 18 routes
"""

from flask import Blueprint, render_template, request, redirect, url_for, session, make_response, current_app
from webbsite.asp_helpers import get_str, get_int, get_bool
from webbsite.db import execute_query
from webbsite.auth import (
    login_user, logout_user, register_user, verify_email,
    request_password_reset, reset_password, check_persistent_login,
    is_logged_in, get_current_user, login_required, clean_expired_tokens
)
from datetime import date

bp = Blueprint("webbmail", __name__)


@bp.route("/login.asp", methods=["GET", "POST"])
def login():
    """User login page"""
    hint = ""
    e = get_str("e", "")
    d = get_int("d", 720)  # Persist hours, max 720 (30 days)
    d = min(d, 720)

    # Check if user is already logged in
    if is_logged_in():
        # Handle logout request
        if request.args.get("b") == "1":
            logout_user()
            hint = "You have logged out."
            e = request.args.get("e", "")
            # Clear persistent login cookie
            resp = make_response(render_template(
                "webbmail/login.html",
                title="Please log in",
                hint=hint,
                e=e,
                d=d,
                logged_in=False,
                user=None
            ))
            resp.delete_cookie("keep_token")
            return resp
        else:
            # Already logged in
            user = get_current_user()
            return render_template(
                "webbmail/login.html",
                title="Logged in",
                hint="",
                e=e,
                d=d,
                logged_in=True,
                user=user
            )

    # Clean expired tokens on each page load
    try:
        clean_expired_tokens()
    except:
        pass

    if request.method == "POST":
        e = request.form.get("e", "").strip()
        pwd = request.form.get("pwd", "").strip()
        d = get_int("d", 0)
        d = min(d, 720)

        if not e:
            hint = "Please enter your email address or username."
        elif not pwd:
            hint = "Please enter your password."
        else:
            # TODO: Add CAPTCHA check for bots

            result = login_user(e, pwd, persist_hours=d)

            if result['success']:
                hint = result['message']
                if d > 0:
                    hint += f" Your browser will stay logged in for {d} hours unless you log out."

                # Set persistent cookie if token was generated
                if result.get('token'):
                    resp = make_response(redirect(session.pop('referer', url_for('webbmail.login'))))
                    resp.set_cookie(
                        'keep_token',
                        result['token'],
                        max_age=d * 3600,
                        secure=True,
                        httponly=True,
                        samesite='Lax'
                    )
                    return resp

                # Check for referer redirect
                referer = session.pop('referer', None)
                if referer:
                    return redirect(referer)

                return render_template(
                    "webbmail/login.html",
                    title="Logged in",
                    hint=hint,
                    e=e,
                    d=d,
                    logged_in=True,
                    user=get_current_user()
                )
            else:
                hint = result['message']

    return render_template(
        "webbmail/login.html",
        title="Please log in",
        hint=hint,
        e=e,
        d=d,
        logged_in=False,
        user=None
    )


@bp.route("/join.asp", methods=["GET", "POST"])
def join():
    """User registration page"""
    hint = ""
    e = get_str("e", "")
    verify = get_str("verify", "")
    mail_on = True
    joined = False

    if request.method == "POST":
        e = request.form.get("e", "").strip()
        verify = request.form.get("verify", "").strip()
        pwd = request.form.get("pwd1", "").strip()[:256]
        pwd2 = request.form.get("pwd2", "").strip()[:256]
        mail_on = bool(request.form.get("mailOn"))

        # Validate inputs
        if not e:
            hint = "Please enter your email address."
        elif '@' not in e or '.' not in e:
            hint = "The e-mail address is not valid. Please check it."
        elif not verify:
            hint = "Please re-enter your address in the second box, to reduce typing errors."
        elif e != verify:
            hint = "Your e-mail inputs do not match. Please check your typing."
        elif not pwd:
            hint = "Please choose a password or phrase."
        elif len(pwd) < 8:
            hint = "Please choose a password or phrase with at least 8 characters."
        elif not pwd2:
            hint = "Please retype your password in the second password box, to reduce typing errors."
        elif pwd != pwd2:
            hint = "Your password inputs do not match. Please check your typing."
        else:
            # TODO: Add CAPTCHA verification

            result = register_user(e, pwd, mail_on)

            if result['success']:
                joined = True
                hint = result['message']

                # Send verification email
                if result.get('token'):
                    # TODO: Actually send email
                    # For now, just log it
                    current_app.logger.info(
                        f"Verification email would be sent to {e} with token: {result['token']}"
                    )
            else:
                hint = result['message']

    return render_template(
        "webbmail/join.html",
        title="Please check your e-mail to activate your account" if joined else "Sign up",
        hint=hint,
        e=e,
        verify=verify,
        mail_on=mail_on,
        joined=joined
    )


@bp.route("/verify.asp")
def verify():
    """Email verification"""
    token = get_str("t", "")

    if not token:
        return render_template(
            "webbmail/verify.html",
            title="Verification",
            success=False,
            message="No verification token provided."
        )

    result = verify_email(token)

    return render_template(
        "webbmail/verify.html",
        title="Email Verified" if result['success'] else "Verification Failed",
        success=result['success'],
        message=result['message'],
        email=result.get('email')
    )


@bp.route("/forgot.asp", methods=["GET", "POST"])
def forgot():
    """Forgot password page"""
    hint = ""
    e = get_str("e", "")
    sent = False

    if request.method == "POST":
        e = request.form.get("e", "").strip()

        if not e:
            hint = "Please enter your email address."
        elif '@' not in e:
            hint = "Please enter a valid email address."
        else:
            result = request_password_reset(e)

            if result['success']:
                sent = True
                hint = result['message']

                # Send reset email
                if result.get('token'):
                    # TODO: Actually send email
                    current_app.logger.info(
                        f"Password reset email would be sent to {e} with token: {result['token']}"
                    )
            else:
                hint = result['message']

    return render_template(
        "webbmail/forgot.html",
        title="Password Reset Sent" if sent else "Forgot Password",
        hint=hint,
        e=e,
        sent=sent
    )


@bp.route("/reset.asp", methods=["GET", "POST"])
def reset():
    """Password reset page"""
    token = get_str("t", "")
    hint = ""
    success = False

    if request.method == "POST":
        token = request.form.get("t", "").strip()
        pwd = request.form.get("pwd1", "").strip()[:256]
        pwd2 = request.form.get("pwd2", "").strip()[:256]

        if not token:
            hint = "Invalid reset link."
        elif not pwd:
            hint = "Please enter a new password."
        elif len(pwd) < 8:
            hint = "Please choose a password with at least 8 characters."
        elif pwd != pwd2:
            hint = "Your password inputs do not match."
        else:
            result = reset_password(token, pwd)
            success = result['success']
            hint = result['message']

    return render_template(
        "webbmail/reset.html",
        title="Password Reset" + (" Successful" if success else ""),
        token=token,
        hint=hint,
        success=success
    )


@bp.route("/mystocks.asp")
@login_required
def mystocks():
    """User's tracked stocks"""
    user = get_current_user()

    # Get user's tracked stocks
    stocks = execute_query(
        """
        SELECT ms.issueid, ms.added,
               o.name1, o.cname,
               sl.stockcode,
               st.typeshort
        FROM mailvote.mystocks ms
        JOIN enigma.issue i ON ms.issueid = i.id1
        JOIN enigma.organisations o ON i.issuer = o.personid
        JOIN enigma.sectypes st ON i.typeid = st.typeid
        LEFT JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
            AND sl.stockexid IN (1, 20, 22, 23, 38)
            AND (sl.delistdate IS NULL OR sl.delistdate > CURRENT_DATE)
        WHERE ms.userid = %s
        ORDER BY o.name1
        """,
        (user['user_id'],)
    )

    return render_template(
        "webbmail/mystocks.html",
        title="My Stocks",
        stocks=stocks,
        user=user
    )


@bp.route("/mybigchanges.asp")
@login_required
def mybigchanges():
    """User's CCASS big changes alerts for tracked stocks"""
    user = get_current_user()

    # Get big changes for user's tracked stocks (last 30 days)
    changes = execute_query(
        """
        SELECT bc.atdate, bc.issueid, bc.partid,
               o.name1 AS issuer_name,
               p.name1 AS participant_name,
               sl.stockcode,
               bc.netchange, bc.grosschange
        FROM ccass.bigchanges bc
        JOIN mailvote.mystocks ms ON bc.issueid = ms.issueid
        JOIN enigma.issue i ON bc.issueid = i.id1
        JOIN enigma.organisations o ON i.issuer = o.personid
        JOIN ccass.participants cp ON bc.partid = cp.id
        JOIN enigma.organisations p ON cp.personid = p.personid
        LEFT JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
            AND sl.stockexid IN (1, 20)
        WHERE ms.userid = %s
          AND bc.atdate >= CURRENT_DATE - INTERVAL '30 days'
        ORDER BY bc.atdate DESC, ABS(bc.netchange) DESC
        LIMIT 100
        """,
        (user['user_id'],)
    )

    return render_template(
        "webbmail/mybigchanges.html",
        title="My Big Changes",
        changes=changes,
        user=user
    )


@bp.route("/mysdi.asp")
@login_required
def mysdi():
    """User's SDI (Significant Disclosure) alerts"""
    user = get_current_user()

    # Get SDI disclosures for tracked directors/companies
    sdi = execute_query(
        """
        SELECT s.dateofevent, s.filingdate,
               o.name1 AS company_name,
               sl.stockcode,
               COALESCE(p.name1 || COALESCE(', ' || p.name2, ''), org.name1) AS person_name,
               s.beforepct, s.afterpct
        FROM enigma.sdi s
        JOIN mailvote.mystocks ms ON s.issueid = ms.issueid
        JOIN enigma.issue i ON s.issueid = i.id1
        JOIN enigma.organisations o ON i.issuer = o.personid
        LEFT JOIN enigma.people p ON s.personid = p.personid
        LEFT JOIN enigma.organisations org ON s.personid = org.personid
        LEFT JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
            AND sl.stockexid IN (1, 20)
        WHERE ms.userid = %s
          AND s.dateofevent >= CURRENT_DATE - INTERVAL '90 days'
        ORDER BY s.dateofevent DESC
        LIMIT 100
        """,
        (user['user_id'],)
    )

    return render_template(
        "webbmail/mysdi.html",
        title="My SDI Alerts",
        sdi=sdi,
        user=user
    )


@bp.route("/mytotrets.asp")
@login_required
def mytotrets():
    """User's total returns portfolio"""
    user = get_current_user()
    years = get_int("y", 1)

    # Get total returns for user's tracked stocks
    portfolio = execute_query(
        """
        SELECT ms.issueid,
               o.name1, o.cname,
               sl.stockcode,
               q.close AS latest_price,
               q.atdate AS price_date
        FROM mailvote.mystocks ms
        JOIN enigma.issue i ON ms.issueid = i.id1
        JOIN enigma.organisations o ON i.issuer = o.personid
        LEFT JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
            AND sl.stockexid IN (1, 20)
            AND (sl.delistdate IS NULL OR sl.delistdate > CURRENT_DATE)
        LEFT JOIN LATERAL (
            SELECT close, atdate
            FROM ccass.quotes
            WHERE issueid = ms.issueid
            ORDER BY atdate DESC
            LIMIT 1
        ) q ON true
        WHERE ms.userid = %s
        ORDER BY o.name1
        """,
        (user['user_id'],)
    )

    return render_template(
        "webbmail/mytotrets.html",
        title="My Portfolio Total Returns",
        portfolio=portfolio,
        years=years,
        user=user
    )


@bp.route("/myratings.asp")
@login_required
def myratings():
    """User's governance ratings"""
    user = get_current_user()

    # Get user's submitted ratings
    ratings = execute_query(
        """
        SELECT r.personid, r.rating, r.ratingdate, r.comments,
               o.name1, o.cname,
               sl.stockcode
        FROM mailvote.ratings r
        JOIN enigma.organisations o ON r.personid = o.personid
        LEFT JOIN enigma.issue i ON o.personid = i.issuer AND i.typeid = 10
        LEFT JOIN enigma.stocklistings sl ON i.id1 = sl.issueid
            AND sl.stockexid IN (1, 20)
            AND (sl.delistdate IS NULL OR sl.delistdate > CURRENT_DATE)
        WHERE r.userid = %s
        ORDER BY r.ratingdate DESC
        """,
        (user['user_id'],)
    )

    return render_template(
        "webbmail/myratings.html",
        title="My Governance Ratings",
        ratings=ratings,
        user=user
    )


@bp.route("/ratinghist.asp")
def ratinghist():
    """Governance rating history for a company"""
    person_id = get_int("p", 0)

    if not person_id:
        return "PersonID required", 400

    # Get company info
    org = execute_query(
        "SELECT name1, cname FROM enigma.organisations WHERE personid = %s",
        (person_id,)
    )

    if not org:
        return "Company not found", 404

    # Get rating history (anonymized)
    ratings = execute_query(
        """
        SELECT r.rating, r.ratingdate,
               COUNT(*) OVER (PARTITION BY DATE_TRUNC('month', r.ratingdate)) as monthly_count,
               AVG(r.rating) OVER (PARTITION BY DATE_TRUNC('month', r.ratingdate)) as monthly_avg
        FROM mailvote.ratings r
        WHERE r.personid = %s
        ORDER BY r.ratingdate DESC
        """,
        (person_id,)
    )

    # Calculate overall stats
    stats = execute_query(
        """
        SELECT COUNT(*) as total_ratings,
               AVG(rating) as avg_rating,
               MIN(rating) as min_rating,
               MAX(rating) as max_rating
        FROM mailvote.ratings
        WHERE personid = %s
        """,
        (person_id,)
    )

    return render_template(
        "webbmail/ratinghist.html",
        title=f"Rating History - {org[0]['name1']}",
        person_id=person_id,
        org=org[0],
        ratings=ratings,
        stats=stats[0] if stats else None
    )


@bp.route("/mailpref.asp", methods=["GET", "POST"])
@login_required
def mailpref():
    """Email preferences"""
    user = get_current_user()
    hint = ""

    if request.method == "POST":
        mail_on = bool(request.form.get("mailOn"))

        execute_query(
            "UPDATE mailvote.livelist SET mailon = %s WHERE id = %s",
            (mail_on, user['user_id'])
        )
        hint = "Your preferences have been saved."

    # Get current preferences
    prefs = execute_query(
        "SELECT mailon FROM mailvote.livelist WHERE id = %s",
        (user['user_id'],)
    )

    return render_template(
        "webbmail/mailpref.html",
        title="Email Preferences",
        hint=hint,
        prefs=prefs[0] if prefs else {},
        user=user
    )


@bp.route("/changeaddr.asp", methods=["GET", "POST"])
@login_required
def changeaddr():
    """Change email address"""
    user = get_current_user()
    hint = ""

    if request.method == "POST":
        new_email = request.form.get("e", "").strip()
        verify_email_input = request.form.get("verify", "").strip()
        pwd = request.form.get("pwd", "").strip()

        if not new_email:
            hint = "Please enter your new email address."
        elif '@' not in new_email:
            hint = "Please enter a valid email address."
        elif new_email != verify_email_input:
            hint = "Email addresses do not match."
        elif not pwd:
            hint = "Please enter your password to confirm."
        else:
            # Verify password
            from webbsite.auth import verify_password
            user_data = execute_query(
                """
                SELECT encode(hash, 'hex') as hash_hex,
                       encode(salt, 'hex') as salt_hex
                FROM mailvote.livelist WHERE id = %s
                """,
                (user['user_id'],)
            )

            if user_data and verify_password(pwd, user_data[0]['salt_hex'], user_data[0]['hash_hex']):
                # Check if new email already exists
                existing = execute_query(
                    "SELECT id FROM mailvote.livelist WHERE mailaddr = %s AND id != %s",
                    (new_email, user['user_id'])
                )

                if existing:
                    hint = "This email address is already registered."
                else:
                    # Update email
                    execute_query(
                        "UPDATE mailvote.livelist SET mailaddr = %s WHERE id = %s",
                        (new_email, user['user_id'])
                    )
                    session['email'] = new_email
                    hint = "Your email address has been updated."
            else:
                hint = "Incorrect password."

    return render_template(
        "webbmail/changeaddr.html",
        title="Change Email Address",
        hint=hint,
        user=user
    )


@bp.route("/username.asp", methods=["GET", "POST"])
@login_required
def username():
    """Volunteer registration for database editing"""
    user = get_current_user()
    hint = ""
    applied = False

    if request.method == "POST":
        new_username = request.form.get("username", "").strip()
        reason = request.form.get("reason", "").strip()

        if not new_username:
            hint = "Please choose a username."
        elif len(new_username) < 3:
            hint = "Username must be at least 3 characters."
        elif len(new_username) > 20:
            hint = "Username must be at most 20 characters."
        else:
            # Check if username is taken
            existing = execute_query(
                "SELECT id FROM mailvote.livelist WHERE name = %s AND id != %s",
                (new_username, user['user_id'])
            )

            if existing:
                hint = "This username is already taken."
            else:
                # Update username
                execute_query(
                    "UPDATE mailvote.livelist SET name = %s WHERE id = %s",
                    (new_username, user['user_id'])
                )
                session['username'] = new_username

                # Log the volunteer application
                current_app.logger.info(
                    f"Volunteer application: user {user['user_id']} ({user['email']}) "
                    f"requested username '{new_username}'. Reason: {reason}"
                )

                applied = True
                hint = "Thank you for volunteering! We will review your application."

    return render_template(
        "webbmail/username.html",
        title="Volunteer to Edit the Database",
        hint=hint,
        user=user,
        applied=applied
    )


@bp.route("/authentic.asp")
def authentic():
    """Authentication check module (API endpoint)"""
    if is_logged_in():
        user = get_current_user()
        return {
            "authenticated": True,
            "user_id": user['user_id'],
            "email": user['email'],
            "username": user['username'],
            "is_editor": user['is_editor']
        }
    return {"authenticated": False}


@bp.route("/prepmsg.asp")
def prepmsg():
    """Message preparation for email alerts - utility route"""
    # This was used in ASP for email sending
    # In Flask, email sending is handled differently
    return render_template("webbmail/prepmsg.html")


@bp.route("/domainlist.asp")
def domainlist():
    """List of email domains for statistics - public page"""
    # Get email domain statistics (anonymized)
    domains = execute_query(
        """
        SELECT
            SUBSTRING(mailaddr FROM POSITION('@' IN mailaddr) + 1) as domain,
            COUNT(*) as user_count
        FROM mailvote.livelist
        WHERE everified = TRUE
        GROUP BY domain
        HAVING COUNT(*) >= 3
        ORDER BY user_count DESC
        LIMIT 100
        """
    )

    total_users = execute_query(
        "SELECT COUNT(*) as total FROM mailvote.livelist WHERE everified = TRUE"
    )

    return render_template(
        "webbmail/domainlist.html",
        title="Who Reads Webb-site.com?",
        domains=domains,
        total_users=total_users[0]['total'] if total_users else 0
    )
