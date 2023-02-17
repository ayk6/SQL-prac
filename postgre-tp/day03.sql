 create table cities(
 	zipCode int primary key,
	cityName varchar(20) not null,
 	population int check(population>0)
 )
 
 -- population cannot be negative or 0
 
insert into cities values(1001,'la',100);
insert into cities values(1002,'abq',600);
insert into cities values(1003,'tx',400);
insert into cities values(1004,'ny',-5) -- not works

select * from cities

-- DQL data query language
select zipcode from cities

select cityName,population from cities where population>500

-- DML data manipulation language
delete from cities where population=400; -- tx deleted
delete from cities -- all elements deleted

-- we cannot delete table or data parent table before child
-- bc foreign key
select * from cities where cityName='la'