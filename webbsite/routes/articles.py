"""
Articles routes - Database-driven article serving
Serves 729 articles from stories table + static ASP files
"""
from flask import Blueprint, render_template, request, abort, send_file, current_app
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
                   s.URL, s.sourceID, src.sourcename, s.image, s.URL2, s.URL2text
            FROM stories s
            LEFT JOIN sources src ON s.sourceID = src.sourceID
            WHERE s.URL = %s
            LIMIT 1
        """, (article_url,))

        if not result or len(result) == 0:
            # Article not in database, return 404
            abort(404)

        # execute_query returns dictionaries, access by key
        row = result[0]
        article_meta = {
            'storyID': row['storyid'],
            'title': row['title'],
            'summary': row['summary'],
            'storyDate': row['storydate'],
            'pubDate': row['pubdate'],
            'URL': row['url'],
            'sourceID': row['sourceid'],
            'source': row['sourcename'],
            'image': row['image'],
            'URL2': row['url2'],
            'URL2text': row['url2text']
        }

    except Exception as e:
        # Error already logged by db.py - will show in browser if DEBUG=True
        from flask import current_app
        current_app.logger.error(f"Error fetching article {article_url}: {e}")
        abort(500)

    # Check if static ASP file exists
    # The ASP files are stored in the static/articles directory
    asp_file_path = os.path.join(
        current_app.static_folder,
        'articles',
        article_url
    )

    if not os.path.exists(asp_file_path):
        # Metadata exists but file missing - render with just metadata
        return render_template('articles/article.html',
                             article=article_meta,
                             content="<p><em>Article content file not found.</em></p>")

    # Read the ASP file content and extract mainbody
    try:
        with open(asp_file_path, 'r', encoding='utf-8') as f:
            asp_content = f.read()

        # Extract only the <div class="mainbody"> content
        import re
        mainbody_match = re.search(r'<div class="mainbody">(.*?)</div>\s*</body>',
                                    asp_content, re.DOTALL | re.IGNORECASE)

        if mainbody_match:
            content = mainbody_match.group(1)
        else:
            # Fallback: use entire content if mainbody not found
            content = asp_content

        # Localize image URLs
        # Replace webb-site.com images with local static path
        content = re.sub(r'https://webb-site\.com/images/', '/static/articles/', content)
        # Replace relative ../images/ paths with local static path
        content = re.sub(r'\.\./images/', '/static/articles/', content)

    except Exception as e:
        from flask import current_app
        current_app.logger.error(f"Error reading article file {asp_file_path}: {e}")
        content = f"<p><em>Error reading article: {str(e)}</em></p>"

    # Render article template with metadata + content
    return render_template('articles/article.html',
                         article=article_meta,
                         content=content)


@bp.route('/index.asp')
@bp.route('/')
def articles_index():
    """
    Articles index page - serve from static index.html file
    """
    # Read the static index.html file
    index_file_path = os.path.join(
        current_app.static_folder,
        'articles',
        'index.html'
    )

    try:
        with open(index_file_path, 'r', encoding='utf-8') as f:
            index_content = f.read()

        # Extract only the <div class="mainbody"> content
        import re
        mainbody_match = re.search(r'<div class="mainbody">(.*?)</div>\s*</body>',
                                    index_content, re.DOTALL | re.IGNORECASE)

        if mainbody_match:
            content = mainbody_match.group(1)
        else:
            # Fallback: use entire content if mainbody not found
            content = index_content

    except Exception as e:
        from flask import current_app
        current_app.logger.error(f"Error reading articles index.html: {e}")
        content = "<p><em>Error loading articles index</em></p>"

    return render_template('articles/index.html', content=content)
