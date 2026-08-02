-- ==========================================
-- Financial Analysis
-- ==========================================

-- Credit Score Category
SELECT
credit_score_category,
COUNT(*) AS customers,
SUM(churn) AS churned,
ROUND(AVG(churn)*100,2) AS churn_rate
FROM bank_customer_churn
GROUP BY credit_score_category;

-- Balance Category
SELECT
balance_category,
COUNT(*) AS customers,
SUM(churn) AS churned,
ROUND(AVG(churn)*100,2) AS churn_rate
FROM bank_customer_churn
GROUP BY balance_category;

-- Average Balance by Country
SELECT
country,
ROUND(AVG(balance),2) AS average_balance
FROM bank_customer_churn
GROUP BY country
ORDER BY average_balance DESC;

-- Average Salary by Country
SELECT
country,
ROUND(AVG(estimated_salary),2) AS average_salary
FROM bank_customer_churn
GROUP BY country;