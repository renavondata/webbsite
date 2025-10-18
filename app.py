"""
Webb-site Flask Application Entry Point
Direct port from Classic ASP to Flask/Jinja
"""
from webbsite import create_app

app = create_app()

if __name__ == '__main__':
    app.run(debug=True)
