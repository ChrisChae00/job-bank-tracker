import os
from dotenv import load_dotenv
from sqlalchemy import create_engine, text, Table, Column, String, MetaData, TIMESTAMP, Float, Date
from sqlalchemy.dialects.postgresql import insert
from datetime import datetime
import logging
from src.validators import CleanedJobValidator, RawJobValidator
from pydantic import ValidationError

# load environment variables from .env file
load_dotenv()

# Configure logger for this module
logger = logging.getLogger(__name__)

# generate db connection URL
# Note: Removed the extra port variable to avoid connection string errors like 'host::5432'
DB_URL = f"postgresql://{os.getenv('DB_USER')}:{os.getenv('DB_PASSWORD')}@{os.getenv('DB_HOST')}:5432/{os.getenv('DB_NAME')}"

# create database engine
engine = create_engine(DB_URL)
metadata = MetaData()

# define jobs table
jobs_table = Table(
    'jobs', metadata,
    Column('id', String, primary_key=True),
    Column('title', String),
    Column('date_posted', String),
    Column('location', String),
    Column('salary', String),
    Column('scraped_at', TIMESTAMP)
)

# define cleaned jobs table
jobs_cleaned_table = Table(
    'jobs_cleaned', metadata,
    Column('id', String, primary_key=True),
    Column('title', String),
    Column('date_posted', Date), # Using optimized Date type
    Column('city', String),
    Column('province', String),
    Column('min_salary', Float),
    Column('max_salary', Float),
    Column('salary_period', String),
    Column('cleaned_at', TIMESTAMP)
)

def init_db():
    """
    Initialize the database and create tables if they don't exist.
    """
    try:
        metadata.create_all(engine)
        logger.info("Database initialized successfully.")
    except Exception as e:
        logger.error(f"Error initializing database: {e}")

def save_jobs_to_db(job_list):
    """
    Save raw job listings to the database.
    Uses 'INSERT ON CONFLICT DO NOTHING' to handle duplicates efficiently.
    """
    if not job_list:
        logger.info("No jobs to save.")
        return
    
    # Validate each job before inserting
    valid_jobs = []
    invalid_count = 0

    for job in job_list:
        try:
            validated = RawJobValidator.model_validate(job)
            valid_jobs.append(validated.model_dump())
        except ValidationError as e:
            invalid_count += 1
            logger.warning(f"Validation failed for job {job.get('id', 'UNKNOWN')}: {e}")

    if invalid_count > 0:
        logger.warning(f"{invalid_count} jobs failed validation and were skipped.")
    
    if not valid_jobs:
        logger.warning("No valid jobs to save after validation.")
        return
    
    try:
        with engine.connect() as conn:
            # PostgreSQL: INSERT ... ON CONFLICT DO NOTHING
            stmt = insert(jobs_table).values([
                {
                    'id': job['id'],
                    'title': job['title'],
                    'date_posted': job['date_posted'],
                    'location': job['location'],
                    'salary': job['salary'],
                    'scraped_at': datetime.now()
                }
                for job in valid_jobs
            ])

            # Do not update existing jobs
            stmt = stmt.on_conflict_do_nothing(index_elements=['id'])
            
            # Execute the statement
            result = conn.execute(stmt)
            conn.commit()
            logger.info(f"{result.rowcount} new jobs saved to database.")

    except Exception as e:
        logger.error(f"Error saving jobs to database: {e}")

def get_existing_job_ids():
    """
    Fetch all job IDs currently in the database to prevent duplicate scraping.
    """
    try:
        with engine.connect() as conn:
            result = conn.execute(text("SELECT id FROM jobs"))
            return {row._mapping['id'] for row in result}
    except Exception as e:
        logger.error(f"Error fetching existing IDs: {e}")
        return set()

def get_unprocessed_jobs():
    """
    Retrieve jobs that exist in 'jobs' table but not in 'jobs_cleaned' table.
    """
    query = text("""
        SELECT j.id, j.title, j.date_posted, j.location, j.salary
        FROM jobs j
        LEFT JOIN jobs_cleaned jc ON j.id = jc.id
        WHERE jc.id IS NULL
    """)

    try:
        with engine.connect() as conn:
            result = conn.execute(query)
            # Use mappings() to safely access by name or index access for safety
            return [
                {
                    'id': row._mapping['id'],
                    'title': row._mapping['title'],
                    'date_posted': row._mapping['date_posted'],
                    'location': row._mapping['location'],
                    'salary': row._mapping['salary']
                }
                for row in result
            ]
    except Exception as e:
        logger.error(f"Error fetching unprocessed jobs: {e}")
        return []

def save_cleaned_jobs_to_db(cleaned_jobs):
    """
    Insert cleaned job data into the jobs_cleaned table.
    PostgreSQL: INSERT ... ON CONFLICT DO NOTHING
    """
    if not cleaned_jobs:
        logger.info("No cleaned jobs to save.")
        return
    
    valid_cleaned_jobs = []
    invalid_count = 0

    for job in cleaned_jobs:
        try:
            validated = CleanedJobValidator.model_validate(job)
            valid_cleaned_jobs.append(validated.model_dump())
        except ValidationError as e:
            invalid_count += 1
            logger.warning(f"Validation failed for cleaned job {job.get('id', 'UNKNOWN')}: {e}")
    
    if invalid_count > 0:
        logger.warning(f"{invalid_count} cleaned jobs failed validation and were skipped.")
    
    if not valid_cleaned_jobs:
        logger.warning("No valid cleaned jobs to save after validation.")
        return
    
    try:
        with engine.connect() as conn:
            # PostgreSQL: INSERT ... ON CONFLICT DO NOTHING
            stmt = insert(jobs_cleaned_table).values([
                {
                    'id': job['id'],
                    'title': job['title'],
                    'date_posted': job['date_posted'],
                    'city': job['city'],
                    'province': job['province'],
                    'min_salary': job['min_salary'],
                    'max_salary': job['max_salary'],
                    'salary_period': job['salary_period'],
                    'cleaned_at': job['cleaned_at']
                }
                for job in valid_cleaned_jobs
            ])

            # Do not update existing jobs
            stmt = stmt.on_conflict_do_nothing(index_elements=['id'])
            
            # Execute the statement
            result = conn.execute(stmt)
            conn.commit()
            logger.info(f"{result.rowcount} new cleaned jobs saved to database.")

    except Exception as e:
        logger.error(f"Error saving cleaned jobs to database: {e}")