"""
Webb-site Flask Application Factory
Direct port from Classic ASP to Flask/Jinja
"""

from flask import Flask, render_template, redirect, request, g, Response, has_app_context
from datetime import datetime, date as _date
import time
import logging
import logging.config
import sys
import uuid
from .config import Config
from . import freshness

logger = logging.getLogger(__name__)

# Edge/browser cache TTL ladder for data pages (seconds). The archive is refreshed
# daily now (webbsite/watermarks.py + deploy/README "Daily data refresh"), so a page
# that pins its upper bound to an OLD date is effectively immutable and caches long,
# while a "latest" view (no end-date, or a recent one) caches briefly so a refresh
# shows up within hours WITHOUT the loader ever purging Cloudflare.
_TTL_LATEST = (3600, 14400)      # 1h browser / 4h edge  — latest views / recent dates
_TTL_SETTLED = (86400, 2592000)  # 1d / 30d              — snapshots older than ~2 weeks
_TTL_DEEP = (604800, 31536000)   # 7d / 1y               — snapshots older than a year


def _asof_from_args(args):
    """The as-of date a data page pins its UPPER bound to, or None for a "latest"
    view. ``d2`` (range end) then ``d`` (snapshot) pin the page; ``d1`` alone (open
    range) means "to latest" and stays fresh. Malformed/absent -> None (fresh)."""
    for p in ("d2", "d"):
        v = args.get(p, "")
        if len(v) == 10:
            try:
                return datetime.strptime(v, "%Y-%m-%d").date()
            except ValueError:
                pass
    return None


def _data_page_ttls(args):
    """(browser_ttl, edge_ttl) for a data page, by the age of the date it pins."""
    asof = _asof_from_args(args)
    if asof is None:
        return _TTL_LATEST
    age = (_date.today() - asof).days
    if age > 365:
        return _TTL_DEEP
    if age > 14:
        return _TTL_SETTLED
    return _TTL_LATEST

# Aggressive SEO/AI crawlers blocked at the origin (mirror of Cloudflare WAF rule).
# Defense-in-depth in case direct *.onrender.com URL is hit.
BLOCKED_BOT_UA_SUBSTRINGS = (
    "semrushbot", "ahrefsbot", "mj12bot", "dotbot", "petalbot",
    "yandexbot", "baiduspider", "bytespider", "gptbot", "claudebot",
    "ccbot", "amazonbot", "applebot", "facebookexternalhit",
    "meta-externalagent", "perplexitybot", "diffbot", "blexbot",
)

# Interactive/account features deferred for the read-only archive (see CLAUDE.md).
# Every path under these prefixes returns 410 Gone rather than a 500. /contact is
# here because its handler reads the `iplog` schema, which the archive never had,
# and its form never verified its CAPTCHA or sent mail.
DEFERRED_FEATURE_PREFIXES = (
    "/webbmail", "/vote", "/pollman", "/mailman", "/dbeditor", "/contact",
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
    "/dbeditor/", "/webbmail/", "/vote/", "/pollman/", "/mailman/", "/contact/",
)


class _LiveStderrHandler(logging.StreamHandler):
    """A StreamHandler that looks up sys.stderr at emit time, not at config time.

    Test runners (pytest's capture) swap sys.stderr per test and close the old
    one; a handler that captured the object at startup then raises "Logging
    error" from the atexit engine-dispose line. Production never notices the
    difference, and the tests stop printing a spurious traceback.
    """

    def __init__(self):
        super().__init__(stream=None)

    @property
    def stream(self):
        return sys.stderr

    @stream.setter
    def stream(self, value):  # StreamHandler.__init__ assigns it; ignore.
        pass


def _configure_logging(app):
    """One explicit logging config, applied before anything logs.

    Nothing configured logging before this: the root logger sat at WARNING so
    every logger.info in the app was silently dropped, and the `webbsite` logger
    reached the journal only because its name happened to equal Flask's
    app.logger name. Flask skips its own default handler when the logger already
    has one, so there is no double-logging.
    """
    level = "DEBUG" if app.config.get("DEBUG") else "INFO"
    logging.config.dictConfig({
        "version": 1,
        "disable_existing_loggers": False,
        "formatters": {
            "plain": {"format": "%(asctime)s %(levelname)s %(name)s: %(message)s"},
        },
        "handlers": {
            "stderr": {"()": _LiveStderrHandler, "formatter": "plain"},
        },
        "loggers": {
            "webbsite": {"level": level, "handlers": ["stderr"], "propagate": False},
        },
        "root": {"level": "WARNING", "handlers": ["stderr"]},
    })


def _group_db_errors_by_route(event, hint):
    """Sentry before_send: one issue per route for db.py's error log.

    execute_query logs every failed query from the same frame, so their in-app
    stack is identical and Sentry merged unrelated failures into one issue
    (WEBBSITE-1C held both status.asp's missing table and ncipchg.asp's missing
    join). Adding the Flask endpoint to the default fingerprint splits them
    again without losing the per-exception-type grouping.
    """
    if event.get("logger") == "webbsite.db" and event.get("transaction"):
        event["fingerprint"] = ["{{ default }}", event["transaction"]]
    return event


def _reported_by_db(event, hint):
    """Whether this is a route re-logging a failure db.py already reported.

    db.py logs every failed query with its SQL, then raises; the route catches
    it and logs again, as its own issue under another exception type (every
    timeout was WEBBSITE-1Y and 1Z). The route's line is the duplicate when
    its exception is in the chain db.py raised, or, logged without exc_info
    (most routes: f"Error ...: {ex}"), when its message quotes one. An
    unhandled exception (no logger) is always kept.
    """
    if event.get("logger") in (None, "webbsite.db") or not has_app_context():
        return False
    reported = g.get("db_reported") or []
    if not reported:
        return False
    record = (hint or {}).get("log_record")
    exc = ((hint or {}).get("exc_info") or (None, None))[1] or (
        record.exc_info[1] if record is not None and record.exc_info else None
    )
    chain = []
    while exc is not None and exc not in chain:
        chain.append(exc)
        exc = exc.__cause__  # not __context__: an error raised while handling one is its own
    if chain:
        return any(r is c for r in reported for c in chain)
    message = record.getMessage() if record is not None else ""
    return any(str(r) and str(r) in message for r in reported)


def _before_send(event, hint):
    """Sentry before_send: drop route duplicates of db.py's report, then group."""
    if _reported_by_db(event, hint):
        return None
    return _group_db_errors_by_route(event, hint)


def _sentry_options(app):
    """sentry_sdk.init's arguments (the regression tests reuse them)."""
    from sentry_sdk.integrations.flask import FlaskIntegration
    from sentry_sdk.integrations.logging import LoggingIntegration

    return dict(
        dsn=app.config.get("SENTRY_DSN"),
        environment=app.config.get("SENTRY_ENVIRONMENT"),
        integrations=[
            FlaskIntegration(),
            LoggingIntegration(level=logging.INFO, event_level=logging.ERROR),
        ],
        traces_sample_rate=0.05,
        send_default_pii=False,
        before_send=_before_send,
    )


def _init_sentry(app):
    """Error reporting, on only when SENTRY_DSN is set (deploy/README.md).

    The Flask integration captures every unhandled exception with the request
    attached; the logging integration turns every ERROR log line (db.py logs one
    for each failed query before the route swallows it) into an event too. That
    is what makes the 188 `except Exception: render empty page` blocks visible
    without rewriting them; the route's own re-log of the same failure is
    dropped (_reported_by_db). Traces are sampled low to get per-route timing
    without paying for every request.
    """
    if not app.config.get("SENTRY_DSN"):
        return False
    import sentry_sdk

    sentry_sdk.init(**_sentry_options(app))
    return True


def create_app(config_class=Config):
    app = Flask(__name__)
    app.config.from_object(config_class)

    _configure_logging(app)
    sentry_on = _init_sentry(app)

    # No in-process compression: Caddy's `encode gzip` (deploy/Caddyfile) does it
    # off the worker thread. Flask-Compress at level 6 was burning request-slot
    # CPU on work the proxy repeated.

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

    # Health check endpoint.
    #
    # Bare /health is a liveness probe: cheap, no I/O, answers "this process is
    # up and routing". /health?deep=1 is the readiness probe an external uptime
    # monitor should point at, because a shallow 200 is exactly what let a real
    # outage hide -- and the failure it hides is not hypothetical: on 2026-09-11
    # this app stayed perfectly healthy for five days while the site served 521s.
    #
    # The deep check deliberately does NOT go through webbsite.watermarks: that
    # module swallows DB errors and returns a frozen-archive fallback so pages
    # degrade instead of 500ing, which is right for pages and exactly wrong here
    # -- it would report ok with Postgres dead. It also deliberately does not
    # render a page (the pattern used elsewhere in the fleet): the heavy pages
    # here cost hundreds of ms, and a 5-minute probe that adds load to a box
    # whose failure mode IS load would be a monitor that causes outages.
    @app.route("/health")
    def health():
        if request.args.get("deep", "") not in ("1", "true", "True", "yes"):
            return {"status": "ok"}, 200

        from .db import execute_scalar

        body = {"status": "ok", "deep": "ok"}
        try:
            # One round-trip that proves the pool, the connection, the schema and
            # the refresh loader's own watermark all still exist.
            ccass_done = execute_scalar(
                "SELECT val FROM enigma.log WHERE name = %s", ("CCASSdateDone",)
            )
            if not ccass_done:
                raise RuntimeError("enigma.log has no CCASSdateDone row")

            # Same freshness semantics as the loader's healthcheck gate
            # (scripts/refresh/refresh.py::freshness_ok): how many trading days
            # have closed that we have not loaded CCASS for, against the budget
            # both sides read from deploy/freshness.toml (4 today, so a long
            # weekend or one late upstream run is not an alarm).
            behind = execute_scalar(
                "SELECT count(*) FROM ccass.calendar WHERE tradedate > %s", (ccass_done,)
            )
            body["ccass_done"] = str(ccass_done)
            body["trading_days_behind"] = int(behind)
            body["budget_trading_days"] = freshness.budget_for(_date.today())
        except Exception as exc:
            logger.exception("deep health check failed")
            # 500, not 503: the data being stale is a different fact from the
            # database being unreachable, and they want different pages.
            # Only the class name goes out: this endpoint is public, and a
            # driver message can carry the DSN host and port. The full error
            # is in the log line above, and so in Sentry.
            return {"status": "error", "deep": type(exc).__name__}, 500

        if body["trading_days_behind"] > body["budget_trading_days"]:
            body["status"] = "stale"
            return body, 503
        return body, 200

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

    # One id per request. Caddy mints X-Request-Id (deploy/Caddyfile) and we
    # echo it on the response, tag Sentry with it and put it in the slow-request
    # log, so every record of one request shares one string. A request that
    # arrives without one (local dev, direct curl) gets a fresh id here.
    # Registered first so even a 403/410 short-circuit below carries it.
    @app.before_request
    def _request_id():
        rid = request.headers.get("X-Request-Id", "").strip() or uuid.uuid4().hex
        g.request_id = rid[:64]
        if sentry_on:
            import sentry_sdk
            sentry_sdk.set_tag("request_id", g.request_id)

    @app.after_request
    def _echo_request_id(response):
        rid = getattr(g, "request_id", None)
        if rid:
            response.headers["X-Request-Id"] = rid
        return response

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
                "SLOW REQUEST: %.1fs %s %s (status %s) rid=%s",
                elapsed, request.method, request.path, response.status_code,
                getattr(g, "request_id", "-"),
            )
        return response

    @app.after_request
    def _set_cache_headers(response):
        # A route that caught a database failure rendered a partial or empty
        # page (a 200, or a "not found" it could not really know): serve it,
        # but never cache it (db._mark_failed).
        if g.get("db_failed"):
            response.headers["Cache-Control"] = "no-store"
            response.headers.pop("CDN-Cache-Control", None)
            return response
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

        # CSV exports. A CSV that pins an old end-date is settled history (1d/1d);
        # a "latest" CSV (no end-date, or a recent one) tracks the daily refresh (1h/4h).
        if path.endswith("CSV.asp"):
            if _asof_from_args(request.args) and _data_page_ttls(request.args) != _TTL_LATEST:
                response.headers.setdefault("Cache-Control", "public, max-age=86400")
                response.headers["CDN-Cache-Control"] = "max-age=86400"
            else:
                response.headers.setdefault("Cache-Control", "public, max-age=3600")
                response.headers["CDN-Cache-Control"] = "max-age=14400"
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

        # Data pages (.asp or directory index). The archive is refreshed daily, so a
        # page's TTL follows the age of the date it pins: a "latest" view (no end-date
        # or a recent one) caches only ~4h at the edge so a refresh shows up quickly
        # without a purge, while a page pinned to old history caches 30d/1y. A
        # high-cardinality crawler page with no ?d= (orgdata.asp?p=…) renders refreshed
        # data, so the shorter latest-tier TTL is correct.
        if path.endswith(".asp") or path.endswith("/"):
            ttl_browser, ttl_edge = _data_page_ttls(request.args)
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

    # Expose the live data watermarks to every template (the CTA banner says how
    # current the archive is). Best-effort — never break rendering on a DB hiccup.
    @app.context_processor
    def _inject_data_asof():
        from webbsite import watermarks
        try:
            return {"data_asof": watermarks.quotes_end(), "ccass_asof": watermarks.ccass_done()}
        except Exception:
            return {"data_asof": None, "ccass_asof": None}

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
