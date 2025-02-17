mysql -u root -p

show databases;

create database online_class;

use online_class;

create table student  
(id integer(3),name varchar(100), age integer(2)stream varchar(50) );

show tables;

desc student;

insert into student values(1,'Dwarika',40,'professional');

select * from student;


create database school;
create table result 
(id integer(3),name varchar(100), age integer(2), Markes integer(3),stream varchar(50));
insert into result values(1,'Dwarika',40,'85''Computer Science');
insert into result values(2,'Naveen',42,'80''Maths Science');

insert into result values(3,'Rahul',30,'70''Commerce Computer');

create table student 
(id integer(3),name varchar(100),age integer(2),result_id integer(3),address varchar(50));
insert into result values(1,'Dwarika',40,1,'Ghamapur');
insert into result values(2,'Naveen',42,2,'Rampur');
insert into result values(3,'Rahul',30,3,'Civil Lines');
