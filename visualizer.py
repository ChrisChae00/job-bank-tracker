print("=== Generating visualizations ===")
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.dates as mdates # for date formatting
import seaborn as sns
import os
from contants import CLEANED_JOB_LISTINGS_CSV, VISUALIZATION_IMAGE

def generate_visuals(input_file):
    print("=== Starting visualizations ===", flush=True)
    # Data loading
    if not os.path.exists(input_file):
        print(f"Error: {input_file} file does not exist.")
        return
    df = pd.read_csv(input_file, encoding='utf-8-sig')
    print(f"Loaded {len(df)} records from {input_file} for visualization.")

    # Set seaborn style
    sns.set(style="whitegrid")
    fig, axes = plt.subplots(2, 2, figsize=(20, 12))

    # Plot 1: Job Listings by Province
    province_counts = df['province'].value_counts()

    sns.barplot(
        x=province_counts.index,
        y=province_counts.values,
        ax=axes[0, 0],
        palette="magma"
    )
    axes[0, 0].set_title("Job Distributions by Province", fontsize=16, pad=15)
    axes[0, 0].set_xlabel("Province", fontsize=14)
    axes[0, 0].set_ylabel("Number of Job Listings", fontsize=14)

    # Plot 2: Top 10 Cities with Most Job Listings
    city_counts = df['city'].value_counts().head(10)

    sns.barplot(
        x=city_counts.index,
        y=city_counts.values,
        ax=axes[0, 1],
        palette="viridis"
    )
    axes[0, 1].set_title("Top 10 Cities with Most Job Listings", fontsize=16, pad=15)
    axes[0, 1].set_xlabel("City", fontsize=14)
    axes[0, 1].set_ylabel("Number of Job Listings", fontsize=14)   

    # Plot 3: Job postings over Time
    df['date_posted'] = pd.to_datetime(df['date_posted'], errors='coerce')
    monthly_counts = df.resample('MS', on='date_posted').size()

    sns.lineplot(
        x=monthly_counts.index,
        y=monthly_counts.values,
        ax=axes[1 , 0],
        marker="o",
        color="teal"
    )
    axes[1, 0].set_title("Job Postings Over Time", fontsize=16, pad=15)
    axes[1, 0].xaxis.set_major_formatter(mdates.DateFormatter('%Y-%m'))
    axes[1, 0].tick_params(axis='x', rotation=45)
    axes[1, 0].set_xlabel("Date Posted", fontsize=14)
    axes[1, 0].set_ylabel("Number of Job Listings", fontsize=14)   

    # Plot 4: circle graph of Job Titles
    top_titles = df['title'].value_counts().head(10)
    axes[1, 1].pie(
        top_titles.values,
        labels=top_titles.index,
        autopct='%1.1f%%',
        startangle=140,
        colors=sns.color_palette("pastel")[0:10]
    )
    axes[1, 1].set_title("Top 10 Job Titles Distribution", fontsize=16, pad=15) 

    # optimize layout and saving
    plt.tight_layout()
    plt.savefig(VISUALIZATION_IMAGE, dpi=300)

    print(f"Visualizations saved to {VISUALIZATION_IMAGE}.", flush=True)
    # plt.show()

if __name__ == "__main__":
    generate_visuals(CLEANED_JOB_LISTINGS_CSV)