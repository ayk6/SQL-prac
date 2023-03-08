
-- AGGREGATE METHODS

select * from employees
select * from workplaces

select max(salary) from employees
select max(salary) as max_salary from employees -- temp data name

select min(salary) from employees

select sum(salary) from employees

select avg(salary) from employees -- average 104166.666666666667
select round(avg(salary),2) from employees -- average 104166.67

select count(salary) from employees  -- 6
select count(*) from employees  -- counts rows (include null)

-- AGGREGATE METHODS SUBQUERY
select wpname,(select count(city) from employees where wpname=workplace) from workplaces;

-- View 
-- saves query nd when we need this, we can call w views
create view minSalary2 as select min(salary) from employees as minsalary;
select * from minsalary2




