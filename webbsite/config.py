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

    # Site identity, exposed to every template as {{ site_name }} (page titles,
    # og:site_name) and {{ site_short_name }} (headings, the search box). A
    # deployment re-brands with these two plus an overlay (WEBBSITE_OVERLAY_DIR,
    # see webbsite/overlay.py) supplying templates/site/*.html.
    SITE_NAME = os.environ.get("SITE_NAME", "Renavon Hong Kong Database")
    SITE_SHORT_NAME = os.environ.get("SITE_SHORT_NAME", "Renavon Hong Kong")

    # Click analytics (site/analytics.html): the PostHog snippet renders only
    # when POSTHOG_KEY is non-empty. A project key is public by design (it ships
    # in every page), but it routes visitors' events to whoever owns it, so an
    # operator sets their own or leaves it empty.
    POSTHOG_KEY = os.environ.get("POSTHOG_KEY", "phc_1HRPWj8xOz5e1q7iGMicuo3qhK2MsLTN7BOPi3CIKwy")
    POSTHOG_HOST = os.environ.get("POSTHOG_HOST", "https://us.i.posthog.com")

    # Optional deployment overlay: a directory with templates/ and/or static/
    # whose files take precedence over the app's own. Unset = upstream as-is.
    WEBBSITE_OVERLAY_DIR = os.environ.get("WEBBSITE_OVERLAY_DIR", "")

    # The bulk HKID index (HKIDindex120215.asp) is SUSPENDED by default, matching
    # David Webb's 2013 decision (Privacy Commissioner concerns). The data still
    # exists (enigma.people.hkid / .hkidsource, from already-public documents) and
    # the route is fully implemented behind this flag. To re-publish the index —
    # the operator's call — set PUBLISH_HKID_INDEX=true in the environment. Person
    # pages (natperson) never print the number regardless; they only link to the
    # public source.
    PUBLISH_HKID_INDEX = os.environ.get("PUBLISH_HKID_INDEX", "false").lower() == "true"

    # App settings
    DEBUG = os.environ.get("FLASK_DEBUG", "False").lower() == "true"
    # Only stat() templates on every render in development; in production the
    # deploy is a SIGHUP, which re-reads templates anyway.
    TEMPLATES_AUTO_RELOAD = DEBUG

    # Error reporting. Optional: unset means "no Sentry", which is what a mirror
    # gets by default. The DSN is a capability and lives only in the box's env.
    SENTRY_DSN = os.environ.get("SENTRY_DSN", "")
    SENTRY_ENVIRONMENT = os.environ.get("SENTRY_ENVIRONMENT", "production")

    # SQL Logging - logs all SQL queries when enabled (development only)
    SQL_ECHO = os.environ.get("SQL_ECHO", "False").lower() == "true"
