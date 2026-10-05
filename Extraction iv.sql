create database etl_lookup;
use etl_lookup;

CREATE TABLE DIM_CUSTOMER (
    customer_key INT PRIMARY KEY,
    customer_id VARCHAR(10),
    customer_name VARCHAR(100)
);

INSERT INTO DIM_CUSTOMER
(customer_key, customer_id, customer_name)
VALUES
(101, 'C001', 'Arun'),
(102, 'C002', 'Kumar'),
(103, 'C003', 'Priya');

select * from dim_customer;

CREATE TABLE SALES_SOURCE (
    order_id VARCHAR(10),
    customer_id VARCHAR(10),
    amount DECIMAL(10,2)
);

INSERT INTO SALES_SOURCE
(order_id, customer_id, amount)
VALUES
('O001', 'C001', 5000),
('O002', 'C002', 3000),
('O003', 'C003', 7000);

select * from sales_source;

-- Lookup 
select s.order_id, d.customer_key, s.amount
from SALES_SOURCE s
join DIM_CUSTOMER d
    on s.customer_id = d.customer_id;