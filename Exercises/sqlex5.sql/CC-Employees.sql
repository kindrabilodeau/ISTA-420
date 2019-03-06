--Name: Kindra Bilodeau
--File: SQL Lab 5 -classic cars data - Employees
--Febuary 6, 2019

use classicCars;

drop table if exists Employees;

create table Employees (
	empid int not null primary key,
	lastname varchar(25),
	firstname varchar(25),
	extenstion varchar(10),
	email varchar(50),
	officeCode varchar(10),
	reportsto varchar(15),
	jobtitle varchar (45)

);

bulk insert employees from 'C:\Users\bolte\MSSA-2019\ISTA420\exercises\employees.csv'
with
(
	datafiletype = 'char',
	fieldterminator = ',',
	rowterminator = '\n'
);


select * from Employees;