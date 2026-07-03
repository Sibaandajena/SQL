select * from emp order by hiredate asc

select empno, ename, sal, deptno
from emp
order by deptno asc, sal desc

select empno, ename, sal, deptno
from emp
order by deptno asc, sal desc, ename asc

select * 
from emp 
where hiredate like '1981%'
order by ename asc





create table student
( 
  sno int,
  sname  varchar(10),
  m  int,
  p  int,
  c  int
  )

   insert into student values(1, 'A', 80, 90, 70), (2,'B',60, 70, 50),
                             (3, 'C', 90,70,80 ), (4, 'D', 90, 80, 70)

select * , m+p+c as total
from student
order by (m + p + c) desc, m desc, p desc

