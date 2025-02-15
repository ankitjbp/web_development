Simple join 


Select 
student.name,class.time_of_class from 
class 
left join 
student 
on 
student.id=class.student_id;


#TO update column of one table using values of another table;

UPDATE 
class 
left join 
student 
on 
student.id=class.student_id
SET class.age=student.age;
