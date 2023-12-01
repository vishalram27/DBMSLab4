-- Display the Id and Name of the Product ordered after “2021-10-05”.

select p.pro_id,p.pro_name from product as p
inner join 
(
	SELECT o.*, sp.pro_id FROM orders AS O
	inner join 
	supplier_pricing as sp on sp.pricing_id=o.pricing_id and O.ord_date>"2021-10-05"
) as q 
on p.pro_id = q.pro_id;
