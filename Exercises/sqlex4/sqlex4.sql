--Name: Kindra Bilodeau
--File: SQL Exercise 4
--Date: Febuary 2, 2019

--1 List the number of orders by each customer who lives in the United States using a CTE. Sort from highest to lowest.
this is right but not in a cte:
select sum(od.quantity),c.customerid, c.companyname, c.contactname, c.country as CustCountry from order_details od join orders o on od.orderid = o.orderid join customers c on c.customerid = o.customerid where CustCountry like 'USA' group by c.customerid;

Using a CTE:
with usacusts as
(select c.customerid, c.contactname, c.companyname, c.country as CustCountry from customers c where CustCountry like 'USA')
select sum(od.quantity) as OrderTotal, usacusts.customerid, usacusts.companyname, usacusts.contactname, usacusts.CustCountry from order_details od join orders o on od.orderid = o.orderid join usacusts on usacusts.customerid = o.customerid group by usacusts.customerid;

--2. List the product name and the number of each product from a German supplier sold to a customer in Germany using a CTE. Sort from highest to lowest.

with G as (select p.productid as pid, p.productname, s.companyname as suppliername, s.supplierid from products p join suppliers s on p.supplierid = s.supplierid where s.country like 'Germany')
select G.productname, sum(od.quantity) as Total_Sold from G join order_details od on G.pid = od.productid join orders o on od.orderid = o.orderid join customers c on c.customerid = o.customerid where c.country like 'Germany' group by G.productname order by Total_Sold desc;

--3 Prepare an employee report showing the name of each employee, the number of employees they supervise, and the name of their supervisor using a CTE. Sort by the number of employees supervised.
This does nothing:
with report as (select e.employeeid, e.firstname, e.lastname, e.reportsto as count from employees e) as
(select e1.employeeid, e1.firstname, e1.lastname, count(*) as supervises, e1.reportsto from employees e1 join report on e1.employeeid = report.count) as manager
select report.employeeid, report.firstname, report.lastname, manager.supervises, manager.firstname, manager.lastname from employees e2 join manager on e2.employeeid = manager.employeeid group by e1.employeeid order by manager.supervises;

--4 a) Create a query that returns every distinct customer/employee pair.
select distinct customerid, employeeid from orders;

--b)Use that query to write another query turning the customerid, customername, and customercontact, and the employeeid, firstname, and lastname.
select distinct c.customerid, c.companyname, c.contactname, e.employeeid, e.lastname, e.firstname from customers c join orders o on c.customerid = o.customerid join employees e on o.employeeid = e.employeeid;

--(c) Make sure you drop any view that might exist.
Drop view if exists custemprelations;

--(d) Create a view based on your query.
create view custemprelations
as
select distinct c.customerid, c.companyname, c.contactname, e.employeeid, e.lastname, e.firstname from customers c join orders o on c.customerid = o.customerid join employees e on o.employeeid = e.employeeid;

--(e) Write a report listing all customers served by employee 7, Robert King.
select * from custemprelations where employeeid like '7';

--(f) Write a report listing all employees who served customer CHOPS, Chop-suey Chinese.
select * from custemprelations where customerid like 'CHOPS';

--(g) Drop the view
Drop view if exists custemprelations;
