# Webb-site Flask Deployment Guide

## Emergency Deployment Timeline (Oct 17-31, 2025)

This document outlines the steps to deploy the Webb-site Flask application to Render.com before the October 31 deadline.

## Current Status

✅ Flask application structure created
✅ ASP → Flask/Jinja conversion completed for 3 priority pages:
   - searchorgs.asp → /searchorgs
   - searchpeople.asp → /searchpeople
   - events.asp → /events
   - prices.asp → /prices
✅ Static assets (CSS, JS) copied
✅ render.yaml deployment configuration created

## Prerequisites

1. **MySQL → PostgreSQL Conversion** (CRITICAL PATH)
   - Install MySQL locally: `apt install mysql-server` or `brew install mysql`
   - Import dumps:
     ```bash
     mysql -u root < "Enigma schema/enigma251011/enigmaData-2025-10-11- 000.sql"
     mysql -u root < "CCASS schema/ccass251011/ccassData-2025-10-11- 600.sql"
     ```
   - Install pgloader: `apt install pgloader`
   - Convert to PostgreSQL:
     ```bash
     pgloader mysql://root@localhost/enigma postgresql://localhost/enigma_converted
     pgloader mysql://root@localhost/ccass postgresql://localhost/ccass_converted
     ```
   - Export PostgreSQL dumps:
     ```bash
     pg_dump -Fc enigma_converted > enigma_pg.dump
     pg_dump -Fc ccass_converted > ccass_pg.dump
     ```

2. **Render.com Setup**
   - Log in to https://dashboard.render.com
   - Ensure credit card is on file (required for PostgreSQL)

## Deployment Steps

### Step 1: Create PostgreSQL Database on Render

1. Go to Render Dashboard → New → PostgreSQL
2. Name: `webbsite-db`
3. Database: `enigma`
4. Region: Choose closest to you (Oregon, Frankfurt, Singapore, Ohio, Virginia)
5. Plan: **Standard** (required for 28GB data)
6. Click "Create Database"
7. Wait for provisioning (5-10 minutes)

### Step 2: Import Database

1. Get connection details from Render dashboard (Internal Database URL)
2. Import converted PostgreSQL dumps:
   ```bash
   pg_restore -d <RENDER_DATABASE_URL> enigma_pg.dump
   pg_restore -d <RENDER_DATABASE_URL> ccass_pg.dump
   ```
3. Verify import:
   ```bash
   psql <RENDER_DATABASE_URL> -c "SELECT COUNT(*) FROM organisations;"
   ```

### Step 3: Deploy Flask App

1. Push code to GitHub:
   ```bash
   git add .
   git commit -m "Emergency Flask deployment"
   git push origin master
   ```

2. Go to Render Dashboard → New → Web Service
3. Connect your GitHub repository
4. Render will auto-detect `render.yaml`
5. Click "Apply" to create both web service and database
6. Wait for build and deployment (10-15 minutes)

### Step 4: Verify Deployment

1. Visit your Render URL: `https://webbsite.onrender.com`
2. Test search: `/searchorgs?n=HSBC`
3. Test events: `/events?sc=5`
4. Check health: `/health`

### Step 5: Domain Setup (Optional)

1. Register domain (suggestions: webb-site.org, webbsite.info)
2. In Render dashboard, go to web service → Settings → Custom Domain
3. Add your domain and follow DNS instructions
4. Wait for SSL certificate provisioning (automatic)

## Local Development

1. Install dependencies:
   ```bash
   uv sync
   ```

2. Set environment variables:
   ```bash
   export DATABASE_URL="postgresql://localhost/enigma_converted"
   export FLASK_ENV="development"
   ```

3. Run locally:
   ```bash
   uv run flask --app app run --debug
   ```

4. Visit: http://localhost:5000

## Troubleshooting

### Database Connection Issues

- Check DATABASE_URL format: must be `postgresql://` not `postgres://`
- Verify database is accessible from Render (check firewall rules)
- Check Render logs: Dashboard → Service → Logs

### Import Fails

- Ensure PostgreSQL version compatibility (14+)
- Check available disk space
- Verify pgloader conversion completed without errors
- Try importing structure first, then data

### Missing Functions/Triggers

Some MySQL functions used in ASP queries may not exist in PostgreSQL:
- `everListCo()` - Check if company was ever listed
- May need to port these to application layer

### Performance Issues

- Add indexes on frequently queried columns
- Enable query logging to identify slow queries
- Consider upgrading PostgreSQL plan if needed

## Post-Deployment Tasks

1. Monitor error logs for 24 hours
2. Test all pages thoroughly
3. Compare output with original webb-site.com
4. Fix any query incompatibilities
5. Add remaining ~140 ASP pages (post-launch)

## Emergency Contacts

- Render Support: https://render.com/docs/support
- PostgreSQL Docs: https://www.postgresql.org/docs/

## Timeline

- ✅ Oct 17-18: Database conversion and Flask app creation (DONE)
- 🔄 Oct 19-20: Database import to Render (IN PROGRESS)
- ⏳ Oct 21-24: Testing and bug fixes
- ⏳ Oct 25-28: Domain setup and final deployment
- ⏳ Oct 29-30: Monitoring and adjustment
- 🎯 Oct 31: LAUNCH (deadline)
