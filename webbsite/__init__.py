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

    # Register blueprints
    from webbsite.routes import search, quotes, events
    app.register_blueprint(search.bp)
    app.register_blueprint(quotes.bp)
    app.register_blueprint(events.bp)

    # Home page
    @app.route('/')
    def index():
        return render_template('index.html')

    # Health check endpoint
    @app.route('/health')
    def health():
        return {'status': 'ok'}, 200

    return app
