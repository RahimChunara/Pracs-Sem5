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

insert into sales values('123','321',5,3,50000,'2018-01-12')
insert into sales values('456','654',4,2,40000,'2018-03-15')
insert into sales values('789','987',3,1,33000,'2018-06-19')
insert into sales values('012','210',5,3,50000,'2018-09-18')
insert into sales values('345','543',5,3,50000,'2018-02-27')
insert into sales values('76','54',18,9,500000,'2018-09-27')

insert into cust values(1,'abc','cba','5000034500')
insert into cust values(2,'def','fed','5013445500')
insert into cust values(3,'ghi','ihg','5078655400')
insert into cust values(4,'jkl','lkj','5123400050')

insert into cust_order values(1,'123')
insert into cust_order values(2,'456')
insert into cust_order values(3,'789')
insert into cust_order values(4,'012')
insert into cust_order values(4,'76')

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