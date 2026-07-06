-- MODIFY, DROP, TRUNCATE, SP_RENAME, CHARACTER()

select * from emp
begin transaction 

-- modifying column empno data type to int ?
alter table emp 
alter column empno int

sp_help emp  --to see table structure 

alter table emp
alter column empno tinyint  -- ERROR -exesting values in empno are not in tinyint range(0 to 225)

-- modify column hiredate datatype t0 datetime
alter table emp
alter column hiredate datetime
select * from emp
sp_help emp

-- increase the size of ename 20 ?
alter table emp
alter column ename varchar(20)

alter table emp
alter column ename varchar(5)  -- ERROR -> becouse some names more then 5 char so.


-- DROP Commands:
select * from student

-- drop the student table
drop table student

-- TRUNCATE Commands:
-- delete all the data from table but keep structure
select * from cust

truncate table cust

-- SP_RENAME:
-- command used to rename table or column 
select * from emp

sp_rename 'emp', 'emp123'
select * from emp123
sp_help emp123

-- rename column comm to bonus in emp123 table ?
sp_rename 'emp123.COMM', 'bonus'
selece * from emp123


--BUILTIN Function:-
--Character function:
-- UPPER() & LOWER()

select upper ('sibananda jena')
select lower ('SIBANANDA JENA')

-- display empno, ename, sal ?
-- display names in lower case 
select empno , lower(ename) as ename, sal from emp123

--LEN() :-
-- returns  string length i.e no of characters

select len('sibananda jena')


