/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest paying data analyst jobs from first query
- Add the specific skills required for these roles
*/
WITH top_paying_jobs AS (
    SELECT
        job_id,
        job_title,
        company.name AS company_name,
        salary_year_avg AS average_salary_for_role
    FROM
        job_postings_fact
    LEFT JOIN company_dim AS company ON job_postings_fact.company_id = company.company_id
    WHERE 
        job_location = 'Anywhere'
        AND salary_year_avg IS NOT NULL
        AND job_title_short = 'Data Analyst'
    ORDER BY 
        average_salary_for_role DESC
    LIMIT 10
)

SELECT
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY 
    average_salary_for_role DESC

/*
Key Insights for Your SQL Journey
High Earning Potential: Jobs in this dataset that mention SQL offer an impressive average salary of approximately $207,320.

The Power Trio: The data clearly shows that SQL, Python, and Tableau form a "power trio" of data skills.
As you continue to master data analytics, pairing your SQL knowledge with Python and visualization tools like Tableau or PowerBI will make you a highly competitive candidate.

Cloud and Data Warehousing: The presence of tools like Snowflake (rank 5) and Azure (rank 8) indicates that modern SQL roles often interact with cloud-based data warehouses.
*/