 create table students
 (
	 stuId char(7), stuName varchar(20), stuAverage real, 
	 stuDateR date
 ) 
 
 create table students2
 (
	 stuId char(7), stuName varchar(20), stuAverage real, 
	 stuDateR date
 )
 
 create table stuAverages as select stuName, stuAverage from students
 
 insert into students values (2023001,'Adam',64.5,'2023-01-01')
 insert into students values (2023002,'Eve',80,now())
 
 insert into students (stuName) values ('Walt')
 
 select * from students;