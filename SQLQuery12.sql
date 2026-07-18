-- Aggregste fuctionn:-
--MAX()
select max(sal) from emp
select max(hiredate) from emp
select max(ename) from emp

--MIN()
select min(sal) from emp
select min(ename) from emp

--SUM()

select sum(sal) from emp
-- round total sal to hundred
select round(4567, -2) -- 4600
select round(4567, -1) -- 4570
select round(4567, -3) -- 5000

--show currence symbol?
select format(5000, 'C', 'en-in')

-- after rounding to hundreds display total sal with thousand seperator and currence symbol?
select format(round(sum(sal), -2), 'C', 'en-in') from emp

--AVG()
select avg(sal) from emp --2253.3333

-- round avg sal to lowest integer
select floor(avg(sal)) from emp  --2253.00

--COUNT()
select count(empno) from emp  --15 row
select count(distinct deptno) from emp       

-- display no of employee joined in 1981 year ?
select count(*) from emp where  datepart(yy, hiredate) =1981

-- how many joined on weekends ?
select count(*) from emp where  datepart(dw, hiredate) in (1, 7)

--aggregate functions not allowed in where clause


-- SIMPLE CASE:-
-- create customers table
select custid, cname,
       case 
       when left(gender, 1) in ('F', 'G', 'W') then 'female'
       when left(gender,1) in ('M', 'B') then 'male'
       else 'unknow'
       end as gender
from customers







