select * from s;
select * from p;
select * from j;
select * from spj;

select sname,qty from s,spj
where spj.sno=s.sno;

select pname,qty from p,spj
where spj.pno=p.pno;

select jname,qty from j,spj
where spj.jno=j.jno;

select sname,pname from p,s
where s.City=p.city;

select pname,sum(qty) from p,spj
where spj.pno=p.pno and color='red';

select sum(qty) from s,spj
where spj.sno=s.sno and status=20;

select pname,qty from p,spj
where spj.pno=p.pno and weight>14;

select pname,qty from p,spj
where spj.pno=p.pno and weight<15;

use joints;
select a.ename,b.ename from emp a,emp b
where a.mgr=b.empno ;

