import sqlite3
from datetime import datetime
from src.constants import DB_FILE
import os

def init_db():
    # connect to database
    conn = sqlite3.connect(DB_FILE)
    cursor = conn.cursor()

    # set up database id,title,date_posted,location,salary
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS jobs (
            id TEXT PRIMARY KEY,
            title TEXT,
            date_posted TEXT,
            location TEXT,
            salary TEXT,
            scraped_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        )
    """)

    conn.commit()
    conn.close()
    print("Database initialized successfully.")

def save_jobs_to_db(job_list):
    # save collected job listings to database
    if not job_list:
        print("No jobs to save.")
        return
    
    conn = sqlite3.connect(DB_FILE)
    cursor = conn.cursor()

    # insert or ignore jobs into database
    # if job id already exists, skip it
    query = """
        INSERT OR IGNORE INTO jobs (id, title, date_posted, location, salary, scraped_at)
        VALUES (?, ?, ?, ?, ?, ?)
    """
    data = [(job['id'], job['title'], job['date_posted'], job['location'], job['salary'], datetime.now()) for job in job_list]

    cursor.executemany(query, data)
    new_jobs_count = cursor.rowcount

    conn.commit()
    conn.close()
    print(f"Saved {new_jobs_count} new jobs to database.")

def get_all_jobs():
    # get all jobs from database
    conn = sqlite3.connect(DB_FILE)
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM jobs")
    rows = cursor.fetchall()
    conn.close()
    return rows

def get_existing_job_ids():
    # get all job ids from database
    conn = sqlite3.connect(DB_FILE)
    cursor = conn.cursor()
    cursor.execute("SELECT id FROM jobs")
    ids = {row[0] for row in cursor.fetchall()}
    conn.close()
    return ids

def init_cleaned_jobs_table():
    """
    Initialize the jobs_cleaned table if it doesn't exist.
    """
    
    conn = sqlite3.connect(DB_FILE)
    cursor = conn.cursor()

    # set up database jobs_cleaned
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS jobs_cleaned (
            id TEXT PRIMARY KEY,
            title TEXT,
            date_posted DATE,
            city TEXT,
            province TEXT,
            min_salary REAL,
            max_salary REAL,
            salary_period TEXT,
            cleaned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
            FOREIGN KEY (id) REFERENCES jobs (id)
        )
    """)

    conn.commit()
    conn.close()
    print("jobs_cleaned table initialized successfully.")


def get_unprocessed_jobs():
    """
    Retrieve jobs from the 'jobs' table that have not yet been cleaned.
    Returns jobs where the id does not exist in jobs_cleaned.
    """
    conn = sqlite3.connect(DB_FILE)
    cursor = conn.cursor()
    cursor.execute("""
        SELECT j.id, j.title, j.date_posted, j.location, j.salary
        FROM jobs j
        LEFT JOIN jobs_cleaned jc ON j.id = jc.id
        WHERE jc.id IS NULL
    """)

    rows = cursor.fetchall()
    conn.close()
    # Convert to list of dictionaries for easier processing
    columns = ['id', 'title', 'date_posted', 'location', 'salary']
    return [dict(zip(columns, row)) for row in rows]

def save_cleaned_jobs_to_db(cleaned_jobs):
    """
    Insert cleaned job data into the jobs_cleaned table.
    Uses INSERT OR REPLACE to handle re-processing if needed.
    """
    if not cleaned_jobs:
        print("No cleaned jobs to save.")
        return
    
    conn = sqlite3.connect(DB_FILE)
    cursor = conn.cursor()
    
    # Insert or replace cleaned jobs into database
    query = """
        INSERT OR REPLACE INTO jobs_cleaned (
            id, title, date_posted, city, province, min_salary, max_salary, salary_period, cleaned_at
        )
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)  
    """
    data = [
        (
            job['id'], 
            job['title'], 
            job['date_posted'], 
            job['city'], 
            job['province'], 
            job['min_salary'], 
            job['max_salary'], 
            job['salary_period'], 
            datetime.now()
        ) 
        for job in cleaned_jobs
    ]

    cursor.executemany(query, data)
    new_jobs_count = cursor.rowcount

    conn.commit()
    conn.close()
    print(f"Saved {new_jobs_count} new cleaned jobs to database.")