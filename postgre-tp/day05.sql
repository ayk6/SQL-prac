-- having clause  (filter command)
select * from employees

-- cities sum salary >35000 
select city, min(salary) as min_salary from employees group by city
	having min(salary)>35000
	
-- workplaces with multiple employees amd emp count
select workplace, count(empid) as emp_num from employees
	group by workplace having count(empid)>1
	
-- union operator  //  combining two different queries
select empname as emp_or_city, salary from employees where salary>50000
union
select city as emp_or_city,salary from employees where salary>50000

-- union all operator  //  combining for repetitive elements

-- intersect operator 
select empid from employees where salary>40000
intersect
select empid from employees where workplace in ('cook')

-- except operator  // not including
select empid from employees where salary>40000
except
select empid from employees where workplace in ('cook')
	
