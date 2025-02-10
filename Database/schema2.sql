create table subject

(
id integer(3), 
name varchar(40),
display varchar(1),
create_date datetime
);

insert into subject values (1,'JavaScript','Y','2025-01-22 08:00:00'); 

insert into subject(id,name,create_date) values (2,'Database','2025-01-22 08:15:00');

create table class
(
id integer(3), 
name varchar(40),
sub_name varchar(40),
display varchar(1),
create_date datetime
);
