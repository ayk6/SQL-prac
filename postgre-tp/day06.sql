--  joins
	-- combines data in table
	
	select * from products
	select * from suppliers
	
	-- inner join  //  common data
		select suppliers.suppname, products.prodid, products.prodname
			from suppliers inner join products 
			on suppliers.suppid=products.suppid_prod
	
	-- left join  //  first data
		select suppliers.suppname, products.prodid, products.prodname
			from suppliers left join products 
			on suppliers.suppid=products.suppid_prod
	
	-- right join  //  2nd data
		select suppliers.suppname, products.prodid, products.prodname
			from suppliers right join products 
			on suppliers.suppid=products.suppid_prod
	
	-- full join  //  all data
		select suppliers.suppname, products.prodid, products.prodname
			from suppliers full join products 
			on suppliers.suppid=products.suppid_prod
		
	-- self join  //  own data
		create table staff (id int, name varchar(10), title varchar(10),
						   managerid int);
				insert into staff values(1,'jess','cook',2);
				insert into staff values(2,'walt','cook',3);
				insert into staff values(3,'gus','boss',3);
				insert into staff values(4,'mike','trg',3);
			select * from staff
			
			select s1.name, s2.name, s1.title from staff s1 inner join staff s2
			on s1.managerid=s2.id
			
			select s1.name as staffname, s2.name as managername from staff
				s1 inner join staff s2
				on s1.managerid=s2.id
				
-- like condition // where condition but flexible
	select * from staff where name like 'm%'
	select * from staff where name ilike 'M%'
	select * from staff where name like '%t' 
	select * from staff where name like '%e%'
	select * from staff where name like '_alt' -- walt
	select * from staff where name like '_e%' -- jess
	select * from staff where name like '__k_' -- mike
		-- ilike -> ignorecase
		
-- not like condition
	select * from staff where name not like 'm%'
		
-- regexp like ()  -- complex like
	select * from staff where name ~ '[ae]'  -- contains a or e
	-- ~* ilike
	-- ~~ not like
	
-- select upper upper case
-- select lower lower case
-- select initcap first letter upper
	select upper(name) from staff
	select lower(name) from staff
	select initcap(name) from staff
	select upper(name),lower(title) from staff