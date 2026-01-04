"""
Authentication module for Webb-site
Port of Classic ASP mailvote login system
"""

import hashlib
import secrets
import base64
from datetime import datetime, timedelta
from functools import wraps
from flask import session, request, redirect, url_for, current_app
from webbsite.db import execute_query, execute_scalar

# Constants
BAD_LIMIT = 5  # Maximum failed login attempts per day
TOKEN_EXPIRY_HOURS = 72  # Email verification token expiry


def generate_salt():
    """Generate a 16-byte random salt (stored as hex in DB)"""
    return secrets.token_hex(16)


def hash_password(password: str, salt: str) -> str:
    """
    Hash password using SHA-256 with salt
    Matches MySQL: UNHEX(SHA2(CONCAT(password, salt), 256))

    Args:
        password: Plain text password
        salt: Hex string salt (lowercase)

    Returns:
        Hex string of hashed password
    """
    # Concatenate password with lowercase salt (matching ASP behavior)
    to_hash = password + salt.lower()
    return hashlib.sha256(to_hash.encode('utf-8')).hexdigest()


def verify_password(password: str, salt_hex: str, stored_hash_hex: str) -> bool:
    """
    Verify password against stored hash

    Args:
        password: Plain text password to verify
        salt_hex: Hex string of salt from database
        stored_hash_hex: Hex string of stored hash from database

    Returns:
        True if password matches
    """
    computed_hash = hash_password(password, salt_hex)
    return computed_hash.lower() == stored_hash_hex.lower()


def generate_token():
    """
    Generate URL-safe token for email verification or persistent login
    Matches MySQL genToken(): LEFT(URLencode(UNHEX(MD5(RAND()))),22)

    Returns:
        22-character URL-safe token
    """
    # Generate 16 random bytes (like MD5 output)
    random_bytes = secrets.token_bytes(16)
    # Encode to base64 and make URL-safe
    token = base64.urlsafe_b64encode(random_bytes).decode('ascii')
    # Take first 22 characters (like ASP does)
    return token[:22]


def hash_token(token: str) -> str:
    """
    Hash token using SHA-256 for storage

    Args:
        token: Plain text token

    Returns:
        Hex string of hashed token
    """
    return hashlib.sha256(token.encode('utf-8')).hexdigest()


def login_user(email_or_username: str, password: str, persist_hours: int = 0) -> dict:
    """
    Attempt to log in a user

    Args:
        email_or_username: Email address or username
        password: Plain text password
        persist_hours: Hours to persist login (0 = session only)

    Returns:
        Dict with success status and message
    """
    # Determine if input is email or username
    is_email = '@' in email_or_username
    field = 'mailaddr' if is_email else 'name'

    # Query user
    result = execute_query(
        f"""
        SELECT id, mailaddr, name, everified, badcnt, lastlogin,
               encode(hash, 'hex') as hash_hex,
               encode(salt, 'hex') as salt_hex
        FROM mailvote.livelist
        WHERE {field} = %s
        """,
        (email_or_username,)
    )

    if not result:
        return {'success': False, 'message': 'No such user.'}

    user = result[0]
    user_id = user['id']
    bad_cnt = user['badcnt'] or 0
    last_login = user['lastlogin']

    # Check if account is locked (too many attempts today)
    today = datetime.now().date()
    if last_login:
        last_login_date = last_login.date() if isinstance(last_login, datetime) else last_login
    else:
        last_login_date = today

    # Reset bad count if last login was on a different day
    if last_login_date != today:
        bad_cnt = 0

    if bad_cnt >= BAD_LIMIT:
        return {
            'success': False,
            'message': f'You have used all {BAD_LIMIT} attempts today. Try again tomorrow, HK time.'
        }

    # Verify password
    if not verify_password(password, user['salt_hex'], user['hash_hex']):
        bad_cnt += 1
        execute_query(
            "UPDATE mailvote.livelist SET badcnt = %s, lastlogin = NOW() WHERE id = %s",
            (bad_cnt, user_id)
        )
        if bad_cnt >= BAD_LIMIT:
            return {
                'success': False,
                'message': f'Wrong password. You have used all {BAD_LIMIT} attempts today. Try again tomorrow, HK time.'
            }
        return {
            'success': False,
            'message': f'Wrong password. {bad_cnt} failed attempts. You have {BAD_LIMIT - bad_cnt} attempts remaining for today, HK time.'
        }

    # Check if email is verified
    if not user['everified']:
        return {
            'success': False,
            'message': f'Your account is not yet activated. If you can\'t find the activation e-mail (after checking your spam folder) then <a href="/webbmail/join.asp?e={email_or_username}&verify={email_or_username}">click here</a> to get another one.'
        }

    # Success - reset bad count and update last login
    execute_query(
        "UPDATE mailvote.livelist SET badcnt = 0, lastlogin = NOW() WHERE id = %s",
        (user_id,)
    )

    # Check if user has editor privileges
    is_editor = execute_scalar(
        "SELECT EXISTS(SELECT 1 FROM enigma.wsprivs WHERE live AND userid = %s)",
        (user_id,)
    )

    # Set session variables
    session['user_id'] = user_id
    session['email'] = user['mailaddr']
    session['username'] = user['name'] or ''
    session['is_editor'] = bool(is_editor)
    session['is_master'] = (user_id == 2)  # DavidOnline
    session.permanent = True

    # Create persistent login token if requested
    token = None
    if persist_hours > 0:
        token = generate_token()
        token_hash = hash_token(token)
        execute_query(
            """
            INSERT INTO mailvote.persist (userid, tokhash, toktime)
            VALUES (%s, decode(%s, 'hex'), NOW() + INTERVAL '%s hours')
            """,
            (user_id, token_hash, persist_hours)
        )

    return {
        'success': True,
        'message': f'You have logged in as {user["name"] or user["mailaddr"]}.',
        'token': token,
        'persist_hours': persist_hours
    }


def logout_user(user_id: int = None):
    """
    Log out user - clears session and deletes all persist tokens

    Args:
        user_id: User ID to log out (defaults to current session user)
    """
    if user_id is None:
        user_id = session.get('user_id')

    if user_id:
        # Delete all persistent login tokens for this user
        execute_query(
            "DELETE FROM mailvote.persist WHERE userid = %s",
            (user_id,)
        )

    # Clear session
    session.pop('user_id', None)
    session.pop('email', None)
    session.pop('username', None)
    session.pop('is_editor', None)
    session.pop('is_master', None)


def check_persistent_login(token: str) -> bool:
    """
    Check if persistent login token is valid and log user in

    Args:
        token: Token from cookie

    Returns:
        True if token is valid and user logged in
    """
    if not token:
        return False

    token_hash = hash_token(token)

    # Find token and check expiry
    result = execute_query(
        """
        SELECT p.userid, l.mailaddr, l.name,
               EXISTS(SELECT 1 FROM enigma.wsprivs WHERE live AND userid = p.userid) as is_editor
        FROM mailvote.persist p
        JOIN mailvote.livelist l ON p.userid = l.id
        WHERE p.tokhash = decode(%s, 'hex')
          AND p.toktime > NOW()
        """,
        (token_hash,)
    )

    if not result:
        return False

    user = result[0]

    # Update last login
    execute_query(
        "UPDATE mailvote.livelist SET lastlogin = NOW() WHERE id = %s",
        (user['userid'],)
    )

    # Set session variables
    session['user_id'] = user['userid']
    session['email'] = user['mailaddr']
    session['username'] = user['name'] or ''
    session['is_editor'] = bool(user['is_editor'])
    session['is_master'] = (user['userid'] == 2)
    session.permanent = True

    return True


def register_user(email: str, password: str, mail_on: bool = True) -> dict:
    """
    Register a new user

    Args:
        email: Email address
        password: Plain text password
        mail_on: Subscribe to newsletter

    Returns:
        Dict with success status, message, and verification token if successful
    """
    # Check if email already exists
    result = execute_query(
        "SELECT id, everified FROM mailvote.livelist WHERE mailaddr = %s",
        (email,)
    )

    if result:
        if result[0]['everified']:
            return {
                'success': False,
                'message': f'You already have an account. <a href="/webbmail/forgot.asp?e={email}">Forgot your password?</a>'
            }
        else:
            # Resend verification
            user_id = result[0]['id']
            token = generate_token()
            execute_query(
                """
                UPDATE mailvote.livelist
                SET etokhash = decode(%s, 'hex'), etoktime = NOW()
                WHERE id = %s
                """,
                (hash_token(token), user_id)
            )
            return {
                'success': True,
                'message': 'You have already applied for an account. We are sending you a replacement confirmation link.',
                'token': token,
                'resend': True
            }

    # Create new user
    salt = generate_salt()
    password_hash = hash_password(password, salt)
    client_ip = request.remote_addr

    execute_query(
        """
        INSERT INTO mailvote.livelist (mailaddr, joinip, jointime, mailon, hash, salt)
        VALUES (%s, %s, NOW(), %s, decode(%s, 'hex'), decode(%s, 'hex'))
        """,
        (email, client_ip, mail_on, password_hash, salt)
    )

    # Get the new user ID
    user_id = execute_scalar(
        "SELECT id FROM mailvote.livelist WHERE mailaddr = %s",
        (email,)
    )

    # Generate verification token
    token = generate_token()
    execute_query(
        """
        UPDATE mailvote.livelist
        SET etokhash = decode(%s, 'hex'), etoktime = NOW()
        WHERE id = %s
        """,
        (hash_token(token), user_id)
    )

    return {
        'success': True,
        'message': 'Thank you for applying. There\'s just one more step.',
        'token': token,
        'user_id': user_id
    }


def verify_email(token: str) -> dict:
    """
    Verify email address using token

    Args:
        token: Verification token from email link

    Returns:
        Dict with success status and message
    """
    token_hash = hash_token(token)

    # Find token and check expiry (72 hours)
    result = execute_query(
        """
        SELECT id, mailaddr
        FROM mailvote.livelist
        WHERE etokhash = decode(%s, 'hex')
          AND etoktime IS NOT NULL
          AND EXTRACT(EPOCH FROM (NOW() - etoktime)) / 60 < %s
        """,
        (token_hash, TOKEN_EXPIRY_HOURS * 60)
    )

    if not result:
        return {
            'success': False,
            'message': 'Invalid or expired verification link. Please try signing up again.'
        }

    user = result[0]

    # Mark as verified and clear token
    execute_query(
        """
        UPDATE mailvote.livelist
        SET everified = TRUE, etokhash = NULL, etoktime = NULL
        WHERE id = %s
        """,
        (user['id'],)
    )

    return {
        'success': True,
        'message': f'Your email address {user["mailaddr"]} has been verified. You can now log in.',
        'email': user['mailaddr']
    }


def request_password_reset(email: str) -> dict:
    """
    Request password reset - generates token and sends email

    Args:
        email: Email address

    Returns:
        Dict with success status, message, and token if user exists
    """
    result = execute_query(
        "SELECT id, everified FROM mailvote.livelist WHERE mailaddr = %s",
        (email,)
    )

    if not result:
        # Don't reveal whether email exists
        return {
            'success': True,
            'message': 'If this email exists in our system, you will receive a password reset link.'
        }

    user = result[0]

    if not user['everified']:
        return {
            'success': False,
            'message': 'This account has not been verified. Please complete email verification first.'
        }

    # Generate reset token (using same mechanism as email verification)
    token = generate_token()
    execute_query(
        """
        UPDATE mailvote.livelist
        SET etokhash = decode(%s, 'hex'), etoktime = NOW()
        WHERE id = %s
        """,
        (hash_token(token), user['id'])
    )

    return {
        'success': True,
        'message': 'If this email exists in our system, you will receive a password reset link.',
        'token': token,
        'user_id': user['id']
    }


def reset_password(token: str, new_password: str) -> dict:
    """
    Reset password using token

    Args:
        token: Reset token from email link
        new_password: New password

    Returns:
        Dict with success status and message
    """
    token_hash = hash_token(token)

    # Find token and check expiry (72 hours)
    result = execute_query(
        """
        SELECT id
        FROM mailvote.livelist
        WHERE etokhash = decode(%s, 'hex')
          AND etoktime IS NOT NULL
          AND EXTRACT(EPOCH FROM (NOW() - etoktime)) / 60 < %s
        """,
        (token_hash, TOKEN_EXPIRY_HOURS * 60)
    )

    if not result:
        return {
            'success': False,
            'message': 'Invalid or expired reset link. Please request a new password reset.'
        }

    user_id = result[0]['id']

    # Update password
    salt = generate_salt()
    password_hash = hash_password(new_password, salt)

    execute_query(
        """
        UPDATE mailvote.livelist
        SET hash = decode(%s, 'hex'),
            salt = decode(%s, 'hex'),
            etokhash = NULL,
            etoktime = NULL,
            badcnt = 0
        WHERE id = %s
        """,
        (password_hash, salt, user_id)
    )

    # Clear any persistent login tokens
    execute_query(
        "DELETE FROM mailvote.persist WHERE userid = %s",
        (user_id,)
    )

    return {
        'success': True,
        'message': 'Your password has been reset. You can now log in with your new password.'
    }


def is_logged_in() -> bool:
    """Check if user is logged in"""
    return 'user_id' in session


def get_current_user() -> dict:
    """Get current logged-in user info"""
    if not is_logged_in():
        return None
    return {
        'user_id': session.get('user_id'),
        'email': session.get('email'),
        'username': session.get('username'),
        'is_editor': session.get('is_editor', False),
        'is_master': session.get('is_master', False)
    }


def login_required(f):
    """Decorator to require login for a route"""
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if not is_logged_in():
            # Store referer for redirect after login
            session['referer'] = request.url
            return redirect(url_for('webbmail.login'))
        return f(*args, **kwargs)
    return decorated_function


def editor_required(f):
    """Decorator to require editor privileges for a route"""
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if not is_logged_in():
            session['referer'] = request.url
            return redirect(url_for('webbmail.login'))
        if not session.get('is_editor'):
            return 'Editor privileges required', 403
        return f(*args, **kwargs)
    return decorated_function


def master_required(f):
    """Decorator to require master (admin) privileges for a route"""
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if not is_logged_in():
            session['referer'] = request.url
            return redirect(url_for('webbmail.login'))
        if not session.get('is_master'):
            return 'Admin privileges required', 403
        return f(*args, **kwargs)
    return decorated_function


def clean_expired_tokens():
    """Clean up expired persistent login tokens"""
    execute_query("DELETE FROM mailvote.persist WHERE toktime < NOW()")
