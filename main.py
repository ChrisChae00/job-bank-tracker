from scraper import run_selenium_scraper
from cleaner import clean_jobs
import db_manager as db_mgr


if __name__ == "__main__":
    # Initialize database
    db_mgr.init_db()
    # Run scraper
    run_selenium_scraper()
    # Clean jobs
    clean_jobs()