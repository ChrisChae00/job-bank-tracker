import os
import requests
import csv
import time
import random
from bs4 import BeautifulSoup

# Selenium Imports
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from webdriver_manager.chrome import ChromeDriverManager
from selenium.common.exceptions import TimeoutException

# Configuration
BASE_URL = "https://www.jobbank.gc.ca/jobsearch/jobsearch?fcid=3001&fcid=3019&fcid=3739&fcid=5395&fcid=15885&fcid=22534&fcid=22887&fcid=25803&fcid=296425&fcid=296531&fcid=297197&fcid=297520&fn21=12010&fn21=20012&fn21=21211&fn21=21223&fn21=21232&term=data&term=software+developer&sort=M&fprov=AB&fprov=BC&fprov=ON&fprov=QC"
AJAX_URL = "https://www.jobbank.gc.ca/jobsearch/job_search_loader.xhtml"

def clean_text(text):
    if not text:
        return "N/A"
    return ' '.join(text.split())

def parse_job_listings(html_content):
    soup = BeautifulSoup(html_content, 'html.parser')
    jobs = soup.find_all('article')
    job_data_list = []

    for job in jobs:
        id_attr = job.get('id', '')
        if not id_attr.startswith('article-'):
            continue

        title_tag = job.find('span', class_='noctitle')
        title = title_tag.get_text(strip=True) if title_tag else "N/A"

        date_posted_tag = job.find('li', class_='date')
        date_posted = date_posted_tag.get_text(strip=True) if date_posted_tag else "N/A"

        location_tag = job.find('li', class_='location')
        if location_tag:
            # Remove hidden text often found in location tags
            inv_span = location_tag.find('span', class_='wb-inv')
            if inv_span:
                inv_span.decompose()
            location = location_tag.get_text(strip=True)
        else:
            location = "N/A"

        salary_tag = job.find('li', class_='salary')
        salary = clean_text(salary_tag.get_text(strip=True)) if salary_tag else "N/A"

        job_data_list.append({
            'id': id_attr,
            'title': title,
            'date_posted': date_posted,
            'location': location,
            'salary': salary    
        })

    return job_data_list

def save_to_csv(job_data_list, filename='job_listings.csv'):
    if not job_data_list:
        print("No job data to save.")
        return
    
    keys = job_data_list[0].keys()
    file_exists = os.path.isfile(filename)

    # Use 'a' (append) mode
    with open(filename, 'a', newline='', encoding='utf-8-sig') as output_file:
        dict_writer = csv.DictWriter(output_file, fieldnames=keys)
        
        # Write header only if file is new
        if not file_exists:
            dict_writer.writeheader()
            print(f"{len(job_data_list)} job data saved to {filename} successfully.")
        else:
            print(f"{len(job_data_list)} job data appended to {filename} successfully.")
            
        dict_writer.writerows(job_data_list)

def more_results_button(driver, current_article_count):
    try:
        more_button = WebDriverWait(driver, 10).until(
            EC.element_to_be_clickable((By.ID, 'moreresultbutton'))
        )
        driver.execute_script("arguments[0].scrollIntoView({block: 'center'});", more_button)
        time.sleep(random.uniform(1, 2))  # Random sleep to mimic human behavior
        
        more_button.click()
        print(" - > Clicked 'More Results' button (1st attempt).")

        try:
            WebDriverWait(driver, 5).until(
                lambda d: len(d.find_elements(By.TAG_NAME, 'article')) > current_article_count
            )
            print(" - > New jobs loaded successfully (after 1st attempt).")
            time.sleep(random.uniform(1, 2))  # Additional wait to ensure content is
            return True
        
        except TimeoutException:
            print(" - > No new jobs loaded yet, trying again (2nd attempt)...")
            driver.execute_script("arguments[0].scrollIntoView({block: 'center'});", more_button)
            time.sleep(random.uniform(1, 2))  # Random sleep to mimic human behavior
            more_button.click()

            webdriver_wait = WebDriverWait(driver, 10).until(
                lambda d: len(d.find_elements(By.TAG_NAME, 'article')) > current_article_count
            )
            print(" - > New jobs loaded successfully (after 2nd attempt).")
            time.sleep(random.uniform(1, 2))  # Additional wait to ensure content is
            return True
        
    except Exception as e:
        print(" - > No more 'More Results' button found or timeout reached.")
        return False
    
def run_selenium_scraper():
    options = webdriver.ChromeOptions()
    driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()), options=options)

    try:
        print("Starting browser and navigating to Job Bank website...")
        driver.get(BASE_URL)
        
        time.sleep(5)  # Initial wait for page load
        seen_ids = set() # To prevent duplicates as the page grows longer

        for i in range(5):  # Adjust the range for more or fewer scrolls
            print(f"\nProcessing Page/Section {i + 1}...")

            html = driver.page_source
            all_jobs = parse_job_listings(html)
            new_jobs = [job for job in all_jobs if job['id'] not in seen_ids]
            for job in new_jobs:
                seen_ids.add(job['id'])
            
            if new_jobs:
                save_to_csv(new_jobs)
                print(f" - > Saved {len(new_jobs)} new jobs. (Total: {len(seen_ids)})")
            else:
                print(" - > No new jobs found in current section.")

            current_article_count = len(all_jobs) 

            # Attempt to click the "More Results" button
            if not more_results_button(driver, current_article_count):
                break
    
    finally:
        print("\nScraping completed. Total unique job found:", len(seen_ids))
        driver.quit()



if __name__ == "__main__":
    run_selenium_scraper()