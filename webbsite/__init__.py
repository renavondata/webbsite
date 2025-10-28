"""
Webb-site Flask Application Factory
Direct port from Classic ASP to Flask/Jinja
"""

from flask import Flask, render_template
from datetime import datetime
from .config import Config


def create_app(config_class=Config):
    app = Flask(__name__)
    app.config.from_object(config_class)

    # Initialize database
    from webbsite import db

    db.init_app(app)

    # Register template filters and globals from asp_helpers
    from webbsite.asp_helpers import (
        sig,
        sig2,
        mobile,
        checked,
        selected,
        tick,
        ms_date,
        force_date,
        date_str,
        int_str,
        pc_str,
        digits,
        iif,
        if_null,
        sp_date,
        yn,
    )

    app.jinja_env.filters["sig"] = sig
    app.jinja_env.filters["sig2"] = sig2
    app.jinja_env.filters["ms_date"] = ms_date
    app.jinja_env.filters["force_date"] = force_date
    app.jinja_env.filters["date_str"] = date_str
    app.jinja_env.filters["int_str"] = int_str
    app.jinja_env.filters["pc_str"] = pc_str
    app.jinja_env.filters["digits"] = digits
    app.jinja_env.filters["sp_date"] = sp_date
    app.jinja_env.filters["yn"] = yn

    # Register as global functions (can be called directly)
    app.jinja_env.globals["mobile"] = mobile
    app.jinja_env.globals["checked"] = checked
    app.jinja_env.globals["selected"] = selected
    app.jinja_env.globals["tick"] = tick
    app.jinja_env.globals["sig"] = sig
    app.jinja_env.globals["iif"] = iif
    app.jinja_env.globals["if_null"] = if_null

    # Register blueprints with URL prefixes matching original ASP structure
    # URLs include .asp extension for exact match with original site
    from webbsite.routes import (
        search,
        prices,
        ccass,
        articles,
        webbmail,
        vote,
        pollman,
        mailman,
        contact,
        dbeditor,
        pages,
    )
    from webbsite.routes import dbpub

    # Main database query pages - dbpub is now split into multiple sub-modules
    dbpub.register_blueprints(app)
    app.register_blueprint(search.bp, url_prefix="/dbpub")
    app.register_blueprint(ccass.bp, url_prefix="/ccass")
    # Note: prices blueprint imported but not registered
    # prices.asp exists in codebase but was never deployed to production server

    # Articles (729 routes via stories table)
    app.register_blueprint(articles.bp, url_prefix="/articles")

    # Static content pages
    app.register_blueprint(pages.bp, url_prefix="/pages")

    # User features
    app.register_blueprint(webbmail.bp, url_prefix="/webbmail")
    app.register_blueprint(vote.bp, url_prefix="/vote")
    app.register_blueprint(pollman.bp, url_prefix="/pollman")
    app.register_blueprint(mailman.bp, url_prefix="/mailman")
    app.register_blueprint(contact.bp, url_prefix="/contact")

    # Database editor (requires authentication)
    app.register_blueprint(dbeditor.bp, url_prefix="/dbeditor")

    # Home page - news feed (mirrors webb-site.com root)
    @app.route("/")
    def index():
        # Query latest stories from database
        from webbsite.db import execute_query

        try:
            # Get Webb-site original stories (based on headlinesws.asp line 71-72)
            our_stories = execute_query(
                """
                SELECT s.StoryID, s.Title, s.Summary, s.StoryDate, s.URL, s.SourceID,
                       s.URL2, s.URL2text, s.image
                FROM enigma.stories s
                WHERE s.sourceID = 1 AND s.pubDate <= NOW()
                ORDER BY s.StoryDate DESC
                LIMIT 15
            """
            )

            # Get external news stories (based on headlinesws.asp line 102-104)
            other_stories = execute_query(
                """
                SELECT s.StoryID, s.Title, s.Summary, s.StoryDate, s.URL, s.SourceID,
                       s.URL2, s.URL2text, s.image, src.sourcename
                FROM enigma.stories s
                LEFT JOIN enigma.sources src ON s.sourceID = src.sourceID
                WHERE (s.sourceID <> 1 OR s.sourceID IS NULL) AND s.pubDate <= NOW()
                ORDER BY s.StoryDate DESC
                LIMIT 20
            """
            )

            # Get today's big birthdays (ages that are multiples of 5, >= 30)
            today = datetime.now()
            birthdays = execute_query(
                """
                SELECT personid,
                       CASE
                         WHEN name2 IS NULL THEN name1
                         ELSE name1 || ', ' || name2
                       END as fullname,
                       COALESCE(' ' || cname, '') as cname,
                       yob,
                       EXTRACT(YEAR FROM CURRENT_DATE) - yob as age
                FROM enigma.people
                WHERE mob = %s AND dob = %s AND yob IS NOT NULL
                  AND (EXTRACT(YEAR FROM CURRENT_DATE) - yob) % 5 = 0
                  AND (EXTRACT(YEAR FROM CURRENT_DATE) - yob) >= 30
                ORDER BY yob
            """,
                (today.month, today.day),
            )
        except Exception as ex:
            # Error is already logged by execute_query in db.py
            # In DEBUG mode, exception will be re-raised and shown in browser
            # In production, show empty stories list but log the error here too
            app.logger.error(f"Failed to load stories for homepage: {ex}")
            our_stories = []
            other_stories = []
            birthdays = []
            today = datetime.now()

        # Combine for single-column view (sorted by date)
        all_stories = sorted(
            our_stories + other_stories,
            key=lambda x: x.get("storydate") or "",
            reverse=True,
        )[:30]

        return render_template(
            "index.html",
            stories=all_stories,
            our_stories=our_stories,
            other_stories=other_stories,
            birthdays=birthdays,
            today=today,
        )

    # Health check endpoint
    @app.route("/health")
    def health():
        return {"status": "ok"}, 200

    return app
