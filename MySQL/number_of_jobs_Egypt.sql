SELECT
    COUNT(job_id) AS number_of_jobs,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'Egypt' THEN 'LOCAL'
        WHEN (job_location = 'United Arab Emirates' OR job_location = 'Saudi Arabia' OR job_location = 'Qatar') THEN 'Khalij'
        ELSE 'Onsite'
    END AS location_category 
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY location_category