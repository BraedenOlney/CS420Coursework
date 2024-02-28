/*CS 420
Final Exam Answer Sheet for SQL statements

Insert you SQL statements after the line with the question number. The SQL statement should not be included in any comment statement. Be sure that the statement is also in the Word document.

Q8*/
SELECT w.wh_name,
	p.product_name
FROM warehouses w
	JOIN product_locations pl
		ON w.warehouse_id = pl.wh_id
	JOIN products p
		ON pl.prod_id = p.product_id
WHERE pl.qty_on_hand > 0
;

/*
Q10*/
	SELECT c.first_name,
		c.last_name
	FROM customers c
		JOIN orders o
			ON c.customer_id = o.customer_id
		JOIN order_lines ol
			ON o.order_id = ol.order_id
		JOIN products p
			ON ol.product_id = p.product_id
	WHERE p.product_name = 'Fender Stratocaster'
INTERSECT
	SELECT c.first_name,
		c.last_name
	FROM customers c
		JOIN orders o
			ON c.customer_id = o.customer_id
		JOIN order_lines ol
			ON o.order_id = ol.order_id
		JOIN products p
			ON ol.product_id = p.product_id
	WHERE p.product_name = 'Gibson SG'
;


/*
Q13*/
SELECT c.first_name,
	c.last_name,
    COUNT(*)	AS orders
FROM customers c
	JOIN orders o
		ON c.customer_id = o.customer_id
GROUP BY o.customer_id
ORDER BY orders DESC
LIMIT 2
;







