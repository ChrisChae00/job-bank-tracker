import os
import time
import random
from bs4 import BeautifulSoup
from src import db_manager as db_mgr

# Selenium Imports
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from webdriver_manager.chrome import ChromeDriverManager
from selenium.common.exceptions import TimeoutException, StaleElementReferenceException, ElementClickInterceptedException
from selenium.webdriver.common.action_chains import ActionChains

# Configuration
BASE_URL = "https://www.jobbank.gc.ca/jobsearch/jobsearch?fcid=3001&fcid=3019&fcid=3739&fcid=5395&fcid=15885&fcid=22534&fcid=22887&fcid=25803&fcid=296425&fcid=296531&fcid=297197&fcid=297520&fn21=12010&fn21=20012&fn21=21211&fn21=21223&fn21=21232&fprov=AB&fprov=BC&fprov=ON&fprov=QC&page=1&sort=D&term=data&term=software+developer&term=data+engineer"

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

def load_existing_ids(filename):
    if not os.path.exists(filename):
        return set()
    
    existing_ids = set()
    try:
        with open(filename, mode='r', encoding='utf-8-sig') as csvfile:
            reader = csv.DictReader(csvfile, fieldnames=['id'])
            for row in reader:
                existing_ids.add(row['id'])
        print(f"Loaded {len(existing_ids)} existing job IDs from {filename}.")
    except Exception as e:
        print(f"Error loading existing IDs from {filename}: {e}")   
    return existing_ids


def save_to_csv(job_data_list, filename):
    if not job_data_list:
        print("No job data to save.")
        return
    
    fieldnames = job_data_list[0].keys()
    file_exists = os.path.isfile(filename)

    # Use 'a' (append) mode
    with open(filename, 'a', newline='', encoding='utf-8-sig') as output_file:
        dict_writer = csv.DictWriter(output_file, fieldnames=fieldnames)
        
        # Write header only if file is new
        if not file_exists:
            dict_writer.writeheader()
            print(f"{len(job_data_list)} job data saved to {filename} successfully.")
        else:
            print(f"{len(job_data_list)} job data appended to {filename} successfully.")
            
        dict_writer.writerows(job_data_list)

def dismiss_overlays(driver):
    """Attempt to close any overlays, popups, or cookie banners that might block clicks."""
    overlay_selectors = [
        # Common cookie consent buttons
        "button[id*='accept']",
        "button[class*='accept']",
        "button[class*='cookie']",
        "button[id*='cookie']",
        ".modal-close",
        "[data-dismiss='modal']",
        "button.close",
        # Job Bank specific selectors if any
        ".alert-dismissible .close",
    ]
    
    for selector in overlay_selectors:
        try:
            elements = driver.find_elements(By.CSS_SELECTOR, selector)
            for element in elements:
                if element.is_displayed():
                    try:
                        element.click()
                        time.sleep(0.5)
                        print(f" - -> Dismissed overlay: {selector}")
                    except Exception:
                        pass
        except Exception:
            pass


def wait_for_page_ready(driver, timeout=10):
    """Wait for page to be fully loaded and ready for interaction."""
    try:
        WebDriverWait(driver, timeout).until(
            lambda d: d.execute_script("return document.readyState") == "complete"
        )
        # Additional wait for any AJAX requests to complete
        WebDriverWait(driver, timeout).until(
            lambda d: d.execute_script(
                "return (typeof jQuery === 'undefined' || jQuery.active === 0)"
            )
        )
        return True
    except Exception:
        return True  # Continue anyway if jQuery check fails


def click_element_with_retry(driver, element, max_retries=3):
    """Try multiple click strategies to ensure the element is clicked."""
    for attempt in range(max_retries):
        try:
            # Strategy 1: Standard Selenium click
            if attempt == 0:
                element.click()
                return True
            
            # Strategy 2: JavaScript click
            elif attempt == 1:
                driver.execute_script("arguments[0].click();", element)
                return True
            
            # Strategy 3: ActionChains click with move
            else:
                actions = ActionChains(driver)
                actions.move_to_element(element).pause(0.5).click().perform()
                return True
                
        except StaleElementReferenceException:
            print(f" - -> Element became stale on click attempt {attempt + 1}. Re-fetching...")
            return None  # Signal to re-fetch element
            
        except ElementClickInterceptedException as e:
            print(f" - -> Click intercepted on attempt {attempt + 1}: {str(e)[:100]}")
            # Try to dismiss any overlays
            dismiss_overlays(driver)
            time.sleep(1)
            continue
            
        except Exception as e:
            print(f" - -> Click attempt {attempt + 1} failed: {str(e)[:100]}")
            time.sleep(0.5)
            continue
    
    return False


def more_results_button(driver, current_article_count):
    """Click the 'Show more' button with robust error handling and multiple strategies."""
    max_attempts = 5
    
    for attempt in range(1, max_attempts + 1):
        try:
            print(f" - > [{attempt}/{max_attempts}] Attempt. Looking for 'Show more' button...")
            
            # Wait for page to be ready
            wait_for_page_ready(driver)
            
            # Dismiss any overlays first
            if attempt > 1:
                dismiss_overlays(driver)
            
            # Wait for button to be present in DOM
            more_button = WebDriverWait(driver, 15).until(
                EC.presence_of_element_located((By.ID, 'moreresultbutton'))
            )
            
            # Check if button is actually visible and enabled
            if not more_button.is_displayed():
                print(f" - > [{attempt}/{max_attempts}] Button found but not visible. Scrolling...")
                driver.execute_script("arguments[0].scrollIntoView({block: 'center', behavior: 'smooth'});", more_button)
                time.sleep(2)
            
            if not more_button.is_enabled():
                print(f" - > [{attempt}/{max_attempts}] Button is disabled. May have reached end of listings.")
                return False
            
            # Scroll to element with offset to ensure it's not hidden by headers
            driver.execute_script("""
                arguments[0].scrollIntoView({block: 'center'});
                window.scrollBy(0, -100);
            """, more_button)
            time.sleep(2)
            
            # Wait for button to be clickable
            more_button = WebDriverWait(driver, 10).until(
                EC.element_to_be_clickable((By.ID, 'moreresultbutton'))
            )
            
            # Random delay before click to appear more human-like
            pre_click_delay = random.uniform(1.5, 3.5)
            print(f" - > Waiting {pre_click_delay:.1f}s before clicking (human-like delay)...")
            time.sleep(pre_click_delay)
            
            # Attempt to click with retry strategies
            click_result = click_element_with_retry(driver, more_button)
            
            if click_result is None:
                # Element was stale, continue to next attempt
                time.sleep(1)
                continue
            elif not click_result:
                print(f" - > [{attempt}/{max_attempts}] All click strategies failed.")
                time.sleep(2)
                continue
            
            print(" - > 'Show more' button clicked. Waiting for new data to load...")

            # Wait for new articles to load with explicit condition (increased timeout)
            try:
                WebDriverWait(driver, 60).until(
                    lambda d: len(d.find_elements(By.TAG_NAME, 'article')) > current_article_count
                )
                
                new_count = len(driver.find_elements(By.TAG_NAME, 'article'))
                print(f" - > New job listings loaded successfully. ({current_article_count} -> {new_count})")
                
                # Random delay after successful load
                post_load_delay = random.uniform(2, 4)
                time.sleep(post_load_delay)
                return True
                
            except TimeoutException:
                # Check if article count changed anyway (might have missed the change)
                new_count = len(driver.find_elements(By.TAG_NAME, 'article'))
                if new_count > current_article_count:
                    print(f" - > New job listings detected after timeout. ({current_article_count} -> {new_count})")
                    return True
                    
                print(f" - > [{attempt}/{max_attempts}] Timeout waiting for new job listings after click.")
                
                # Wait a bit more - the site may be slow to respond (anti-bot?)
                random_wait = random.uniform(3, 6)
                print(f" - > Waiting {random_wait:.1f}s before checking button state...")
                time.sleep(random_wait)
                
                # Re-check article count after additional wait
                new_count = len(driver.find_elements(By.TAG_NAME, 'article'))
                if new_count > current_article_count:
                    print(f" - > New job listings detected after extra wait. ({current_article_count} -> {new_count})")
                    return True
                
                # Check if button still exists and is clickable using WebDriverWait
                try:
                    btn_check = WebDriverWait(driver, 10).until(
                        EC.presence_of_element_located((By.ID, 'moreresultbutton'))
                    )
                    
                    # Scroll to button and check visibility
                    driver.execute_script("arguments[0].scrollIntoView({block: 'center'});", btn_check)
                    time.sleep(1)
                    
                    if not btn_check.is_displayed():
                        print(" - > Button exists but is hidden. May have reached end of listings.")
                        return False
                    
                    if not btn_check.is_enabled():
                        print(" - > Button is disabled. May have reached end of listings.")
                        return False
                        
                    print(f" - > Button still exists and is clickable. Retrying...")
                    
                except TimeoutException:
                    print(" - > Button not found after waiting. May have reached end of listings or page issue.")
                    # One more check with simple find
                    try:
                        driver.find_element(By.ID, 'moreresultbutton')
                        print(" - > Button found with simple find. Retrying...")
                    except Exception:
                        # Really no button
                        return False
                
                # Add random delay before retry to avoid bot detection
                random_delay = random.uniform(2, 4)
                print(f" - > Adding random delay of {random_delay:.1f}s before retry...")
                time.sleep(random_delay)
                continue

        except TimeoutException:
            print(f" - > [{attempt}/{max_attempts}] Timeout waiting for button to appear.")
            
            # Check if we've reached the end of listings (button might not exist)
            try:
                btn = driver.find_element(By.ID, 'moreresultbutton')
                if not btn.is_displayed():
                    print(" - > Button exists but is hidden. May have reached end of listings.")
                    return False
            except Exception:
                print(" - > Button not found. May have reached end of listings.")
                return False
            
            time.sleep(2)
            continue
            
        except StaleElementReferenceException:
            print(f" - > [{attempt}/{max_attempts}] Stale element. Page may have updated. Retrying...")
            time.sleep(2)
            continue
            
        except Exception as e:
            print(f" - > [{attempt}/{max_attempts}] Exception occurred: {type(e).__name__}: {str(e)[:150]}")
            time.sleep(2)
            continue

    print(f" - > [Terminating] {max_attempts} attempts reached without loading new job listings.")
    print(f" - > Failed to load new job listings after {max_attempts} attempts. Ending scraping.")
    return False

def run_selenium_scraper():
    options = webdriver.ChromeOptions()
    options.add_argument("--headless=new") # Run in headless mode
    options.add_argument("--no-sandbox")
    options.add_argument("--disable-dev-shm-usage")
    
    # Anti-bot detection options
    options.add_argument("--window-size=1920,1080")
    options.add_argument("--disable-blink-features=AutomationControlled")
    options.add_argument("user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36")
    options.add_experimental_option("excludeSwitches", ["enable-automation"])
    options.add_experimental_option('useAutomationExtension', False)

    if os.path.exists("/usr/bin/chromium"):
        # [FOR GITHUB ACTIONS] Use chromium and chromedriver
        options.binary_location = "/usr/bin/chromium"
        service = Service(executable_path="/usr/bin/chromedriver")
    else:
        # [FOR LOCAL TESTING] Use ChromeDriverManager to automatically handle the driver
        service = Service(ChromeDriverManager().install())

    driver = webdriver.Chrome(service=service, options=options)
    
    # Additional anti-detection: remove webdriver property
    driver.execute_cdp_cmd("Page.addScriptToEvaluateOnNewDocument", {
        "source": """
            Object.defineProperty(navigator, 'webdriver', {
                get: () => undefined
            });
        """
    })

    try:
        print("Starting browser and navigating to Job Bank website...")
        driver.get(BASE_URL)
        time.sleep(5)  # Initial wait for page load

        existing_ids = db_mgr.get_existing_job_ids() # get existing job ids from database

        current_session_ids = set()

        section_count = 1

        # Stop when 30 consecutive duplicates found (~1 full page of 25 jobs + margin)
        # This ensures we don't miss new jobs that might be interspersed
        MAX_CONSECUTIVE_DUPLICATE = 30
        duplicate_streak = 0

        while True:  # Adjust the range for more or fewer scrolls
            print(f"\n=== Scraping Section {section_count} ===")

            html = driver.page_source
            all_jobs = parse_job_listings(html)

            new_jobs = []
            stop_scraping = False

            for job in all_jobs:
                job_id = job['id']

                if job_id in existing_ids:
                    duplicate_streak += 1
                    print(f" - > Duplicate job found (ID: {job_id}). Consecutive duplicates: {duplicate_streak}")
                    if duplicate_streak >= MAX_CONSECUTIVE_DUPLICATE:
                        print(" - > Maximum consecutive duplicates reached. Stopping incremental scraping.")
                        stop_scraping = True
                        break

                else:
                    if duplicate_streak > 0:
                        print(f" - > New job found (ID: {job_id}). Resetting duplicate streak.")
                        duplicate_streak = 0

                    if job_id not in current_session_ids:
                        new_jobs.append(job)
                        current_session_ids.add(job_id)

            if new_jobs:
                # save_to_csv(new_jobs, file_path)
                db_mgr.save_jobs_to_db(new_jobs)

            if stop_scraping:
                break

            # Attempt to click the "More Results" button
            current_article_count = len(all_jobs)
            if not more_results_button(driver, current_article_count):
                break

            section_count += 1
    
    finally:
        print("\nIncremental scraping in descending order completed.\nTotal unique job found:", len(current_session_ids))
        driver.quit()



if __name__ == "__main__":
    # Initialize database
    db_mgr.init_db()
    # Run scraper   
    run_selenium_scraper()