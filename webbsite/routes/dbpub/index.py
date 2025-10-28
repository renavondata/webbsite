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

bp = Blueprint('dbpub_index', __name__)

@bp.route('/')
def index():
    """Database homepage - port of dbpub/default.asp"""
    return render_template('dbpub/index.html')


