create database customer_db;
use customer_db;

create table customer (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(100),
    updated_at DATETIME);
    
INSERT INTO customer (customer_id, customer_name, city, updated_at)
VALUES
('C001', 'Arun', 'Chennai', '2026-09-01 10:30:00'),
('C002', 'Kavya', 'Madurai', '2026-09-05 11:15:00'),
('C003', 'Preetha', 'Salem', '2026-09-10 09:45:00'),
('C004', 'Ravi', 'Coimbatore', '2026-09-15 14:20:00'),
('C005', 'Hari', 'Trichy', '2026-09-20 16:10:00');

select * from customer;

select customer_id, customer_name, city, updated_at from customer;