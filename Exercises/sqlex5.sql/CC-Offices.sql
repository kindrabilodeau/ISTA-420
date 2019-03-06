--Name: Kindra Bilodeau
--File: SQL Lab 5 -classic cars data - Offices  
--Febuary 5, 2019

create database classicCars;

use classicCars; 

drop table if exists Offices; 

create table Offices (
	OfficeId varchar(10) primary key,
	City varchar(25),
	Phone varchar(35),
	addressline1 varchar(35),
	addressline2 varchar(20),
	stateonfile varchar(15),
	country varchar(25),
	postalcode varchar(20),
	territory varchar(15)
);

bulk insert Offices from 'C:\Users\bolte\MSSA-2019\ISTA420\exercises\offices.csv'
with 
(
	datafiletype = 'char',
	fieldterminator = ',',
	rowterminator = '\n'
);

select * from Offices;
