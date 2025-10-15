-- Set Global local_infile = 1;

-- CREATE DATABASE ecommerce;
-- USE ecommerce;
-- CREATE Table basket_details(
-- 	customer_id int,
--     product_id int,
--     basket_data date,
--     basket_count int);

-- create table customer_details(
-- 	customer_id int,
--     sex varchar(15),
--     customer_age int,
--     tenure int);
    
-- Alter table customer_details
-- ADD primary key (customer_id);

-- Alter Table basket_details
-- ADD basket_id Int Auto_Increment Primary Key;

-- Alter Table basket_details
-- Add constraint fk_customers
-- foreign key (customer_id) references customer_details (customer_id);
 
-- Load Data local Infile '/Users/mehak_kumari/Downloads/archive/basket_details.csv'
-- Into Table basket_details
-- Fields terminated by ','
-- Lines terminated by '\n'
-- ignore 1 rows

-- Load Data Local Infile '/Users/mehak_kumari/Downloads/archive/customer_details.csv'
-- -- Into Table customer_details
-- -- fields terminated by ','
-- -- lines terminated by '\n'
-- -- ignore 1 rows

-- Select * from customer_details Limit 5;
-- Select * from basket_details limit 5;

/* Total Customers */
-- Select Count(DISTINCT Customer_id) as Total_Customers
-- From Customer_details;   -- 19992

/* Total Orders / Baskets */
-- select Count(distinct basket_id) as total_order
-- from basket_details;   -- 72

/* Total Products Sold */
-- select Sum(basket_count) as total_product_sold
-- from basket_details;  -- 155 

/* Check Time Range of Orders */
-- select min(basket_data) as First_order, max(basket_data) as Last_order
-- from basket_details;	-- First_Order:20-05-2019 / Last_Order:19-06-2019

/* Top 10 best-selling products */
-- select product_id, sum(basket_count) as total_sold
-- from basket_details
-- group by product_id
-- order by total_sold desc
-- limit 10;

-- how columns from basket_details; 
-- show columns from customer_details; 

/* Total basket per customer */
-- SELECT customer_id, COUNT(DISTINCT basket_id) AS total_baskets
-- FROM basket_details
-- GROUP BY customer_id
-- ORDER BY total_baskets DESC;     -- 20

/* Top 5 customers with most product bought */ 
-- select customer_id, sum(basket_count) as total_products
-- from basket_details
-- group by customer_id
-- order by total_products desc
-- limit 5;				--21 

/* customer demographics summary (from customer_details) */
-- select sex,
-- 			ROUND(AVG(Customer_age),1) as avg_age,
--             ROUND(AVG(tenure),1) as avg_tenure,
--             COUNT(Customer_id) as total_customers
-- from customer_details
-- group by sex;



