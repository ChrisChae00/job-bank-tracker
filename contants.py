import pathlib as pl

# Define constants for file paths
JOB_LISTINGS_CSV = pl.Path("job_listings.csv")
CLEANED_JOB_LISTINGS_CSV = pl.Path("cleaned_job_listings.csv")
VISUALIZATION_IMAGE = pl.Path("job_market_analysis.png")

# Define constants for database
DB_FILE = pl.Path("job_listings.db")
DB_TABLE = "jobs"
