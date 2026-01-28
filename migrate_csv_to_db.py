import csv
import sqlite3
from datetime import datetime
import db_manager as db_mgr
from contants import DB_FILE, JOB_LISTINGS_CSV
import os

def migrate():

    # 1. Connect and drop existing table
    print(f"Connecting to {DB_FILE}...")
    conn = sqlite3.connect(DB_FILE)
    cursor = conn.cursor()
    
    print("Dropping existing jobs table...")
    cursor.execute("DROP TABLE IF EXISTS jobs")
    conn.commit()
    conn.close()

    # 2. Re-initialize DB
    print("Re-initializing database...")
    db_mgr.init_db()

    # 3. Read CSV and Insert
    if not os.path.exists(JOB_LISTINGS_CSV):
        print(f"Error: {JOB_LISTINGS_CSV} not found.")
        return

    print(f"Reading data from {JOB_LISTINGS_CSV}...")
    jobs_to_import = []
    
    # utf-8-sig to handle BOM if present
    with open(JOB_LISTINGS_CSV, mode='r', encoding='utf-8-sig') as f:
        reader = csv.DictReader(f)
        for row in reader:
            # Prepare data for save_jobs_to_db format or custom insert
            jobs_to_import.append({
                'id': row['id'],
                'title': row['title'],
                'date_posted': row['date_posted'],
                'location': row['location'],
                'salary': row['salary']
            })

    print(f"Total jobs to migrate: {len(jobs_to_import)}")
    
    # 4. Save to DB
    if jobs_to_import:
        db_mgr.save_jobs_to_db(jobs_to_import)
        print("Migration completed successfully!")
    else:
        print("No data found in CSV to migrate.")

if __name__ == "__main__":
    migrate()
