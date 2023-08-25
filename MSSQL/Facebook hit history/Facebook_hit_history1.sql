create database Facebook_hit_history123
use Facebook_hit_history1

/*
--create all tables
--create  user table
create table [user] (
u_id int identity(1,1),
u_name varchar(20),
u_createdon datetime default getdate(),
u_updatedon datetime default getdate()
)
--drop table [user]
--create llokup_type table
create table lookup_type(
ltype_id int identity(1,1),
ltype_name varchar(15),
ltype_createdon datetime default getdate(),
ltype_updatedon datetime default getdate()
)

--create lookup table
create table lookup (
lup_id int identity (1,1),
ltype_value varchar(20),
fltype_lup_id int,
lup_createdon datetime default getdate(),
lup_updatedon datetime default getdate()
)
/*
drop table lookup
*/
--create device_usermapping table
create table device_usermapping(
dum_id int identity(1,1),
fu_dum_id int,
flup_dum_id int,
dum_createdon datetime default getdate(),
dum_updatedon datetime default getdate()
)

--create facebook_history table
create table Fhit_history(
Fh_id int identity(1,1),
fdum_Fh_id int,
flup_logwith_Fh_id int,
flup_ltype_Fh_id int,
Fh_createdon datetime default getdate(),
Fh_updatedon datetime default getdate()
)
*/
--eation of all table successfully


--now insert data in the all table
--insert data into user table
/*
insert into [user] values('Rajesh',GETDATE(),GETDATE())
insert into [user] values('Pankaj',GETDATE(),GETDATE())
insert into [user] values('Aman',GETDATE(),GETDATE())
insert into [user] values('Karan',GETDATE(),GETDATE())
*/

--INSERT DATA INTO BLOOKUP_TYPE TABLE
/*
insert into  lookup_type values('Hit',GETDATE(),GETDATE())
insert into  lookup_type values('Device',GETDATE(),GETDATE())
insert into  lookup_type values('Connection',GETDATE(),GETDATE())
insert into  lookup_type values('Login',GETDATE(),GETDATE())
*/

--INSERT DATA INTO lookup table
/*
insert into lookup values('Like',1,GETDATE(),GETDATE())
insert into lookup values('Share',1,GETDATE(),GETDATE())
insert into lookup values('Comment',1,GETDATE(),GETDATE())
insert into lookup values('Gmail',4,GETDATE(),GETDATE())
insert into lookup values('Mobile_no',4,GETDATE(),GETDATE())
insert into lookup values('Facebook_id',4,GETDATE(),GETDATE())
insert into lookup values('Mobile',2,GETDATE(),GETDATE())
insert into lookup values('Laptop',2,GETDATE(),GETDATE())
insert into lookup values('Tablet',2,GETDATE(),GETDATE())
insert into lookup values('Wifi',3,GETDATE(),GETDATE())
insert into lookup values('Lan',3,GETDATE(),GETDATE())
insert into lookup values('Volte',3,GETDATE(),GETDATE())
*/

--INSERT DATA INTO DEVICE_USERMAPPING
/*
insert into device_usermapping values(1,7,getdate(),getdate())
insert into device_usermapping values(1,8,getdate(),getdate())
insert into device_usermapping values(1,9,getdate(),getdate())
insert into device_usermapping values(2,7,getdate(),getdate())
insert into device_usermapping values(2,8,getdate(),getdate())
insert into device_usermapping values(2,9,getdate(),getdate())
insert into device_usermapping values(3,7,getdate(),getdate())
insert into device_usermapping values(3,8,getdate(),getdate())
insert into device_usermapping values(3,9,getdate(),getdate())
insert into device_usermapping values(4,7,getdate(),getdate())
insert into device_usermapping values(4,8,getdate(),getdate())
insert into device_usermapping values(4,9,getdate(),getdate())
insert into device_usermapping values(1,7,getdate(),getdate())
*/

--insert data into Fhit_history table
/*
insert into Fhit_history values(1,4,1,getdate(),getdate(),10)
insert into Fhit_history values(2,5,2,getdate(),getdate(),11)
insert into Fhit_history values(3,6,3,getdate(),getdate(),12)
insert into Fhit_history values(1,5,2,getdate(),getdate(),12)
insert into Fhit_history values(2,4,3,getdate(),getdate(),10)
insert into Fhit_history values(3,5,1,getdate(),getdate(),10)
insert into Fhit_history values(1,6,3,getdate(),getdate(),12)
insert into Fhit_history values(2,5,2,getdate(),getdate(),11)
insert into Fhit_history values(3,5,1,getdate(),getdate(),10)
insert into Fhit_history values(3,4,3,getdate(),getdate(),10)
insert into Fhit_history values(4,6,2,getdate(),getdate(),10)
insert into Fhit_history values(5,4,3,getdate(),getdate(),11)
insert into Fhit_history values(6,6,2,getdate(),getdate(),10)
insert into Fhit_history values(5,5,3,getdate(),getdate(),10)
insert into Fhit_history values(6,5,3,getdate(),getdate(),12)
insert into Fhit_history values(4,5,1,getdate(),getdate(),10)
insert into Fhit_history values(6,4,3,getdate(),getdate(),12)
insert into Fhit_history values(5,6,2,getdate(),getdate(),11)
insert into Fhit_history values(7,4,1,getdate(),getdate(),10)
insert into Fhit_history values(8,6,3,getdate(),getdate(),10)
insert into Fhit_history values(8,6,3,getdate(),getdate(),11)
insert into Fhit_history values(7,5,2,getdate(),getdate(),12)
insert into Fhit_history values(9,5,3,getdate(),getdate(),10)
insert into Fhit_history values(8,4,1,getdate(),getdate(),11)
insert into Fhit_history values(7,5,2,getdate(),getdate(),10)
insert into Fhit_history values(7,5,1,getdate(),getdate(),12)
insert into Fhit_history values(8,4,1,getdate(),getdate(),10)
insert into Fhit_history values(9,5,2,getdate(),getdate(),10)
insert into Fhit_history values(11,4,1,getdate(),getdate(),11)
insert into Fhit_history values(12,5,3,getdate(),getdate(),11)
insert into Fhit_history values(10,4,1,getdate(),getdate(),11)
insert into Fhit_history values(10,5,2,getdate(),getdate(),10)
insert into Fhit_history values(11,5,1,getdate(),getdate(),11)
insert into Fhit_history values(10,4,3,getdate(),getdate(),12)
insert into Fhit_history values(10,5,2,getdate(),getdate(),10)
insert into Fhit_history values(11,4,3,getdate(),getdate(),11)
insert into Fhit_history values(12,5,1,getdate(),getdate(),10)
insert into Fhit_history values(12,6,3,getdate(),getdate(),10)
insert into Fhit_history values(10,4,1,getdate(),getdate(),12)
insert into Fhit_history values(11,5,2,getdate(),getdate(),11)
*/
--alter table Fhit_history add fhlup_conntype int

------------------------------------------------------
--now query solution
-- total hit by laptop
select count(*) from Fhit_history as fhh
inner join device_usermapping as dum on fhh.fdum_fh_id = dum.dum_id

where lup.ltype_value = 'Laptop'


-- total hit by laptop with loginwith
select COUNT(*)as totalhit,luploginwith.ltype_value,lup.ltype_value
from Fhit_history as fhh
inner join device_usermapping as dum on fhh.fdum_fh_id = dum.dum_id
inner join lookup as lup on dum.flup_dum_id = lup.lup_id
inner join lookup as luploginwith on fhh.flup_logwith_Fh_id= luploginwith.lup_id
where lup.ltype_value = 'Laptop'-- and (luploginwith.ltype_value = 'Mobile_no' or luploginwith.ltype_value = 'Facebook_id'or luploginwith.ltype_value = 'Gmail')
group by luploginwith.ltype_value,lup.ltype_value


-- max hit by user with loginwith
select
COUNT(*)as no_of_hit,
u.u_name,luploginwith.ltype_value
from [user] as u
inner join device_usermapping as dum on u.u_id = dum.fu_dum_id
inner join Fhit_history as fhh on dum.dum_id = fhh.fdum_Fh_id
inner join lookup as luploginwith on fhh.flup_logwith_Fh_id= luploginwith.lup_id
group by u.u_name,luploginwith.ltype_value
order by no_of_hit desc


-- max hit by user
select
COUNT(*)as no_of_hit,
u.u_name
from [user] as u
inner join device_usermapping as dum on u.u_id = dum.fu_dum_id
inner join Fhit_history as fhh on dum.dum_id = fhh.fdum_Fh_id
group by u.u_name
order by no_of_hit desc

--total hit by user
select COUNT(*)as no_of_hit,
u.u_name
from [user] as u
inner join device_usermapping as dum on u.u_id = dum.fu_dum_id
inner join Fhit_history as fhh on dum.dum_id = fhh.fdum_Fh_id
group by u.u_name
order by no_of_hit desc

--total hit by user with loginwith
select COUNT(*)as no_of_hit,
u.u_name,luploginwith.ltype_value
from [user] as u
inner join device_usermapping as dum on u.u_id = dum.fu_dum_id
inner join Fhit_history as fhh on dum.dum_id = fhh.fdum_Fh_id
inner join lookup as luploginwith on fhh.flup_logwith_Fh_id= luploginwith.lup_id
group by u.u_name,luploginwith.ltype_value
order by no_of_hit desc

-- total hit by connection with device type  with loginwith
select COUNT(lup.ltype_value) as total_hit,
lup.ltype_value as connection_type,
lupe.ltype_value as devicetype,luploginwith.ltype_value
from Fhit_history as fhh
inner join device_usermapping as dum on fhh.fdum_Fh_id = dum.dum_id
inner join lookup as lup on fhh.fhlup_conntype = lup.lup_id
inner join lookup as lupe on dum.flup_dum_id = lupe.lup_id
inner join lookup as luploginwith on fhh.flup_logwith_Fh_id= luploginwith.lup_id
group by lup.lup_id,lup.ltype_value,lupe.ltype_value,luploginwith.ltype_value

-- total hit by connection with device type
select COUNT(lup.ltype_value) as total_hit,
lup.ltype_value as connection_type,
lupe.ltype_value as devicetype
from Fhit_history as fhh
inner join device_usermapping as dum on fhh.fdum_Fh_id = dum.dum_id
inner join lookup as lup on fhh.fhlup_conntype = lup.lup_id
inner join lookup as lupe on dum.flup_dum_id = lupe.lup_id
group by lup.lup_id,lup.ltype_value,lupe.ltype_value

--second time
/*
select *
from Fhit_history as fhh
inner join device_usermapping as dum on fhh.fdum_Fh_id = dum.dum_id
inner join lookup as lup on fhh.fhlup_conntype = lup.lup_id
group by lup.lup_id,lup.ltype_value
*/

--chat gpt
SELECT
    lt.ltype_name AS device_type,
    lt2.ltype_name AS connection_type,
    COUNT(fh.Fh_id) AS total_hit_count
FROM Fhit_history fh
JOIN device_usermapping dum ON fh.fdum_Fh_id = dum.dum_id
JOIN lookup_type lt ON dum.flup_dum_id = lt.ltype_id
JOIN lookup_type lt2 ON fh.flup_logwith_Fh_id = lt2.ltype_id
GROUP BY lt.ltype_name, lt2.ltype_name;

-- last history addded on
select top 1 Fh_updatedon
from Fhit_history
inner join lookup as luploginwith on fhh.flup_logwith_Fh_id= luploginwith.lup_id
order by Fh_updatedon

---- last history addded on with loginwith
select top 1 Fh_updatedon,luploginwith.ltype_value
from Fhit_history fhh
inner join lookup as luploginwith on fhh.flup_logwith_Fh_id= luploginwith.lup_id
order by Fh_updatedon

-- total type device    
select COUNT(*)
from lookup as l
inner join lookup_type as ltype on fltype_lup_id = ltype.ltype_id
group by ltype.ltype_name
having ltype.ltype_name = 'Device'

-- total type of network
select l.ltype_value as connection_type
from lookup as l
inner join lookup_type as ltype on fltype_lup_id = ltype.ltype_id
where ltype.ltype_name = 'Connection'


-- hit type with date range
begin transaction
select l.ltype_value as hit_type,fhh.Fh_createdon
from Fhit_history as fhh
inner join lookup as l on fhh.flup_ltype_Fh_id =l.lup_id
where fhh.Fh_createdon between '2023-08-10 15:30:46.747' and '2023-08-10 15:31:39.533'



--onl hit by Rajesh with device,connection,loginwith,
select * from Fhit_history fhh
inner join device_usermapping as dum on fhh.fdum_Fh_id = dum.dum_id
innerr join 



---
-- total hit by laptop


-- max hit by user
select  * from Fhit_history as fhh
inner join device_usermapping as dum on fhh.fdum_dum_id = dum.dum_id
inner join [user] as u on u.u_id = dum.fu_dum_id



inner join device_usermapping as dum on u.u_id = dum.fu_dum_id
inner join Fhit_history as fhh on dum.dum_id = fhh.fdum_Fh_id
-- total hit by connection with device type
-- last history addded on
-- total type device
-- total type of network
-- hit type with date range
select * from [user]
select * from lookup_type
select * from lookup
select * from device_usermapping
select * from Fhit_history