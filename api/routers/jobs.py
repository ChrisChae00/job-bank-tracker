from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session
from sqlalchemy import func, desc, asc
from api.database import get_db
from api.models import JobCleaned
from api.schemas import JobCleanedResponse, JobsSummaryResponse, PaginatedJobsResponse

router = APIRouter(prefix="/jobs", tags=["jobs"])


@router.get("/summary", response_model=JobsSummaryResponse)
def get_jobs_summary(
    province: str | None = Query(None, description="Filter by province code (e.g. ON, BC)"),
    city: str | None = Query(None, description="Filter by city name"),
    salary_period: str | None = Query(None, description="Filter by salary period"),
    db: Session = Depends(get_db),
):
    """
    Return summary statistics for the dashboard KPI cards.
    Calculates total jobs, average annual salary, top city, and latest posting date.
    """
    query = db.query(JobCleaned)
    query = _apply_filters(query, province, city, salary_period)

    total_jobs = query.count()

    if total_jobs == 0:
        return JobsSummaryResponse(
            total_jobs=0, avg_salary=0.0, top_city="N/A", latest_date="N/A"
        )

    # Average salary from annual postings (exclude outliers > $1M)
    SALARY_UPPER_BOUND = 1_000_000
    avg_salary_result = (
        query.filter(
            JobCleaned.salary_period == "annually",
            JobCleaned.max_salary <= SALARY_UPPER_BOUND,
        )
        .with_entities(
            func.avg((JobCleaned.min_salary + JobCleaned.max_salary) / 2)
        )
        .scalar()
    )
    avg_salary = round(float(avg_salary_result), 2) if avg_salary_result else 0.0

    # Top city by job count
    top_city_result = (
        query.filter(JobCleaned.city.isnot(None))
        .with_entities(JobCleaned.city, func.count(JobCleaned.id).label("cnt"))
        .group_by(JobCleaned.city)
        .order_by(desc("cnt"))
        .first()
    )
    top_city = top_city_result[0] if top_city_result else "N/A"

    # Latest posting date
    latest_date = (
        query.with_entities(func.max(JobCleaned.date_posted)).scalar()
    )
    latest_date_str = str(latest_date) if latest_date else "N/A"

    return JobsSummaryResponse(
        total_jobs=total_jobs,
        avg_salary=avg_salary,
        top_city=top_city,
        latest_date=latest_date_str,
    )


@router.get("", response_model=PaginatedJobsResponse)
def get_jobs(
    province: str | None = Query(None, description="Filter by province code"),
    city: str | None = Query(None, description="Filter by city name"),
    salary_period: str | None = Query(None, description="Filter by salary period"),
    skip: int = Query(0, ge=0, description="Number of records to skip"),
    limit: int = Query(100, ge=1, le=5000, description="Max records to return"),
    sort_by: str = Query("date_posted", description="Column to sort by"),
    order: str = Query("desc", pattern="^(asc|desc)$", description="Sort order"),
    db: Session = Depends(get_db),
):
    """
    List cleaned job postings with filtering, pagination, and sorting.
    """
    query = db.query(JobCleaned)
    query = _apply_filters(query, province, city, salary_period)

    total = query.count()

    # Sorting
    sort_column = getattr(JobCleaned, sort_by, JobCleaned.date_posted)
    if order == "desc":
        query = query.order_by(desc(sort_column))
    else:
        query = query.order_by(asc(sort_column))

    jobs = query.offset(skip).limit(limit).all()

    return PaginatedJobsResponse(
        total=total,
        skip=skip,
        limit=limit,
        data=jobs,
    )


@router.get("/{job_id}", response_model=JobCleanedResponse)
def get_job(job_id: str, db: Session = Depends(get_db)):
    """Retrieve a single job by its ID."""
    job = db.query(JobCleaned).filter(JobCleaned.id == job_id).first()
    if not job:
        raise HTTPException(status_code=404, detail="Job not found")
    return job


# ── Helper ────────────────────────────────────────────────────────────

def _apply_filters(query, province: str | None, city: str | None, salary_period: str | None):
    """Apply optional query filters."""
    if province:
        query = query.filter(JobCleaned.province == province)
    if city:
        query = query.filter(JobCleaned.city == city)
    if salary_period:
        query = query.filter(JobCleaned.salary_period == salary_period)
    return query
