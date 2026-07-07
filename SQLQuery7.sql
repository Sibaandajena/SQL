select * from emp123

 select * from emp123 where ename like'----'

 select * from emp123 where len(ename) =5

 select * from emp123 where len(ename) >=5

 select * from emp123 where len(ename) <=5

 select left ('hell welcome',5) --hello
 select right ('hell welcome',7) --welcome

 --employee name starts and ends with same char ?
 select * from emp123 where left(ename, 1) = right(ename, 1)

 update emp123 set ename='nitin' where empno= 7499

 select * from emp123


 select empno,ename,
          left(ename,3) + left(empno,3)+'@tcs.com' as emailid
  from emp123

  --how to store emailids in db ?
  alter table emp123 add emailid varchar(20)

       select * from emp123

  update emp123 set emailid =left(ename,3) + left(empno,3)+'@tcs.com' 

  --returns chars string from specific position 
  select substring('HELLO WELCOME',1,5) --HELLO
  select substring('HELLO WELCOME',7,5) --WELCO
  select substring('HELLO WELCOME',10) --COME


  --returns position of character in a string
  select charindex('O','HELLO WELCOME') -- 5
  select charindex('K','HELLO WELCOME') -- 0
  select charindex('O','HELLO WELCOME',6) -- 11



  sp_rename 'emp123', 'emp'

  select * from emp

  select ename, replicate('*****', len(sal)) as sal from emp

  -- your a/c no XXXX9456 debited ?
  --select replicate('X',4)  + right(accno,4)




