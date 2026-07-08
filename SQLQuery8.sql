select * from emp 

select replace ('HELLO', 'ELL', 'ABC')  --HABCO
select replace ('HELLO', 'L', 'ABC')  --HEABCABCO
select replace ('HELLO', 'ELO', 'ABC')  --HELLO

select replace('@@HE@@LL@@O@@', '@', '') --HELLO

set IMPLICIT_TRANSACTIONS on

select replace (HIREDATE, '-04-', '-10-') from emp

update emp 
set hiredate = replace(hiredate, '-04-', '-10-')
select * from emp

-- TRANSLATE()

select translate('HELLO', 'ELO', 'ABC') -- HABBO

select ename, translate (sal, '0123456789.', '$bT*#&@^%!k') as sal from emp

--Remove all special chars
select replace (translate('!@HE#$LL%^O&*', '!@#$%^&*', '@@@@@@@@'), '@', '') --HELLO

--DATE():-
select datepart (yy,getdate()) --2026
select datepart (mm,getdate()) --7
select datepart (dd,getdate()) --8
select datepart (dw,getdate()) --4
select datepart (dy,getdate()) --189
select datepart (hh,getdate()) --15
select datepart (mi,getdate())--9
select datepart (ss,getdate())--28
select datepart (qq,getdate())--3


select ename, datepart(yy,hiredate) as year_of_join from emp

select * from emp where datepart(yy, hiredate) in (1980, 1983, 1985)

--who are joined in leap year ?
select * from emp where datepart(yy, hiredate) %4 = 0

--who joined on sunday ?
select * from emp where datepart(dw, hiredate) = 1

select * from emp where datepart(dw, hiredate) = 1

-- who joined in 2nd quater of 1981 years
select * from emp where datepart(yy, hiredate)=1981 
                              and datepart(qq, hiredate)= 2

--display ename day
select ename, hiredate , datename(dw, hiredate) as day from emp 

--write a quary to display on which dayindia got independence?
select datename(dw,'1947-08-15') 

select dateadd(dd,10,getdate()) --add 10 days to getdate
select dateadd(mm,-2,getdate()) --substract 2 months from getdate 




