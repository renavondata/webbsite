# JavaScript Assets

## Highstock.js Required

The CCASS history page (`chistory.asp`) requires Highstock.js for charting functionality.

**Required files:**
- `highstock.js` - Core Highstock library
- `exporting.js` - Chart export module

**Download from:**
https://www.highcharts.com/blog/download/

**Version:** Highstock 11.x or later recommended

**License:** Highcharts is free for non-commercial use. For commercial use, a license is required.
See: https://shop.highcharts.com/

**Installation:**
1. Download Highstock from the link above
2. Place `highstock.js` and `modules/exporting.js` in this directory
3. Rename `exporting.js` module if necessary

**Alternative CDN (for development):**
```html
<script src="https://code.highcharts.com/stock/highstock.js"></script>
<script src="https://code.highcharts.com/stock/modules/exporting.js"></script>
```

**Note:** Original webb-site.com uses locally hosted Highstock files from the `templates/` directory.
