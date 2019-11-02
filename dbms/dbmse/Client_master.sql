create table client_master(
	Client_no varchar(6),
	sname varchar(20),
	address varchar(30),
	City varchar(15),
	Pincode numeric(8),
	State varchar(15),
	Bal_due numeric(10,2)
	);

create table product_master(
	product_no varchar(6),
	description varchar(6),
	profit_percent numeric(4,2),
	Unit_measure varchar(10),
	Qty_on_hand numeric(8),
	Recorder_level numeric(8),
	Sell_price numeric(8,2),
	Cost_price numeric(8,2)
	);

insert into client_master values(1,'Moon','Santacruz','Mumbai','400055','Maharashtra',1000);
insert into client_master values(2,'Earth','Virar','Mumbai','400655','Maharashtra',2000);
insert into client_master values(3,'Sun','Vasai','Mumbai','400455','Maharashtra',3000);
insert into client_master values(4,'Venus','Mira Road','Mumbai','400355','Maharashtra',4000);
insert into client_master values(5,'Jupiter','Bhayander','Mumbai','402055','Maharashtra',5000);
insert into client_master values(6,'Saturn','Borivali','Mumbai','410055','Maharashtra',6000);

insert into product_master values('1','wet',50,'20',5,2,1000,1000);
insert into product_master values('2','Bitter',20,'20',5,2,2000,2000);
insert into product_master values('3','Fluid',10,'20',5,2,10000,10000);
insert into product_master values('4','Easy',80,'20',5,2,500,500);
insert into product_master values('5','milky',60,'20',5,2,5000,5000);

Select sname from client_master;
Select sname from client_master;
Select * from client_master;
Select sname,City from client_master;
Select * from product_master;
select sname from client_master where City='Mumbai';
-- update client_master SET city='Delhi' where sname='Moon';
update client_master SET bal_due=1000 where client_no='5';
update product_master SET Cost_price=3000 where description='wet';
delete from product_master where Qty_on_hand<100;
delete from client_master where state='Tamil Nadu';





