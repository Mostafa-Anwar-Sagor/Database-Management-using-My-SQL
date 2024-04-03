USE phitron;
CREATE TABLE Student (
Roll CHAR(4) primary key,
Name VARCHAR(50),
Marks double
 );
insert INTO student(Roll,Name,Marks)values(1,'Sagor',90);

set sql_safe_updates =0;
update student
set Name='Mostafa Anwar'
where Roll=1 ;

set sql_safe_updates =0;
delete from student
where Roll=1 