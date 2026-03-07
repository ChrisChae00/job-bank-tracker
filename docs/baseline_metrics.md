# Data Quality Baseline (Before Validation)

**Measured at:** 2026-03-07

> This report captures the current state of data quality **before** implementing Pydantic validation.
> After completing Step 1-3, re-run the same queries to compare "Before vs After" results.

---

## jobs_cleaned Table

| Metric                      | Count | % of Total |
| --------------------------- | ----- | ---------- |
| Total Records               | 1,722 | 100%       |
| NULL titles                 | 0     | 0%         |
| NULL dates                  | 0     | 0%         |
| NULL cities                 | 0     | 0%         |
| NULL min_salary             | 0     | 0%         |
| Negative salary             | 0     | 0%         |
| **min_salary > max_salary** | **1** | **0.06%**  |

### ⚠️ Issue Found

- **1 record** has `min_salary > max_salary` — a logical data integrity error that should have been caught before DB insertion.
- This is the exact type of issue that Pydantic `@model_validator` will prevent in Step 1.

---

## jobs (Raw) Table

| Metric            | Count | % of Total |
| ----------------- | ----- | ---------- |
| Total Raw Records | 1,722 | 100%       |
| Empty titles      | 0     | 0%         |
| No salary info    | 0     | 0%         |
| No location info  | 0     | 0%         |

---

## Pipeline Reliability (GitHub Actions)

| Metric                   | Value     |
| ------------------------ | --------- |
| Total Runs (since start) | 47        |
| Successful               | 41        |
| Failed                   | 6         |
| Success Rate             | **87.2%** |

---

## Current Architecture Gaps

| Category        | Current State             | Risk                               |
| --------------- | ------------------------- | ---------------------------------- |
| Data Validation | None (dict → DB directly) | Invalid data can enter DB silently |
| Error Logging   | `print()` statements only | No persistent error tracking       |
| Test Coverage   | 0% (no test files)        | Regressions go undetected          |
| Orchestration   | GitHub Actions cron only  | No retry, no monitoring dashboard  |

---

## SQL Queries Used

```sql
-- Query 1: jobs_cleaned table
SELECT
  COUNT(*) AS total_records,
  COUNT(*) FILTER (WHERE title IS NULL) AS null_titles,
  COUNT(*) FILTER (WHERE date_posted IS NULL) AS null_dates,
  COUNT(*) FILTER (WHERE city IS NULL) AS null_cities,
  COUNT(*) FILTER (WHERE min_salary IS NULL) AS null_min_salary,
  COUNT(*) FILTER (WHERE min_salary < 0) AS negative_salary,
  COUNT(*) FILTER (WHERE min_salary > max_salary) AS min_gt_max_salary
FROM jobs_cleaned;

-- Query 2: jobs (raw) table
SELECT
  COUNT(*) AS total_raw,
  COUNT(*) FILTER (WHERE title IS NULL OR title = '') AS empty_titles,
  COUNT(*) FILTER (WHERE salary IS NULL OR salary = 'N/A') AS no_salary,
  COUNT(*) FILTER (WHERE location IS NULL OR location = 'N/A') AS no_location
FROM jobs;
```
