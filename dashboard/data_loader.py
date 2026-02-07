import os
import pandas as pd
import streamlit as st
from sqlalchemy import create_engine, text
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

def get_db_connection():
    """
    Create and return a database connection engine.
    
    - Uses st.secrets for Streamlit Cloud deployment
    - Falls back to .env file for local development
    """
    try:
        # Try Streamlit secrets first (for cloud deployment)
        db_url = f"postgresql://{st.secrets['DB_USER']}:{st.secrets['DB_PASSWORD']}@{st.secrets['DB_HOST']}:5432/{st.secrets['DB_NAME']}"
    except:
        # Local development environment (using .env file)
        db_url = f"postgresql://{os.getenv('DB_USER')}:{os.getenv('DB_PASSWORD')}@{os.getenv('DB_HOST')}:5432/{os.getenv('DB_NAME')}"
    
    return create_engine(db_url)

@st.cache_data(ttl=3600) # Cache data for 1 hour
def load_job_data():
    """
    Load all cleaned job postings from jobs_cleaned table.
    
    @st.cache_data decorator:
    - Stores query results in memory for reuse
    - ttl=3600: Cache expires after 1 hour (3600 seconds)
    - Prevents redundant DB queries on page refresh
    """
    engine = get_db_connection()
    query = """
        SELECT 
            id,
            title,
            data_posted,
            city,
            province,
            min_salary,
            max_salary,
            salary_period,
            cleaned_at
        FROM jobs_cleaned
        ORDER BY data_posted DESC
    """
    try:
        with engine.connect() as conn:
            df = pd.read_sql(text(query), conn)
        return df

    except Exception as e:
        st.error(f"Error loading job data: {e}")
        return pd.DataFrame()

def get_data_summary(df):
    """
    Calculate summary statistics for the dashboard header.
    
    Returns:
        dict: Contains total_jobs, avg_salary, top_city, latest_date
    """
    if df.empty:
        return {
            "total_jobs": 0,
            "avg_salary": 0,
            "top_city": "N/A",
            "latest_date": "N/A"
        }
    
    # Calculate average salary from annual salary postings only
    annual_jobs = df[df['salary_period'] == 'Annually']
    if not annual_jobs.empty:
        avg_salary = ((annual_jobs['min_salary'] + annual_jobs['max_salary']) / 2).mean()
    else:
        avg_salary = 0
    
    return {
        "total_jobs": len(df),
        "avg_salary": round(avg_salary, 2),
        "top_city": df['city'].value_counts().index[0] if not df['city'].empty else "N/A",
        "latest_date": df['date_posted'].max() if 'date_posted' in df.columns else "N/A"
    }