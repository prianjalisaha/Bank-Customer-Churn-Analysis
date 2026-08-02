-- ==========================================
-- Business Insights
-- ==========================================

-- Top 10 High Balance Customers Who Churned
SELECT
customer_id,
country,
balance,
estimated_salary
FROM bank_customer_churn
WHERE churn=1
ORDER BY balance DESC
LIMIT 10;

-- Average Tenure by Churn Status
SELECT
churn_status,
ROUND(AVG(tenure),2) AS average_tenure
FROM bank_customer_churn
GROUP BY churn_status;

-- Customers Having More Than Two Products
SELECT
products_number,
COUNT(*) AS customers
FROM bank_customer_churn
WHERE products_number > 2
GROUP BY products_number;

-- Country-wise Active Members
SELECT
country,
SUM(active_member) AS active_members
FROM bank_customer_churn
GROUP BY country;

-- High Balance & Inactive Customers
SELECT
customer_id,
country,
balance,
active_member
FROM bank_customer_churn
WHERE balance > 100000
AND active_member = 0
ORDER BY balance DESC;