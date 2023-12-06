-- Display the Supplier details who can supply more than three product.
-- As sir asked to change it has more than three and the SQL has been written for Display the Supplier details who can supply more than three product.

SELECT supp.* FROM supplier AS supp WHERE supp.supp_id IN
(
SELECT sp.supp_id FROM supplier_pricing AS sp GROUP BY sp.supp_id HAVING COUNT(sp.supp_id)>3
);
