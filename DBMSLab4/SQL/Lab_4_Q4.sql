-- Display all the orders along with product name ordered by a customer having Customer_Id=2

select q.cus_id, q.cus_name,q.ord_id, product.pro_name from
(
	select c.cus_id,c.cus_name, p.ord_id,p.ord_amount, p.pro_id from
	(
		SELECT O.*, sp.pro_id FROM orders AS O
		inner join supplier_pricing as sp
		where o.pricing_id=sp.pricing_id
	) as p
	inner join customer as c
	where p.cus_id=c.cus_id and c.cus_id=2
) as q
inner join product
on q.pro_id= product.pro_id;