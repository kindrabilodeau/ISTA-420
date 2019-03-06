--Name: Kindra Bilodeau
--File: Lab07.sql
--Date: Febuary 4, 2019

use tsqlv4;

--1 write a query against the dbo.ORders table that computes both a rank
--and a dense rank for each customer order, partitioned by custid and 
-- ordered by qty:

select * from dbo.Orders;


select custid, orderid, qty,
rank() over(partition by custid order by qty) as rnk, 
DENSE_RANK() over(partition by custid order by qty) as drnk
from dbo.Orders
	order by custid, qty; 

--3 write a query against the dbo.Orders table that computes for each customer 
-- order both the difference between the current order quantity and the customer's 
-- previous order quantity and the differnce between the current order quantity 
--and the customer's next order quantity: 

select custid, orderid, qty, 
	qty - lag(qty) over(partition by custid order by orderdate) as prevdiff,
	qty - lead(qty) over (partition by custid order by orderdate) as diffnext
	from dbo.Orders; 







