SELECT 
    COUNT(job_id) AS numbersofjobs,
    CASE 
        WHEN salary_year_avg < 50000 THEN 'low salary'
        WHEN salary_year_avg > 100000 THEN 'high salary'
        ELSE 'standard salary'
    END AS salary_buckets
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY salary_buckets