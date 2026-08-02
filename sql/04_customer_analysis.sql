-- ==========================================
-- Customer Analysis
-- ==========================================

-- Churn by Country
SELECT
country,
COUNT(*) AS total_customers,
SUM(churn) AS churned_customers,
ROUND(AVG(churn)*100,2) AS churn_rate
FROM bank_customer_churn
GROUP BY country
ORDER BY churn_rate DESC;

-- Churn by Gender
SELECT
gender,
COUNT(*) AS total_customers,
SUM(churn) AS churned_customers,
ROUND(AVG(churn)*100,2) AS churn_rate
FROM bank_customer_churn
GROUP BY gender;

-- Churn by Age Group
SELECT
age_group,
COUNT(*) AS customers,
SUM(churn) AS churned,
ROUND(AVG(churn)*100,2) AS churn_rate
FROM bank_customer_churn
GROUP BY age_group
ORDER BY churn_rate DESC;

-- Churn by Active Members
SELECT
active_member,
COUNT(*) AS customers,
SUM(churn) AS churned,
ROUND(AVG(churn)*100,2) AS churn_rate
FROM bank_customer_churn
GROUP BY active_member;

-- Churn by Products
SELECT
products_number,
COUNT(*) AS customers,
SUM(churn) AS churned,
ROUND(AVG(churn)*100,2) AS churn_rate
FROM bank_customer_churn
GROUP BY products_number
ORDER BY products_number;