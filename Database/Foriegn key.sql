Sytax to add foreign key:
=========================
Alter table <table_name> 
add foreign key (column_name)
references <table_name_source> (column_name_of_source_table);


alter table class add foreign key (subject_id) references subject(id);

 insert into class  values(1, '07:30 AM','Y',NOW(),2);