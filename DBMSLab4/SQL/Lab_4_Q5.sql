-- Display the Supplier details who can supply more than three product.
-- As sir asked to change it has more than three and the SQL has been written for
-- Display the Supplier details who can supply more than three product.

select supp.* from supplier as supp where supp.supp_id in
(
select sp.supp_id from supplier_pricing as sp group by sp.supp_id having count(sp.supp_id)>3
);