--Name: Kindra Bilodeau
--File: SQL Lab 5 -classic cars data - Payments
--Febuary 6, 2019

create database classicCars;

use classicCars; 

drop table if exists Payments;

create table Payments (
	custid varchar(20), 
	checknumber varchar(50),
	paymentdate datetime, 
	amount money
); 

bulk insert Payments from 'C:\Users\bolte\MSSA-2019\ISTA420\exercises\payments.csv'
with 
(
	datafiletype = 'char',
	fieldterminator = ',',
	rowterminator = '\n'
);

select * from Payments;