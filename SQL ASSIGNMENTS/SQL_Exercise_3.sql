use sql_exercise_1;

select concat (upper(substr(sname,1,1)), lower(substr(sname,2))) "initial_letter_capital" from s ;

select upper(sname) from s;

select lower(sname) from s;

select lpad(sname,25,' ') "Sname" from s;
insert into S(Sno, Sname ,Status, City)
values ('S6','BLOKE',20,'MUMBAI');

select * from s;
 select replace(sname ,'la','ro') from s;
 
 select replace(replace(sname,'l','r'),'A','o') from s;
 
 select sname,length(sname) from s;
 
 select sname from s where soundex(sname) = soundex('BLOKE');
 
select sname,status,
case 
when status=10 then 'Ten'
when status=20 then 'Twenty'
when status=30 then 'Thirty'
when status=40 then 'fourty'
when status=50 then 'fifty'
when status=60 then 'Sixty'
else 'other'
end " "
from s;
 
 
 select dayname(sysdate()) from  dual;
 
 
 
 