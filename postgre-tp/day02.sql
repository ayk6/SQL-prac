create table students3(
stuId char(4) unique,
	stuName varchar(20)not null,
	average real
)
select * from students3

insert into students3 values ('1001','Jess',30)
-- insert into students3 values ('1001','Jess2',32) not works
-- insert into students3 values ('1002',null,60) not works
-- insert into students3 (stuID,average) values ('1002',60.4) not works

-- primary key -> uniq and not null

create table students4(
stuId char(4) primary key,
	stuName varchar(20),
	average real
)

insert into students4 values ('1001','Jess',30)

select * from students4

-- insert into students4 values ('1001','Jess2',30) not works
-- insert into students4 values (null,'Jess',30) not works
-- insert into students3 (average) values (60.4) not works

-- give name primary key
create table students5(
stuId char(4),
	stuName varchar(20),
	average real,
	constraint stuPK primary key(stuId)
)

create table classes (
	stuid char(4),
	clsName varchar(10),
	foreign key (stuid) references students5 (stuid)
);

select * from classes