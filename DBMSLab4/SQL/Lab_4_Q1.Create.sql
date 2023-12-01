-- table 1 supplier
create table supplier
			(supp_id int primary key, 
            supp_name varchar(50) not null,
            supp_city varchar(50) not null,
            supp_phone varchar(50) not null);
-- table 2 customer
create table customer
			(cus_id int primary key, 
            cus_name varchar(30) not null,
            cus_city varchar(50) not null,
            cus_gender char(5),
            cus_phone varchar(50) not null);
-- table 3 category
create table category
			(cat_id int primary key, 
            cat_name varchar(20) not null
            );
-- table 4 product
create table product
			(pro_id int primary key, 
            pro_name varchar(20) not null default "Dummy",
            pro_desc varchar(100),
            cat_id int, foreign key (cat_id) references category(cat_id)
            );
-- table 5 supplier_pricing
create table supplier_pricing
			(pricing_id int primary key,
            pro_id int, foreign key (pro_id) references product(pro_id),
            supp_id int, foreign key (supp_id) references supplier(supp_id),
            supp_price int default 0
            );
-- table 6 orders
create table orders
			(ord_id int primary key,
            ord_amount int not null, 
            ord_date date not null,
            cus_id int, foreign key (cus_id) references customer(cus_id),
            pricing_id int, foreign key (pricing_id) references supplier_pricing(pricing_id)
            );
-- table 7 rating
create table rating
			(rat_id int primary key,
            ord_id int, foreign key (ord_id) references orders(ord_id),
            rat_ratstar int not null
            );