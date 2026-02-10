# Job Bank Trend Tracker

**A fully automated data pipeline and interactive dashboard for tracking IT job market trends in Canada.**

![Streamlit](https://img.shields.io/badge/Streamlit-FF4B4B?style=for-the-badge&logo=Streamlit&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)

## Overview

This project scrapes, cleans, and visualizes job posting data from **Job Bank Canada** to provide real-time insights into the IT job market. It tracks metrics like salary trends, top cities for tech jobs, and hiring demand.

The project evolved from a simple local script to a robust, cloud-native automated pipeline.

---

## Architecture Evolution

The system architecture has undergone significant transformation to achieve automation and scalability.

```mermaid
graph RL
    subgraph Phase3 [Phase 3: Cloud Automation]
        direction TB
        style Phase3 fill:#e6fffa,stroke:#00b894,stroke-width:2px
        GHA[GitHub Actions<br/>Daily Cron] -->|Runs| Docker[Docker Container]
        Docker -->|Scrapes & Cleans| Scraper[Scraper Logic]
        Scraper -->|Persists Data| RDS[(AWS RDS<br/>PostgreSQL)]
        Streamlit[Streamlit Cloud] -->|Queries| RDS
        User((User)) -->|Views| Streamlit
    end

    subgraph Phase2 [Phase 2: Local Database]
        direction TB
        style Phase2 fill:#e6f3ff,stroke:#333,stroke-dasharray: 5 5
        P2_Script[Daily CI Script] -->|Commits Binary| P2_DB[(SQLite DB<br/>in Repo)]
    end

    subgraph Phase1 [Phase 1: Local & Manual]
        direction TB
        style Phase1 fill:#f9f9f9,stroke:#333,stroke-dasharray: 5 5
        P1_Script[Manual Execution /<br/>Basic CI Script] -->|Writes| P1_CSV[(Local CSV Files)]
    end

    %% Evolution Flow (Right to Left)
    P1_Script -.-> P2_Script
    P2_Script -.-> GHA
```

### Phase 1: Local & Manual (CSV)

- **Data Storage**: Local CSV files.
- **Process**: Originally manual execution, later added basic CI scripts.
- **Limitation**: Hard to query, no historical tracking, inconsistent data structure.

### Phase 2: Local Database (SQLite)

- **Data Storage**: Migrated to **SQLite**.
- **Automation**: CI scripts ran daily but committed binary DB files to the repo.
- **Limitation**: Repository bloat due to large binary commits; database locked to single-user access.

### Phase 3: Cloud Automation (Current)

- **Data Storage**: **AWS RDS (PostgreSQL)**.
- **Automation**: **GitHub Actions** runs a Dockerized container based on the scraper logic.
- **Visualization**: **Streamlit Cloud** connects directly to AWS RDS to display real-time data.
- **Result**: A zero-touch, fully automated pipeline with scalable cloud infrastructure.

---

## Key Data Engineering Learnings

1.  **Incremental Scraping**: Implemented logic to check existing Job IDs in the database to avoid re-scraping and duplication, significantly reducing run time.
2.  **Robust Error Handling**: The Selenium scraper handles dynamic content, overlays, and connection timeouts with retry logic to ensure reliable data collection.
3.  **Containerization**: Dockerizing the application ensured that the scraping environment in GitHub Actions matches the local development environment, eliminating "it works on my machine" issues.
4.  **Cloud Migration**: Moving from SQLite to PostgreSQL on AWS RDS required handling connection strings securely and managing database migrations.

## Tech Stack

- **Language**: Python 3.12+
- **Scraping**: Selenium, BeautifulSoup4
- **Database**: PostgreSQL (AWS RDS), SQLAlchemy (ORM)
- **Dashboard**: Streamlit, Pandas
- **CI/CD**: GitHub Actions, Docker
- **Environment Management**: Docker, dotenv
