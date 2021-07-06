SELECT product_id, SUM(amount)
FROM income
GROUP BY product_id

SELECT COUNT(*)
FROM income

SELECT product_id, COUNT(*)
FROM income
GROUP BY product_id

SELECT COUNT(distinct product_id)
FROM outcome

SELECT * 
FROM outcome

SELECT distinct product_id
FROM outcome
ORDER BY product_id

SELECT count(distinct product_id)
FROM outcome

SELECT count(distinct product_id) 
FROM income
ORDER BY product_id

SELECT * 
FROM outcome
ORDER BY product_id

SELECT product_id, SUM(amount*price)
FROM outcome
GROUP BY product_id
ORDER BY product_id


SELECT SUM(price*amount) as total
FROM outcome

SELECT p.title
FROM product p

SELECT p.title, sum(o.amount*o.price) AS total
FROM outcome o, product p
WHERE o.product_id = p.id
GROUP BY p.title
ORDER BY p.title
	
	SELECT p.title, o.amount, o.price, o.amount*o.price AS total
	FROM outcome o, product p
	WHERE o.product_id = p.id
	ORDER BY title

SELECT 
	p.title, 
	min(o.amount*o.price) AS min_summa, 
	max(o.amount*o.price) AS max_summa
FROM outcome o, product p
WHERE o.product_id = p.id
GROUP BY p.title
ORDER BY p.title
