/*
What are the top paying data analyst jobs?
- identify the top 10 data analyst jobs that are avaible remotely
- focus on job postings with specified salaries (ignore nulls)
- BONUS: Include Company names
*/
SELECT
    job_id,
    job_title,
    company.name AS company_name,
    salary_year_avg AS average_salary_for_role
FROM job_postings_fact
LEFT JOIN company_dim AS company ON job_postings_fact.company_id = company.company_id
WHERE job_location = 'Anywhere' AND salary_year_avg IS NOT NULL
    AND job_title_short = 'Data Analyst'
ORDER BY average_salary_for_role DESC
LIMIT 10;