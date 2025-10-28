"""
Articles and content management
"""
from flask import Blueprint, render_template, request, abort, current_app, Response
from datetime import date, timedelta
import calendar
import io
import re
from webbsite.db import execute_query, get_db
from webbsite.asp_helpers import get_int, get_bool, get_str

bp = Blueprint('dbpub_articles', __name__)

@bp.route('/articles.asp')
def articles():
    """
    DEPRECATED: Redirects to archive.org
    Editorial content remains copyright David M. Webb
    """
    # Redirect to archive.org's article index
    return redirect("https://web.archive.org/web/2/https://webb-site.com/dbpub/articles.asp" +
                   ('?p=' + request.args.get('p') if request.args.get('p') else ''),
                   code=301)




@bp.route('/articlesyear.asp')
def articles_year():
    """
    DEPRECATED: Redirects to archive.org
    Editorial content remains copyright David M. Webb
    """
    year_param = request.args.get('y', '')
    return redirect("https://web.archive.org/web/2/https://webb-site.com/dbpub/articlesyear.asp" +
                   ('?y=' + year_param if year_param else ''),
                   code=301)




@bp.route('/artlinks.asp')
def artlinks():
    """
    DEPRECATED: Redirects to archive.org
    Editorial content remains copyright David M. Webb
    """
    story_param = request.args.get('s', '')
    return redirect("https://web.archive.org/web/2/https://webb-site.com/dbpub/artlinks.asp" +
                   ('?s=' + story_param if story_param else ''),
                   code=301)




@bp.route('/cat.asp')
def cat():
    """
    Article category browser - shows subcategories and member organizations

    Query params:
    - c: category ID

    Shows hierarchical category tree and category members
    Tables used: webcattree view, webcatmembers view
    """
    cat_id = get_int('c', 1)

    # Get category name
    cat_result = execute_query("""
        SELECT name FROM enigma.categories WHERE id = %s
    """, (cat_id,))

    if not cat_result:
        return "Category not found", 404

    cat_name = cat_result[0]['name']

    # Get subcategories
    subcats = execute_query("""
        SELECT childid, childname
        FROM enigma.webcattree
        WHERE parentid = %s
        ORDER BY childname
    """, (cat_id,))

    # Get category members (organizations)
    members = execute_query("""
        SELECT personid, name1
        FROM enigma.webcatmembers
        WHERE category = %s
        ORDER BY name1
    """, (cat_id,))

    return render_template('dbpub/cat.html',
                         cat_id=cat_id,
                         cat_name=cat_name,
                         subcategories=subcats,
                         members=members)




@bp.route('/subject.asp')
def subject():
    """
    DEPRECATED: Redirects to archive.org
    Editorial content remains copyright David M. Webb
    """
    cat_param = request.args.get('c', '')
    return redirect("https://web.archive.org/web/2/https://webb-site.com/dbpub/subject.asp" +
                   ('?c=' + cat_param if cat_param else ''),
                   code=301)


# HK Solicitors


