SELECT * FROM S ORDER BY CITY DESC; 

insert into P(Pno, Pname ,Color,Weight, City)
values ('P6','PATRT6','white',12,'London'),
 ('P7','PATRT7','silver',13,'London');
  
select * from p;

select * from p order by city,Pname;

SELECT * FROM S WHERE STATUS BETWEEN 10 AND 20;

select * from p where Weight not between 10 and 15;

select * from p where pname like 's%';

select * from s where city like 'l%';

select * from J where jname like '__O_____';


