create table Company1(
		id int,
	cname text not null,
	age int not null,
	address varchar(50),
	salary real
);
insert into company1 values(01,NULL,null,'LA',250000000)

create table company3(
id int not null,
	name text,
	age int unique,
	address varchar(50),
	salary real
);

insert into company3 values(02,'caja',25,'nj',50000);
insert into company3 values(02,'caja',25,'nj',50000);


create table company4(
	id int primary key,
	name text,
	age int,
	address varchar(50),
	salary real
);
select * from company4;
insert into company4 values(03,'gavin',11,'vasai',400000000);
insert into company4 values(03,'gavin',11,'vasai',400000000);


create table employee(
 	id int primary key,
	 name text,
	 age int,
	 address varchar(50),
	 salary real
 );
 
 create table department(
 id int primary key,
 name varchar(50)not null,
 empid int references employee(id)
 );
 
 
 insert into employee values (1,'jon',11,'goa',5000);
 insert into employee values (2,'ken',11,'kerla',696969);
 
 
 select * from employee
 
  insert into department values (07,'rex',1);
  insert into department values (08,'hex',2);


create table company5(
	id int,
	name text,
	age int,
	address varchar(50),
	salary real check (salary>0)
	)
	  insert into company5 values (09,'rahim',26,'chunaria',-1);


