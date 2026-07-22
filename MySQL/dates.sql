SELECT
    ROUND (AVG(salary_year_avg)) AS year_avg_based_on_month,
    ROUND (AVG(salary_hour_avg)) AS hour_avg_based_on_month,
-- ::DATE changes your selection to date value
    job_schedule_type
    
--    EXTRACT(MONTH FROM job_posted_date) AS date_month
FROM    job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) >= 6 
GROUP BY job_schedule_type
-- ORDER BY date_month
-- LIMIT 12;