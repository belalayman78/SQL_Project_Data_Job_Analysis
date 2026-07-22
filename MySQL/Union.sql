CREATE TABLE first_quarter AS
SELECT *
FROM january_jobs

UNION ALL

SELECT *
FROM february_jobs

UNION ALL

SELECT *
FROM march_jobs

SELECT *
FROM first_quarter