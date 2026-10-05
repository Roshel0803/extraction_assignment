create database customer_cleansing;
use customer_cleansing;

CREATE TABLE customer (
    customer_id VARCHAR(10),
    customer_name VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO customer (customer_id, customer_name, city)
VALUES
('C001', '  Arun Kumar  ', 'chennai'),
('C002', 'Kumar   ', 'CHENNAI'),
('C003', '  Priya', 'Chennai'),
('C004', 'Ravi  ', NULL);

select * from customer;

-- Data Cleansing and Standardization
select customer_id,
    TRIM(customer_name) AS customer_name,
    COALESCE(NULLIF(TRIM(city), ''), 'Unknown') AS city
from customer;