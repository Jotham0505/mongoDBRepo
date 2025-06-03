show databases;

create database vit;
show tables;
use vit;




create table ece(
sid int,
sname varchar(40),
smarks int,
sage int
);

insert into ece values(1,'Raj',90,19);
insert into ece values(2,'Ram',91,19);
insert into ece values(3,'Ramesh',98,19);
insert into ece values(4,'Arun',88,19);
insert into ece values(5,'Rajesh',82,19);
insert into ece values(6,'Kai',86,19);
insert into ece values(7,'Rash',91,19);
insert into ece values(8,'Jeff',99,19);
insert into ece values(9,'Jake',89,19);
insert into ece values(10,'Glen',90,19);

select * from ece;

create table csbs(
sid int,
sname varchar(40),
smarks int,
sage int
);


insert into csbs values(1,'Neha',87,19);
insert into csbs values(2,'Adiya',97,19);
insert into csbs values(3,'Aryan',92,19);
insert into csbs values(4,'Yaman',89,19);
insert into csbs values(5,'George',83,19);
insert into csbs values(6,'Mary',86,19);
insert into csbs values(7,'Dev',95,19);
insert into csbs values(8,'Rajat',99,19);
insert into csbs values(9,'Kate',79,19);
insert into csbs values(10,'Mills',99,19);

select * from ece;


create table cse(
sid int,
sname varchar(40),
smarks int,
sage int
);

insert into cse values(1,'John',90,19, "Usa");
insert into cse values(2,'Josh',91,19);
insert into cse values(3,'Alex',92,19);
insert into cse values(4,'Jade',88,19);
insert into cse values(5,'Jane',87,19);
insert into cse values(6,'Jas',86,19);
insert into cse values(7,'May',95,19);
insert into cse values(8,'April',99,19);
insert into cse values(9,'Janet',84,19);
insert into cse values(10,'Kay',100,19);

alter table cse add(
	address varchar(200)
);

alter table cse add(
	smobile varchar(200),
    sskills varchar(50)
);

alter table cse drop column smobile;

alter table cse add(
	sCountry varchar(200) default "India"
);

update cse SET smarks = 93 Where sid = 3;


desc cse;

select * from cse;