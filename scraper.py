import requests
from bs4 import BeautifulSoup

url = "https://www.jobbank.gc.ca/jobsearch/jobsearch?fcid=3001&fcid=3019&fcid=3739&fcid=5395&fcid=15885&fcid=22534&fcid=22887&fcid=25803&fcid=296425&fcid=296531&fcid=297197&fcid=297520&fn21=12010&fn21=20012&fn21=21211&fn21=21223&fn21=21232&term=data&term=software+developer&sort=M&fprov=AB&fprov=BC&fprov=ON&fprov=QC"
headers = {
        "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
    }
def fetch_job_listings(url, headers):
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        return response.text
    else:
        return f"Failed to retrieve data: {response.status_code}"
    
def parse_job_listings(html_content):
    soup = BeautifulSoup(html_content, 'html.parser')
    jobs = soup.find_all('article')
    for job in jobs:
        title = job.find('span', class_='noctitle').get_text(strip=True)
        date_posted = job.find('li', class_='date').get_text(strip=True)
        location_tag = job.find('li', class_='location')
        if location_tag:
            location_tag.find('span', class_='wb-inv').decompose()
            location = location_tag.get_text(strip=True)
        else:
            location = "N/A"
        print(f"Job Title: {title}, Date Posted: {date_posted}, Location: {location}")

                              
if __name__ == "__main__":
    html = fetch_job_listings(url, headers)
    parse_job_listings(html)