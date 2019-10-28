do $$
<<block1>>
Declare
	n int:=534;
	n1 int;n2 int;n3 int;ans int;
Begin
	n1=n/100;
	n2=(n/10)%10;
	n3=n%10;
	ans=n1+n2+n3;
	Raise Notice 'SUM OF 3 DIGITS OF A 3 DIGIT NUMBER IS=% ',ans;
end block1 $$;

-------------------------------------------------------------------------
do $$
<<block2>>
Declare
	n int:=1;
Begin
	while n<=10
	loop
		Raise Notice 'SQUARE OF % number =% ',n,(n*n);
		n:=n+1;
	end loop;
end block2 $$;
-----------------------------------------------------------------------------------



create OR REPLACE function f1() returns varchar(50)
as $$
<<bl>>
declare
	count int:=3; f int; s int;t int;
begin
	f=0;
	s=1;
	Raise Notice 'The Term 1 of Fibonacci series is %',f;
	Raise Notice 'The Term 2 of Fibonacci series is %',s;
	t=f+s;
	Raise Notice 'The Term % of Fibonacci series is %',count,t;
	count=count+1;
	while count<=8
	loop
		f=s;
		s=t;
		t=f+s;
		Raise Notice 'The Term % of Fibonacci series is %',count,t;
		count:=count+1;
	end loop;
return 'Successful';
end;
$$ language plpgsql;

select f1();
