"""
Configuration for Webb-site Flask Application
"""
import os
from dotenv import load_dotenv

load_dotenv()


class Config:
    """Flask configuration from environment variables"""

    # Database
    DATABASE_URL = os.environ.get('DATABASE_URL')
    if DATABASE_URL and DATABASE_URL.startswith('postgres://'):
        # Render uses postgres://, but psycopg2 needs postgresql://
        DATABASE_URL = DATABASE_URL.replace('postgres://', 'postgresql://', 1)

    # Database Connection Pool Settings
    DB_POOL_MIN_CONN = int(os.environ.get('DB_POOL_MIN_CONN', '5'))
    DB_POOL_MAX_CONN = int(os.environ.get('DB_POOL_MAX_CONN', '20'))
    DB_CONNECT_TIMEOUT = int(os.environ.get('DB_CONNECT_TIMEOUT', '30'))

    # Flask
    SECRET_KEY = os.environ.get('SECRET_KEY', 'dev-secret-key-change-in-production')

    # App settings
    DEBUG = os.environ.get('FLASK_DEBUG', 'False').lower() == 'true'

    # SQL Logging - logs all SQL queries when enabled (development only)
    SQL_ECHO = os.environ.get('SQL_ECHO', 'False').lower() == 'true'
