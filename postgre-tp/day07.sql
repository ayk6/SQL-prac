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
		
-- alter table statement
	create table staff2 (id int, name varchar (10), city varchar (10),
						salary int, company varchar (10));
			insert into staff2 values (101, 'walt', 'abq', 60000, 'cook');
			insert into staff2 values (102, 'jess', 'la', 5000, 'sell');
			insert into staff2 values (103, 'mike', 'arz', 45000, 'fire');
			insert into staff2 values (104, 'jim', 'nm', 100000, 'law');
	select * from staff2
	-- add (adding field on table)
		alter table staff2 add country varchar (10) default 'usa'
		alter table staff2 add gender varchar (1), add age int
		
	-- drop 
		alter table staff2 drop column age
	-- rename 
		alter table staff2 rename column gender to age
		-- alter table staff3 rename to staff2 (changing table name)
	
	-- type / set
		alter table staff2 alter column age type varchar (3)
		alter table staff2 alter column city set not null
		alter table staff2 alter column age type int USING (age::integer)
		
-- transaction (begin - savepoint - rollback - commit)
	create table staff3 (id serial, name varchar (10), city varchar (10),
						salary int);
			begin;
			insert into staff3 values (default, 'walt', 'abq', 60000);
			insert into staff3 values (default, 'jess', 'la', 5000);
			savepoint x;
			insert into staff3 values (default, 'mike', 'arz', 45000, 'fire');
			savepoint y;
			insert into staff3 values (default, 'jim', 'nm', 100000, 'law');
			rollback to y;
			commit;
			
			select * from staff3
	