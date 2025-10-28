"""
Database publication (dbpub) routes

This module contains all the database query and reporting routes that were
originally in the Classic ASP dbpub/ directory.

The routes have been split into logical categories for maintainability:
- index: Database homepage
- listings: Stock listings and delistings
- corporate: Corporate structure (officers, advisers, positions, holders)
- people: People and organization lookup
- market_data: Market capitalization and returns
- buybacks: Share buyback data
- short_selling: Short selling data
- sdi: Significant Dealer Information
- sfc: Securities and Futures Commission licensee data
- solicitors: Hong Kong solicitor and law firm data
- incorporations: Company incorporations, dissolutions, registrations
- transport: Hong Kong transport and vehicle data
- articles: Articles and content management
- events: Corporate events and documents
- statistics: Statistical analysis and reporting
"""

from flask import Blueprint

# Create the main dbpub blueprint
bp = Blueprint('dbpub', __name__)

# Import all sub-modules to register their routes
from . import (
    index,
    listings,
    corporate,
    people,
    market_data,
    buybacks,
    short_selling,
    sdi,
    sfc,
    solicitors,
    incorporations,
    transport,
    articles,
    events,
    statistics
)

# Register all sub-blueprints with the main blueprint
def register_blueprints(app):
    """Register all dbpub sub-blueprints with the Flask app"""
    # All dbpub routes are under /dbpub prefix
    url_prefix = '/dbpub'

    app.register_blueprint(index.bp, url_prefix=url_prefix)
    app.register_blueprint(listings.bp, url_prefix=url_prefix)
    app.register_blueprint(corporate.bp, url_prefix=url_prefix)
    app.register_blueprint(people.bp, url_prefix=url_prefix)
    app.register_blueprint(market_data.bp, url_prefix=url_prefix)
    app.register_blueprint(buybacks.bp, url_prefix=url_prefix)
    app.register_blueprint(short_selling.bp, url_prefix=url_prefix)
    app.register_blueprint(sdi.bp, url_prefix=url_prefix)
    app.register_blueprint(sfc.bp, url_prefix=url_prefix)
    app.register_blueprint(solicitors.bp, url_prefix=url_prefix)
    app.register_blueprint(incorporations.bp, url_prefix=url_prefix)
    app.register_blueprint(transport.bp, url_prefix=url_prefix)
    app.register_blueprint(articles.bp, url_prefix=url_prefix)
    app.register_blueprint(events.bp, url_prefix=url_prefix)
    app.register_blueprint(statistics.bp, url_prefix=url_prefix)
