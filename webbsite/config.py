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

    # Flask
    SECRET_KEY = os.environ.get('SECRET_KEY', 'dev-secret-key-change-in-production')

    # App settings
    DEBUG = os.environ.get('FLASK_DEBUG', 'False').lower() == 'true'
