create or replace function factorial() returns integer
as $$
<<block1>>
declare 
	fact int:=1;n int:=4;
begin
	while n>0
    loop
		fact=fact*n;
        n=n-1;
	end loop;
return fact;
end;
$$ language plpgsql
drop function factorial();
select factorial() as "Factorial:";


-------------------------------------------------
create table emp(
	id integer,
    name varchar(100),
    salary integer
    );
    insert into emp values(101,'Gurmit',456456);
    insert into emp values(102,'Ram',100055);
	insert into emp values(103,'Rahim',69696969);
--------------------------------------------------------------
CREATE OR replace function find_avg_sal() returns decimal as $avgsal$
declare 
	average decimal;
    begin
    select avg(salary) into average from emp;
    return average;
    END;
    $avgsal$ language plpgsql;
    
    select find_avg_sal();
    