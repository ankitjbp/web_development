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