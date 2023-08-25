
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Rajesh
-- Create date: 2023-08-18
-- Description:	to insert data into Product Name if New category is created
-- =============================================
alter TRIGGER InsertProductNameAfterCreatingCategory 
   ON Category 
   AFTER INSERT
AS 
BEGIN
	
	SET NOCOUNT ON;
	declare @categoryId int;

	select @categoryId =CategoryId from inserted;

	insert into ProductName (ProductNameValue,ProductPrice,CategoryId,Createdon,Updatedon,ProductQuantity)
	values('Atta',30,@categoryId,GETDATE(),GETDATE(),1200)

END
GO



insert into Category values('Beauty',GETDATE(),GETDATE())