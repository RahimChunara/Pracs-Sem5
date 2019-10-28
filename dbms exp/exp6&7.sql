create table sales(
	order_no varchar(6) primary key,
	product_no varchar(6),
	qty_order numeric(8),
	qty_disp numeric(8),
	product_rate numeric(10,2),
	order_date date not null
);
drop table sales;

create table cust(
	cid integer primary key,
	cname varchar(25),
	address varchar(25),
	pno numeric(10)
);
drop table cust;


create table cust_order(
	cid int references cust(cid),
	order_no varchar(6) references sales(order_no)
);

drop table cust_order;
select * from cust_order

insert into sales values('123','321',5,3,50000,'2018-01-12');
insert into sales values('456','654',4,2,40000,'2018-03-15');
insert into sales values('789','987',3,1,33000,'2018-06-19');
insert into sales values('012','210',5,3,50000,'2018-09-18');
insert into sales values('345','543',5,3,50000,'2018-02-27');
insert into sales values('76','54',18,9,500000,'2018-09-27');

insert into cust values(1,'abc','cba','5000034500');
insert into cust values(2,'def','fed','5013445500');
insert into cust values(3,'ghi','ihg','5078655400');
insert into cust values(4,'jkl','lkj','5123400050');

insert into cust_order values(1,'123');
insert into cust_order values(2,'456');
insert into cust_order values(3,'789');
insert into cust_order values(4,'012');
insert into cust_order values(4,'76');

select product_no, qty_order from cust cu cross join cust_order co cross join sales s
where cu.cid=co.cid and co.order_no=s.order_no

select product_no, product_rate from cust cu,cust_order co,sales s 
where cu.cid=co.cid and co.order_no=s.order_no


 select avg(qty_order) from cust cu,cust_order co,sales s 
 where cu.cid=co.cid and co.order_no=s.order_no and s.product_rate <= 15000
 
 
 select sum(product_rate) from cust cu,cust_order co,sales s 
 where cu.cid=co.cid and co.order_no=s.order_no and extract('month' from order_date)=01
 
 
 select cname,qty_order from cust cu cross join cust_order co cross join sales s
 where  cu.cid=co.cid and co.order_no=s.order_no and s.qty_order > 10

select cname , Y.max from cust cu,(
select max(X.tq) as "max" from  (
select cu.cname , sum(qty_order) as "tq" from cust cu cross join cust_order co cross join sales s
where cu.cid = co.cid and co.order_no = s.order_no
group by cu.cname ) as  X ) as Y LIMIT 1


----------------------------------------------------------------------------------------
									--EXP 7--
----------------------------------------------------------------------------------------
SELECT product_no , qty_disp FROM sales
WHERE  NOT EXISTS 
(SELECT * FROM cust_order
WHERE sales.order_no = cust_order.order_no);
--2
SELECT cname , address 
FROM cust cross join cust_order cross join sales
WHERE cust.cid = cust_order.cid AND cust_order.order_no = sales.order_no AND cust_order.order_no = '101' ;
--3
SELECT distinct cname
FROM cust cross join cust_order cross join sales
WHERE cust.cid = cust_order.cid AND cust_order.order_no = sales.order_no
and date_part('month', sales.order_date) <= 5;
--4 
SELECT cust.cid , cname
FROM cust cross join cust_order cross join sales
WHERE cust.cid = cust_order.cid AND cust_order.order_no = sales.order_no
AND cust_order.order_no = '103';
--5
SELECT cname
FROM cust cross join cust_order cross join sales
WHERE cust.cid = cust_order.cid AND cust_order.order_no = sales.order_no
AND sales.product_rate> 50000;
--6
SELECT cname , sales.qty_disp , product_rate
FROM cust cross join cust_order cross join sales
WHERE cust.cid = cust_order.cid AND cust_order.order_no = sales.order_no
AND cust.cname = 'Logan';
--7
SELECT product_no FROM sales
WHERE  NOT EXISTS 
(SELECT * FROM cust_order
WHERE sales.order_no = cust_order.order_no);
--8
SELECT X.product_no , X.count , qty_disp FROM sales ,(
SELECT  sales.product_no as "product_no", sum(qty_order) AS "count"
FROM cust cross join cust_order cross join sales
WHERE cust.cid = cust_order.cid AND cust_order.order_no = sales.order_no
GROUP BY sales.product_no
) AS X
WHERE X.product_no = sales.product_no
























