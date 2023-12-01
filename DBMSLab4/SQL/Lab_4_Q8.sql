-- Create a stored procedure to display supplier id, name, rating and Type_of_supplier.
-- If rating >4 then “Genuine Supplier” if rating >2 “Average Supplier” else “Supplier should not be considered”. 
-- Created stored procedure below it is showing error but its created the stored procedure and exceuted successfully

CREATE PROCEDURE 'supplier_ratings'()
BEGIN
select report.supp_id, report.Average,
CASE
	WHEN report.Average =5 THEN 'Excellent Service'
	WHEN report.Average >4 THEN 'Good Service'
	WHEN report.Average >2 THEN 'Average Service'
	ELSE 'Poor Service'
END AS Type_of_Service from
 (
	select test2.supp_id, avg(rat_ratstar) as Average from
	(
		select sp.supp_id,t1.ord_id,t1.rat_ratstar from supplier_pricing as sp
		inner join
		(
			select o.pricing_id, rat.ord_id , rat.rat_ratstar from orders as o
			inner join 
			rating as rat on o.ord_id = rat.ord_id
		) as t1 on sp.pricing_id =t1.pricing_id
	) as test2 group by test2.supp_id
) as report;
END

-- To execute the stored procedure we have to use the below sql code
-- Method one if DB is not selected

call e_commerce.supplier_ratings();

-- Method two if DB is selected

call supplier_ratings();