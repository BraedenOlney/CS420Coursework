/*CS 420
Assignment 9 Answer Sheet for SQL statements

Insert you SQL statements after the line with the question number. The SQL statement should not be included in any comment statement

Q1*/
SELECT first_name,
last_name,
email_address
FROM customers
WHERE email_address LIKE '%gmail.com'
;


/*
Q2*/
SELECT prod_id, wh_id
FROM product_locations
WHERE qty_on_hand < 2
;


/*
Q3*/
SELECT wh_name,
wh_sq_footage,
wh_sq_footage * 1.05 as increased_sq_footage
FROM Warehouses
;


/*
Q4*/
SELECT DISTINCT prod_id,
	SUM(qty_on_hand) AS total_item_qty
FROM product_locations
GROUP BY prod_id
ORDER BY total_item_qty DESC
LIMIT 2
;


/*
Q5
No SQL for Q5
*/



/*
Q6
No SQL for Q6
*/



/*
Q7*/
SELECT prod_id,
wh_id
FROM product_locations
WHERE qty_on_hand<(
	SELECT mEoq.max_eoq
	FROM (
		SELECT prod_id, MAX(eoq) AS max_eoq
		FROM product_locations
		GROUP BY prod_id
	)mEoq
	WHERE  prod_id = product_locations.prod_id
)
;
