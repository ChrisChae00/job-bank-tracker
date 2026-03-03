from sqlalchemy import Column, String, Float, Date, TIMESTAMP
from api.database import Base


class Job(Base):
    """Raw job listings scraped from Job Bank Canada."""
    __tablename__ = "jobs"

    id = Column(String, primary_key=True)
    title = Column(String)
    date_posted = Column(String)
    location = Column(String)
    salary = Column(String)
    scraped_at = Column(TIMESTAMP)


class JobCleaned(Base):
    """Cleaned and parsed job listings."""
    __tablename__ = "jobs_cleaned"

    id = Column(String, primary_key=True)
    title = Column(String)
    date_posted = Column(Date)
    city = Column(String)
    province = Column(String)
    min_salary = Column(Float)
    max_salary = Column(Float)
    salary_period = Column(String)
    cleaned_at = Column(TIMESTAMP)
