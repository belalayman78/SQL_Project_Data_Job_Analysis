SELECT name
FROM company_dim
/*
Basically what we are trying to do is to
say where the company id is in this subquery below
show us the company name that link to this id
 */
WHERE company_id IN (
    SELECT 
        company_id
    FROM job_postings_fact
    WHERE
        job_no_degree_mention = TRUE
)