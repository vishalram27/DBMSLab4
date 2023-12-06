-- Display the Id and Name of the Product ordered after “2021-10-05”.

SELECT p.pro_id,p.pro_name FROM product AS p
INNER JOIN 
(
	SELECT o.*, sp.pro_id FROM orders AS O
	INNER JOIN
	supplier_pricing AS sp ON sp.pricing_id=o.pricing_id AND O.ord_date>"2021-10-05"
) AS q 
ON p.pro_id = q.pro_id;
