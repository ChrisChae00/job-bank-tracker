
from scraper import run_selenium_scraper
from cleaner import clean_data
from contants import JOB_LISTINGS_CSV, CLEANED_JOB_LISTINGS_CSV


if __name__ == "__main__":
    run_selenium_scraper(JOB_LISTINGS_CSV)
    clean_data(JOB_LISTINGS_CSV, CLEANED_JOB_LISTINGS_CSV)