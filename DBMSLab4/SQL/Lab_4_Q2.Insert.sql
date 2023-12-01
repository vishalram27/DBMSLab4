-- Inserting into suppiler
INSERT INTO supplier VALUES(1,"Ram Retails","Delhi",'1234567890');
INSERT INTO supplier VALUES(2,"Vishal Ltd.","Chennai",'2589631470');
INSERT INTO supplier VALUES(3,"Josh products","Banglore",'9785462315');
INSERT INTO supplier VALUES(4,"Roshan Retails","Kochi",'8975463285');
INSERT INTO supplier VALUES(5,"Gokul Ltd.","Lucknow",'7898456532');
-- Inserting into customer
INSERT INTO customer VALUES(1,"AAKASH","DELHI",'M','9988776655');
INSERT INTO customer VALUES(2,"AMAN","NOIDA",'M','9785463215');
INSERT INTO customer VALUES(3,"NEHA","MUMBAI",'F','9944332211');
INSERT INTO customer VALUES(4,"MEGHA","KOLKATA",'F','9994562399');
INSERT INTO customer VALUES(5,"Elango","BANGLORE",'M','7895999999');
-- Inserting into category
INSERT INTO category VALUES( 1,"BOOKS");
INSERT INTO category VALUES(2,"GAMES");
INSERT INTO category VALUES(3,"GROCERIES");
INSERT INTO category VALUES (4,"ELECTRONICS");
INSERT INTO category VALUES(5,"CLOTHES");
-- Inserting into product
INSERT INTO product VALUES(1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM",
(select cat_ID from category where cat_name="GAMES"));
INSERT INTO product VALUES(2,"TSHIRT","SIZE-L with Black, Blue and White variations",
(select cat_ID from category where cat_name="CLOTHES"));
INSERT INTO product VALUES(3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",
(select cat_ID from category where cat_name="ELECTRONICS"));
INSERT INTO product VALUES(4,"OATS","Highly Nutritious from Nestle",
(select cat_ID from category where cat_name="GROCERIES"));
INSERT INTO product VALUES(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",
(select cat_ID from category where cat_name="BOOKS"));
INSERT INTO product VALUES(6,"MILK","1L Toned MIlk",
(select cat_ID from category where cat_name="GROCERIES"));
INSERT INTO product VALUES(7,"Boat EarPhones","1.5Meter long Dolby Atmos",
(select cat_ID from category where cat_name="ELECTRONICS"));
INSERT INTO product VALUES(8,"Jeans","Stretchable Denim Jeans with various sizes and color",
(select cat_ID from category where cat_name="CLOTHES"));
INSERT INTO product VALUES(9,"Project IGI","compatible with windows 7 and above",
(select cat_ID from category where cat_name="GAMES"));
INSERT INTO product VALUES(10,"Hoodie","Black GUCCI for 13 yrs and above",
(select cat_ID from category where cat_name="CLOTHES"));
INSERT INTO product VALUES(11,"Rich Dad Poor Dad","Written by Robert Kiyosaki",
(select cat_ID from category where cat_name="BOOKS"));
INSERT INTO product VALUES(12,"Train Your Brain","By Shireen Stephen",
(select cat_ID from category where cat_name="BOOKS"));
-- Inserting into supplier_pricing
INSERT INTO supplier_pricing VALUES(1,
(select pro_ID from product where pro_name="GTA V"),
(select supp_ID from supplier where supp_name="Vishal Ltd."),1500);
INSERT INTO supplier_pricing VALUES(2,
(select pro_ID from product where pro_name="ROG LAPTOP"),
(select supp_ID from supplier where supp_name="Gokul Ltd."),30000);
INSERT INTO supplier_pricing VALUES(3,
(select pro_ID from product where pro_name="HARRY POTTER"),
(select supp_ID from supplier where supp_name="Ram Retails"),3000);
INSERT INTO supplier_pricing VALUES(4,
(select pro_ID from product where pro_name="TSHIRT"),
(select supp_ID from supplier where supp_name="Josh products"),2500);
INSERT INTO supplier_pricing VALUES(5,
(select pro_ID from product where pro_name="OATS"),
(select supp_ID from supplier where supp_name="Ram Retails"),1000);
INSERT INTO supplier_pricing VALUES(6,
(select pro_ID from product where pro_name="Train Your Brain"),
(select supp_ID from supplier where supp_name="Vishal Ltd."),780);
INSERT INTO supplier_pricing VALUES(7,
(select pro_ID from product where pro_name="Train Your Brain"),
(select supp_ID from supplier where supp_name="Roshan Retails"),789);
INSERT INTO supplier_pricing VALUES(8,
(select pro_ID from product where pro_name="ROG LAPTOP"),
(select supp_ID from supplier where supp_name="Ram Retails"),31000);
INSERT INTO supplier_pricing VALUES(9,
(select pro_ID from product where pro_name="GTA V"),
(select supp_ID from supplier where supp_name="Gokul Ltd."),1450);
INSERT INTO supplier_pricing VALUES(10,
(select pro_ID from product where pro_name="OATS"),
(select supp_ID from supplier where supp_name="Vishal Ltd."),999);
INSERT INTO supplier_pricing VALUES(11,
(select pro_ID from product where pro_name="Boat EarPhones"),
(select supp_ID from supplier where supp_name="Josh products"),549);
INSERT INTO supplier_pricing VALUES(12,
(select pro_ID from product where pro_name="Boat EarPhones"),
(select supp_ID from supplier where supp_name="Roshan Retails"),529);
INSERT INTO supplier_pricing VALUES(13,
(select pro_ID from product where pro_name="MILK"),
(select supp_ID from supplier where supp_name="Vishal Ltd."),105);
INSERT INTO supplier_pricing VALUES(14,
(select pro_ID from product where pro_name="MILK"),
(select supp_ID from supplier where supp_name="Ram Retails"),99);
INSERT INTO supplier_pricing VALUES(15,
(select pro_ID from product where pro_name="TSHIRT"),
(select supp_ID from supplier where supp_name="Gokul Ltd."),2999);
INSERT INTO supplier_pricing VALUES(16,
(select pro_ID from product where pro_name="HARRY POTTER"),
(select supp_ID from supplier where supp_name="Vishal Ltd."),2999);
-- Inserting into orders
INSERT INTO orders VALUES (101,1500,"2021-10-06",
(select cus_ID from customer where cus_phone="9785463215"),
(select pricing_id from supplier_pricing where supp_price="1500"));
INSERT INTO orders VALUES(102,1000,"2021-10-12",
(select cus_ID from customer where cus_phone="9944332211"),
(select pricing_id from supplier_pricing where supp_price="1000"));
INSERT INTO orders VALUES(103,30000,"2021-09-16",
(select cus_ID from customer where cus_phone="7895999999"),
(select pricing_id from supplier_pricing where supp_price="30000"));
INSERT INTO orders VALUES(104,1500,"2021-10-05",
(select cus_ID from customer where cus_phone="9988776655"),
(select pricing_id from supplier_pricing where supp_price="1500"));
INSERT INTO orders VALUES(105,3000,"2021-08-16",
(select cus_ID from customer where cus_phone="9994562399"),
(select pricing_id from supplier_pricing where supp_price="3000"));
INSERT INTO orders VALUES(106,1450,"2021-08-18",
(select cus_ID from customer where cus_phone="9988776655"),
(select pricing_id from supplier_pricing where supp_price="1450"));
INSERT INTO orders VALUES(107,789,"2021-09-01",
(select cus_ID from customer where cus_phone="9944332211"),
(select pricing_id from supplier_pricing where supp_price="789"));
INSERT INTO orders VALUES(108,780,"2021-09-07",
(select cus_ID from customer where cus_phone="7895999999"),
(select pricing_id from supplier_pricing where supp_price="780"));
INSERT INTO orders VALUES(109,3000,"2021-08-10",
(select cus_ID from customer where cus_phone="7895999999"),
(select pricing_id from supplier_pricing where supp_price="3000"));
INSERT INTO orders VALUES(110,2500,"2021-09-10",
(select cus_ID from customer where cus_phone="9785463215"),
(select pricing_id from supplier_pricing where supp_price="2500"));
INSERT INTO orders VALUES(111,1000,"2021-09-15",
(select cus_ID from customer where cus_phone="9994562399"),
(select pricing_id from supplier_pricing where supp_price="1000"));
INSERT INTO orders VALUES(112,789,"2021-09-16",
(select cus_ID from customer where cus_phone="9994562399"),
(select pricing_id from supplier_pricing where supp_price="789"));
INSERT INTO orders VALUES(113,31000,"2021-09-16",
(select cus_ID from customer where cus_phone="9988776655"),
(select pricing_id from supplier_pricing where supp_price="31000"));
INSERT INTO orders VALUES(114,1000,"2021-09-16",
(select cus_ID from customer where cus_phone="9944332211"),
(select pricing_id from supplier_pricing where supp_price="1000"));
INSERT INTO orders VALUES(115,3000,"2021-09-16",
(select cus_ID from customer where cus_phone="7895999999"),
(select pricing_id from supplier_pricing where supp_price="3000"));
INSERT INTO orders VALUES(116,99,"2021-09-17",
(select cus_ID from customer where cus_phone="9785463215"),
(select pricing_id from supplier_pricing where supp_price="99"));
-- Inserting into rating
INSERT INTO rating VALUES(1,
(select ord_ID from orders where ord_date="2021-10-06"),4);
INSERT INTO rating VALUES(2,
(select ord_ID from orders where ord_date="2021-10-12"),3);
INSERT INTO rating VALUES(3,
(select ord_ID from orders where ord_date="2021-09-16" and ord_amount="30000"),1);
INSERT INTO rating VALUES(4,
(select ord_ID from orders where ord_date="2021-10-05"),2);
INSERT INTO rating VALUES(5,
(select ord_ID from orders where ord_date="2021-08-16"),4);
INSERT INTO rating VALUES(6,
(select ord_ID from orders where ord_date="2021-08-18"),3);
INSERT INTO rating VALUES(7,
(select ord_ID from orders where ord_date="2021-09-01"),4);
INSERT INTO rating VALUES(8,
(select ord_ID from orders where ord_date="2021-09-07"),4);
INSERT INTO rating VALUES(9,
(select ord_ID from orders where ord_date="2021-08-10"),3);
INSERT INTO rating VALUES(10,
(select ord_ID from orders where ord_date="2021-09-10"),5);
INSERT INTO rating VALUES(11,
(select ord_ID from orders where ord_date="2021-09-15"),3);
INSERT INTO rating VALUES(12,
(select ord_ID from orders where ord_date="2021-09-16" and ord_amount="789"),4);
INSERT INTO rating VALUES(13,
(select ord_ID from orders where ord_date="2021-09-16" and ord_amount="31000"),2);
INSERT INTO rating VALUES(14,
(select ord_ID from orders where ord_date="2021-09-16" and ord_amount="1000"),1);
INSERT INTO rating VALUES(15,
(select ord_ID from orders where ord_date="2021-09-16" and ord_amount="3000"),1);
INSERT INTO rating VALUES(16,
(select ord_ID from orders where ord_date="2021-09-17"),0);
