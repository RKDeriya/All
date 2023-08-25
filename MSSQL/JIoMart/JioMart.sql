create database JioMart
use JioMarT
--create tables
--create UserDetails table
create table UserDetails (
UserDetailsId int identity(1,1),
UserName varchar(20),
UserAddress varchar(100),
UserMobileno varchar(15),
Createdon datetime default getdate(),
Updatedon datetime default getdate()
)

--create Category Table
create table Category(
CategoryId int identity(10001,1),
CategoryName varchar(20),
Createdon datetime default getdate(),
Updatedon datetime default getdate()
)

--create Productname Table
create table ProductName(
ProductNameId int identity(11,1),
ProductName varchar(20),
ProductPrice int,
CategoryId int,
Createdon datetime default getdate(),
Updatedon datetime default getdate()
)

alter table ProductName add ProductQuantity int
exec sp_rename 'Productname.[ProductName.ProductQuantity]','ProductQuantity'

--crete OrderDetails Table
create table OrderDetails(
OrderDetailsId int identity(1,1),
UserDetailsId int,
ProductNameId int,
OrderDate datetime default getdate(),
Createdon datetime default getdate(),
Updatedon datetime default getdate()
)

---table created successfully
--------------------------------------
--insert data into UserDetails Table
exec insertUserDetails 0,'Rajesh','Madana(gadh),Palanpur','1234567890'
exec insertUserdetails 0,'Aman','Kalol,Gandhinagar','1237894560'
exec insertUserdetails 0,'Pankaj','Income tex,Ahmedabad','7894561230'
exec insertUserdetails 3,'Pankaj','Income tex,Ahmedabad','7894561230','U'
exec insertUserdetails 0,'Panka','Income tex,Ahmedabad','7894561230','A'
exec insertUserdetails 4,'Panka','Income tex,Ahmedabad','7894561230','A'
--truncate table Category

--insert data into Category TableFruits & Vegetables,Books,Home Care
exec insertCategory 0,'Groceries'
exec insertCategory 0,'Home & Kichen'
exec insertCategory 0,'Fashion'
exec insertCategory 0,'Electronics'


--insert data into pRODUCTnAME TableFruits & Vegetables,Books,Home Care

EXEC insertProductName 0,'Surf excel matic liquid',312,10001,500,'I'
EXEC INSERTPRODUCTNAME 0,'Arial matic liquid',318,10001,1000,'I'
EXEC INSERTPRODUCTNAME 0,'Parachute coconate oil',280,10001,1500,'I'
EXEC INSERTPRODUCTNAME 0,'Tata tea premium 1kg',395,10001,400,'I'
EXEC INSERTPRODUCTNAME 0,'parle-G goldBiscuits',116,10001,500,'I'
EXEC INSERTPRODUCTNAME 0,'Plastic cloth clips 12',124,10002,500,'I'
EXEC INSERTPRODUCTNAME 0,'Plastic mug pack(4)',85,10002,1000,'I'
EXEC INSERTPRODUCTNAME 0,'Folding Table',512,10002,1000,'I'
EXEC INSERTPRODUCTNAME 0,'Single Mattress',450,10002,1000,'I'
EXEC INSERTPRODUCTNAME 0,'Disposable paper cup (12)',156,10002,1000,'I'
EXEC INSERTPRODUCTNAME 0,'Backpack with rain cover',336,10003,1000,'I'
EXEC INSERTPRODUCTNAME 0,'UV protected glass',289,10003,1000,'I'
EXEC INSERTPRODUCTNAME 0,'T-shirt for men',199,10003,1000,'I'
EXEC INSERTPRODUCTNAME 0,'finger-ring',89,10003,1000,'I'
EXEC INSERTPRODUCTNAME 0,'Spark shoe',599,10003,1000,'I'
EXEC INSERTPRODUCTNAME 26,'Spark shoe',599,10003,1000,'D'
-----------------------------------------------------------------
--insert data into orderdetails table
insert into Orderdetails values(1,11,'2023-08-12 17:28:28.003','2023-08-10 17:28:28.003','2023-08-10 17:28:28.003')
insert into Orderdetails values(1,16,'2023-08-12 17:28:28.003','2023-08-10 17:28:28.003','2023-08-10 17:28:28.003')
insert into Orderdetails values(1,21,'2023-08-12 17:28:28.003','2023-08-10 17:28:28.003','2023-08-10 17:28:28.003')
insert into Orderdetails values(1,12,'2023-08-12 17:28:28.003','2023-08-10 17:28:28.003','2023-08-10 17:28:28.003')
insert into Orderdetails values(2,19,'2023-08-10 01:28:28.003','2023-08-10 01:28:28.003','2023-08-10 01:28:28.003')
insert into Orderdetails values(2,18,'2023-08-10 01:28:28.003','2023-08-10 01:28:28.003','2023-08-10 01:28:28.003')
insert into Orderdetails values(2,23,'2023-08-10 01:28:28.003','2023-08-10 01:28:28.003','2023-08-10 01:28:28.003')
insert into Orderdetails values(2,22,'2023-08-10 01:28:28.003','2023-08-10 01:28:28.003','2023-08-10 01:28:28.003')
insert into Orderdetails values(2,11,'2023-08-10 01:28:28.003','2023-08-10 01:28:28.003','2023-08-10 01:28:28.003')
insert into Orderdetails values(3,13,getdate(),getdate(),getdate())
insert into Orderdetails values(3,17,getdate(),getdate(),getdate())
insert into Orderdetails values(3,17,getdate(),getdate(),getdate())
insert into Orderdetails values(3,12,getdate(),getdate(),getdate())
insert into Orderdetails values(3,11,getdate(),getdate(),getdate())
insert into Orderdetails values(1,15,getdate(),getdate(),getdate())
insert into Orderdetails values(1,19,getdate(),getdate(),getdate())
insert into Orderdetails values(1,20,getdate(),getdate(),getdate())
insert into Orderdetails values(1,12,getdate(),getdate(),getdate())
insert into Orderdetails values(2,25,getdate(),getdate(),getdate())
insert into Orderdetails values(2,22,getdate(),getdate(),getdate())
insert into Orderdetails values(2,14,getdate(),getdate(),getdate())
--TRUNCATE TABLE ORDERDETAILS
--exec sp_rename 'Productname.ProductName','ProductNameValue'
/*
create table Details(
OrderDetailsId int identity(1,1),
UserDetailsId int,
ProductNameId int,
OrderDate datetime default getdate(),
Createdon datetime default getdate(),
Updatedon datetime default getdate()
)

insert into Details(UserDetailsId,ProductNameId)
select UD.UserDetailsId,PN.ProductNameId from UserDetails as UD
cross join ProductName as PN

select * from Details
drop table Details
*/
select * from UserDetails
select * from Category
select * from ProductName
select * from OrderDetails

-----------------------------
--Quieries using aggregate function
--user total order price
select sum(PN.ProductPrice)as user_total_order_price,UD.UserName
from OrderDetails as OD
inner join UserDetails as UD on OD.UserDetailsId = UD.UserDetailsId
inner join ProductName as PN on OD.ProductNameId = PN.ProductNameId
group by UD.UserName
having UD.UserName = 'Rajesh'

----Avg PRICE VALUE FOR PARTICULAR VALUE
select AVG(PN.ProductPrice) AS AVGPRICE,C.CategoryName 
from ProductName as PN
inner join Category aS C ON C.CategoryId=PN.CategoryId
GROUP BY C.CategoryName

----STDEV of price
select STDEV(DISTINCT ProductPrice) as distinct_value,STDEV(ProductPrice) as all_value
from ProductName as PN
inner join Category as C on C.CategoryId = PN.CategoryId
group by C.CategoryName;


--STDEV of price
select STDEVP(DISTINCT ProductPrice) as distinct_value,STDEVP(ProductPrice) as all_value
from ProductName as PN
inner join Category as C on C.CategoryId = PN.CategoryId
group by C.CategoryName;

--Var in price
select var(DISTINCT ProductPrice) as distinct_value,var(ProductPrice) as all_value
from ProductName as PN
inner join Category as C on C.CategoryId = PN.CategoryId
group by C.CategoryName;



---COUNT_big
/*
COUNT_BIG(*) returns the number of items in a group. This includes NULL values and duplicates.

COUNT_BIG (ALL expression) evaluates expression for each row in a group, and returns the number of nonnull values.

COUNT_BIG (DISTINCT expression) evaluates expression for each row in a group, and returns the number of unique, nonnull values.

COUNT_BIG is a deterministic function when used without the OVER and ORDER BY clauses. 
COUNT_BIG is nondeterministic when used with the OVER and ORDER BY clauses. 
See Deterministic and Nondeterministic Functions for more information.
*/

SELECT COUNT_BIG(*) FROM Category as C
left join ProductName as PN on C.CategoryId = PN.CategoryId


SELECT COUNT_BIG(PN.ProductName) FROM Category as C
left join ProductName as PN on C.CategoryId = PN.CategoryId


--VAL
SELECT first(ProductName.ProductNameValue) from ProductName
group by CategoryId
--ERROR
select RANK(12,1) within group(order by ProductNameId,UserDetailsId) from OrderDetails

select RANK(1000, 500) WITHIN GROUP (ORDER BY salary, bonus) from employees


