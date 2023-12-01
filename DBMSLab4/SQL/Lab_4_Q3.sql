-- Q.4.Display the total number of customers based on gender who have placed individual orders of worth at least Rs.3000.

SELECT COUNT(T2.cus_gender) AS No_Of_Customer,T2.cus_gender AS Gender FROM 
(
	SELECT T1.cus_id,T1.cus_gender,T1.ord_amount,T1.cus_name FROM 
	(
		SELECT o.* , c.cus_name,c.cus_gender FROM orders AS o
		INNER JOIN customer AS c
		ON c.cus_id=o.cus_id HAVING o.ord_amount>=3000
	) AS T1 
) AS T2 GROUP BY T2.cus_gender;