-- ==========================================
-- Bank Customer Churn Analysis
-- Database Setup
-- ==========================================

CREATE TABLE bank_customer_churn
(
    customer_id BIGINT PRIMARY KEY,
    credit_score INT,
    country VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    tenure INT,
    balance NUMERIC(12,2),
    products_number INT,
    credit_card INT,
    active_member INT,
    estimated_salary NUMERIC(12,2),
    churn INT,
    age_group VARCHAR(20),
    balance_category VARCHAR(20),
    credit_score_category VARCHAR(20),
    churn_status VARCHAR(20)
);