create table sales_order(
name varchar(20), order_no varchar(6), order_date date,
client_no varchar(6), delv_addr varchar(25), salesman_no varchar(6),
delv_type varchar(20), billed_yn varchar(20), delv_date date,
order_status varchar(20), daysreqdfordelivery int, city varchar(20),
bal_due int, sellingprice int
);
insert into sales_order values('Ram','123', '2018-01-12','C001','abc','20', 'Prepaid','Invoice Given','2018-01-17','delivered',5,'Mumbai',12000,15000);
insert into sales_order values('Raj','456', '2018-02-18','C002','def','21', 'COD','Invoice Not Given','2018-02-20','delivered',2,'Pune',8000,9500);
insert into sales_order values('Rohit','789', '2018-05-22','C003','ghi','22', 'Prepaid','Invoice Given','2018-05-24','out for delivery',2,'Bengaluru',14000,16000);
insert into sales_order values('Vedant','012', '2018-07-24','C004','jkl','23', 'Prepaid','Invoice Not Given','2018-07-27','shipping',3,'Delhi',3000,3500);
insert into sales_order values('Caje','345', '2018-09-26','C005','mno','24', 'COD','Invoice Given','2018-09-30','order placed',4,'Hyderabad',2500,4500);
insert into sales_order values('Chinmay','678', '2018-09-27','C001','pqr','25', 'COD','Invoice Given','2018-11-30','order placed',3,'Kolkata',1000,1200);
select * from sales_order
select * from sales_order where name like '_a%'

select * from sales_order where city='Mumbai'

select * from sales_order where bal_due>=10000

select  from sales_order where  extract('month' from delv_date)=01

select * from sales_order where client_no='C001' or client_no='C002'

select * from sales_order where sellingprice>2000 and sellingprice<=5000

select order_no,sellingprice*1.5 as "new_price" from sales_order where sellingprice>1500

select count(*) from sales_order

select avg(sellingprice) from sales_order

select min(sellingprice),max(sellingprice) from sales_order

select count(*) from sales_order where sellingprice>1500 

select order_no,extract('day' from order_date) from sales_order

select to_char(order_date,'dd-mm-yyyy') from sales_order



select delv_date as "Delivery Date",to_char( delv_date,'month')as "Month" from sales_order



select now()::date + 15

select extract('day' from age(now()::date,delv_date)) from sales_order

