-- create student table

CREATE TABLE student
(
son INT, sname VARCHAR(10), s1 INT, s2 INT, s3 INT
)

INSERT INTO student VALUES(1, 'A', 80, 70, 60), (2, 'B', 30, 60, 50),(3, 'C', 60, 40, 50)

CREATE TABLE result(sno INT, total INT, avg DECIMAL(5,2), result VARCHAR(4))


insert into result
select son, 
       s1+s2+s3 as total,
       (s1+s2+s3)/3 as avg,
       case 
       when s1>=35 and s2>=35 and s3>=35 then 'pass'
       else 'fail'
       end as result
from student

select * from student

-- display Job wise summary (max sal, min sal, total sal, avg sal, no of emps)

select job, min(sal) as minsal, 
            max(sal) as maxsal,
            sum(sal) as totalsal,
            avg(sal) as avgsal,
            count(*) as count
from emp
group by job

-- display year wise no of employees Joined ?

select datepart (yy,hiredate) as year, count('*') as count
from emp

group by datepart(yy, hiredate)

-- no of employees joined in each quarter in the year 1981 ?
select datepart(qq, hiredate) as quarter , count(*) as count
from emp 
where datepart(yy, hiredate) = 1981
group by datepart(qq, hiredate)