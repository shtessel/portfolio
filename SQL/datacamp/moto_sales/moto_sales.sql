DROP TABLE moto_sales
CREATE TABLE moto_sales

(

order_number 	VARCHAR,
date DATE,
warehouse 	VARCHAR (20),
client_type VARCHAR (10),
product_line VARCHAR (100),
quantity INT,
unit_price FLOAT,
total FLOAT,
payment VARCHAR (100),
payment_fee FLOAT

);

---------------

SELECT *
FROM public.moto_sales;

COPY public.moto_sales FROM 'C:/Users/shtes/Desktop/moto_sales.csv' DELIMITER ','
CSV HEADER;

SELECT 
	product_line,
    CASE WHEN DATE_PART('month', date) = 6 THEN 'June'
         WHEN DATE_PART('month', date) = 7 THEN 'July'
         WHEN DATE_PART('month', date) = 8 THEN 'August'
    END as month,
    warehouse,
    SUM (total) - SUM (payment_fee) AS net_revenue
FROM public.moto_sales
WHERE client_type = 'Wholesale'
GROUP BY product_line, warehouse, month
ORDER BY product_line, month, net_revenue DESC;
