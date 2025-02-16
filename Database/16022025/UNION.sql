Select student.name,class.time_of_class
from class left join 
student on 
student.name=class.subject_id;


Select student.name,class.time_of_class
from class left join 
student on 
student.id=class.student_id;

Select subject.name,class.time_of_class
from class left join 
subject on 
subject.id=class.subject_id;

Select student.name,subject.name as subject, class.time_of_class
from class left join 
student on 
student.id=class.student_id
left join 
subject 
on 
subject.id=class.subject_id
where student.id>3

union 

Select student.name,subject.name as subject, class.time_of_class
from class left join 
student on 
student.id=class.student_id
left join 
subject 
on 
subject.id=class.subject_id
where student.id<3
;


Constraints with unions are 
1) number of columns from tables should be same 
2) it will remove duplicate records

