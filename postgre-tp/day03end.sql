-- update set

create table suppliers -- parent
	(suppid int primary key, suppname varchar(10), contact varchar(10));
	
create table products -- child
	(suppid_prod int ,prodid int, prodname varchar(10), custname varchar(10),
	constraint fk_prod foreign key(suppid_prod)references suppliers(suppid)
	on delete cascade);
	
insert into suppliers values (101,'ford','henry');
insert into suppliers values (102,'ferrari','enzo');
insert into suppliers values (103,'audi','hans');
insert into suppliers values (104,'bmw','mark');

insert into products values (101,1001,'sedan','walt');
insert into products values (102,1002,'suv','jess');
insert into products values (102,1003,'hb','mike');
insert into products values (102,1004,'bike','gus');
insert into products values (103,1005,'suv','huel');

select * from suppliers

-- update suppid 102 name frr and name enz
update suppliers set suppname='frr' where suppid=102;
update suppliers set contact='enz' where suppid=102;

-- update prodname hb to hatchback
update products set prodname='hatchback' where prodname='hb'
select * from products

-- if prod id > 102 add +1
update products set prodid=prodid+1 where prodid>1002

-- reset
delete from products

-- cross datas
update products set prodname=(select suppname from suppliers where contact='hans')
	where custname ='gus';
	