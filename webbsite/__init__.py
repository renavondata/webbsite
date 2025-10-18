"""
Webb-site Flask Application Factory
Direct port from Classic ASP to Flask/Jinja
"""
from flask import Flask, render_template
from .config import Config


def create_app(config_class=Config):
    app = Flask(__name__)
    app.config.from_object(config_class)

    # Initialize database
    from webbsite import db
    db.init_app(app)

    # Register blueprints with URL prefixes matching original ASP structure
    # URLs include .asp extension for exact match with original site
    from webbsite.routes import (search, quotes, events, dbpub, ccass,
                                  articles, webbmail, vote, pollman,
                                  mailman, contact, dbeditor)

    # Main database query pages
    app.register_blueprint(dbpub.bp, url_prefix='/dbpub')
    app.register_blueprint(search.bp, url_prefix='/dbpub')
    app.register_blueprint(quotes.bp, url_prefix='/dbpub')
    app.register_blueprint(events.bp, url_prefix='/dbpub')
    app.register_blueprint(ccass.bp, url_prefix='/ccass')

    # Articles (729 routes via stories table)
    app.register_blueprint(articles.bp, url_prefix='/articles')

    # User features
    app.register_blueprint(webbmail.bp, url_prefix='/webbmail')
    app.register_blueprint(vote.bp, url_prefix='/vote')
    app.register_blueprint(pollman.bp, url_prefix='/pollman')
    app.register_blueprint(mailman.bp, url_prefix='/mailman')
    app.register_blueprint(contact.bp, url_prefix='/contact')

    # Database editor (requires authentication)
    app.register_blueprint(dbeditor.bp, url_prefix='/dbeditor')

    # Home page - news feed (mirrors webb-site.com root)
    @app.route('/')
    def index():
        # Query latest stories from database
        from webbsite.db import execute_query
        try:
            # Get Webb-site original stories (sourceID=1)
            stories = execute_query("""
                SELECT StoryID, Title, Summary, StoryDate, URL, SourceID,
                       URL2, URL2text, image
                FROM stories
                WHERE pubDate <= NOW()
                ORDER BY StoryDate DESC
                LIMIT 30
            """)
        except Exception as ex:
            # Error is already logged by execute_query in db.py
            # In DEBUG mode, exception will be re-raised and shown in browser
            # In production, show empty stories list but log the error here too
            app.logger.error(f"Failed to load stories for homepage: {ex}")
            stories = []

        return render_template('index.html', stories=stories)

    # Health check endpoint
    @app.route('/health')
    def health():
        return {'status': 'ok'}, 200

    return app
