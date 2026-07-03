--DISTICT CLAUSE:-

select distinct job from emp

select distinct deptno from emp

select distinct empno, ename from emp

select distinct * from emp

select * from emp

--TOP CLAUSE:-

select top 5 * from emp

select top 5 * from emp order by sal desc

select distinct top 3 sal from emp order by sal desc

select top 3 * from emp order by hiredate asc

select top 3 ename, hiredate from emp  order by hiredate asc

set implicit_transactions on


--UPDATE COMMAND

update emp set comm =500

rollback
 
update emp set comm=800 where empno=7369

select * from emp