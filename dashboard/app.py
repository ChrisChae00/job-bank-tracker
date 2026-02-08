import streamlit as st
import pandas as pd
from data_loader import load_jobs_data, get_data_summary

# Set page configuration
st.set_page_config(
    page_title="Canada IT Job Market Dashboard",
    page_icon="🇨🇦",
    layout="wide", # use full width of the browser
    initial_sidebar_state="expanded" # keep sidebar open
)

# Custom CSS for styling
st.markdown("""
    <style>
    /* KPI Card styling */
    .metric-card {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        padding: 20px;
        border-radius: 10px;
        color: white;
        text-align: center;
    }
    .metric-value {
        font-size: 2.5rem;
        font-weight: bold;
    }
    .metric-label {
        font-size: 1rem;
        opacity: 0.8;
    }
    
    /* Header styling */
    .main-header {
        font-size: 2.5rem;
        font-weight: bold;
        background: linear-gradient(90deg, #667eea, #764ba2);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        margin-bottom: 0;
    }
    </style>
""", unsafe_allow_html=True)

# Header section
st.markdown('<h1 class="main-header">🇨🇦 Canada IT Job Market Dashboard</h1>', unsafe_allow_html=True)
st.markdown("Real-time insights from Job Bank Canada | Built by Chris")
st.divider()

# Load data
with st.spinner("Loading job data..."):
    df = load_jobs_data()

if df.empty:
    st.error("No data available. Please check your database connection.")
    st.stop()

# Sidebar filters
st.sidebar.header("Filters")

# Province filter
provinces = ["All"] + sorted(df['province'].dropna().unique().tolist())
selected_province = st.sidebar.selectbox("Select Province", provinces)

# City filter (dynamic based on province)
if selected_province == "All":
    cities = ["All"] + sorted(df['city'].dropna().unique().tolist())
else:
    cities = ["All"] + sorted(df[df['province'] == selected_province]['city'].dropna().unique().tolist())
selected_city = st.sidebar.selectbox("Select City", cities)

# Salary range filter
salary_periods = ["All"] + df['salary_period'].dropna().unique().tolist()
selected_period = st.sidebar.selectbox("Salary Type", salary_periods)

# Apply filters
filtered_df = df.copy()
if selected_province != "All":
    filtered_df = filtered_df[filtered_df['province'] == selected_province]
if selected_city != "All":
    filtered_df = filtered_df[filtered_df['city'] == selected_city]
if selected_period != "All":
    filtered_df = filtered_df[filtered_df['salary_period'] == selected_period]


# Show filter results count
st.sidebar.divider()
st.sidebar.metric("Filtered Jobs", len(filtered_df))

# KPI cards (top row)
summary = get_data_summary(filtered_df)

col1, col2, col3, col4 = st.columns(4)

with col1:
    st.metric(
        label="Total Jobs Postings",
        value=summary['total_jobs']
    )

with col2:
    st.metric(
        label="Average Annual Salary",
        value=f"${summary['avg_salary']:,.0f}" if summary['avg_salary'] > 0 else "N/A"
    )

with col3:
    st.metric(
        label="Top City",
        value=summary['top_city']
    )

with col4:
    st.metric(
        label="Latest Posting Date",
        value=str(summary['latest_date'])[:10] if summary['latest_date'] else "N/A"
    )

st.divider()

# Data preview
st.subheader("Recent Job Postings")
st.dataframe(
    filtered_df[['title', 'city', 'province', 'min_salary', 'max_salary', 'salary_period', 'cleaned_at']],
    use_container_width=True,
    hide_index=True
)

# Footer
st.divider()
st.markdown(
    """
    <div style='text-align: center; color: gray;'>
        Data source: <a href="https://www.jobbank.gc.ca" target="_blank">Job Bank Canada</a>
    </div>
    """,
    unsafe_allow_html=True
)