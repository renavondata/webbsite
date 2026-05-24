"""
Configuration for Webb-site Flask Application
"""

import os
from dotenv import load_dotenv

load_dotenv()


class Config:
    """Flask configuration from environment variables"""

    # Database
    DATABASE_URL = os.environ.get("DATABASE_URL")
    if DATABASE_URL and DATABASE_URL.startswith("postgres://"):
        # Render uses postgres://, but psycopg2 needs postgresql://
        DATABASE_URL = DATABASE_URL.replace("postgres://", "postgresql://", 1)

    # Database Connection Pool Settings
    DB_POOL_MIN_CONN = int(os.environ.get("DB_POOL_MIN_CONN", "2"))
    DB_POOL_MAX_CONN = int(os.environ.get("DB_POOL_MAX_CONN", "8"))
    DB_CONNECT_TIMEOUT = int(os.environ.get("DB_CONNECT_TIMEOUT", "30"))

    # Flask
    SECRET_KEY = os.environ.get("SECRET_KEY", "dev-secret-key-change-in-production")

    # Public-facing host. Used for canonical/OG URLs, the sitemap, and the Google
    # site-search box. Domain-agnostic by default; to move to a dedicated domain,
    # set CANONICAL_HOST (and optionally SEARCH_DOMAIN) in the environment and add
    # a 301 from the old host — no code change needed.
    CANONICAL_HOST = os.environ.get("CANONICAL_HOST", "webbsite.renavon.com")
    SEARCH_DOMAIN = os.environ.get("SEARCH_DOMAIN", CANONICAL_HOST)

    # App settings
    DEBUG = os.environ.get("FLASK_DEBUG", "False").lower() == "true"
    TEMPLATES_AUTO_RELOAD = True

    # SQL Logging - logs all SQL queries when enabled (development only)
    SQL_ECHO = os.environ.get("SQL_ECHO", "False").lower() == "true"
