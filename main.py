
from scraper import run_selenium_scraper
from cleaner import clean_data


if __name__ == "__main__":
    run_selenium_scraper()
    clean_data('job_listings.csv', 'cleaned_job_listings.csv')