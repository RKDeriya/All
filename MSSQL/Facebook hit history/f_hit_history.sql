create database f_hit_history
use f_hit_history

create table f_user(
fu_id int identity(1001,1),
fu_name varchar(10)
)

create table user_device(
ud_id int identity(1,1),
ud_type varchar(10),
ud_connectiontype varchar(10)
)

create table user_action(
ua_id int identity (10,1),
fu_id int,
ud_id int,
ua_type varchar(10),
ua_createdon varchar(10) default
)
alter table user_action add createdon datetime default getdate()
alter table user_action drop column ua_createdon

insert into f_user values('Rajesh')
delete from f_user
select * from user_device

--add data in user_device table
insert into user_device values('mobile','wifi')
insert into user_device values('mobile','volte')
insert into user_device values('laptop','wifi')
insert into user_device values('laptop','lan')

alter table f_user add ud_id int identity(1,1)
alter table user_action drop column fu_id

--add primary key
ALTER TABLE f_user
ADD CONSTRAINT PK_Employee_fu_id PRIMARY KEY (fu_id)

ALTER TABLE user_device
ADD CONSTRAINT PK_Employee_ud_id PRIMARY KEY (ud_id)
--ALTER TABLE user_action ADD CONSTRAINT FK_ORDERS FOREIGN KEY(fui_id) REFERENCES f_user(fu_id);
--add foreign key
ALTER TABLE user_action ADD fui_id INT FOREIGN KEY REFERENCES f_user(fu_id);
ALTER TABLE user_action ADD udi_id INT FOREIGN KEY REFERENCES user_device(ud_id);

alter table user_action drop column ud_id


insert into f_user values('Rajesh'),
('Aman'),
('Karan'),
('Pankaj')


insert into user_action values('comment',1003,2,getdate())
insert into user_action values('like',1002,1,getdate())
insert into user_action values('comment',1004,2,getdate())
insert into user_action values('share',1002,4,getdate())
insert into user_action values('share',1005,3,getdate())
insert into user_action values('like',1005,2,getdate())
insert into user_action values('share',1003,1,getdate())
insert into user_action values('comment',1004,2,getdate())
insert into user_action values('like',1005,2,getdate())
insert into user_action values('like',1002,3,getdate())
insert into user_action values('share',1004,1,getdate())
insert into user_action values('like',1005,1,getdate())
insert into user_action values('comment',1003,2,getdate())
insert into user_action values('like',1002,2,getdate())
insert into user_action values('comment',1003,2,getdate())
insert into user_action values('share',1005,3,getdate())
insert into user_action values('comment',1004,2,getdate())
insert into user_action values('share',1002,4,getdate())
insert into user_action values('like',1003,4,getdate())
insert into user_action values('comment',1003,3,getdate())
insert into user_action values('share',1005,2,getdate())

insert into user_action values('like',1002,4,getdate())
insert into user_action values('comment',1002,2,getdate())
insert into user_action values('share',1003,3,getdate())
insert into user_action values('like',1004,2,getdate())
insert into user_action values('comment',1002,4,getdate())
insert into user_action values('share',1002,4,getdate())
insert into user_action values('like',1003,3,getdate())
insert into user_action values('comment',1005,2,getdate())






--total hit by laptop
select count(*) from user_action
where udi_id = 3 or udi_id =4

--max hit by user
select count(ua.ua_type) as max_hit,fu_name from f_user as fu
inner join user_action as ua
on fu.fu_id = ua.fui_id
group by fu.fu_name
order by max_hit desc

--total hit by connection with device type  --without device type
select COUNT(*) as total_hit_by_connection,ud.ud_type,ud.ud_connectiontype from user_device as ud
inner join user_action as ua
on ud.ud_id = ua.udi_id
group by ud.ud_connectiontype,ud.ud_type


--last history added on
select top(1)* from user_action as ua
inner join f_user as fu on ua.fui_id = fu.fu_id
inner join user_device AS ud on ua.udi_id = ud.ud_id
order by ua.ua_id desc

--total type device
select ud.ud_type from user_action as ua
inner join user_device as ud
on ua.udi_id = ud.ud_id
group by ud.ud_type


--total type of network
select count(distinct ud_connectiontype) from user_device  --complete
--select distinct * from user_device group by ud_connectiontype  -- generate error

--total type of network
/*
select count(ud.ud_connectiontype) from user_action as ua
inner join user_device as ud
on ua.udi_id = ud.ud_id
group by ud.ud_connectiontype
*/

--hit type with date range
select * from user_action as ua
inner join f_user as fu
on ua.fui_id = fu.fu_id
where ua.ua_createdon between (2023-08-09 17:58:59.237 or 2023-08-09 18:00:58.663)

select * from f_user
select * from user_device
select * from user_action