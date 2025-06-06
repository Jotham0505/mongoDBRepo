create database tuesday;
drop database tuesday;
show databases;
use tuesday;
show tables;
create table category(
c_id int primary key,
c_name varchar(25),
c_details varchar(25)
);

insert into category values (101, 'electronics', 'safkdsnfaskdnf');
insert into category values (102, 'furnitures', 'asdfuhasdfkn');

select *  from category;

create table products(
p_id int primary key,
p_name varchar(25),
p_details varchar(25),
c_id int
);

desc products;

alter table products add foreign key products(c_id) references category(c_id);



insert into products values (501, 'Iphone 16 pro max', '12GB RAM', 101);
insert into products values (502, 'samsung s23', '8GB RAM', 101);

select * from products;
select * from category;

delete from products where p_id = 501;

delete from category where c_id = 101;




#update products set p_details = '10GB RAM';


create table products(
p_id int primary key,
p_name varchar(25),
p_details varchar(25),
c_id int,
foreign key products(c_id) references category(c_id) on delete cascade
);

