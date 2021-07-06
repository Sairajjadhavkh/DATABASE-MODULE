USE SQL_EXERCISE_1;
select * from s;
select * from p;
select * from j;
select * from spj;
#1
SELECT SNAME FROM S
WHERE STATUS=
(select status from s where sname='SANKET');

USE JOINTS;
SELECT * FROM EMP;

#2
SELECT ENAME FROM EMP
WHERE Deptno=
(SELECT Deptno FROM EMP WHERE Ename='Arun');	

USE SQL_EXERCISE_1;

#3
select pname from p
where weight>
(select weight from p where color='red');

#4
select jname from j
where city=
(select city from j where city='mumbai');

#5
select pname from p
where weight<
(select weight from p where color='green');

#6






USE JOINTS;
#7
select ename from emp
where sal=
(select min(sal) from emp);

#8






#9











