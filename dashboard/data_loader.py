import os
import pandas as pd
import streamlit as st
import httpx
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

# API base URL (FastAPI server)
API_BASE_URL = os.getenv("API_BASE_URL", "http://localhost:8000")
API_V1 = f"{API_BASE_URL}/api/v1"

# Timeout for API requests (seconds)
REQUEST_TIMEOUT = 30.0


@st.cache_data(ttl=3600)  # Cache data for 1 hour
def load_jobs_data():
    """
    Load all cleaned job postings from the FastAPI endpoint.

    @st.cache_data decorator:
    - Stores query results in memory for reuse
    - ttl=3600: Cache expires after 1 hour (3600 seconds)
    - Prevents redundant API calls on page refresh
    """
    try:
        with httpx.Client(timeout=REQUEST_TIMEOUT) as client:
            response = client.get(
                f"{API_V1}/jobs",
                params={"limit": 5000, "sort_by": "date_posted", "order": "desc"},
            )
            response.raise_for_status()

        data = response.json()
        df = pd.DataFrame(data["data"])

        if not df.empty and "date_posted" in df.columns:
            df["date_posted"] = pd.to_datetime(df["date_posted"], errors="coerce").dt.date

        return df

    except httpx.HTTPStatusError as e:
        st.error(f"API returned an error: {e.response.status_code}")
        return pd.DataFrame()
    except httpx.ConnectError:
        st.error(
            f"Cannot connect to API server at {API_BASE_URL}. "
            "Please make sure the FastAPI server is running."
        )
        return pd.DataFrame()
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
            "latest_date": "N/A",
        }

    # Calculate average salary from annual salary postings only (exclude outliers > $1M)
    SALARY_UPPER_BOUND = 1_000_000
    annual_jobs = df[
        (df["salary_period"] == "annually") & (df["max_salary"] <= SALARY_UPPER_BOUND)
    ]
    if not annual_jobs.empty:
        avg_salary = (
            (annual_jobs["min_salary"] + annual_jobs["max_salary"]) / 2
        ).mean()
    else:
        avg_salary = 0

    return {
        "total_jobs": len(df),
        "avg_salary": round(avg_salary, 2),
        "top_city": (
            df["city"].value_counts().index[0] if not df["city"].empty else "N/A"
        ),
        "latest_date": (
            df["date_posted"].max() if "date_posted" in df.columns else "N/A"
        ),
    }