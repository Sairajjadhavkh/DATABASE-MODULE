create database SQL_Exercise_1;
use SQL_Exercise_1;
create table SEMP
( EMPNO CHAR(4) ,
EMPNAME CHAR(20) ,
BASIC FLOAT(9,2) ,
DEPTNO CHAR(2) ,
DEPTHEAD CHAR(4) );
create table SDEPT
( DEPTNO CHAR(2) ,
DEPTNAME CHAR(15) );

insert into SDEPT(DEPTNO ,DEPTNAME)
values  ('10', 'Development'),('20', 'Training');

SELECT * from SDEPT;

insert into SEMP(EMPNO ,EMPNAME,BASIC,DEPTNO,DEPTHEAD)
values  ('0001', 'SUNIL', 6000, '10',NULL),
('0002', 'HIREN', 8000, '20',NULL),
('0003', 'ALI', 4000, '10', 0001),
('0004', ' GEORGE', 6000, NULL, 0002);
SELECT * FROM SEMP;

create table S
( Sno char(20),
Sname char(20),
Status int,
City char(20) );

create table P
( Pno char(20),
Pname char(20),
Color char(20),
Weight int,
City char(20) );

create table J
( Jno char(20),
Jname char(20),
City char(20) );

DROP table J;

create table SPJ
( Sno char(20),
Pno char(20),
Jno char(20),
Qty char(20) );
insert into S(Sno, Sname ,Status, City)
values ('S1','SAIRAJ',10,'MUMBAI'),
 ('S2','SANKET',20,'London'),
('S3','AHER',30,'Athens'),
('S4','SAHIL',40,'Paris'),
('S5','SAM',50,'Pune');

insert into P(Pno, Pname ,Color,Weight, City)
values ('P1','PATRT1','RED',12,'MUMBAI'),
 ('P2','PATRT2','BLUE',13,'London'),
('P3','PATRT3','GREEN',14,'Athens'),
('P4','PATRT4','YELLOW',15,'Paris'),
('P5','PATRT5','BLACK',10,'Pune');

insert into J(Jno, Jname , City)
values ('J1','PROJECT1','MUMBAI'),
 ('J2','PROJECT2','London'),
('J3','PROJECT3','Athens'),
('J4','PROJECT4','Paris'),
('J5','PROJECT5','Pune');

insert into J(Jno, Jname , City)
values ('J1','PROJECT1','MUMBAI'),
 ('J2','PROJECT2','London'),
('J3','PROJECT3','Athens'),
('J4','PROJECT4','Paris'),
('J5','PROJECT5','Pune');

insert into SPJ(Sno, Pno , Jno ,Qty)
values ('S1','P1','J1','100'),
 ('S2','P2','J2','200'),
('S3','P3','J3','300'),
('S4','P4','J4','400'),
('S5','P5','J5','500');

DROP TABLE SPJ;
 
 INSERT INTO S(Sno, Sname ,Status, City)
 VALUES ('S6','SACHIN',60,'Aurangabad');
 
select * from S;

select Sno,Sname from S;

select Pname,Color from P WHERE City='London';

select * from S where City='Paris';

select * from S where City='Paris' or City='Athens';

select * from J WHERE CITY='Athens';

select * from P WHERE WEIGHT BETWEEN 12 AND 14;

select * from S WHERE status>=20;

select * from S where city!='London';

select city from S;

select *,WEIGHT "GRAM", WEIGHT*1000 "MILLIGRAMS",WEIGHT/1000 "KILOGRAMS" from P ;