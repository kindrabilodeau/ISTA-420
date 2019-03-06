--Name: Kindra Bilodeau
--File: Lab8a.sql
--Date: Febuary 05, 2019

use TSQLV4
--1. Create an appropriate table schema.
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

--2. Insert the CSV data into the table you just created.
bulk insert dbo.presidents from 'C:\Users\bolte\prescsv.csv'
with
(
	datafiletype = 'char',
	fieldterminator = ',',
	rowterminator = '\n'
);

select * from dbo.presidents;

--3. Delete the column that contains the path to the images.
alter table dbo.presidents
drop column imagepath;

--5. Bring the data up to date by updating the last row. Use the output clause.
update dbo.presidents
set endoff = '1/20/2017'
where id = 44;

--. Bring the data up to date by adding a new row. Use the output clause.
insert into dbo.presidents (id, lastname, firstname, middlename, orderofpres,
dateofbirth, pob, sob, hs, party, datestart, aaatemp, assass)
values(45, 'Trump', 'Donald', 'John', 45, '06/14/1946', 'New York City', 'New York',
 'New York', 'Republican', '01/20/2017', 'True', 'False');

--7. How many presidents from each state belonged to the various political parties? Aggregate by party
and state. Note that this will in eect be a pivot table.
select hs, party, count(party)
from dbo.presidents
Group by hs, party;

--8. Create a report showing the number of days each president was in office.
select id, lastname, firstname, datediff(day, datestart, endoff) as daysinoffice
from dbo.presidents
order by id;

--9. Create a report showing the age (in years) of each present when he took office.
select id, lastname, firstname, datediff(year, datestart, endoff) as yearsinoffice
from dbo.presidents
order by id;

--10. See if there is any correlation between a president's party and
--reported religion, or lack of reported religion
select Party, count(party) numofParties, religion, count(religion) as numofreligion
from dbo.presidents
group by party, religion;
