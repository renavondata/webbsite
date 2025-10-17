# Task Completion Workflow

## Important: Windows vs Linux Environment

This project is designed for **Windows development**. The current Linux environment can be used for:
- Code browsing and exploration
- Documentation updates
- SQL script editing
- Repository management (git operations)

**Cannot be done on Linux:**
- Building/compiling VB.NET scrapers (requires Visual Studio 2022)
- Testing Classic ASP pages (requires IIS)
- Running scrapers (requires Windows ODBC and MySQL setup)
- Using Access frontend (requires Microsoft Access)

## When Task is Completed

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

### For Code Changes (Classic ASP Pages)

**On Windows Development Machine with IIS:**

1. **Deploy to IIS**
   - Copy .asp files to IIS web directory
   - Changes take effect immediately (interpreted language)

2. **Test in Browser**
   - Navigate to the page
   - Test all query parameters
   - Verify database connections work
   - Check for VBScript errors
   - Test with different user privileges (if applicable)

3. **Validate Output**
   - Check HTML rendering
   - Verify data accuracy from database
   - Test CSV exports if applicable
   - Check mobile responsive design

4. **Check Performance**
   - Monitor page load times
   - Check for slow queries
   - Verify caching is working

5. **Commit Changes**
   ```bash
   git add "Webb-site ASP files/..."
   git commit -m "description"
   git push origin <branch>
   ```

**No Testing on Linux:**
- Cannot run IIS on Linux
- Can only review code and commit changes

### For SQL Schema Changes

**On Windows or Linux (if MySQL installed):**

1. **Test SQL Script**
   ```bash
   # Dry run on test database
   mysql -u root -p test_database < schema_changes.sql
   ```

2. **Verify Changes**
   ```sql
   USE test_database;
   SHOW TABLES;
   DESCRIBE table_name;
   SHOW TRIGGERS;
   ```

3. **Check Triggers/Procedures**
   - Verify trigger logic with INSERT/UPDATE tests
   - Test stored procedures with sample data
   - Check for errors in trigger execution

4. **Backup Production**
   ```bash
   mysqldump -u root -p production_db > backup_$(date +%Y%m%d).sql
   ```

5. **Apply to Production**
   ```bash
   mysql -u root -p production_db < schema_changes.sql
   ```

6. **Verify Production**
   - Run test queries
   - Check application functionality
   - Monitor error logs

7. **Commit Schema Changes**
   ```bash
   git add "Setting up the Webb-site database/..."
   git commit -m "description"
   git push origin <branch>
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
   git commit -m "Update documentation: description"
   git push origin <branch>
   ```

## No Formal Testing Framework

**Important:** This project does NOT have:
- Unit tests
- Integration tests
- Automated test suites
- CI/CD pipelines
- Linting tools
- Code formatters

**Why?**
- Legacy codebase (35 years of history)
- VB.NET and Classic ASP lack modern testing frameworks
- Data scrapers are tested by running and verifying results
- ASP pages are tested manually in browser

## Quality Assurance Approach

### For Scrapers
1. **Run scraper manually** - best test is actual execution
2. **Check error emails** - ErrMail function sends alerts
3. **Verify log entries** - GetLog/PutLog track progress
4. **Inspect database** - query tables to verify data updates
5. **Compare with previous runs** - check for anomalies

### For ASP Pages
1. **Browser testing** - manually test all functionality
2. **Check IIS logs** - monitor for errors
3. **Database queries** - verify correct data retrieval
4. **Cross-browser testing** - test on different browsers
5. **Mobile testing** - verify responsive design

### For SQL Changes
1. **Test on non-production database first**
2. **Backup before applying to production**
3. **Monitor application after changes**
4. **Have rollback plan ready**

## Code Review Checklist

Before committing changes:

### VB.NET Scrapers
- [ ] Compiles without errors (x64 platform)
- [ ] References are correct (ADODB, ScraperKit, JSONkit)
- [ ] Error handling uses ErrMail function
- [ ] Logging uses GetLog/PutLog
- [ ] SQL strings use Apos() for escaping
- [ ] Dates converted with MSdate()
- [ ] Database connections properly closed
- [ ] Comments explain business logic

### Classic ASP
- [ ] No syntax errors (test in browser)
- [ ] Database connections opened and closed properly
- [ ] SQL injection prevented (use parameterization or escape)
- [ ] Error handling present
- [ ] Authentication checked for secure pages
- [ ] Output is HTML-escaped to prevent XSS
- [ ] Comments explain complex queries

### SQL
- [ ] Syntax is valid
- [ ] Indexes are appropriate
- [ ] Foreign keys maintain referential integrity
- [ ] Triggers are efficient (not called recursively)
- [ ] Character set is utf8mb4
- [ ] Backup exists before applying

## Deployment Workflow

### Scrapers (Windows Production Server)
1. Build executable in Visual Studio (Release, x64)
2. Copy executable to production server
3. Test manual execution
4. Update Task Scheduler if timing changed
5. Monitor first scheduled run
6. Check error emails and logs

### ASP Pages (Windows Web Server)
1. Copy .asp files to IIS directory
2. Test immediately (no compilation needed)
3. Check IIS logs for errors
4. Monitor page load times

### Database (MySQL Server)
1. Backup current database
2. Apply schema changes during low-traffic period
3. Verify application functionality
4. Keep backup until confirmed working

## Post-Deployment Monitoring

### For Scrapers
- Check email for error reports daily
- Review log table for completion status
- Monitor data freshness (latest dates)
- Watch for anomalies in data counts

### For Web Pages
- Monitor IIS logs for errors
- Check page load performance
- Watch for user error reports
- Monitor database query performance

### For Database
- Check replication status (master-slave)
- Monitor disk space usage
- Review slow query log
- Check backup completion

## When Things Go Wrong

### Scraper Failures
1. Check error email for details
2. Review log table for last successful run
3. Check source website for changes
4. Verify database connectivity
5. Run manually with debug output
6. Fix code and redeploy

### ASP Errors
1. Check IIS error logs
2. Enable "Send Errors to Browser" temporarily
3. Check database connection
4. Review SQL queries for errors
5. Fix code (takes effect immediately)

### Database Issues
1. Check replication status
2. Review error log
3. Verify disk space
4. Check for corrupted tables
5. Restore from backup if necessary

## Functional Programming Preference

Per user instructions, prefer **functional programming** approach:

- Use pure functions where possible
- Minimize side effects
- Avoid mutable state when practical
- Heavy use of data transformation functions
- Examples in ScraperKit: `Apos()`, `CleanStr()`, `DBdate()`

## Final Checklist

Before marking task complete:

- [ ] Code compiles/runs without errors (if testable)
- [ ] Changes committed to git with clear message
- [ ] Documentation updated if needed
- [ ] No hardcoded credentials or private data
- [ ] Functional programming approach used where applicable
- [ ] Code follows existing conventions
- [ ] Database changes tested on non-production first
- [ ] Backup exists for any destructive changes
