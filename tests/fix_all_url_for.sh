#!/bin/bash
# Comprehensive fix for all url_for calls in templates

# Based on the route mappings from find_route_mappings.py

find webbsite/templates -name "*.html" -exec sed -i \
  -e "s/url_for('dbpub\.advisers'/url_for('dbpub_corporate.advisers'/g" \
  -e "s/url_for('dbpub\.adviserships'/url_for('dbpub_statistics.adviserships'/g" \
  -e "s/url_for('dbpub\.alltotrets'/url_for('dbpub_market_data.alltotrets'/g" \
  -e "s/url_for('dbpub\.articles'/url_for('dbpub_articles.articles'/g" \
  -e "s/url_for('dbpub\.boardcomp'/url_for('dbpub_statistics.boardcomp'/g" \
  -e "s/url_for('dbpub\.bornday'/url_for('dbpub_statistics.bornday'/g" \
  -e "s/url_for('dbpub\.bornyear'/url_for('dbpub_statistics.bornyear'/g" \
  -e "s/url_for('dbpub\.buybacks'/url_for('dbpub_buybacks.buybacks'/g" \
  -e "s/url_for('dbpub\.buybacksum'/url_for('dbpub_buybacks.buybacksum'/g" \
  -e "s/url_for('dbpub\.buybackstime'/url_for('dbpub_buybacks.buybackstime'/g" \
  -e "s/url_for('dbpub\.chart'/url_for('dbpub_market_data.chart'/g" \
  -e "s/url_for('dbpub\.code'/url_for('dbpub_listings.code'/g" \
  -e "s/url_for('dbpub\.ctr'/url_for('dbpub_market_data.ctr'/g" \
  -e "s/url_for('dbpub\.delisted'/url_for('dbpub_listings.delisted'/g" \
  -e "s/url_for('dbpub\.docs'/url_for('dbpub_events.docs'/g" \
  -e "s/url_for('dbpub\.domicile'/url_for('dbpub_incorporations.domicile'/g" \
  -e "s/url_for('dbpub\.domicilechange'/url_for('dbpub_incorporations.domicilechange'/g" \
  -e "s/url_for('dbpub\.enigma_orgdata'/url_for('dbpub_statistics.enigma_orgdata'/g" \
  -e "s/url_for('dbpub\.essraw'/url_for('dbpub_statistics.essraw'/g" \
  -e "s/url_for('dbpub\.events'/url_for('dbpub_events.events'/g" \
  -e "s/url_for('dbpub\.holdings'/url_for('dbpub_corporate.holdings'/g" \
  -e "s/url_for('dbpub\.holders'/url_for('dbpub_corporate.holders'/g" \
  -e "s/url_for('dbpub\.hpu'/url_for('dbpub_statistics.hpu'/g" \
  -e "s/url_for('dbpub\.incUKcaltype'/url_for('dbpub_incorporations.incUKcaltype'/g" \
  -e "s/url_for('dbpub\.listed'/url_for('dbpub_listings.listed'/g" \
  -e "s/url_for('dbpub\.mcap'/url_for('dbpub_market_data.mcap'/g" \
  -e "s/url_for('dbpub\.mcaphist'/url_for('dbpub_market_data.mcaphist'/g" \
  -e "s/url_for('dbpub\.natperson'/url_for('dbpub_people.natperson'/g" \
  -e "s/url_for('dbpub\.officers'/url_for('dbpub_corporate.officers'/g" \
  -e "s/url_for('dbpub\.orgdata'/url_for('dbpub_statistics.orgdata'/g" \
  -e "s/url_for('dbpub\.outstanding'/url_for('dbpub_statistics.outstanding'/g" \
  -e "s/url_for('dbpub\.overlap'/url_for('dbpub_statistics.overlap'/g" \
  -e "s/url_for('dbpub\.pay'/url_for('dbpub_statistics.pay'/g" \
  -e "s/url_for('dbpub\.positions'/url_for('dbpub_corporate.positions'/g" \
  -e "s/url_for('dbpub\.possum'/url_for('dbpub_statistics.possum'/g" \
  -e "s/url_for('dbpub\.roles'/url_for('dbpub_statistics.roles'/g" \
  -e "s/url_for('dbpub\.searchorgs'/url_for('dbpub_people.searchorgs'/g" \
  -e "s/url_for('dbpub\.searchpeople'/url_for('dbpub_people.searchpeople'/g" \
  -e "s/url_for('dbpub\.sdicap'/url_for('dbpub_sdi.sdicap'/g" \
  -e "s/url_for('dbpub\.sdidir'/url_for('dbpub_sdi.sdidir'/g" \
  -e "s/url_for('dbpub\.sdidirco'/url_for('dbpub_sdi.sdidirco'/g" \
  -e "s/url_for('dbpub\.sdiissue'/url_for('dbpub_sdi.sdiissue'/g" \
  -e "s/url_for('dbpub\.sdilatest'/url_for('dbpub_sdi.sdilatest'/g" \
  -e "s/url_for('dbpub\.sfcolicrec'/url_for('dbpub_sfc.sfcolicrec'/g" \
  -e "s/url_for('dbpub\.short'/url_for('dbpub_short_selling.short'/g" \
  -e "s/url_for('dbpub\.splits'/url_for('dbpub_corporate.splits'/g" \
  -e "s/url_for('dbpub\.str_route'/url_for('dbpub_statistics.str_route'/g" \
  {} \;

echo "Fixed all url_for references in templates"
