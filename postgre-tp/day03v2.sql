-- in condition , not in condition

create table customers(
	prod_id int,
	customerName varchar(20),
	prodName varchar(20)
)
select * from customers

insert into customers values (101,'walt','mask');
insert into customers values (101,'jess','mask');
insert into customers values (102,'jim','phone');
insert into customers values (103,'mike','tool');
insert into customers values (104,'gus','food');
insert into customers values (102,'huel','phone');

-- list customers -> prod mask, food or tool
select * from customers where 
	prodName='mask'or prodName='food'or prodName='tool'
	
-- use in condition
select * from customers where prodName in ('mask','food','tool')

-- list customers -> not prod mask, food or tool
select * from customers where prodName not in ('mask','food','tool')

-- between condition , not between condition
-- list customers prod id 102 to 104
select * from customers where prod_id>=102 and prod_id<=104

select * from customers where prod_id between 102 and 104

select * from customers where prod_id not between 102 and 104

