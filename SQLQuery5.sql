-- create a employee table
CREATE TABLE emp
(
EMPNO     SMALLINT ,
ENAME     VARCHAR(10),
JOB     VARCHAR(9),
MGR     NUMERIC(4),
HIREDATE DATE,
SAL     MONEY,
COMM     MONEY,
DEPTNO TINYINT
 )

INSERT INTO EMP VALUES
(7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20)

INSERT INTO EMP VALUES
(7499, 'ALLEN', 'SALESMAN', 7698, '20-FEB-1981', 1600, 300, 30)

INSERT INTO EMP VALUES
(7521, 'WARD', 'SALESMAN', 7698, '22-FEB-1981', 1250, 500, 30)

INSERT INTO EMP VALUES
(7566, 'JONES', 'MANAGER', 7839, '2-APR-1981', 2975, NULL, 20)

INSERT INTO EMP VALUES
(7654, 'MARTIN', 'SALESMAN', 7698, '28-SEP-1981', 1250, 1400, 30)

INSERT INTO EMP VALUES
(7698, 'BLAKE', 'MANAGER', 7839, '1-MAY-1981', 2850, NULL, 30)

INSERT INTO EMP VALUES
(7782, 'CLARK', 'MANAGER', 7839, '9-JUN-1981', 2450, NULL, 10)

INSERT INTO EMP VALUES
(7788, 'SCOTT', 'ANALYST', 7566, '09-DEC-1982', 3000, NULL, 20)

INSERT INTO EMP VALUES
(7839, 'KING', 'PRESIDENT', NULL, '17-NOV-1981', 5000, NULL, 10)

INSERT INTO EMP VALUES
(7844, 'TURNER', 'SALESMAN', 7698, '8-SEP-1981', 1500, 0, 30)

INSERT INTO EMP VALUES
(7876, 'ADAMS', 'CLERK', 7788, '12-JAN-1983', 1100, NULL, 20)

INSERT INTO EMP VALUES
(7900, 'JAMES', 'CLERK', 7698, '3-DEC-1981', 950, NULL, 30)

INSERT INTO EMP VALUES
(7902, 'FORD', 'ANALYST', 7566, '3-DEC-1981', 3000, NULL, 20)

INSERT INTO EMP VALUES
(7934, 'MILLER', 'CLERK', 7782, '23-JAN-1982', 1300, NULL, 10)


--Q. Encrement sal by 20% and comm by 10% only that employees workig as clerk , maager workig for dept 20,30 
update emp 
       set sal= sal+(sal*0.2), comm= comm+(comm*0.1)
       where job in ('clerk' , 'manager')
              and 
                  deptno in (20,30)


-- DELETE Command
-- Q. delete all rows from emp ?
begin transaction

delete from emp

select * from emp

rollback

-- delete employee whose empno = 7369 ?
delete from emp where empno = 7369

--delete only salary (1600) 
update emp 
       set sal= null
       where sal=1600

-- delete rows where job in (clerk, maager, salesman)
delete from emp where job = 'clerk' or job like '%man'

select * from emp
rollback

-- How to see the table structure :
sp_help_emp
select * from emp

--ALTER Commands:
-- add column gender to emp table ?
alter table emp 
      add GENDER char(1) 

-- after adding by default the new column is filled with null ,
-- to insert data into the new column use update command
update emp
       set gender ='m'
       where empno=7499

update emp 
       set gender ='m'

select * from emp

-- drop colum gedeer from tale
alter table emp
      drop column gender
