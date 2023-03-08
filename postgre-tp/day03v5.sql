-- Exists condition

create table march (prod_id int, customername varchar(20), prodname varchar(20));

create table april (prod_id int, customername varchar(20), prodname varchar(20));

insert into march values (11,'walt','mustang');
insert into march values (12,'jess','clio');
insert into march values (13,'mike','cadillac');
insert into march values (12,'gus','clio');
insert into march values (14,'jim','auris');
insert into march values (11,'hank','mustang');

insert into april values (13,'tom','cadillac');
insert into april values (14,'huel','auris');
insert into april values (15,'kim','307');
insert into april values (11,'tuco','mustang');

select *  from march
select *  from april

-- List the same products sold in March and April, and customer names for march
select prod_id, customername from march where exists(
	select prod_id from april where march.prod_id=april.prod_id)