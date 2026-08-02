-- ==========================================
-- Data Validation
-- ==========================================

-- Total Records
SELECT COUNT(*) AS total_records
FROM bank_customer_churn;

-- Preview Dataset
SELECT *
FROM bank_customer_churn
LIMIT 10;

-- Duplicate Customer IDs
SELECT
customer_id,
COUNT(*) AS duplicate_count
FROM bank_customer_churn
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Missing Values
SELECT
COUNT(*) FILTER (WHERE customer_id IS NULL) AS customer_id_null,
COUNT(*) FILTER (WHERE credit_score IS NULL) AS credit_score_null,
COUNT(*) FILTER (WHERE country IS NULL) AS country_null,
COUNT(*) FILTER (WHERE gender IS NULL) AS gender_null,
COUNT(*) FILTER (WHERE age IS NULL) AS age_null,
COUNT(*) FILTER (WHERE balance IS NULL) AS balance_null,
COUNT(*) FILTER (WHERE estimated_salary IS NULL) AS salary_null,
COUNT(*) FILTER (WHERE churn IS NULL) AS churn_null
FROM bank_customer_churn;

-- Check Churn Values
SELECT
churn,
COUNT(*) AS total_customers
FROM bank_customer_churn
GROUP BY churn;