create database etl_upsert;
use etl_upsert;

CREATE TABLE DIM_CUSTOMER (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO DIM_CUSTOMER
(customer_id, customer_name, city)
VALUES
('C001', 'Arun', 'Chennai'),
('C002', 'Kumar', 'Madurai'),
('C003', 'Priya', 'Salem');

select * from dim_customer;

CREATE TABLE STG_CUSTOMER (
    customer_id VARCHAR(10),
    customer_name VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO STG_CUSTOMER
(customer_id, customer_name, city)
VALUES
('C002', 'Kumar', 'Bangalore'),
('C004', 'Ravi', 'Chennai');

select * from stg_customer;

-- Upsert Query 
INSERT INTO DIM_CUSTOMER (customer_id, customer_name, city)
SELECT customer_id, customer_name, city
FROM STG_CUSTOMER
ON DUPLICATE KEY UPDATE
    customer_name = STG_CUSTOMER.customer_name,
    city = STG_CUSTOMER.city;

SELECT *
FROM DIM_CUSTOMER
WHERE customer_id = 'C004';


