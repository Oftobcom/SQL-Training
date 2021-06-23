SELECT 3+2, 3-2, 3/2, 3*2;

SELECT t.*, price * amount AS total
FROM income t

SELECT product_id, price
from income t

SELECT product_id, price, price/100*15 percent15,  price + price/100*15 plus15
from income t

SELECT 
	product_id, 
	price, 
	round(price/100*15,2) percent15,  
	round(price + price/100*15,2) plus15
from income t

SELECT * 
FROM income
WHERE amount > 200

SELECT * 
FROM income
WHERE price <= 10


SELECT * 
FROM outcome
WHERE product _id = 4

SELECT dt, product_id, amount, price
FROM outcome
WHERE amount = 20 AND price >= 10

SELECT t1.id, t1.dt, product_id, t2.title, t1.amount, t1.price
FROM income t1, product t2
WHERE t1.product_id = t2.id
