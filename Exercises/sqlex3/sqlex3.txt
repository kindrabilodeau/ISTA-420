--Name: Kindra Bilodeau
--File: SQL Exercise 3
--Date: January 26, 2019

--Question 1.
select od.orderid, od.productid, od.unitprice, od.quantity, (select od1.unitprice * od1.quantity from order_details od1 where od.productid = od1.productid ) as LineTotal, (select od2.unitprice * od2.quantity from order_details od2 where od2.productid = od.productid) / (select sum(od3.unitprice * od3.quantity)
 from order_details od3 where od3.orderid = od.orderid group by (od3.orderid )) * 100 as PctOfTotalOrder from order_details od limit 15;


--Question 2. I want to know the unique (distinct) cities, regions, and postal codes:
--(a) where we have both customers and employees,
--Part A :
select c.city, c.region, c.postalcode, c.customerid, c.companyname, e.employeeid, e.lastname, e.firstname from customers c join employees e on c.city = e.city group by c.city;

--Part B:where we have customers but no employees AND both customers and employees
select distinct e.city, e.region, e.postalcode, c.city, c.region, c.postalcode from employees e left join customers c where e.city = c.city;

--Part C: where we have employees but no customers AND both customers and employees.
select distinct c.city, c.region, c.postalcode, e.city, e.region, e.postalcode from customers c left join employees e on c.city = e.city;

 --Question 3:Using subqueries, create a report that lists the ten most expensive products.
 --select productid, productname, unitprice from products order by unitprice desc limit 10;
select p.productid, p.productname, (select max(p1.Unitprice) from products p1 where p1.productid = p.productid) as UnitPrice from products p order by p.unitprice desc limit 10;

--Question 4:Using subqueries, create a report that shows the date of the last order by -----all employees.
select  o.employeeid, e.firstname, e.lastname, o.orderdate
from orders o
inner join employees e on o.employeeid = e.employeeid
 where o.orderdate =
(select max(oo.orderdate) from orders oo where o.employeeid = oo.employeeid)
order by o.employeeid;
