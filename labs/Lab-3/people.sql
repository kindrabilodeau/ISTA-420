.headers on
.echo on
--Name:Kindra Bilodeau
--Date:January 22, 2019
--FIle: people.sql

drop table if exists men;

create table men (
  ID int,
  Name text,
  WID
);

drop table if exists women;

create table women (
  ID int,
  Name Text,
  HID int
);

insert into men values (1,'Al', 6);
insert into men values (2, 'Bob', );
insert into men values (3,'Chuck', 2);
insert into men values (4, 'Dan', 4);
insert into men values (5,'Ed', );
insert into men values (6,'Fritz', 1);

insert into women values (1, 'Gale', 6);
insert into women values (2, 'Helen', 3);
insert into women values (3, 'Irene', );
insert into women values (4, 'Jackie', 4);
insert into women values (5, 'Kindra', );
insert into women values (6, 'Linda', 1);

--Inner Join
select m.Id, m.Name, m.WID, w.Id, w.Name, w.HID
  from men m inner join women w
  on m.id = w.hid;


--Outter Join
select m.id, m.name, m.wid, w.id, w.name, w.HID
from men m outer join women w
on m.wid =  w.id;

--Left outter join
select m.id, m.name, m.wid, w.id, w.name, w.HID
from men m left join women w
where m.id = w.hid;
