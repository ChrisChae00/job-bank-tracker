print("=== Generating visualizations ===")
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import os


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
    date_counts = df['date_posted'].value_counts().sort_index()
    sns.lineplot(
        x=date_counts.index,
        y=date_counts.values,
        ax=axes[1 , 0],
        marker="o",
        color="teal"
    )
    axes[1, 0].set_title("Job Postings Over Time", fontsize=16, pad=15)
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
    output_image = "job_market_analysis.png"
    plt.savefig(output_image, dpi=300)

    print(f"Visualizations saved to {output_image}.", flush=True)
    plt.show()

if __name__ == "__main__":
    input_file = 'cleaned_job_listings.csv'
    generate_visuals(input_file)