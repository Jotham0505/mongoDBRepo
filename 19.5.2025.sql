show databases;
use vit;

show tables from vit;
# drop command
drop table cse;
alter table cse drop column smobile;


# delete command

delete from ece;

delete from ece where smarks <= 90;

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


# truncate

truncate table cse;



create database clg;

create table mech(
id int,
name varchar(30)
);
start transaction;
insert into mech values(1001,'Raj');
savepoint a11;
insert into mech values(1002,'Ram');
savepoint a12;	
delete from mech where id = 1002;

select * from mech;

rollback to a11;

select * from mech;



create table worker(
worker_id int not null primary key auto_increment,
first_name char(25),
last_name char(25),
salary int(15),
joining_date Datetime,
department char(25)
);

INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '14-04-13 09.00.00', 'Admin');


select first_name as emp_name from worker;

select * from worker where salary >= 300000;

select * from worker where salary > 300000;

select * from worker where salary < 300000;

select * from worker where salary = 300000;

select * from worker;

select * from worker where department = "admin";

select * from worker where department = "hr" and salary >= 200000;


select * from worker where salary < 200000 and (department = "hr" or department = "admin");

select * from worker where salary >= 100000 and salary < 300000  and (department = "admin" or department = "account");

SELECT *
FROM Worker
WHERE WORKER_ID % 2 = 0
  AND DEPARTMENT IN ('HR', 'Admin')
  AND SALARY = 500000;
