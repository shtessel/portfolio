-- CREATE DATABASE my_database;
DROP TABLE sales;
CREATE TABLE sales

(

transaction_id INTEGER PRIMARY KEY,
date DATE,
customer_id VARCHAR (20),
gender VARCHAR (10),
age INTEGER,
product_category VARCHAR(20),
quantity INTEGER,
price_per_unit INTEGER,
total_amount INTEGER

);

---------------

SELECT *
FROM public.sales;

COPY sales FROM 'C:/Users/shtes/Desktop/sales_01_2025.csv' DELIMITER ','
CSV HEADER;

---------------

--UPDATE sales
--SET price_per_unit = 51
--WHERE transaction_id = 1 

---------------

ALTER TABLE public.sales
ADD COLUMN country VARCHAR (20) 

ALTER TABLE public.sales
ALTER COLUMN country SET DEFAULT 'USA';

INSERT INTO public.sales VALUES (1001,'2025-01-18','TEST','TEST',99,'TEST',2,2,4,DEFAULT)

----------------
DELETE FROM public.sales
WHERE transaction_id = '1001'
ALTER TABLE public.sales DROP country





