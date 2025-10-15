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
-- Into Table customer_details
-- fields terminated by ','
-- lines terminated by '\n'
-- ignore 1 rows





/* Total Customers */
-- Select Count(*) as Total_Customers
-- From Customer_details;

