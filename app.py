"""
Webb-site Flask Application Entry Point
Direct port from Classic ASP to Flask/Jinja
"""

import os
from webbsite import create_app

app = create_app()

if __name__ == "__main__":
    # Security: debug mode controlled by environment variable, defaults to False
    debug_mode = os.environ.get("FLASK_DEBUG", "false").lower() == "true"
    app.run(host="0.0.0.0", debug=debug_mode)
