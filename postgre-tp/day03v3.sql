-- subqueries - nested query
create table employees (
	empid int, empname varchar(20), city varchar(10),
	salary int, workplace varchar(20)
)
insert into employees values(1001,'walt','abq',50000,'cook');
insert into employees values(1002,'jess','abq',30000,'cook');
insert into employees values(1003,'mike','nm',40000,'clean');
insert into employees values(1004,'saul','la',100000,'law');
insert into employees values(1005,'gus','nm',400000,'food');
insert into employees values(1006,'huel','afr',5000,'assist');

select * from employees

create table workplaces(
	wp_id int, wpName varchar(20), empNum int
)
insert into workplaces values(101,'cook',3);
insert into workplaces values(102,'clean',5);
insert into workplaces values(103,'law',2);
insert into workplaces values(104,'food',1);
insert into workplaces values(105,'assist',10);

select * from workplaces

-- list names, salaries and wp with more than 3 employees
select empname, salary, workplace from employees where workplace in (
	select wpName from workplaces where empnum>3);
	
-- list names, salaries and cities with wp_id >102
select empname, salary, city from employees where workplace in(
	select wpName from workplaces where wp_id>102)