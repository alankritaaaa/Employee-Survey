# Employee Satisfaction Analysis

## Objective

This project involves a deep dive into employee survey data to diagnose the overall health of the organization. By analyzing key satisfaction metrics, we aim to identify strengths, weaknesses, and opportunities for improving employee experience and retention. The analysis answers critical questions about overall sentiment, the distribution of satisfaction, and the relationship between different factors.

## About the Dataset

The dataset consists of anonymized employee survey responses from **4,327 employees** (based on non-null counts for Job Satisfaction). The data includes three core satisfaction metrics, each scored on an ordinal scale from 1 (Low) to 4 (High):

*   **Environment Satisfaction:** Satisfaction with the workplace and conditions.
*   **Job Satisfaction:** Satisfaction with the role and daily tasks.
*   **Work-Life Balance:** Perception of balance between professional and personal life.

## Tools & Technologies

*   **Database:** MySQL
*   **IDE:** MySQL Workbench
*   **Key Skills:** SQL Querying, Descriptive Statistics, Data Analysis, Insight Generation

## SQL Analysis & Key Queries

The analysis was performed using SQL to calculate key metrics and uncover patterns. The core queries focused on:

1.  **Overall Company Health:** Calculating average scores across all metrics.
2.  **Satisfaction Distribution:** Understanding how many employees fall into each satisfaction level.
3.  **Impact Analysis:** Determining how Work-Life Balance affects Job Satisfaction.
4.  **Identifying Critical Risk:** Finding employees deeply dissatisfied in all areas.
5.  **Correlation Check:** Exploring the link between Environment and Job Satisfaction.

## Key Insights & Conclusion

Based on the analysis of the data, we can draw several powerful conclusions:

*   **A Plateau of Neutral Satisfaction:** The average scores for Environment (2.72), Job (2.72), and Work-Life Balance (2.76) are remarkably similar and cluster just above the midpoint. This indicates a widespread, uniform feeling of **mild satisfaction** but a significant lack of excellence across the organization.

*   **A Divided Workforce:** The distribution of `JobSatisfaction` reveals a clear split. While a large group of employees are highly satisfied (**1,342 employees rated a '4'**), an almost equally large group is deeply dissatisfied (**851 employees rated a '1'**). This polarization is a major risk for culture and retention.

*   **Work-Life Balance is Not a Key Driver:** Contrary to common assumptions, the data shows **no strong correlation** between Work-Life Balance and Job Satisfaction. The average job satisfaction score remains consistently between 2.65 and 2.83 regardless of WLB rating, suggesting other factors are more critical to job happiness here.

*   **Environment and Job Satisfaction are Decoupled:** Similarly, there is **no meaningful correlation** between Environment Satisfaction and Job Satisfaction. The average job satisfaction score is virtually identical (~2.72) across all environment satisfaction levels.

*   **A Small but Critical At-Risk Group:** We successfully identified **15 employees** who are deeply dissatisfied across the board (rating all three metrics a '1'). This group is at extreme risk of burnout and turnover and requires immediate, prioritized intervention from HR.

**TL;DR:** The organization suffers from a "middle-of-the-road" culture with no standout strengths. The most critical finding is the stark polarization in job satisfaction. HR should urgently engage with the dissatisfied cohort to understand their specific pain points, as improving general work conditions or work-life balance may not be the most effective strategy based on this data.
