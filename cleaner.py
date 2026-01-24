import pandas as pd
import os
import re
from contants import JOB_LISTINGS_CSV, CLEANED_JOB_LISTINGS_CSV

def clean_data(input_file, output_file):
    if not os.path.exists(input_file):
        print(f"Input file {input_file} does not exist.")
        return
    # Read the CSV file
    try:
        df = pd.read_csv(input_file, encoding='utf-8-sig')

        if 'date_posted' not in df.columns or'location' not in df.columns or 'salary' not in df.columns:
            print(f"Input file {input_file} is missing required columns. Setting the column headers manually.")
            column_headers = ['id', 'title', 'date_posted', 'location', 'salary']
            # load again with specified headers
            df = pd.read_csv(input_file, encoding='utf-8-sig', names=column_headers)
    except Exception as e:
        print(f"Error reading {input_file}: {e}")
        return
    print(f"Loaded {len(df)} records from {input_file}. Columns: {df.columns.tolist()}")
    
    # date_posted: Convert to datetime and format as YYYY-MM-DD (e.g., January 1, 2026 -> 2026-01-01)
    # to_datetime with errors='coerce' will convert invalid dates to NaT
    df['date_posted'] = pd.to_datetime(df['date_posted'], errors='coerce').dt.strftime('%Y-%m-%d')

    # location: Standardize location names (example: Toronto (ON) -> City, Province)
    def split_location(loc):
        if pd.isna(loc) or loc == "N/A":
            return pd.Series([None, None])
        match = re.search(r'(.+?)\s*\((.+?)\)', loc)
        if match:
            city = match.group(1).strip()
            province = match.group(2).strip()
            return pd.Series([city, province])
        return pd.Series([loc.strip(), None])

    df[['city', 'province']] = df['location'].apply(split_location)

    # salary: Remove any non-numeric characters and convert to float
    def extract_salary(sal):
        if pd.isna(sal) or sal == "N/A":
            return None, None, "N/A"

        # extract all numbers only (integers or decimals)
        numbers = re.findall(r"[\d,.]+", sal.replace(',', ''))
        numbers = [float(num) for num in numbers]

        # extract period (e.g., per year, per hour)
        period = "N/A"
        if "hourly" in sal.lower(): period = "hourly"
        elif "annually" in sal.lower(): period = "annually"

        min_salary = numbers[0] if len(numbers) > 0 else None
        max_salary = numbers[1] if len(numbers) > 1 else min_salary

        return min_salary, max_salary, period

    # Apply salary extraction
    df[['min_salary', 'max_salary', 'salary_period']] = df['salary'].apply(lambda x: pd.Series(extract_salary(x)))

    # Drop original location and salary columns
    df_cleaned = df.drop(columns=['location', 'salary'])

    # Remove duplicates based on 'id'
    df_cleaned = df_cleaned.drop_duplicates(subset=['id'])

    # Save cleaned data
    df_cleaned.to_csv(output_file, index=False, encoding='utf-8-sig')
    print(f"Cleaned data saved to {output_file} with {len(df_cleaned)} records.")

if __name__ == "__main__":
    clean_data(JOB_LISTINGS_CSV, CLEANED_JOB_LISTINGS_CSV)