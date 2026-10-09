SELECT*FROM coffeesales;

-- what does the data lool like 

SELECT * FROM coffeesales
LIMIT 10;

-- how many total coffee sales did we make 

SELECT COUNT(*) AS TOTAL_TRANSACTION
FROM coffeesales;

-- Which store location is the busiest?

SELECT store_location , COUNT(*) AS number_of_sales
FROM coffeesales
GROUP BY store_location 
ORDER BY number_of_sales DESC;

--WHICH PRODUCT CATEGORY MAKES THE MOST MONEY?

SELECT product_category , SUM (transaction_qty*unit_price) AS TOTAL_REVENUE
FROM coffeesales
GROUP BY product_category
ORDER BY TOTAL_REVENUE DESC;

-- WHAT ARE THE TOP 5 BEST SELLING SPECIFIC DRINKS ?

SELECT product_type , SUM (transaction_qty*unit_price) AS TOTAL_REVENUE
FROM coffeesales
GROUP BY product_type
ORDER BY TOTAL_REVENUE DESC
LIMIT 5;

--What is the Average Order Value (AOV)?
--When a customer walks in, how much money do they usually spend?

SELECT AVG(transaction_qty*unit_price) AS avg_order_value
FROM coffeesales;

--What is the busiest hour of the day?

SELECT EXTRACT(HOURS FROM transaction_time) AS HOURS_TAKEN,COUNT (*) AS total_orders
FROM coffeesales
GROUP BY HOURS_TAKEN
ORDER BY total_orders DESC;

--Which Month had the highest revenue?

SELECT EXTRACT(MONTH FROM transaction_date) AS month_number,SUM(transaction_qty*unit_price) AS total_revenue
FROM coffeesales
GROUP BY month_number
ORDER BY total_revenue DESC;

