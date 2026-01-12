import os
import requests
import csv
import time
import random
from bs4 import BeautifulSoup

# Configuration
BASE_URL = "https://www.jobbank.gc.ca/jobsearch/jobsearch?fcid=3001&fcid=3019&fcid=3739&fcid=5395&fcid=15885&fcid=22534&fcid=22887&fcid=25803&fcid=296425&fcid=296531&fcid=297197&fcid=297520&fn21=12010&fn21=20012&fn21=21211&fn21=21223&fn21=21232&term=data&term=software+developer&sort=M&fprov=AB&fprov=BC&fprov=ON&fprov=QC"
AJAX_URL = "https://www.jobbank.gc.ca/jobsearch/job_search_loader.xhtml"

headers = {
    "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
    "X-Requested-With": "XMLHttpRequest",
    "Accept": "text/html, */*; q=0.01",
    "Accept-Language": "en-CA,en-US;q=0.9,en;q=0.8",
    "Referer": BASE_URL, 
    "Connection": "keep-alive",
    "Sec-Fetch-Dest": "empty",
    "Sec-Fetch-Mode": "cors",
    "Sec-Fetch-Site": "same-origin",
    "Priority": "u=1"
}

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

def run_scraper():
    session = requests.Session()
    session.headers.update(headers)
    
    print("Fetching initial job listings page...")
    try:
        response = session.get(BASE_URL)
        response.raise_for_status()
    except Exception as e:
        print(f"An error occurred while fetching the initial page: {e}")
        return

    token = session.cookies.get('oam.Flash.READERMAP.TOKEN')
    print(f"Initial token: {token}")

    first_page_jobs = parse_job_listings(response.text)
    save_to_csv(first_page_jobs)
    print(f"Fetched and saved {len(first_page_jobs)} job listings from the first page.")

    # Scrape subsequent pages via AJAX
    for page in range(2, 11): 
        print(f"\n{page}th page scraping in progress...")

        try:
            ajax_response = session.get(AJAX_URL)

            if ajax_response.status_code != 200:
                print(f"Failed to fetch page {page}. Status code: {ajax_response.status_code}")
                print(f"Current cookies: {list(session.cookies.get_dict().keys())}")
                break

            new_token = session.cookies.get('oam.Flash.READERMAP.TOKEN')
            if new_token != token:
                print(f"Token updated from {token} to {new_token}")
                token = new_token
            else:
                print("Token remains unchanged.")

            new_jobs = parse_job_listings(ajax_response.text)
            if not new_jobs:
                print(f"No more job listings found on page {page}. Stopping.")
                break
                
            save_to_csv(new_jobs)
            
        except Exception as e:
            print(f"An error occurred while fetching page {page}: {e}")
            break

        sleep_time = random.uniform(3, 6)
        print(f"Sleeping for {sleep_time:.2f} seconds to mimic human behavior.")
        time.sleep(sleep_time)

if __name__ == "__main__":
    run_scraper()