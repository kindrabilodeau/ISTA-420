.echo on
.headers on

--Name: Kindra Bilodeau
--File: lab2b.sql
--Date: January 14, 2019

-- 1 Who are our customers in North America?
select companyname, contactname, country from customers
where country in("Canada", "USA", "Mexico");
-- 2 What orders where placed in April, 1998?
select orderid, orderdate from orders where orderdate
like "1998-04%";
-- 3 What sauces do we sell?
select productid, productname from products where productname
 like "%sauce%";
-- 4 You sell some kind of dried fruid that I liked very much.
select productid, productname from products where productname
 like "%dried%";
What is its name?
-- 5 What employees ship products to Germany in December?
select employeeid, shippeddate, shipcountry from orders
 where  shipcountry = "Germany"and shippeddate like "%-12-%";
-- 6 We have an issue with product 19. I need to know the total
-- amount and the net amount for product 19 where the customer took
-- a discount.
select orderid, productid, ( unitprice * quantity) as total,
(unitprice *quantity - discount) as net, discount from order_details
where productid = 19 and discount > 0;

-- 7 I need a list of employees by title, first name, and last name,
-- with the employee's position namess, and a line separating each
-- employee.
select titleofcourtesy||" " || firstname || " "|| lastname || '
    ' || title || '
    ' from employees;

-- 8 I need a list of our customers and the first name only of the customers
--representative.

--9 Give me a list of our customer contacts alphabetically by last
-- name.

--10 I need a report telling me that the most common pairing of Customers
-- and employees with the greatest order volume (by the number of orders placed)
-- Exclude pairings with minimal orders.

--11 I need a report listing the highest average selling product by product id.
-- The average is determined by the total sales of each product id divided by
-- the quantity of the product sold. Include only the highest 20 products.
