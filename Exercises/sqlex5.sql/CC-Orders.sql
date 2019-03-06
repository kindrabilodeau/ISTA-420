--Name: Kindra Bilodeau
--File: SQL Lab 5 -classic cars data - Orders
--Febuary 6, 2019

use classicCars; 

drop table if exists Orders 

create table Orders (
	Orderid varchar(15) primary key, 
	orderdate varchar(max), 
	requireddate varchar(max), 
	shippeddate varchar(max), 
	orderstatus varchar(50),
	comments varchar(max), 
	customerid varchar(max)
);

Bulk insert Orders from 'C:\Users\bolte\MSSA-2019\ISTA420\exercises\orders.csv' 
with 
(
	datafiletype = 'char',
	fieldterminator = ',',
	rowterminator = '\n'
);


select * from Orders;
