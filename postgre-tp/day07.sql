select * from products

-- distinct  (no repeat listing)
	select distinct prodname from products
	
-- count
	select count (distinct prodname) from products
	select count (distinct prodname) from products group by prodname
	
-- fetch next () row only / offset / limit
	select * from employees
	-- top 3 salary
	select * from employees order by salary desc fetch next 3 row only
	select * from employees order by salary desc limit 3
	
	-- 2nd highest salary  (offset skips line)
	select * from employees order by salary desc limit 1 offset 1
	select * from employees order by salary desc fetch next 1 row only
		offset 1