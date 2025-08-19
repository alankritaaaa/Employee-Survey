SELECT COUNT(*) FROM employee_survey_data;

SHOW DATABASES;
USE employee_survey;
SHOW TABLES;

SELECT COUNT(*) FROM employee_survey_data;

USE employee_survey;
SELECT * FROM employee_survey_data LIMIT 5;

-- 1. Average scores across the company
SELECT 
    ROUND(AVG(EnvironmentSatisfaction),2) AS avg_environment,
    ROUND(AVG(JobSatisfaction),2) AS avg_job,
    ROUND(AVG(WorkLifeBalance),2) AS avg_wlb
FROM employee_survey_data;

-- 2. How many employees are very dissatisfied vs. very satisfied with jobs?
SELECT 
    JobSatisfaction,
    COUNT(*) AS employee_count
FROM employee_survey_data
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

-- 3. Which Work-Life Balance group has the happiest employees?
SELECT 
    WorkLifeBalance,
    ROUND(AVG(JobSatisfaction),2) AS avg_job_satisfaction
FROM employee_survey_data
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;

-- 4. Identify red-flag employees (all scores = 1)
SELECT COUNT(*) AS unhappy_employees
FROM employee_survey_data
WHERE EnvironmentSatisfaction = 1
  AND JobSatisfaction = 1
  AND WorkLifeBalance = 1;

-- 5. Compare Environment vs Job Satisfaction
SELECT 
    EnvironmentSatisfaction,
    ROUND(AVG(JobSatisfaction),2) AS avg_job_satisfaction
FROM employee_survey_data
GROUP BY EnvironmentSatisfaction
ORDER BY EnvironmentSatisfaction;


