SELECT COUNT(*) FROM income
SELECT COUNT(*) FROM product

SELECT 19*11
-- 19*11 = 209

SELECT COUNT(*)
FROM
(
SELECT i.*
FROM income i, product p
) t

SELECT i.*
FROM income i, product p
WHERE i.product_id = p.id

SELECT i.dt, p.title, i.amount, i.price, i.amount*i.price AS total
FROM income i, product p
WHERE i.product_id = p.id
categoryAND i.dt BETWEEN '2011-06-12' AND '2011-06-14'
ORDER BY i.dt, total DESC


SELECT * FROM product
SELECT * FROM outcome
SELECT * FROM category

SELECT p.id product_id, p.title product_title FROM product p
SELECT c.id category_id, c.title category_title FROM category c

SELECT p.id product_id, p.title product_title, c.id category_id, c.title category_title
FROM product p, category c
WHERE p.ctgry_id = c.id

SELECT 
	o.dt, 
	p.title product_title,
	c.title category_title,
	o.amount,
	o.price,
	o.amount*o.price total
FROM outcome o, product p, category c
WHERE o.product_id = p.id AND p.ctgry_id = c.id
	AND o.dt BETWEEN '2011-06-12' AND '2011-06-14'
	AND c.id IN (1,3,5)
ORDER BY dt
