# Task Completion Workflow

## Important: Windows vs Linux Environment

This project has multiple components with different platform requirements:

**Can be done on Linux:**
- Flask development and testing
- Code browsing and exploration
- Documentation updates
- SQL script editing (PostgreSQL)
- Repository management (git operations)
- Python testing

**Requires Windows:**
- Building/compiling VB.NET scrapers (requires Visual Studio 2022)
- Running scrapers (requires Windows ODBC and MySQL setup)
- Using Access frontend (requires Microsoft Access)

**Retired (Classic ASP):**
- Testing Classic ASP pages (requires IIS) - **Original webb-site.com shut down Oct 31, 2025**
- ASP code in repository is archived for reference only

## When Task is Completed

### For Flask Code Changes (Current Production Platform)

**On Linux or Windows:**

1. **Test Locally**
   ```bash
   # Run Flask development server
   uv run flask run --port 5000
   
   # Test the route in browser
   curl http://localhost:5000/dbpub/searchorgs?q=webb
   ```

2. **Run Tests** (if applicable)
   ```bash
   # Run route tests
   uv run python tests/test_routes.py --route <route_name>
   
   # Check for errors
   ```

3. **Validate Output**
   - Check route functionality
   - Verify SQL queries return correct data
   - Test parameter handling (get_int, get_str, get_bool)
   - Check for SQL injection vulnerabilities
   - Verify HTML rendering in browser
   - Test mobile responsiveness

4. **Check Performance**
   - Monitor query execution time
   - Check for N+1 query issues
   - Verify connection pooling is working

5. **Commit and Deploy**
   ```bash
   # Add changes
   git add webbsite/routes/<module>.py webbsite/templates/<template>.html
   
   # Commit with descriptive message
   git commit -m "feat: Implement <route_name> route - description
   
   Added route showing <functionality>
   
   🤖 Generated with [Claude Code](https://claude.com/claude-code)
   
   Co-Authored-By: Claude <noreply@anthropic.com>"
   
   # Push to trigger auto-deployment
   git push origin master
   ```

6. **Monitor Deployment**
   - Check Render.com dashboard for deployment status
   - Verify deployment succeeded (typically 2-3 minutes)
   - Test route on production: https://webb-site.onrender.com
   - Check logs for errors

### For Code Changes (VB.NET Scrapers)

**On Windows Development Machine:**

1. **Build the Solution**
   - Open in Visual Studio 2022
   - Ensure platform is set to x64
   - Build → Build Solution (Ctrl+Shift+B)
   - Fix any compilation errors

2. **Test the Scraper**
   - Ensure MySQL is running with correct configuration
   - Verify ODBC DSNs are configured
   - Run the executable from command line
   - Monitor console output for errors
   - Check email for error reports (ErrMail function)
   - Verify log table entries (GetLog/PutLog)

3. **Validate Data**
   - Check target database tables for updated data
   - Run SQL queries to verify data integrity
   - Compare record counts before/after
   - Check for NULL values where unexpected

4. **Schedule Testing**
   - If scraper runs on schedule, test at appropriate time
   - For CCASS: must run after Quotes completes
   - Check dependencies in `VB.net files/Suggested run times.md`

5. **Commit Changes**
   ```bash
   git add "VB.net files/<module>.vb"
   git commit -m "Fix/enhance <module>: description of changes"
   git push origin <branch>
   ```

**No Testing on Linux:**
- Cannot build VB.NET executables on Linux
- Cannot run scrapers without Windows/MySQL/ODBC setup
- Can only review code and commit changes

### For Code Changes (Classic ASP Pages) - ARCHIVED

**Note:** Classic ASP pages are **archived for reference only**. Original webb-site.com shut down October 31, 2025. ASP code is preserved in repository for:
- Reference when implementing Flask routes
- Historical documentation
- Understanding original business logic

**ASP files should NOT be modified unless:**
- Correcting historical documentation
- Clarifying original implementation for Flask migration
- Updating comments for clarity

**Flask is the sole production platform.** All new features and fixes should be implemented in Flask.

### For SQL Schema Changes (PostgreSQL Production)

**On Linux or Windows (with PostgreSQL installed):**

1. **Test SQL Script**
   ```bash
   # Test on local PostgreSQL
   psql postgresql://postgres:@localhost:5432/enigma_pg < schema_changes.sql
   ```

2. **Verify Changes**
   ```sql
   -- Connect to database
   \c enigma_pg
   
   -- Check tables
   \dt enigma.*
   
   -- Describe table
   \d enigma.table_name
   
   -- Check functions
   \df enigma.*
   ```

3. **Check Functions/Views**
   - Verify function logic with test queries
   - Test views with sample data
   - Check for errors in function execution

4. **Apply to Production**
   - Render.com PostgreSQL has automated backups
   - Apply changes via connection string from Render dashboard
   - Or use database migration tools (Alembic, etc.)

5. **Verify Production**
   - Run test queries on production database
   - Check Flask application functionality
   - Monitor logs for errors

6. **Commit Schema Changes**
   ```bash
   git add "migrations/" # or schema files
   git commit -m "schema: description of changes"
   git push origin master
   ```

### For Documentation Changes

**On Windows or Linux:**

1. **Review Changes**
   - Spell check
   - Verify markdown formatting
   - Check links and references

2. **Preview Markdown**
   ```bash
   # Using markdown viewer or GitHub preview
   ```

3. **Commit Changes**
   ```bash
   git add "*.md"
   git commit -m "docs: Update documentation - description"
   git push origin master
   ```

## Testing Framework (Flask)

**Flask Testing Infrastructure:**
- Custom Python test suite in `tests/`
- 64 routes in test configuration
- HTML normalization for comparison
- Archived ASP outputs as ground truth (historical reference only)

**Running Tests:**
```bash
# Test specific route
uv run python tests/test_routes.py --route searchpeople

# Test all configured routes
uv run python tests/test_routes.py

# Verbose output
uv run python tests/test_routes.py --verbose
```

**Important:** ASP comparison testing no longer possible (original server shut down Oct 31, 2025). Tests use archived outputs from `tests/ground_truth/` and `archive/` directories.

## Quality Assurance Approach

### For Flask Routes
1. **Local testing** - Test route in development server
2. **Automated tests** - Run test suite if route is configured
3. **Browser testing** - Manually verify functionality
4. **Database queries** - Verify correct data retrieval
5. **Production testing** - Test on Render.com after deployment
6. **Monitor logs** - Check Render.com logs for errors

### For Scrapers
1. **Run scraper manually** - Best test is actual execution
2. **Check error emails** - ErrMail function sends alerts
3. **Verify log entries** - GetLog/PutLog track progress
4. **Inspect database** - Query tables to verify data updates
5. **Compare with previous runs** - Check for anomalies

### For SQL Changes (PostgreSQL)
1. **Test on local PostgreSQL first**
2. **Backup exists** (Render.com automated backups)
3. **Monitor application after changes**
4. **Have rollback plan ready**

## Code Review Checklist

Before committing changes:

### Flask Routes
- [ ] Route tested locally
- [ ] SQL queries use parameterized queries (prevent SQL injection)
- [ ] Input validation uses asp_helpers (get_int, get_str, get_bool)
- [ ] Template renders correctly
- [ ] Mobile responsive design
- [ ] Error handling present
- [ ] Docstring explains route functionality
- [ ] Comments explain complex queries
- [ ] No hardcoded credentials

### VB.NET Scrapers
- [ ] Compiles without errors (x64 platform)
- [ ] References are correct (ADODB, ScraperKit, JSONkit)
- [ ] Error handling uses ErrMail function
- [ ] Logging uses GetLog/PutLog
- [ ] SQL strings use Apos() for escaping
- [ ] Dates converted with MSdate()
- [ ] Database connections properly closed
- [ ] Comments explain business logic

### SQL (PostgreSQL)
- [ ] Syntax is valid for PostgreSQL
- [ ] Indexes are appropriate
- [ ] Foreign keys maintain referential integrity
- [ ] Functions use PostgreSQL syntax
- [ ] Schema qualification (enigma.table_name)
- [ ] Character set is UTF8
- [ ] Tested on local PostgreSQL first

## Deployment Workflow

### Flask Application (Render.com Production)

**Automatic Deployment:**
1. Commit changes to master branch
   ```bash
   git push origin master
   ```

2. GitHub webhook triggers Render.com deployment
3. Render runs build command: `uv sync --frozen && uv cache prune --ci`
4. Zero-downtime rolling deploy
5. Health check validation
6. Automatic rollback on failure

**Deployment typically completes in 2-3 minutes.**

**Manual Verification:**
1. Check Render.com dashboard for deployment status
2. Test route on production: https://webb-site.onrender.com
3. Check logs in Render dashboard
4. Monitor for errors

### Scrapers (Windows Production Server)
1. Build executable in Visual Studio (Release, x64)
2. Copy executable to production server
3. Test manual execution
4. Update Task Scheduler if timing changed
5. Monitor first scheduled run
6. Check error emails and logs

### Database (PostgreSQL on Render.com)
1. Automated daily backups by Render
2. Apply schema changes during low-traffic period
3. Verify application functionality
4. Monitor logs for errors

## Post-Deployment Monitoring

### For Flask Routes
- Check Render.com logs for errors
- Monitor response times
- Watch for user error reports
- Check database query performance
- Monitor memory and CPU usage

### For Scrapers
- Check email for error reports daily
- Review log table for completion status
- Monitor data freshness (latest dates)
- Watch for anomalies in data counts

### For Database
- Check backup status (Render dashboard)
- Monitor disk space usage
- Review slow query log
- Monitor connection counts

## When Things Go Wrong

### Flask Errors
1. Check Render.com logs in dashboard
2. Check local development logs
3. Test route locally to reproduce
4. Check database connectivity
5. Review SQL queries for errors
6. Fix code and push (auto-deploys)
7. Monitor deployment in Render dashboard

### Scraper Failures
1. Check error email for details
2. Review log table for last successful run
3. Check source website for changes
4. Verify database connectivity
5. Run manually with debug output
6. Fix code and redeploy

### Database Issues
1. Check Render.com database status
2. Review connection pool settings
3. Verify disk space (Render dashboard)
4. Check for slow queries
5. Restore from backup if necessary (Render backups)

## Functional Programming Preference

Per user instructions, prefer **functional programming** approach:

- Use pure functions where possible
- Minimize side effects
- Avoid mutable state when practical
- Heavy use of data transformation functions
- Examples in asp_helpers: `get_int()`, `get_str()`, `rem_space()`
- Examples in ScraperKit (VB.NET): `Apos()`, `CleanStr()`, `DBdate()`

## Final Checklist

Before marking task complete:

- [ ] Code tested locally (Flask) or compiles (VB.NET)
- [ ] Changes committed to git with clear message
- [ ] Documentation updated if needed
- [ ] No hardcoded credentials or private data
- [ ] Functional programming approach used where applicable
- [ ] Code follows existing conventions
- [ ] SQL injection prevented (parameterized queries)
- [ ] For Flask: deployment verified on Render.com
- [ ] For scrapers: tested on Windows
- [ ] Monitoring in place for production changes
