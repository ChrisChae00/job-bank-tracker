
from scraper import run_selenium_scraper
from cleaner import clean_data


if __name__ == "__main__":
    job_listings_file = 'job_listings.csv'
    cleaned_file = 'cleaned_job_listings.csv'
    run_selenium_scraper(job_listings_file)
    clean_data(job_listings_file, cleaned_file)