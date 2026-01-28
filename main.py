from scraper import run_selenium_scraper
from cleaner import clean_data
from contants import JOB_LISTINGS_CSV, CLEANED_JOB_LISTINGS_CSV
import db_manager as db_mgr


if __name__ == "__main__":
    db_mgr.init_db()
    run_selenium_scraper()
    # clean_data(JOB_LISTINGS_CSV, CLEANED_JOB_LISTINGS_CSV)