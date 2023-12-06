-- Display all the orders along with product name ordered by a customer having Customer_Id=2

SELECT q.cus_id, q.cus_name,q.ord_id, product.pro_name FROM
(
	SELECT c.cus_id,c.cus_name, p.ord_id,p.ord_amount, p.pro_id FROM
	(
		SELECT O.*, sp.pro_id FROM orders AS O
		INNER Join supplier_pricing AS sp
		WHERE o.pricing_id=sp.pricing_id
	) AS p
	INNER Join customer AS c
	WHERE p.cus_id=c.cus_id AND c.cus_id=2
) AS q
INNER Join product
ON q.pro_id= product.pro_id;
