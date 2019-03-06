--Name: Kindra Bilodeau
--File: SQL Lab 5 -classic cars data - customers 
--Febuary 5, 2019

create database classicCars;

use classicCars; 

drop table if exists Customers; 

create table Customers (
	custid int,
	companyname varchar(50),
	lastname varchar(35),
	firstname varchar(35),
	contactnumber varchar(20),
	addressonline1 varchar(50),
	addressline2 varchar(50),
	city varchar(50),
	stateonfile varchar(30),
	postalcode varchar(20),
	country varchar(20),
	salesRepid varchar(20),
	creditlimit varchar(30) 
);

bulk insert customers from 'C:\Users\bolte\MSSA-2019\ISTA420\exercises\customers.csv'
with 
(
	datafiletype = 'char',
	fieldterminator = ',',
	rowterminator = '\n'
);


select * from Customers;

