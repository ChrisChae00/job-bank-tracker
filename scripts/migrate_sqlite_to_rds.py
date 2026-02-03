import sqlite3
from src import db_manager
import os

# Configuration
SQLITE_DB_PATH = 'data/job_listings.db' # Path to your old SQLite file. Adjust if needed.

def migrate_data():
    """
    Migrates data from SQLite 'jobs' table to AWS RDS using db_manager.
    """
    if not os.path.exists(SQLITE_DB_PATH):
        print(f"SQLite database not found at {SQLITE_DB_PATH}")
        return

    print("🚀 Starting migration from SQLite to AWS RDS...")

    # 1. Read data from SQLite
    try:
        conn = sqlite3.connect(SQLITE_DB_PATH)
        conn.row_factory = sqlite3.Row 
        
        cursor = conn.cursor()
        
        print("Reading jobs from SQLite...")
        # Select columns matching the structure expected by db_manager.save_jobs_to_db
        # Note: We rely on the db_manager to handle current timestamp for 'scraped_at' if it's missing,
        # or we could migrate the old date if it was stored. 
        # Assuming the old SQLite had: id, title, date_posted, location, salary
        cursor.execute("SELECT id, title, date_posted, location, salary FROM jobs")
        rows = cursor.fetchall()
        
        job_list = []
        for row in rows:
            job_list.append({
                'id': row['id'],
                'title': row['title'],
                'date_posted': row['date_posted'],
                'location': row['location'],
                'salary': row['salary']
            })
            
        print(f"Found {len(job_list)} jobs in SQLite.")
        
    except Exception as e:
        print(f"Error reading from SQLite: {e}")
        return
    finally:
        if conn:
            conn.close()

    # 2. Write data to AWS RDS
    if job_list:
        print("Saving to AWS RDS...")
        try:
            # We reuse the existing function which handles UPSERT (Insert or Ignore)
            db_manager.save_jobs_to_db(job_list)
            print("Migration completed successfully!")
        except Exception as e:
            print(f"Error saving to RDS: {e}")
    else:
        print("No data to migrate.")

if __name__ == "__main__":
    # Ensure RDS tables exist before migrating
    db_manager.init_db()
    migrate_data()
