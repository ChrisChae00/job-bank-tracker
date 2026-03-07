from pydantic import BaseModel, field_validator, model_validator
from datetime import datetime, date
from typing import Optional

# Whitelist of accepted salary period values
VALID_SALARY_PERIODS = {'hourly', 'annually', 'monthly', 'weekly', 'biweekly', 'daily'}


class RawJobValidator(BaseModel):
    """Validates raw job data before inserting into the 'jobs' table."""
    id: str
    title: str
    date_posted: Optional[str] = None
    location: Optional[str] = None
    salary: Optional[str] = None

    # Prevents empty strings from being treated as valid required fields
    @field_validator('id', 'title')
    @classmethod
    def not_empty(cls, v: str) -> str:
        if not v.strip():
            raise ValueError('must not be empty or whitespace')
        return v.strip()


class CleanedJobValidator(BaseModel):
    """Validates cleaned job data before inserting into the 'jobs_cleaned' table."""
    id: str
    title: str
    date_posted: Optional[date] = None  # Must be date type after cleaning, not str
    city: Optional[str] = None
    province: Optional[str] = None
    min_salary: Optional[float] = None
    max_salary: Optional[float] = None
    salary_period: Optional[str] = None
    cleaned_at: datetime

    @field_validator('id', 'title')
    @classmethod
    def not_empty(cls, v: str) -> str:
        if not v.strip():
            raise ValueError('must not be empty or whitespace')
        return v.strip()

    # Restricts salary_period to predefined values only
    @field_validator('salary_period')
    @classmethod
    def validate_salary_period(cls, v: Optional[str]) -> Optional[str]:
        if v is not None and v not in VALID_SALARY_PERIODS:
            raise ValueError(f'must be one of {VALID_SALARY_PERIODS}, got "{v}"')
        return v

    # Cross-field validation: catches the min > max data integrity issue found in baseline
    @model_validator(mode='after')
    def validate_salary_range(self) -> 'CleanedJobValidator':
        if self.min_salary is not None and self.max_salary is not None:
            if self.min_salary > self.max_salary:
                raise ValueError(
                    f'min_salary ({self.min_salary}) must not be greater than '
                    f'max_salary ({self.max_salary})'
                )
        return self
