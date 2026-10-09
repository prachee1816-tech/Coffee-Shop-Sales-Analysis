CREATE TABLE coffeesales (
    transaction_id SERIAL PRIMARY KEY ,
	transaction_date DATE , 
	transaction_time TIME , 
	transaction_qty INT , 
	store_id INT , 
	store_location VARCHAR(50) ,
	product_id INT ,
	unit_price DECIMAL(10,2),
	product_category VARCHAR(50) , 
	product_type VARCHAR (50),
	product_detail VARCHAR(50)
);

SELECT*FROM coffeesales;

DROP TABLE coffeesales;