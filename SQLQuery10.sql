select * from emp

select ename, sal, comm, (sal+comm) as total from emp 

select ename, sal, comm, sal+isnull(comm,0) as totsal from emp

select ename, sal, isnull(comm,'N/A') as comm from emp  -- ERROR

select ename, sal, isnull(cast(comm as varchar),'N/A') as comm from emp

select coalesce(null,100,null,200) --100
select coalesce(100,200, 300,400) --100


create table T1 (D varchar(20))

insert into T1 values('13-07-2026'),('07/13/2026'),('13.07.2026'),('07-13-2026'),('20120713')

select * from T1


select empno, ename, sal, 
       rank() over (order by sal desc) as rank from emp

       select * from emp


select ename, sal, deptno from emp

select ename, sal,
       DENSE_RANK() OVER(partition by deptno order by sal) from emp


select ename, sal,
       DENSE_RANK() OVER(partition by deptno order by sal) as rank from emp

select empno, ename, sal,
       ROW_NUMBER() OVER(ORDER BY sal DESC) as rno from emp

select empno, ename, sal ,
        row_number() over(order by empno asc) from emp


with e as
     (select empno, ename, sal,
            row_number() over(order by empno asc) as rno
            from emp
         )

    select * from e where rno=5


with e as
     (select empno, ename, sal,
            row_number() over(order by empno asc) as rno
      from emp
     )

    select * from e where rno=5
                    --where rno in(5,10,15)
                    --where rno between 5 and 10
                    --where mo%2=0
                    --where mo%2=1

set implicit_transactions on

with e as
     (select empno, ename, sal,
            row_number() over (order by empno asc) as rno
     from emp
     )
     delete from e where rno =5

 select * from emp


 --create emp44 table
 create table emp44(eno int , ename varchar(10), sal money)

 insert into emp44 values (1, 'A', 5000), (2, 'B', 6000), (3, 'C', 7000),
                          (4, 'D', 5000), (5, 'E', 6000)

    select * from emp44


select eno, ename, sal,
       row_number() over(partition by eno, ename, sal order by eno asc) as rno

from emp44

-- to delete duplicates delete the records with rno>1
with e as
      (select eno, ename, sal,
              row_number() over(partition by eno, ename, sal order by eno asc) as rno

       from emp44)
      delete from e where rno >1
     
     select * from emp44







