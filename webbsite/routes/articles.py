"""
Articles routes - Database-driven article serving
Serves 729 articles from stories table + static ASP files
"""
from flask import Blueprint, render_template, request, abort, send_file
from webbsite.db import execute_query
import os

bp = Blueprint('articles', __name__)


@bp.route('/<path:article_path>.asp')
def article(article_path):
    """
    Serve article from stories table + static ASP file

    Query params: None (article identified by URL path)

    Workflow:
    1. Look up article in stories table by URL
    2. If found, get metadata and serve static ASP content
    3. If not found, return 404

    Tables used: stories, sources
    """
    # Construct the expected URL pattern
    # Blueprint is registered with url_prefix='/articles', so Flask route is /articles/<path>.asp
    # But database stores URLs as just "<path>.asp" without the "articles/" prefix
    article_url = f"{article_path}.asp"

    # Query stories table for article metadata
    try:
        result = execute_query("""
            SELECT s.storyID, s.title, s.summary, s.storyDate, s.pubDate,
                   s.URL, s.sourceID, src.source, s.image, s.URL2, s.URL2text
            FROM stories s
            LEFT JOIN sources src ON s.sourceID = src.sourceID
            WHERE s.URL = %s
            LIMIT 1
        """, (article_url,))

        if not result or len(result) == 0:
            # Article not in database, return 404
            abort(404)

        article_meta = {
            'storyID': result[0][0],
            'title': result[0][1],
            'summary': result[0][2],
            'storyDate': result[0][3],
            'pubDate': result[0][4],
            'URL': result[0][5],
            'sourceID': result[0][6],
            'source': result[0][7],
            'image': result[0][8],
            'URL2': result[0][9],
            'URL2text': result[0][10]
        }

    except Exception as e:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error fetching article {article_url}: {e}")
        abort(500)

    # Check if static ASP file exists
    # The ASP files are stored in "Webb-site ASP files/articles/" subdirectory
    asp_file_path = os.path.join(
        '/home/g/Sync/git/webbsite/Webb-site ASP files/articles',
        article_url
    )

    if not os.path.exists(asp_file_path):
        # Metadata exists but file missing - render with just metadata
        return render_template('articles/article.html',
                             article=article_meta,
                             content="<p><em>Article content file not found.</em></p>")

    # Read the ASP file content
    # TODO: This is simplified - may need to parse ASP includes, execute code, etc.
    try:
        with open(asp_file_path, 'r', encoding='utf-8') as f:
            asp_content = f.read()
    except Exception as e:
        from flask import current_app
        current_app.logger.error(f"Error reading article file {asp_file_path}: {e}")
        asp_content = f"<p><em>Error reading article: {str(e)}</em></p>"

    # Render article template with metadata + content
    return render_template('articles/article.html',
                         article=article_meta,
                         content=asp_content)


@bp.route('/index.asp')
@bp.route('/')
def articles_index():
    """
    Articles index page - list recent articles
    """
    # Get recent articles from stories table
    try:
        articles = execute_query("""
            SELECT storyID, title, summary, storyDate, URL, sourceID
            FROM stories
            WHERE URL LIKE '%%.asp'
              AND URL NOT LIKE 'dbpub/%%'
              AND URL NOT LIKE 'ccass/%%'
              AND sourceID = 1
              AND pubDate <= NOW()
            ORDER BY storyDate DESC
            LIMIT 50
        """)
    except Exception as ex:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error fetching articles index: {ex}")
        articles = []

    return render_template('articles/index.html', articles=articles)
