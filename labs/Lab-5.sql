-- Name: Kindra Bilodeau 
-- File: Lab5.sql
-- Date: January 28, 2019

--1. Mr.Carter Answer:
SELECT orderid, orderdate, custid, empid,
  DATEFROMPARTS(YEAR(orderdate), 12, 31) AS endofyear
FROM Sales.Orders
WHERE orderdate <> DATEFROMPARTS(YEAR(orderdate), 12, 31);

--BOOK ANSWER:
WITH C AS
(
  SELECT *,
    DATEFROMPARTS(YEAR(orderdate), 12, 31) AS endofyear
  FROM Sales.Orders
)
SELECT orderid, orderdate, custid, empid, endofyear
FROM C
WHERE orderdate <> endofyear;

--2.1
select empid, max(orderdate) as maxorderdate 
from sales.orders group by empid;

--2.2
select o.empid, d.maxorderdate, o.orderid, o.custid 
from sales.orders as o join 
	(select empid, max(orderdate) as maxorderdate 
	from sales.orders group by empid) d
	on o.orderdate = d.maxorderdate
	and o.empid = d.empid order by o.empid;
--2.2 using CTE:	 
with d as 
(select empid, max(orderdate) as maxorderdate 
from sales.orders group by empid)
select o.empid, o.orderid, o.custid, d.maxorderdate
from sales.orders o join d on
o.empid = d.empid and 
o.orderdate = d.maxorderdate;

--3.1 
SELECT orderid, orderdate, custid, empid,
  ROW_NUMBER() OVER(ORDER BY orderdate, orderid) AS rownum
FROM Sales.Orders;

--3.2
WITH OrdersRN AS
(
  SELECT orderid, orderdate, custid, empid,
    ROW_NUMBER() OVER(ORDER BY orderdate, orderid) AS rownum
  FROM Sales.Orders
)
SELECT * FROM OrdersRN WHERE rownum BETWEEN 11 AND 20;

--5
select o.empid, year(o.orderdate) as orderyear, sum(od.qty) qty
	from sales.orders o join sales.orderdetails od 
	on o.orderid = od.orderid group by o.empid, year(o.orderdate)
	order by o.empid, year(o.orderdate); 

drop view if exists sales.vemporders;
go
create view sales.vemporders
 as
select o.empid, year(o.orderdate) as orderyear, sum(od.qty) qty
	from sales.orders o join sales.orderdetails od 
	on o.orderid = od.orderid group by o.empid, year(o.orderdate);

SELECT * FROM  Sales.VEmpOrders ORDER BY empid, orderyear;

