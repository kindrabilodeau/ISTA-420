--Name: Kindra Bilodeau
--File: SQL Lab 5 -classic cars data - Products 
--Febuary 6, 2019

use classicCars; 

drop table if exists Products; 

create table Products (
	productid varchar(50) primary key,
	productname varchar(80),
	productline varchar(30),
	productscale varchar(50),
	productvendor varchar(50),
	productdescription varchar(max),
	qtyinstock varchar(max), 
	buyprice varchar(max), 
	MSRP varchar(max)
);

bulk insert Products from 'C:\Users\bolte\MSSA-2019\ISTA420\exercises\products.csv'
with 
(
	datafiletype = 'char',
	fieldterminator = ',',
	rowterminator = '\n'
);


select * from Products;