"""
Webb-site Flask Application Factory
Direct port from Classic ASP to Flask/Jinja
"""

from flask import Flask, render_template, redirect
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

    # Home page - redirect to database query interface
    @app.route("/")
    def index():
        return redirect("/dbpub/")

    # Health check endpoint
    @app.route("/health")
    def health():
        return {"status": "ok"}, 200

    return app
