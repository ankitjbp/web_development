
select name from student;

select * from student where id=2;

select name,age from student where id=3;

select id,name,age from student where id=3 and name='rahul';

delete from student where id=3 and name='rahul';

alter table student add primary key(id);

