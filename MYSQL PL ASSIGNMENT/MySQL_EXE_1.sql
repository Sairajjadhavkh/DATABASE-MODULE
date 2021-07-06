create database MySQL_Exercise_1;
# 1. Write a program that computes the perimeter and the area of a rectangle. Define your own values for the length and width. (Assuming that L and W are the length 
# and width of the rectangle, Perimeter = 2*(L+W) and Area = L*W. 

create table output(A varchar(50), B int);

delimiter //
create procedure Rectangle(l int,b int)
begin
	declare peremeter int;
	declare area int;
    set area=l*b;
    set peremeter=2*(l+b);
    insert into output values ('area=',area);
    insert into output values ('Peremeter=',peremeter);
end; //
delimiter ;


set @l=3;
set @b=4;
call Rectangle(@l,@b);
select * from output;

truncate table output;


# 2. Write a program that declares an integer variable called num, assigns a value to it, and computes and inserts into the tempp table the value of the variable itself, its 
# square, and its cube. 

create table temppp (num int,square int,cube1 int);

delimiter //
create procedure abc1(num int)
begin
	declare square int;
    declare cube1 int;
    set square=num*num;
    set cube1 =num*num*num;
    insert into temppp values (num,square,cube1);
end; //
delimiter ;
drop procedure abc1;
call abc1(23);
select * from temppp;


/* 3. Convert a temperature in Fahrenheit (F) to its equivalent in Celsius (C) and vice versa. The required formulae are:- C= (F-32)*5/9 F= 9/5*C + 32 */

create table temperature(F float,C float);

delimiter //
create procedure temp2(C float)
begin
	declare F float;
    declare Ce float;
    set F=9/5*C + 32;
    set Ce= (F-32)*5/9;
    insert into temperature values (Ce,F);
end; //
delimiter ;
drop procedure temp2;
call temp2(97);

select * from temperature;

/*4. Convert a number of inches into yards, feet, and inches. For example, 124 inches 
equals 3 yards, 1 foot, and 4 inches.*/


create table area1 (inches float,yards float,feet float);


delimiter //
create procedure temp3(inch float)
begin
	declare yard float;
    declare feet float;
    set yard=inch/36;
    set feet=inch/12;
    insert into area1 values (inch,yard,feet);
end; //
delimiter ;

call temp3(24);
select * from area1;



/* 5. Write a program that enables a user to input an integer. The program should then 
state whether the integer is evenly divisible by 5. */

create table xyz (b int,a boolean);
drop table xyz;
alter table xyz modify a varchar(30);

delimiter //
create procedure temp4(num int)
begin
    if mod(num,5)=0 then
    
    insert into xyz values(num,'Divisible by 5');
    else
    insert into xyz values(num,'not divisible by 5');
    end if;
end; //
delimiter ;
drop procedure temp4;
call temp4(305);
select * from xyz;


/*6. Your block should read in two real numbers and tell whether the product of the two 
numbers is equal to or greater than 100. */

create table realno(a varchar(30));


delimiter //
create procedure realno1(num1 int,num2 int)
begin
	declare product int;
    set product=num1*num2;
    if product>100 then
    insert into realno values('yes greater 100');
	elseif product=100 then
    insert into realno values('equal to 100');
    else
    insert into realno values('not greater than 100');
    end if;
end; //
delimiter ;

call realno1(20,5);

select * from realno;









