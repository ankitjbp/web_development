-- to dump (export) Database

mysqldump -u root -p company > dump.sql;

-- to import from a dump file

mysql -u root -p company_database < dump.sql

