select deptno, count(*)
from emp
where count(*) > 3
group by deptno -- ERROR

-- sql server can't calculate dept wise count before group by and it ca calculate after groupy ,
--so apply the codition COUNT(*) >3 after group by using havig clause

select deptno, count(*)
from emp
group by deptno 
having count(*) > 3


--create orders table

select custid, cout(*) as orders
from orders
where ordt>= dateadd(mm,-6,getdate()
group by custid 
having count(*)> 5
















