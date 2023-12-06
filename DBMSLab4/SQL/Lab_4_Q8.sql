-- Create a stored procedure to display supplier id, name, rating and Type_of_supplier.
-- If rating >4 then “Genuine Supplier” if rating >2 “Average Supplier” else “Supplier should not be considered”. 
-- Created stored procedure below the stored procedure is exceuted successfully.

CREATE PROCEDURE 'supplier_ratings'()
BEGIN
SELECT report.supp_id, report.Average,
CASE
	WHEN report.Average =5 THEN 'Excellent Service'
	WHEN report.Average >4 THEN 'Good Service'
	WHEN report.Average >2 THEN 'Average Service'
	ELSE 'Poor Service'
END AS Type_of_Service FROM
 (
	SELECT test2.supp_id, avg(rat_ratstar) AS Average FROM
	(
		SELECT sp.supp_id,t1.ord_id,t1.rat_ratstar FROM supplier_pricing AS sp
		INNER JOIN
		(
			SELECT o.pricing_id, rat.ord_id , rat.rat_ratstar FROM orders AS o
			INNER JOIN 
			rating AS rat ON o.ord_id = rat.ord_id
		) AS t1 ON sp.pricing_id =t1.pricing_id
	) AS test2 GROUP BY test2.supp_id
) AS report;
END

-- To execute the stored procedure we have to use the below sql code

-- Method one if DB is not selected
CALL e_commerce.supplier_ratings();

-- Method two if DB is selected
CALL supplier_ratings();
