use sql_exercise_1;
select * from s;
select * from p;
select * from j;
select * from spj;

select min(status) from s;

select max(weight) from p;

select avg(weight) from p;
select * from spj;
desc spj;

alter table spj modify Qty int;

select sum(Qty) from spj where pno='p1';

select pno,sum(Qty) from spj group by pno; 

select pno,avg(qty) from spj group by pno; 

insert into spj (sno,pno,jno,Qty)
values ('s6','p6','j6',900);

select pno,max(qty) from spj where qty>800 group by pno;

select status, count(status) from s group by status;

select count(jno) from j group by city;

select count(sname),
case
when status=10 then 'Ten'
when status=20 then 'Twenty'
when status=10 then 'Thirty' 
end " "
from s group by status;
