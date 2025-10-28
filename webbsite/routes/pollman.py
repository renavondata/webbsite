"""
Pollman routes - Poll management system
Skeleton implementation for 6 routes (requires authentication)
"""

from flask import Blueprint, render_template, request
from webbsite.asp_helpers import get_int, get_str

bp = Blueprint("pollman", __name__)


@bp.route("/")
@bp.route("/default.asp")
def index():
    """Poll management index - requires admin authentication"""
    # TODO: Check admin authentication
    # TODO: List all polls (active and inactive)
    return render_template("pollman/index.html", polls=[])


@bp.route("/pollmaster.asp")
def pollmaster():
    """Master poll list with management controls"""
    # TODO: Check admin authentication
    # TODO: List all polls with edit/delete controls
    return render_template("pollman/pollmaster.html", polls=[])


@bp.route("/poll.asp", methods=["GET", "POST"])
def poll():
    """
    Create or edit a poll

    Query params:
    - p: pollID (for editing)

    Tables used: polls
    """
    poll_id = get_int("p", 0)

    # TODO: Check admin authentication

    if request.method == "POST":
        # TODO: Save poll details
        return render_template(
            "pollman/poll.html",
            poll_id=poll_id,
            message="Poll save not yet implemented",
        )

    # TODO: Load poll for editing if poll_id provided
    return render_template("pollman/poll.html", poll_id=poll_id, poll={})


@bp.route("/editP.asp", methods=["GET", "POST"])
def editp():
    """
    Edit poll questions and answers

    Query params:
    - p: pollID

    Tables used: polls, questions, answers
    """
    poll_id = get_int("p", 0)

    # TODO: Check admin authentication

    if request.method == "POST":
        # TODO: Save questions and answers
        return render_template(
            "pollman/editp.html",
            poll_id=poll_id,
            message="Question save not yet implemented",
        )

    # TODO: Load poll questions and answers
    return render_template("pollman/editp.html", poll_id=poll_id, questions=[])


@bp.route("/listQ.asp")
def listq():
    """List all questions across polls"""
    # TODO: Check admin authentication
    # TODO: Query all questions
    return render_template("pollman/listq.html", questions=[])


@bp.route("/listA.asp")
def lista():
    """List all answers across polls"""
    # TODO: Check admin authentication
    # TODO: Query all answers with vote counts
    return render_template("pollman/lista.html", answers=[])
