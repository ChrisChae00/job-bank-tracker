import re
import db_manager as db_mgr
from datetime import datetime

def parse_date(date_str):
    """
    Convert date string to ISO format (YYYY-MM-DD).
    Returns None if parsing fails.
    """
    if not date_str or date_str.lower() == "n/a":
        return None
    try:
         # Handle format like "January 27, 2026"
         parsed = datetime.strptime(date_str, "%B %d, %Y")
         return parsed.strftime("%Y-%m-%d") 
    except ValueError:
        return None

def parse_location(location_str):
    """
    Split location string into city and province.
    Example: "Toronto (ON)" -> ("Toronto", "ON")
    """
    if not location_str or location_str.lower() == "n/a":
        return None, None
    
    # match city and province
    match = re.search(r'(.+?)\s*\((.+?)\)', location_str)
    if match:
        city = match.group(1).strip()
        province = match.group(2).strip()
        return city, province

    return location_str.strip(), None

def parse_salary(salary_str):
    """
    Extract min/max salary and period from salary string.
    Returns tuple: (min_salary, max_salary, period)
    """
    if not salary_str or salary_str.lower() == "n/a":
        return None, None, None
    
    # Extract all numeric values from the string
    numbers = re.findall(r'[\d,.]+', salary_str)
    numbers = [float(num.replace(',', '')) for num in numbers if num]

    # Determine salary period
    period = None
    if "hourly" in salary_str.lower():
        period = "hourly"
    elif "annually" in salary_str.lower():
        period = "annually"
    elif "monthly" in salary_str.lower():
        period = "monthly"
    elif "weekly" in salary_str.lower():
        period = "weekly"
    elif "biweekly" in salary_str.lower():
        period = "biweekly"
    elif "daily" in salary_str.lower():
        period = "daily"
    
    min_salary = numbers[0] if len(numbers) > 0 else None
    max_salary = numbers[1] if len(numbers) > 1 else min_salary
    
    return min_salary, max_salary, period

def clean_jobs():
    """
    Main cleaning function.
    Fetches unprocessed jobs, cleans them, and saves to jobs_cleaned table.
    """
    # Initialize the cleaned jobs table
    db_mgr.init_cleaned_jobs_table()

    # Fetch only unprocessed jobs
    raw_jobs = db_mgr.get_unprocessed_jobs()

    if not raw_jobs:
        print("No new jobs to clean.")
        return
    
    # Clean each job
    print(f"Cleaning {len(raw_jobs)} unprocessed jobs...")
    cleaned_jobs = []
    for job in raw_jobs:
        city, province = parse_location(job['location'])
        min_salary, max_salary, period = parse_salary(job['salary'])

        cleaned_jobs.append({
            'id': job['id'],
            'title': job['title'],
            'date_posted': parse_date(job['date_posted']),
            'city': city,
            'province': province,
            'min_salary': min_salary,
            'max_salary': max_salary,
            'salary_period': period,
            'cleaned_at': datetime.now()
        })
    
    # Save cleaned jobs to database
    db_mgr.save_cleaned_jobs_to_db(cleaned_jobs)
    print(f"Saved {len(cleaned_jobs)} cleaned jobs to database.")


if __name__ == "__main__":
    clean_jobs()
