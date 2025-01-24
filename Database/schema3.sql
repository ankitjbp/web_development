

/*
ADD COLUMN IN EXISTING TABLE 
SYNTAX  => ALTER TABLE table_name ADD column_name datatype;
*/

-- example

ALTER TABLE student add address varchar(50);

-- add column after specific column in table

alter table student add mobile_number varchar(10);

alter table student add email varchar(100) after name;


/*
REMOVE/DELETE COLUMN IN EXISTING TABLE 
SYNTAX  => ALTER TABLE table_name DROP COLUMN column_name;
*/


-- example to delete a column 


alter table student drop column mobile_number;
