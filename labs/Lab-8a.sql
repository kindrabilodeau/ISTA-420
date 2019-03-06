--Name: Kindra Bilodeau
--File: Lab8a.sql
--Date: Febuary 05, 2019 

use TSQLV4

drop table if exists dbo.presidents; 

create table dbo.presidents  (
	id varchar(2),
	lastname varchar(20),
	firstname varchar(20),
	middlename varchar(20),
	orderofpres varchar(22), 
	dateofbirth varchar(22),
	dateofdeath varchar(22),
	pob varchar (50),
	sob varchar (30), 
	hs varchar (30),
	party varchar (100),
	datestart varchar(22),
	endoff varchar(22), 
	aaatemp varchar(21),
	assass varchar(21), 
	religion varchar(30), 
	imagepath varchar(50)
);

bulk insert dbo.presidents from 'C:\Users\bolte\prescsv.csv'
with 
(
	datafiletype = 'char',
	fieldterminator = ',',
	rowterminator = '\n'
);

select * from dbo.presidents;
