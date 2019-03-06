--Name: Kindra Bilodeau
--File: SQL Lab 5 -classic cars data - OrderDetails
--Febuary 5, 2019

create database classicCars;

use classicCars; 

drop table if exists OrderDetails;

create table OrderDetails (
	 orderNumber int, 
	 productcode varchar(20), 
	 qty int, 
	 price money, 
	 orderlinenumber int
); 

bulk insert OrderDetails from 'C:\Users\bolte\MSSA-2019\ISTA420\exercises\orderdetails.csv'
with 
(
	datafiletype = 'char',
	fieldterminator = ',',
	rowterminator = '\n'
);

select * from OrderDetails;