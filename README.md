# SQL Project: Data Job Analysis

## Introduction
Welcome to the Data Job Analysis project. This repository contains SQL scripts designed to explore and analyze the current landscape of the data job market. By querying real-world job posting data, this project uncovers actionable insights regarding salary expectations, highly sought-after skills, and the best career pathways for aspiring data professionals.

## Background
The data analytics field is rapidly evolving, making it crucial to understand which skills employers value most. The primary objective of this analysis is to identify trends in data-related job postings. Specifically, this project aims to answer key questions such as:
* What are the top-paying data jobs available right now?
* What specific skills are required for these high-paying roles?
* Which skills are the most universally in-demand across the market?
* What is the "optimal" skill stack (combining high demand with high salary)?

## Tools I Used
To execute this project, the following technologies and methodologies were utilized:
* **SQL:** The core language used to extract, filter, aggregate, and analyze the raw job posting data. 
* **Database Management System:** (e.g., PostgreSQL) to host the datasets and execute complex analytical queries.
* **Excel & PowerBI:** Used alongside the SQL outputs for data validation, secondary analysis, and future visual dashboarding of the queried results.
* **Git & GitHub:** For version control, project management, and sharing the codebase.

## The Analysis
The `project_sql` directory contains a series of targeted queries that break down the job market. The analysis is structured around several core files:

- **Top Paying Jobs:** Identifies the roles offering the highest average salaries, filtering out entry-level outliers to find the true premium positions in the data field.
- **Top Paying Job Skills:** Links the highest-paying roles to their required competencies.
- **Top Demanded Skills:** Aggregates job postings to find the most frequently requested skills by employers, regardless of salary.
- **Top Paying Skills:** Isolates specific skills that correlate with the highest salary premiums in the market.
- **Optimal Skills:** Combines demand and salary metrics to find the "sweet spot"—skills that are both highly lucrative and widely requested.

## What I Learned
Building this project significantly enhanced my analytical problem-solving abilities and technical database skills. Key takeaways include:
* **Advanced Querying:** Mastery of Common Table Expressions (CTEs), subqueries, and complex `JOIN` operations to merge salary data with skill requirements.
* **Data Aggregation:** Using `GROUP BY` and aggregate functions to summarize massive datasets into readable, actionable metrics.
* **Real-World Data Handling:** Dealing with `NULL` values, standardizing text inputs, and formatting data for clean exports. 

## Conclusions
The analysis reveals a clear roadmap for navigating the data job market. Foundational querying languages remain the absolute bedrock of the industry, consistently ranking as the most demanded requirement by employers. When these core database skills are combined with programming languages like Python and visualization tools like PowerBI, candidates unlock the highest-paying, most optimal roles in the market.
