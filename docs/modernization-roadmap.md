# Webb-site Modernization Roadmap

## Overview

This document outlines the strategic priorities for modernizing the Webb-site platform to enable cloud deployment, improve maintainability, and facilitate future development while preserving David Webb's 35-year legacy of financial transparency.

## Current State

**Production Environment:**
- Windows-based servers (HK master, USA slave)
- VB.NET console applications for data scraping
- MySQL 8.0 with master-slave replication
- Classic ASP web interface on IIS
- Access .accdb frontend for database editing
- Manual scheduling via Windows Task Scheduler

**Challenges:**
- Windows dependencies prevent cloud deployment
- DSN-based connections incompatible with containerized environments
- Manual configuration makes environment reproduction difficult
- Legacy technologies limit developer participation

## Strategic Priorities

### Critical Priority 1: Database Migration & Containerization

**Goal:** Enable database deployment on cloud infrastructure

**Current Blockers:**
- DSN connections don't exist in cloud environments
- Windows-specific paths and configuration
- Manual MySQL setup with my.ini editing

**Actions:**
1. Replace DSN connections with environment variable-based connection strings
2. Containerize MySQL instances using Docker
3. Document critical MySQL settings for cloud deployment (innodb_buffer_pool_size, div_precision_increment, etc.)
4. Implement cloud-native replication (AWS RDS replicas, PlanetScale, or managed MySQL)
5. Move credentials from `private.keys` to cloud secrets management (AWS Secrets Manager, Render environment variables)

**Success Criteria:**
- Database runs in Docker container locally
- Connection strings use environment variables
- Schema restoration automated via migration scripts
- No Windows dependencies

### Critical Priority 2: Replace VB.NET Scrapers

**Goal:** Cross-platform data collection that runs on Linux containers

**Current Blockers:**
- VB.NET Framework requires Windows
- Visual Studio 2022 build process
- Manual scheduling

**Migration Path:**
1. **Rewrite in Python** (recommended)
   - Python 3.11+ with requests, BeautifulSoup4, mysql-connector-python
   - Create Python equivalent of ScraperKit.vb (web requests, database helpers, error handling)
   - Maintain same logging patterns (enigma.log table)
   - Keep ErrMail error alerting pattern

2. **Implementation Sequence:**
   - Phase 1: ScraperKit utilities (GetWeb3 → requests, DBdate, Apos, ErrMail)
   - Phase 2: Quotes scraper (highest priority - CCASS depends on it)
   - Phase 3: CCASS scraper (critical for unrecoverable ownership data)
   - Phase 4: Remaining scrapers by priority

3. **Scheduling:**
   - Replace Task Scheduler with cloud-native solutions:
     - Render.com Cron Jobs
     - AWS EventBridge + Lambda
     - Celery Beat for complex workflows
   - Preserve dependency chains (CCASS must run after Quotes)

**Success Criteria:**
- Python scrapers run on Linux
- Deployed as scheduled jobs on cloud platform
- Data quality matches VB.NET output (validated via parallel runs)
- Error handling and logging preserved

### Critical Priority 3: Classic ASP → Modern Web Framework

**Goal:** Cross-platform web interface deployable on cloud

**Current Blockers:**
- Classic ASP requires IIS on Windows
- VBScript not supported on modern platforms

**Migration Path:**
1. **Python FastAPI/Flask** (recommended)
   - RESTful API exposing data endpoints
   - Preserves complex queries (recursive ownership trees, cross-holdings)
   - Easy MySQL integration via SQLAlchemy
   - Can run alongside Classic ASP during transition

2. **Phased Approach:**
   - Phase 1: API layer (FastAPI) with authentication (JWT based on mailvote schema)
   - Phase 2: Modern frontend (React/Vue) for high-traffic pages (holders.asp, quotes.asp)
   - Phase 3: Admin interface replacing Access frontend
   - Phase 4: Gradual replacement of remaining ASP pages
   - Keep Classic ASP running during transition (dual-stack)

**Success Criteria:**
- API endpoints match ASP functionality
- Authentication system preserves wsroles security model
- Frontend handles recursive ownership trees correctly
- No loss of features during migration

### High Priority 4: Infrastructure as Code

**Goal:** Reproducible environments and automated deployment

**Actions:**
1. **Database Schema Versioning:**
   - Formalize migrations (Alembic for Python, Flyway for SQL)
   - Version control triggers, stored procedures, views separately
   - Automate "structure → data → triggers" restoration sequence

2. **Container Orchestration:**
   - Docker Compose for local development
   - Render.com blueprints or Kubernetes manifests for production
   - Separate containers: database, web app, scrapers, admin interface

3. **Configuration Management:**
   - Move my.ini settings to environment variables
   - Store wsroles encryption keys in secrets manager
   - Document all required environment variables

4. **CI/CD Pipeline:**
   - GitHub Actions for automated testing
   - Build and push containers on merge to main
   - Deploy to staging automatically, production on approval

**Success Criteria:**
- New developer can set up environment with `docker-compose up`
- Deployments are automated and reproducible
- Configuration is documented and version-controlled

### High Priority 5: Decouple Access Frontend

**Goal:** Web-based database editing accessible from anywhere

**Current Blockers:**
- Access .accdb files require Windows
- Not version-controllable
- Cannot be accessed remotely

**Migration Path:**
1. **Build Web Admin Interface:**
   - Django Admin (auto-generates CRUD from models)
   - Retool/Budibase (low-code option)
   - Custom React admin panel

2. **Preserve Security Model:**
   - Implement wsroles privilege checking in web layer
   - Maintain userID tracking and ranking system
   - Preserve trigger-based access control

**Success Criteria:**
- Database editing via web browser
- Role-based access control matches current wsroles system
- Access frontend no longer required for daily operations

### Medium Priority 6: Code Organization

**Goal:** Clear project structure supporting modern development

**Target Structure:**
```
webbsite/
├── backend/
│   ├── scrapers/          # Python data collectors
│   ├── api/               # FastAPI/Flask application
│   ├── shared/            # Utilities (ScraperKit equivalent)
│   └── tests/
├── frontend/              # React/Vue web interface
├── database/
│   ├── migrations/        # Versioned schema changes
│   ├── seeds/             # Reference data
│   └── schemas/           # Current schema dumps
├── infrastructure/
│   ├── docker/            # Dockerfiles and compose files
│   └── deployment/        # Cloud deployment configs
├── docs/                  # Documentation (current)
└── legacy/                # VB.NET and ASP code (archived)
```

### Medium Priority 7: Testing & Quality

**Goal:** Confidence in changes through automated testing

**Test Coverage:**
1. **Unit Tests:**
   - Scraper data extraction logic
   - Date/currency conversion functions
   - Authentication and authorization

2. **Integration Tests:**
   - Database operations (CRUD, triggers)
   - API endpoints
   - Scraper end-to-end flows

3. **Data Validation:**
   - Schema constraints enforced
   - Referential integrity checks
   - Historical data integrity

**Success Criteria:**
- 80%+ test coverage for new code
- CI fails on test failures
- Can refactor with confidence

### Medium Priority 8: Monitoring & Observability

**Goal:** Proactive issue detection and performance visibility

**Implementation:**
1. **Structured Logging:**
   - JSON logs to stdout/stderr (cloud-native)
   - Preserve database logging for scraper state
   - Correlation IDs for request tracing

2. **Application Monitoring:**
   - Sentry for error tracking
   - DataDog/New Relic for APM
   - Render.com built-in metrics

3. **Alerting:**
   - Scraper failures (preserve ErrMail pattern)
   - Database performance issues
   - API errors and slow queries
   - Slack/PagerDuty integration

4. **Dashboards:**
   - Scraper success rates
   - Data freshness (last successful run)
   - API response times
   - Database query performance

**Success Criteria:**
- Issues detected before users report them
- Historical performance data for optimization
- Clear visibility into system health

### Low Priority 9: Authentication Modernization

**Current State:** Custom password hashing (SHA-256 + salt), token-based persistence, Captcha

**Future Considerations:**
- OAuth2/OpenID Connect for third-party login
- JWT tokens for API authentication
- Modern Captcha (hCaptcha, Cloudflare Turnstile)
- Multi-factor authentication

**Note:** Not urgent - existing system is adequately secure. Focus on higher priorities first.

## Migration Timeline

### Phase 1: Foundation (Months 1-2)
- ✅ Documentation reorganization
- Docker containers for MySQL
- Connection string refactoring
- CI/CD pipeline setup
- Python ScraperKit development

### Phase 2: Scraper Migration (Months 3-5)
- Python Quotes scraper (+ validation)
- Python CCASS scraper (+ validation)
- Cloud scheduling setup
- Parallel operation with VB.NET
- Migration of remaining scrapers

### Phase 3: API Layer (Months 4-6)
- FastAPI backend development
- Authentication implementation
- Critical endpoints (holders, quotes, events)
- Testing and performance validation
- Staging deployment

### Phase 4: Frontend Modernization (Months 6-9)
- React/Vue interface for key pages
- Admin interface (replacing Access)
- User testing
- Progressive rollout

### Phase 5: Decommission Legacy (Month 10+)
- Final validation period
- Switch DNS to new platform
- Archive Windows servers
- Monitor and optimize

## Success Metrics

1. **Availability:** 99.9% uptime (current system availability as baseline)
2. **Data Integrity:** Zero data loss during migration
3. **Performance:** Query response times ≤ current system
4. **Cost:** Cloud hosting ≤ current dedicated server costs (~$150/month)
5. **Developer Experience:** New contributor onboarded in < 1 day

## Risks & Mitigations

| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| CCASS data loss | Low | CRITICAL | Parallel systems 3+ months, daily validation |
| Performance degradation | Medium | HIGH | Benchmark all queries, optimize indexes, Redis caching |
| Scraper breakage | Medium | HIGH | Comprehensive error handling, alerting, fallbacks |
| Budget overrun | Low | MEDIUM | Start with minimal cloud resources, monitor usage |
| Developer availability | Medium | MEDIUM | Comprehensive documentation, modular architecture |

## Decision Log

**Why Python for scrapers?**
- Cross-platform, excellent scraping libraries, large developer community
- Easier to find maintainers than VB.NET
- Good cloud platform support

**Why FastAPI/Flask for web?**
- Python consistency with scrapers
- Fast development, excellent documentation
- Strong MySQL support via SQLAlchemy

**Why not ASP.NET Core?**
- Overkill for this use case
- Heavier resource requirements
- Smaller pool of contributors

**Why Render.com as example platform?**
- Simple deployment model
- Managed databases
- Cron job support
- Free tier for experimentation
- Similar alternatives: Heroku, Railway, Fly.io

## Next Steps

1. ✅ **Complete documentation reorganization** (this phase)
2. Set up Docker development environment
3. Create Python ScraperKit prototype
4. Benchmark critical database queries
5. Design FastAPI application structure

See [migration/cloud-roadmap.md](migration/cloud-roadmap.md) for detailed implementation plans.

---

*This roadmap honors David Webb's legacy by ensuring the Webb-site platform continues to provide free, public access to Hong Kong financial data for decades to come.*
