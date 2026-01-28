import sqlite3
from datetime import datetime
from contants import DB_FILE



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


