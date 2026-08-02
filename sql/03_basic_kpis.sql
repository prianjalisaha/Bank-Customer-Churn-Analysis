-- ==========================================
-- Basic KPIs
-- ==========================================

-- Total Customers
SELECT COUNT(*) AS total_customers
FROM bank_customer_churn;

-- Churned Customers
SELECT COUNT(*) AS churned_customers
FROM bank_customer_churn
WHERE churn = 1;

-- Retained Customers
SELECT COUNT(*) AS retained_customers
FROM bank_customer_churn
WHERE churn = 0;

-- Churn Rate
SELECT
ROUND(
COUNT(*) FILTER (WHERE churn=1)*100.0/COUNT(*),
2
) AS churn_rate
FROM bank_customer_churn;

-- Retention Rate
SELECT
ROUND(
COUNT(*) FILTER (WHERE churn=0)*100.0/COUNT(*),
2
) AS retention_rate
FROM bank_customer_churn;

-- Average Balance
SELECT
ROUND(AVG(balance),2) AS average_balance
FROM bank_customer_churn;

-- Average Salary
SELECT
ROUND(AVG(estimated_salary),2) AS average_salary
FROM bank_customer_churn;

-- Average Credit Score
SELECT
ROUND(AVG(credit_score),2) AS average_credit_score
FROM bank_customer_churn;