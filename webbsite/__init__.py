"""
Webb-site Flask Application Factory
Direct port from Classic ASP to Flask/Jinja
"""

from flask import Flask, render_template, redirect, request, g, Response
from flask_compress import Compress
import time
import logging
from .config import Config

logger = logging.getLogger(__name__)

# Aggressive SEO/AI crawlers blocked at the origin (mirror of Cloudflare WAF rule).
# Defense-in-depth in case direct *.onrender.com URL is hit.
BLOCKED_BOT_UA_SUBSTRINGS = (
    "semrushbot", "ahrefsbot", "mj12bot", "dotbot", "petalbot",
    "yandexbot", "baiduspider", "bytespider", "gptbot", "claudebot",
    "ccbot", "amazonbot", "applebot", "facebookexternalhit",
    "meta-externalagent", "perplexitybot", "diffbot", "blexbot",
)

# Interactive/account features deferred for the read-only archive (see CLAUDE.md).
# Every path under these prefixes returns 410 Gone rather than a 500.
DEFERRED_FEATURE_PREFIXES = (
    "/webbmail", "/vote", "/pollman", "/mailman", "/dbeditor",
)

# Paths kept out of search indexes. Single source of truth shared by robots.txt
# and the XML sitemap (the sitemap must never list a Disallowed path). Entries
# ending in "/" are directory prefixes; the rest are exact paths. Per-day CCASS
# deep-link history pages are infinite ?d=&i= combinations with zero crawl value;
# CSV exports are large; the trailing-slash entries are deferred features.
ROBOTS_DISALLOW = (
    "/ccass/chldchg.asp", "/ccass/choldings.asp", "/ccass/chistory.asp",
    "/ccass/chldchght.asp", "/ccass/portchg.asp", "/ccass/cconchist.asp",
    "/ccass/ctothist.asp", "/ccass/nciphist.asp", "/ccass/brokhist.asp",
    "/ccass/ipstakes.asp",
    "/CSV.asp", "/dbpub/CSV.asp", "/dbpub/pricesCSV.asp", "/dbpub/govacCSV.asp",
    "/dbeditor/", "/webbmail/", "/vote/", "/pollman/", "/mailman/",
)


def create_app(config_class=Config):
    app = Flask(__name__)
    app.config.from_object(config_class)

    # Enable gzip/brotli compression
    app.config["COMPRESS_MIN_SIZE"] = 500
    app.config["COMPRESS_LEVEL"] = 6
    Compress(app)

    # Initialize database
    from webbsite import db

    db.init_app(app)

    # Register template filters and globals from asp_helpers
    from webbsite.asp_helpers import (
        sig,
        sig2,
        mobile,
        checked,
        checkbox,
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
        write_nav,
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
    app.jinja_env.globals["checkbox"] = checkbox
    app.jinja_env.globals["selected"] = selected
    app.jinja_env.globals["tick"] = tick
    app.jinja_env.globals["sig"] = sig
    app.jinja_env.globals["iif"] = iif
    app.jinja_env.globals["if_null"] = if_null
    app.jinja_env.globals["write_nav"] = write_nav

    # Deep links from HK registry numbers to crhk.guru company pages.
    from webbsite.crhk import crhk_company_url

    app.jinja_env.globals["crhk_company_url"] = crhk_company_url

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
        sitemap,
    )
    from webbsite.routes import dbpub

    # Main database query pages - dbpub is now split into multiple sub-modules
    dbpub.register_blueprints(app)
    app.register_blueprint(search.bp, url_prefix="/dbpub")
    app.register_blueprint(ccass.bp, url_prefix="/ccass")
    # prices.asp: economic-data chart (CPI, import prices, etc.), keyed by dataitem id
    app.register_blueprint(prices.bp, url_prefix="/dbpub")

    # Articles (729 routes via stories table)
    app.register_blueprint(articles.bp, url_prefix="/articles")

    # Static content pages
    app.register_blueprint(pages.bp, url_prefix="/pages")

    # XML sitemap (sitemap index + child sitemaps) for crawler discovery
    app.register_blueprint(sitemap.bp)

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

    @app.route("/robots.txt")
    def robots_txt():
        lines = (
            ["User-agent: *"]
            + [f"Disallow: {d}" for d in ROBOTS_DISALLOW]
            + [
                "Crawl-delay: 10",
                "",
                f"Sitemap: https://{app.config['CANONICAL_HOST']}/sitemap.xml",
                "",
            ]
        )
        return Response("\n".join(lines), mimetype="text/plain")

    # Block aggressive crawlers at the origin (defense-in-depth; CF WAF is primary)
    @app.before_request
    def _block_bots():
        ua = request.headers.get("User-Agent", "").lower()
        if ua and any(s in ua for s in BLOCKED_BOT_UA_SUBSTRINGS):
            return Response("Forbidden\n", status=403, mimetype="text/plain")

    # Interactive/account features (webbmail, voting, polls, mailing lists, the
    # editor) depend on auth/write paths that don't apply to a read-only archive;
    # they were intentionally never implemented. Return a clean 410 Gone instead
    # of leaking a 500 from a half-wired handler. (These prefixes are also
    # Disallowed in robots.txt.)
    @app.before_request
    def _deferred_features_gone():
        path = request.path
        for pre in DEFERRED_FEATURE_PREFIXES:
            if path == pre or path.startswith(pre + "/"):
                return render_template("unavailable.html"), 410

    # Slow request logging
    @app.before_request
    def _start_timer():
        g._request_start = time.monotonic()

    @app.after_request
    def _log_slow_requests(response):
        elapsed = time.monotonic() - getattr(g, "_request_start", time.monotonic())
        if elapsed > 5:
            logger.warning(
                "SLOW REQUEST: %.1fs %s %s (status %s)",
                elapsed, request.method, request.path, response.status_code,
            )
        return response

    @app.after_request
    def _set_cache_headers(response):
        if response.status_code >= 400:
            return response
        path = request.path

        # Static assets: 1 day browser, 30 days edge
        if path.startswith("/static/"):
            response.headers["Cache-Control"] = "public, max-age=86400, immutable"
            response.headers["CDN-Cache-Control"] = "max-age=2592000"
            return response

        # Health endpoint: never cache
        if path == "/health":
            response.headers.setdefault("Cache-Control", "no-store")
            return response

        # CSV exports: 1 day browser, 1 day edge
        if path.endswith("CSV.asp"):
            response.headers.setdefault("Cache-Control", "public, max-age=86400")
            response.headers["CDN-Cache-Control"] = "max-age=86400"
            return response

        # Articles never change once published: 7 day browser, 1 year edge
        if path.startswith("/articles/"):
            response.headers.setdefault("Cache-Control", "public, max-age=604800")
            response.headers["CDN-Cache-Control"] = "max-age=31536000"
            return response

        # Static info pages (FAQ, status, etc.): 1 day browser, 7 days edge
        if path.startswith("/pages/"):
            response.headers.setdefault("Cache-Control", "public, max-age=86400")
            response.headers["CDN-Cache-Control"] = "max-age=604800"
            return response

        # Data pages (.asp or directory index). The archive is frozen (data ends
        # 2025-10-10), so every page is immutable. Cache hard at the edge so
        # crawlers/users hit warm Cloudflare instead of a ~1s origin render on
        # every unique ?p=<id>; a ?d= older than a year gets an even longer TTL.
        if path.endswith(".asp") or path.endswith("/"):
            d_param = request.args.get("d", "")
            ttl_browser = 86400      # 1 day
            ttl_edge = 2592000       # 30 days
            if d_param and len(d_param) == 10:
                try:
                    from datetime import datetime, date as _date
                    parsed = datetime.strptime(d_param, "%Y-%m-%d").date()
                    if (_date.today() - parsed).days > 365:
                        ttl_browser = 604800       # 7 days
                        ttl_edge = 31536000        # 1 year
                except ValueError:
                    pass
            response.headers.setdefault("Cache-Control", f"public, max-age={ttl_browser}")
            response.headers["CDN-Cache-Control"] = f"max-age={ttl_edge}"
        return response

    # Make today's date available to every template (the shared navbars.html
    # stockbar/hklistings macro compares delist dates against `now`; without this
    # any caller that doesn't pass `now` 500s on a delisted listing).
    @app.context_processor
    def _inject_now():
        from datetime import date as _date
        return {"now": _date.today()}

    # Expose canonical_query() to templates (base.html builds rel=canonical from it).
    from webbsite.asp_helpers import canonical_query
    app.jinja_env.globals["canonical_query"] = canonical_query

    # Custom error handlers
    from webbsite.db import QueryTimeoutError

    @app.errorhandler(QueryTimeoutError)
    def query_timeout(e):
        return render_template("errors/timeout.html"), 504

    @app.errorhandler(404)
    def page_not_found(e):
        return render_template("errors/404.html"), 404

    @app.errorhandler(500)
    def internal_server_error(e):
        return render_template("errors/500.html"), 500

    return app
