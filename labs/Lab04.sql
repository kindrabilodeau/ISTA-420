.echo on
.headers on

-- Name: Kindra Bilodeau
-- File: SQL Lab 4
-- Date: January 23, 2019

--1. Create a report that shows all orders taken by Janet.
select o.orderid, o.orderdate, o.employeeid from orders o
where o.employeeid = (select e.employeeid from employees e where firstname like 'Janet');
--2. Create a report that shows all products by name that are in the Seafood category
select p.productid, p.productname, p.categoryid from products p
where p.categoryid = (select c.categoryid from categories c where c.categoryname like 'Sea%');

--3. Create a report that shows all orders taken by any employee whose last name begins with “A.”
select o.orderid, o.orderdate, o.employeeid from orders o where o.employeeid in
   ...> (select e.employeeid from employees e where e.lastname like 'D%');

-- 4. Create a report that shows the product name and supplier id for all products supplied by Exotic
--Liquids, Grandma Kelly’s Homestead, and Tokyo Traders.
select p.productname, p.supplierid from products p where p.supplier
in (select s.supplierid from suppliers s where s.companyname
   in ('Exotic Liquids', 'Grandma Kelly''s Homestead', 'Tokyo Traders'));

--5. Create a report that shows all products supplied from the Pacific Ocean region.
sub-select returns 2 columns - expected 1
sqlite> select p.productid, p.productname, p.supplierid from products p
 where p.supplierid in (select s.supplierid from suppliers s
 where s.country  in ('Japan', 'Australia', 'Singapore'));

 -- 6. Create a report that shows all companies by name that sell products in CategoryID 8
 select s.companyname from suppliers s where s.supplierid in
 (select p.supplierid from products p where p.categoryid = '8');

 -- 7. Create a report in two parts that shows the date of the last sale made by each employee, and the date
-- of the first sale made by each employee.
select  o.employeeid, e.firstname, e.lastname, o.orderdate from orders o inner join employees e on o.employeeid = e.employeeid where o.orderdate = (select max(oo.orderdate) from orders oo where o.employeeid = oo.employeeid) order by o.employeeid;
select  o.employeeid, e.firstname, e.lastname, o.orderdate from orders o inner join employees e on o.employeeid = e.employeeid where o.orderdate = (select min(oo.orderdate) from orders oo where o.employeeid = oo.employeeid) order by o.employeeid;
