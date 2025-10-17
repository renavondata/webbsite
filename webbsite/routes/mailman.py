"""
Mailman routes - Mailing list management
Skeleton implementation for 4 routes (requires admin authentication)
"""
from flask import Blueprint, render_template, request
from webbsite.asp_helpers import get_str, get_int

bp = Blueprint('mailman', __name__)


@bp.route('/sendletter.asp', methods=['GET', 'POST'])
def sendletter():
    """
    Send newsletter to mailing list

    Tables used: livelist (subscribers), mailvote.keys (mail config)
    """
    # TODO: Check admin authentication

    if request.method == 'POST':
        subject = request.form.get('subject', '')
        body = request.form.get('body', '')
        # TODO: Send email to all subscribers
        # TODO: Use mail server config from mailvote.keys
        return render_template('mailman/sendletter.html',
                             message="Newsletter send not yet implemented")

    # TODO: Load previous newsletters
    return render_template('mailman/sendletter.html',
                         newsletters=[])


@bp.route('/searchusers.asp')
def searchusers():
    """
    Search and manage user accounts

    Query params:
    - n: name/email search term
    - sort: sorting column

    Tables used: livelist
    """
    # TODO: Check admin authentication

    search_term = get_str('n', '')
    sort = get_str('sort', 'emailup')

    # TODO: Query users from livelist
    # TODO: Apply search filter
    # TODO: Apply sorting

    return render_template('mailman/searchusers.html',
                         search_term=search_term,
                         sort=sort,
                         users=[])


@bp.route('/mailchange.asp', methods=['GET', 'POST'])
def mailchange():
    """
    Bulk email address changes
    For migrating users to new email addresses
    """
    # TODO: Check admin authentication

    if request.method == 'POST':
        old_email = request.form.get('old', '')
        new_email = request.form.get('new', '')
        # TODO: Update email address in database
        # TODO: Send verification email
        return render_template('mailman/mailchange.html',
                             message="Email change not yet implemented")

    return render_template('mailman/mailchange.html')


@bp.route('/domainchange.asp')
def domainchange():
    """
    Bulk domain changes
    For migrating entire domains (e.g., company.com -> newcompany.com)

    Tables used: livelist
    """
    # TODO: Check admin authentication

    old_domain = get_str('old', '')
    new_domain = get_str('new', '')

    if old_domain and new_domain:
        # TODO: Find all users with old domain
        # TODO: Preview changes
        # TODO: Execute bulk update
        pass

    return render_template('mailman/domainchange.html',
                         old_domain=old_domain,
                         new_domain=new_domain,
                         affected_users=[])
