-- LAG() & LEAD()

select empno, ename, sal, 
      lag(sal, 1) over (order by empno asc) as prev_sal
from emp

-- create population table
CREATE TABLE population
       (  
             year   INT,
             population  NUMERIC
      )

  INSERT INTO population VALUES(2020,1328024498) ,
                                                         (2021,1402617695),
                                                         (2022,1425423212),
                                                         (2023,1438069596),
                                                         (2024,1450935791),
                                                         (2025,1470935791)

select * from population

-- display year popultion growth ?
select year, population,
       population-lag(population,1) over (order by year asc) as growth
from population

-- display year popultion growth growth_pct ?

with p as
     ( select year,
              population,
              lag(population,1) over(order by year asc) as prev_year_pop
    from population
    )

select year,
       population,
       population-prev_year_pop as growth,
       ((population-prev_year_pop)/prev_year_pop) * 100 as pct
from p

--
select ename, sal,
   lead(sal,1) over (order by empno asc) as next_sal
from emp


-- create sales table
CREATE TABLE sales
 (
    id   INT,
    sdate  date,
    amt    MONEY
  );

 insert into sales values(1,'2026-07-05',1000);
 insert into sales values(2,'2026-07-06',800);
 insert into sales values(3,'2026-07-10',2000);
 insert into sales values(4,'2026-07-11',500);
 insert into sales values(5,'2026-07-15',3000);

 select * from sales

-- display date where no sales in 3 consecutive days?

with e 
as(
   select id, sdate, amt,
       datediff(dd,lag(sdate,1) over (order by id asc) ,sdate) as days
   from sales)
select * from e where days >=3

-- NTILE():-


