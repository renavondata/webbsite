# Cloud Migration Roadmap - Detailed Implementation Plan

## Executive Summary

This document provides detailed, phase-by-phase instructions for migrating the Webb-site platform from Windows-based infrastructure to cloud-native deployment on platforms like Render.com, AWS, or similar.

**Estimated Timeline:** 10-12 months
**Estimated Cost:** $50-150/month cloud hosting (vs current dedicated servers)
**Risk Level:** Medium (mitigated by parallel operation)

## Prerequisites

Before starting migration:

1. ✅ **Documentation Complete** - All docs consolidated in `/docs`
2. **Backup Strategy** - Full backups of all MySQL schemas
3. **Development Environment** - Local Windows machine for testing
4. **Cloud Account** - Render.com, AWS, or alternative
5. **Version Control** - Git repository (GitHub/GitLab)
6. **Team Skills** - Python, Docker, basic cloud deployment

## Phase 1: Foundation (Weeks 1-8)

### Week 1-2: Development Environment Setup

**Goal:** Local Docker-based development environment

**Tasks:**

1. **Install Docker Desktop**
   - Windows/Mac: Download from docker.com
   - Linux: `sudo apt install docker.io docker-compose`

2. **Create docker-compose.yml**
   ```yaml
   version: '3.8'
   services:
     mysql:
       image: mysql:8.0.37
       environment:
         MYSQL_ROOT_PASSWORD: ${MYSQL_ROOT_PASSWORD}
         MYSQL_DATABASE: enigma
       volumes:
         - mysql_data:/var/lib/mysql
         - ./database/my.cnf:/etc/mysql/conf.d/my.cnf
       ports:
         - "3306:3306"

     phpmyadmin:
       image: phpmyadmin:latest
       environment:
         PMA_HOST: mysql
       ports:
         - "8080:80"
       depends_on:
         - mysql

   volumes:
     mysql_data:
   ```

3. **Create database/my.cnf**
   ```ini
   [mysqld]
   character-set-server = utf8mb4
   collation-server = utf8mb4_unicode_ci
   div_precision_increment = 8
   innodb_ft_min_token_size = 2
   innodb_ft_enable_stopword = 0
   activate_all_roles_on_login = ON
   innodb_buffer_pool_size = 2G  # Adjust for your machine
   ```

4. **Test Environment**
   ```bash
   docker-compose up -d
   docker-compose exec mysql mysql -uroot -p
   ```

**Deliverables:**
- Working Docker environment
- MySQL accessible at localhost:3306
- phpMyAdmin at localhost:8080

### Week 3-4: Schema Migration Scripts

**Goal:** Automated schema restoration without manual DSN setup

**Tasks:**

1. **Create database/migrations/001_create_schemas.sql**
   ```sql
   CREATE DATABASE IF NOT EXISTS enigma CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
   CREATE DATABASE IF NOT EXISTS ccass CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
   CREATE DATABASE IF NOT EXISTS mailvote CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
   CREATE DATABASE IF NOT EXISTS iplog CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
   ```

2. **Extract Schema Structure**
   ```bash
   # From current Windows server
   mysqldump --no-data --routines --triggers enigma > enigma_structure.sql
   mysqldump --no-data --routines --triggers ccass > ccass_structure.sql
   ```

3. **Create Restoration Script** (bash or Python)
   ```bash
   #!/bin/bash
   # restore_schemas.sh
   docker-compose exec -T mysql mysql -uroot -p$MYSQL_ROOT_PASSWORD < database/migrations/001_create_schemas.sql
   docker-compose exec -T mysql mysql -uroot -p$MYSQL_ROOT_PASSWORD enigma < database/schemas/enigma_structure.sql
   docker-compose exec -T mysql mysql -uroot -p$MYSQL_ROOT_PASSWORD enigma < database/schemas/enigma_triggers.sql
   docker-compose exec -T mysql mysql -uroot -p$MYSQL_ROOT_PASSWORD ccass < database/schemas/ccass_structure.sql
   ```

4. **Test Restoration**
   - Run script, verify all tables/triggers created
   - Check for "definer" errors (create user "David" if needed)

**Deliverables:**
- Automated schema restoration
- Version-controlled schema files
- Documentation of restoration process

### Week 5-6: Connection String Refactoring

**Goal:** Replace DSN connections with environment variable-based connection strings

**Tasks:**

1. **Create Python Database Module** (shared/database.py)
   ```python
   import os
   import mysql.connector
   from mysql.connector import pooling

   def get_connection_config(schema='enigma'):
       """Get connection config from environment variables"""
       return {
           'host': os.getenv('DB_HOST', 'localhost'),
           'port': int(os.getenv('DB_PORT', 3306)),
           'user': os.getenv('DB_USER', 'root'),
           'password': os.getenv('DB_PASSWORD'),
           'database': schema,
           'charset': 'utf8mb4',
           'use_unicode': True
       }

   # Connection pools
   enigma_pool = None
   ccass_pool = None

   def init_pools():
       """Initialize connection pools"""
       global enigma_pool, ccass_pool
       enigma_pool = pooling.MySQLConnectionPool(
           pool_name="enigma_pool",
           pool_size=5,
           **get_connection_config('enigma')
       )
       ccass_pool = pooling.MySQLConnectionPool(
           pool_name="ccass_pool",
           pool_size=5,
           **get_connection_config('ccass')
       )

   def get_enigma_connection():
       """Get connection from enigma pool"""
       if enigma_pool is None:
           init_pools()
       return enigma_pool.get_connection()

   def get_ccass_connection():
       """Get connection from ccass pool"""
       if ccass_pool is None:
           init_pools()
       return ccass_pool.get_connection()
   ```

2. **Create .env.example**
   ```ini
   # Database Configuration
   DB_HOST=localhost
   DB_PORT=3306
   DB_USER=root
   DB_PASSWORD=your_password_here

   # Email Configuration (for ErrMail)
   SMTP_HOST=smtp.gmail.com
   SMTP_PORT=587
   SMTP_USER=your_email@gmail.com
   SMTP_PASSWORD=your_app_password

   # Error Notification
   ERROR_EMAIL=admin@example.com
   ```

3. **Update .gitignore**
   ```.gitignore
   .env
   *.pyc
   __pycache__/
   venv/
   ```

**Deliverables:**
- Python database connection module
- Environment variable configuration
- .env.example template

### Week 7-8: CI/CD Pipeline Setup

**Goal:** Automated testing and deployment

**Tasks:**

1. **Create .github/workflows/test.yml**
   ```yaml
   name: Test

   on: [push, pull_request]

   jobs:
     test:
       runs-on: ubuntu-latest

       services:
         mysql:
           image: mysql:8.0.37
           env:
             MYSQL_ROOT_PASSWORD: test_password
             MYSQL_DATABASE: enigma
           options: >-
             --health-cmd="mysqladmin ping"
             --health-interval=10s
             --health-timeout=5s
             --health-retries=3

       steps:
         - uses: actions/checkout@v3

         - name: Set up Python
           uses: actions/setup-python@v4
           with:
             python-version: '3.11'

         - name: Install dependencies
           run: |
             python -m pip install --upgrade pip
             pip install -r requirements.txt

         - name: Run tests
           env:
             DB_HOST: 127.0.0.1
             DB_USER: root
             DB_PASSWORD: test_password
           run: |
             pytest tests/
   ```

2. **Create requirements.txt**
   ```
   mysql-connector-python==8.2.0
   requests==2.31.0
   beautifulsoup4==4.12.2
   python-dotenv==1.0.0
   pytest==7.4.3
   ```

3. **Create tests/ Directory**
   ```
   tests/
   ├── __init__.py
   ├── test_database.py
   ├── test_scrapers.py
   └── test_utilities.py
   ```

**Deliverables:**
- GitHub Actions workflow
- Basic test structure
- Automated testing on push

**Phase 1 Completion Checklist:**
- [ ] Docker environment running
- [ ] Schemas restored automatically
- [ ] Connection strings use environment variables
- [ ] CI/CD pipeline green
- [ ] Documentation updated

---

## Phase 2: Scraper Migration (Weeks 9-20)

### Week 9-10: Python ScraperKit Development

**Goal:** Python equivalent of ScraperKit.vb

**Tasks:**

1. **Create shared/scraperkit.py**
   ```python
   import requests
   import time
   import smtplib
   from email.mime.text import MIMEText
   from datetime import datetime
   import os
   from database import get_enigma_connection, get_ccass_connection

   class ScraperKit:
       def __init__(self):
           self.session = requests.Session()
           self.session.headers.update({
               'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
           })

       def get_web(self, url, cookies=None, referer=None):
           """HTTP GET with cookie and referer support"""
           headers = {}
           if referer:
               headers['Referer'] = referer

           try:
               response = self.session.get(url, cookies=cookies, headers=headers, timeout=30)
               response.raise_for_status()
               return response.text
           except requests.RequestException as e:
               self.err_mail(f"HTTP Error: {url}", str(e))
               return None

       def download(self, url, filepath, cookies=None):
           """Download file to disk"""
           try:
               response = self.session.get(url, cookies=cookies, stream=True, timeout=60)
               response.raise_for_status()
               with open(filepath, 'wb') as f:
                   for chunk in response.iter_content(chunk_size=8192):
                       f.write(chunk)
               return True
           except Exception as e:
               self.err_mail(f"Download Error: {url}", str(e))
               return False

       def db_date(self, dt):
           """Convert Python datetime to MySQL date format"""
           if dt is None:
               return None
           return dt.strftime('%Y-%m-%d')

       def db_int(self, value):
           """Safely convert to integer or None"""
           if value is None or value == '':
               return None
           try:
               return int(value)
           except (ValueError, TypeError):
               return None

       def apos(self, s):
           """SQL string escaping - DEPRECATED, use parameterized queries"""
           if s is None:
               return ''
           return str(s).replace("'", "''")

       def get_log(self, key):
           """Get value from enigma.log table"""
           conn = get_enigma_connection()
           cursor = conn.cursor(dictionary=True)
           cursor.execute("SELECT value FROM log WHERE keyname = %s", (key,))
           row = cursor.fetchone()
           cursor.close()
           conn.close()
           return row['value'] if row else None

       def put_log(self, key, value):
           """Update value in enigma.log table"""
           conn = get_enigma_connection()
           cursor = conn.cursor()
           cursor.execute(
               "INSERT INTO log (keyname, value) VALUES (%s, %s) "
               "ON DUPLICATE KEY UPDATE value = %s",
               (key, value, value)
           )
           conn.commit()
           cursor.close()
           conn.close()

       def err_mail(self, subject, body, to_address=None):
           """Send error notification email"""
           if to_address is None:
               to_address = os.getenv('ERROR_EMAIL')

           msg = MIMEText(body)
           msg['Subject'] = f"[Webb-site Scraper] {subject}"
           msg['From'] = os.getenv('SMTP_USER')
           msg['To'] = to_address

           try:
               with smtplib.SMTP(os.getenv('SMTP_HOST'), int(os.getenv('SMTP_PORT'))) as server:
                   server.starttls()
                   server.login(os.getenv('SMTP_USER'), os.getenv('SMTP_PASSWORD'))
                   server.send_message(msg)
           except Exception as e:
               # Log to file if email fails
               with open('scraper_errors.log', 'a') as f:
                   f.write(f"{datetime.now()} - {subject}: {body}\n")
                   f.write(f"Email error: {str(e)}\n\n")

       def rate_limit(self, delay=0.5):
           """Sleep between requests to avoid overloading servers"""
           time.sleep(delay)
   ```

2. **Create tests/test_scraperkit.py**
   ```python
   import pytest
   from shared.scraperkit import ScraperKit

   def test_db_date():
       kit = ScraperKit()
       from datetime import date
       assert kit.db_date(date(2025, 1, 15)) == '2025-01-15'
       assert kit.db_date(None) is None

   def test_db_int():
       kit = ScraperKit()
       assert kit.db_int('123') == 123
       assert kit.db_int('') is None
       assert kit.db_int(None) is None
       assert kit.db_int('abc') is None

   # Add more tests...
   ```

**Deliverables:**
- Python ScraperKit module
- Unit tests passing
- Documentation

### Week 11-14: Quotes Scraper Migration

**Goal:** Python version of Quotes.vb (highest priority)

**Tasks:**

1. **Create scrapers/quotes.py**
   - Study VB.NET Quotes.vb logic in detail
   - Implement GetQuotesUpdate() equivalent
   - Handle Main Board and GEM quotes
   - Process dividends and foreign currency conversion
   - Implement SetAdjAll() for total returns

2. **Parallel Validation**
   - Run both VB.NET and Python versions
   - Compare database outputs
   - Fix discrepancies

3. **Testing**
   - Unit tests for parsing logic
   - Integration tests with database
   - Test foreign dividend conversion
   - Test split adjustments

**Deliverables:**
- Working Python quotes scraper
- Validation showing identical results to VB.NET
- Comprehensive tests

### Week 15-18: CCASS Scraper Migration

**Goal:** Python version of CCASS.vb (critical for ownership data)

**Tasks:**

1. **Create scrapers/ccass.py**
   - Implement GetCCASS() equivalent
   - Check Quotes completion (MBquotesDate, GEMquotesDate)
   - Implement GetAllHoldingsAtDate()
   - Implement BigChange() logic
   - Handle dual-table updates (holdings/parthold)

2. **Critical Testing**
   - Run parallel with VB.NET for 30 days minimum
   - Daily comparison of results
   - Zero tolerance for data loss

**Deliverables:**
- Working Python CCASS scraper
- 30+ days of validated parallel operation
- Zero data discrepancies

### Week 19-20: Remaining Scrapers

Migrate in priority order:
1. GetFinancialReports
2. SFC
3. HKlawSoc
4. Others as needed

**Phase 2 Completion Checklist:**
- [ ] Python ScraperKit complete and tested
- [ ] Quotes scraper migrated and validated
- [ ] CCASS scraper migrated and validated (30+ days parallel)
- [ ] Critical scrapers migrated
- [ ] Scheduling implemented (see Phase 3)

---

## Phase 3: Cloud Deployment - Scrapers (Weeks 21-24)

### Week 21-22: Containerize Scrapers

**Goal:** Docker containers for scrapers

**Tasks:**

1. **Create Dockerfile**
   ```dockerfile
   FROM python:3.11-slim

   WORKDIR /app

   # Install MySQL client
   RUN apt-get update && apt-get install -y default-mysql-client && rm -rf /var/lib/apt/lists/*

   # Copy requirements
   COPY requirements.txt .
   RUN pip install --no-cache-dir -r requirements.txt

   # Copy application
   COPY shared/ ./shared/
   COPY scrapers/ ./scrapers/

   # Default command (override in docker-compose)
   CMD ["python", "-m", "scrapers.quotes"]
   ```

2. **Test Locally**
   ```bash
   docker build -t webbsite-scrapers .
   docker run --env-file .env --network host webbsite-scrapers python -m scrapers.quotes
   ```

**Deliverables:**
- Dockerfile for scrapers
- Successful local containerized runs

### Week 23-24: Deploy to Cloud (Render.com Example)

**Goal:** Scrapers running on cloud platform

**Tasks:**

1. **Create render.yaml**
   ```yaml
   services:
     - type: cron
       name: quotes-scraper
       env: docker
       schedule: "0 22 * * 1-5"  # 22:00 Mon-Fri
       dockerfilePath: ./Dockerfile
       dockerCommand: python -m scrapers.quotes
       envVars:
         - key: DB_HOST
           sync: false
         - key: DB_USER
           sync: false
         - key: DB_PASSWORD
           sync: false

     - type: cron
       name: ccass-scraper
       env: docker
       schedule: "0 4 * * 2-6"  # 04:00 Tue-Sat
       dockerfilePath: ./Dockerfile
       dockerCommand: python -m scrapers.ccass
       envVars:
         - key: DB_HOST
           sync: false
         - key: DB_USER
           sync: false
         - key: DB_PASSWORD
           sync: false
   ```

2. **Set Environment Variables in Render Dashboard**
   - DB_HOST, DB_USER, DB_PASSWORD
   - SMTP credentials
   - ERROR_EMAIL

3. **Monitor First Runs**
   - Check logs for errors
   - Verify database updates
   - Set up alerting

**Deliverables:**
- Scrapers deployed to cloud
- Automated scheduling working
- Monitoring and alerts configured

**Phase 3 Completion Checklist:**
- [ ] Scrapers containerized
- [ ] Deployed to cloud platform
- [ ] Scheduling working correctly
- [ ] Monitoring and alerts configured
- [ ] VB.NET scrapers can be retired (after 30+ day validation)

---

## Phase 4: Web Application Migration (Weeks 25-36)

### Week 25-28: FastAPI Backend Development

**Goal:** RESTful API exposing core functionality

**Tasks:**

1. **Create backend/main.py**
   ```python
   from fastapi import FastAPI, Depends, HTTPException
   from fastapi.middleware.cors import CORSMiddleware
   from typing import List, Optional
   import mysql.connector
   from shared.database import get_enigma_connection, get_ccass_connection

   app = FastAPI(title="Webb-site API", version="1.0.0")

   # CORS for frontend
   app.add_middleware(
       CORSMiddleware,
       allow_origins=["*"],  # Restrict in production
       allow_credentials=True,
       allow_methods=["*"],
       allow_headers=["*"],
   )

   @app.get("/api/stocks/{stock_code}")
   def get_stock(stock_code: str):
       conn = get_enigma_connection()
       cursor = conn.cursor(dictionary=True)
       cursor.execute(
           "SELECT * FROM issue WHERE stockCode = %s",
           (stock_code,)
       )
       stock = cursor.fetchone()
       cursor.close()
       conn.close()
       if not stock:
           raise HTTPException(status_code=404, detail="Stock not found")
       return stock

   @app.get("/api/holdings/{issue_id}")
   def get_holdings(issue_id: int, date: Optional[str] = None):
       conn = get_ccass_connection()
       cursor = conn.cursor(dictionary=True)
       if date:
           query = "SELECT * FROM holdings WHERE issueID = %s AND atDate = %s"
           cursor.execute(query, (issue_id, date))
       else:
           query = "SELECT * FROM holdings WHERE issueID = %s ORDER BY atDate DESC LIMIT 100"
           cursor.execute(query, (issue_id,))
       holdings = cursor.fetchall()
       cursor.close()
       conn.close()
       return holdings

   # Add more endpoints...
   ```

2. **Implement Core Endpoints**
   - `/api/stocks/{stock_code}` - Stock information
   - `/api/holdings/{issue_id}` - CCASS holdings
   - `/api/holders/{issue_id}` - Ownership tree (recursive)
   - `/api/events/{issue_id}` - Corporate events
   - `/api/quotes/{issue_id}` - Price history

3. **Testing**
   ```python
   # tests/test_api.py
   from fastapi.testclient import TestClient
   from backend.main import app

   client = TestClient(app)

   def test_get_stock():
       response = client.get("/api/stocks/0001")
       assert response.status_code == 200
       assert "stockName" in response.json()
   ```

**Deliverables:**
- FastAPI backend with core endpoints
- API documentation (automatic via FastAPI)
- Comprehensive tests

### Week 29-32: Frontend Development

**Goal:** Modern web interface for key pages

**Tasks:**

1. **Set Up React/Vue Project**
   ```bash
   npx create-react-app frontend
   cd frontend
   npm install axios react-router-dom
   ```

2. **Implement Key Pages**
   - Holdings/Ownership Tree viewer
   - Quote/Price history viewer
   - Event timeline
   - Search interface

3. **Testing**
   - Unit tests for components
   - Integration tests with API
   - User acceptance testing

**Deliverables:**
- Modern frontend for core features
- Responsive design
- User testing feedback incorporated

### Week 33-36: Authentication & Admin Interface

**Goal:** User login and database editing via web

**Tasks:**

1. **Implement JWT Authentication**
   ```python
   from fastapi import Depends, HTTPException
   from fastapi.security import OAuth2PasswordBearer
   import jwt

   oauth2_scheme = OAuth2PasswordBearer(tokenUrl="token")

   def get_current_user(token: str = Depends(oauth2_scheme)):
       try:
           payload = jwt.decode(token, SECRET_KEY, algorithms=["HS256"])
           user_id = payload.get("sub")
           if user_id is None:
               raise HTTPException(status_code=401)
           return user_id
       except jwt.PyJWTError:
           raise HTTPException(status_code=401)
   ```

2. **Admin Interface**
   - Use Django Admin or custom React admin
   - Implement wsroles privilege checking
   - Forms for editing directorships, adviserships, etc.

**Deliverables:**
- JWT-based authentication
- Admin interface replacing Access frontend
- wsroles security preserved

**Phase 4 Completion Checklist:**
- [ ] API backend deployed
- [ ] Frontend deployed
- [ ] Authentication working
- [ ] Admin interface functional
- [ ] Classic ASP can run in parallel for validation

---

## Phase 5: Production Cutover (Weeks 37-40)

### Week 37-38: Final Validation

**Tasks:**

1. **Data Integrity Checks**
   - Run parallel queries (old vs new)
   - Compare results
   - Fix any discrepancies

2. **Performance Testing**
   - Load test key endpoints
   - Optimize slow queries
   - Add caching if needed (Redis)

3. **Security Audit**
   - Review authentication
   - Check for SQL injection
   - Test authorization

**Deliverables:**
- Zero data discrepancies
- Performance meeting requirements
- Security audit passed

### Week 39: DNS Cutover

**Tasks:**

1. **Update DNS**
   - Point domain to new cloud platform
   - Keep old servers running

2. **Monitor**
   - Watch logs for errors
   - Check user feedback
   - Be ready to rollback

**Deliverables:**
- DNS pointed to new platform
- Monitoring confirms success

### Week 40: Decommission Legacy

**Tasks:**

1. **Archive Windows Servers**
   - Final backup of all data
   - Archive VB.NET and ASP code
   - Document for historical reference

2. **Clean Up**
   - Remove temporary parallel systems
   - Update documentation
   - Celebrate! 🎉

**Deliverables:**
- Legacy systems archived
- Migration complete
- Documentation updated

---

## Monitoring & Maintenance

Post-migration monitoring strategy:

### Logging
- Structured JSON logs to stdout
- Log aggregation (Datadog, CloudWatch)
- Error tracking (Sentry)

### Metrics
- Scraper success rates
- API response times
- Database query performance
- User activity

### Alerts
- Scraper failures (email/Slack)
- API errors (Sentry)
- Database issues (slow queries)
- Disk space warnings

### Backups
- Daily automated database backups
- 30-day retention
- Test restoration quarterly

---

## Budget Breakdown (Render.com Example)

**Monthly Costs:**
- Database (2GB RAM): $15/month
- Web Service (API): $7/month
- Static Site (Frontend): Free
- Background Workers (4 scrapers): $28/month (4 × $7)
- **Total: ~$50/month**

**For larger deployment:**
- Database (8GB RAM): $50/month
- Web Service (scaled): $25/month
- Background Workers (8 scrapers): $56/month
- **Total: ~$130/month**

---

## Risk Mitigation

| Risk | Mitigation |
|------|------------|
| Data loss during migration | Parallel operation 30+ days, daily validation |
| Performance degradation | Benchmark before migration, optimize queries, add caching |
| Scraper failures | Comprehensive error handling, alerting, manual fallbacks |
| Security vulnerabilities | Security audit, penetration testing, use proven libraries |
| Budget overruns | Start minimal, monitor usage, scale as needed |
| Developer availability | Comprehensive documentation, modular architecture, clear APIs |

---

## Success Criteria

Migration is successful when:

1. **Data Integrity:** Zero data loss, all queries return identical results
2. **Performance:** Response times ≤ current system
3. **Reliability:** 99.9% uptime (equivalent to current)
4. **Cost:** Monthly costs ≤ $150
5. **Maintainability:** New contributor onboarded in < 1 day
6. **Legacy Decommissioned:** Windows servers shut down with full archive

---

## Next Steps

1. Review and approve this roadmap
2. Set up development environment (Phase 1, Week 1-2)
3. Begin Docker configuration
4. Schedule regular progress reviews

**Questions? Blockers? Concerns?**

Document them and address before proceeding to next phase.

---

*This roadmap honors David Webb's legacy by ensuring Webb-site continues providing free Hong Kong financial data for generations to come.*
