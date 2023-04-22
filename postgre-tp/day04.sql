-- aliases
-- change only for output

select empid as id, empname || city as nameandcity from employees  
-- or 
select empid as id, concat (empname,city) as nameandcity from employees 

-- is null condition
select * from students where stuid is null

-- order by clause
select * from students order by stuaverage
select * from students order by stuaverage desc -- for reverse
select * from students order by length (stuname) -- data length

