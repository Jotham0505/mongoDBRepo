show databases;

use vit;

show tables;


desc worker;

select * from worker;

select * from worker where worker_id in (1,2);
select * from worker where worker_id not in (1,2);
select * from worker where salary between 50000 and 100000;
select * from worker where salary not between 50000 and 10000;

select * from worker where salary between 50000 and 100000 and worker_id in (101,102,103,104);


select min(salary) from worker;

select max(salary) from worker;

select count(salary) from worker;

select avg(salary) from worker;

select distinct(department) from worker;


CREATE TABLE worker1 (
    worker_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary INT,
    joining_date DATETIME,
    department VARCHAR(50)
);

INSERT INTO worker1 VALUES
(101, 'Anjali', 'Mehra', 120000, '2015-03-10 09:00:00', 'HR'),
(102, 'Rohit', 'Sharma', 95000, '2016-05-15 09:00:00', 'Admin'),
(103, 'Sneha', 'Gupta', 110000, '2017-01-20 09:00:00', 'Finance'),
(104, 'Karan', 'Patel', 70000, '2015-09-30 09:00:00', 'IT'),
(105, 'Neha', 'Kapoor', 130000, '2018-07-22 09:00:00', 'HR'),
(106, 'Arjun', 'Mehta', 80000, '2019-11-12 09:00:00', 'Finance'),
(107, 'Pooja', 'Singh', 85000, '2020-04-05 09:00:00', 'Admin'),
(108, 'Raj', 'Malhotra', 99000, '2021-08-16 09:00:00', 'IT');


select * from worker1;


select department from worker union all select department from worker1;

select * from worker1 where worker_id in (101,102,103) union select * from worker where worker_id in (101,102,103);


Select first_name ,salary,
CASE
    When salary>300000 THEN "Rich people"
    When salary <=300000 && salary>=100000 THEN "Mid layer"
    When salary <=100000  && Salary >=0 then "Poor people"
    ELSE "Data not found"
END
as Status_checksalary
from worker;


select * from worker where salary <= 200000 order by salary desc; 

select * from worker where first_name like '_i%l';

select * from worker where first_name like '__i%';

select * from worker where first_name like '%a_a';



create view admin_team as select * from worker1 where department='Admin' and salary<100000;
create or replace view admin_team as select * from worker1 where department='Admin' and salary>200000;
select * from admin_team;
drop view admin_team;