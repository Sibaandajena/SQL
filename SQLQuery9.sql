select * from emp

select cast(getdate() as date)

select getdate()

insert into emp(empno , ename, sal, hiredate) 
      values(100, 'ABC', 2000, getdate())

      select * from emp

select * from emp where hiredate = getdate()
select * from emp where hiredate = cast(getdate() as date)


select * from gold_rates where dateid = cast(getdate() as date)

select + from gold_rates where dateid = cast(getdate() as date)

select * from gold_rates wherre dateid = cast(getdate(dd, -1, getdate()) as date)

select * from gold_rates where dateid = cast(dateadd(yy, -1, getdate()) as date)

select * from gold_rates where dateid between cast(dateadd(mm, -1, getdate()) as date )
                                                    and cast (getdate() as date)


--DATEDIFF():-

select datediff(dd, '2025-07-10', getdate())
select datediff(mm, '2025-07-10', getdate())
select datediff(yy, '2025-07-10', getdate())


-- display ename experience in years ?
select ename , datediff(yy, hiredate, getdate()) as experience from emp 

select ename , datediff(mm, hiredate, getdate())/12 as years, 
               datediff(mm,hiredate, getdate())%12 as months from emp 

select ename , datediff(dd, hiredate, getdate())/365 as years, 
              ( datediff(dd,hiredate, getdate())%365)/30 as months
              ( datediff(dd,hiredate, getdate())%365)%30 as days from emp 
               from emp 


select round(38.4678,0) -- 38
select round(38.5678,2) -- 38.57
select round(38.4678,1) -- 38.50

select round(386, -1) -- 390
select round(386, -2) -- 400
select round(386, -3) -- 0
select round(586, -3) -- 1000


--CEILING:-

select ceiling(3.9) --4


-- FLOOR:-

select floor(3.9)--3

select cast(10.5 as int)
select cast(10 as decimal(4,2))
select cast (getdate() as


