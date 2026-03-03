from pydantic import BaseModel
from datetime import date, datetime


class JobCleanedResponse(BaseModel):
    """Response schema for a single cleaned job listing."""
    id: str
    title: str | None = None
    date_posted: date | None = None
    city: str | None = None
    province: str | None = None
    min_salary: float | None = None
    max_salary: float | None = None
    salary_period: str | None = None
    cleaned_at: datetime | None = None

    class Config:
        from_attributes = True  # Enable ORM mode


class JobsSummaryResponse(BaseModel):
    """Response schema for dashboard summary statistics."""
    total_jobs: int
    avg_salary: float
    top_city: str
    latest_date: str


class PaginatedJobsResponse(BaseModel):
    """Paginated response wrapper for job listings."""
    total: int
    skip: int
    limit: int
    data: list[JobCleanedResponse]
