
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Rajesh
-- Create date: 2023-08-18
-- Description:	create trigger for Productstock updation
-- =============================================
alter TRIGGER UpdateProductQuantity
ON OrderDetails
AFTER INSERT
AS
BEGIN
    -- Update product quantity for each ordered product
	declare @ProductNameId int;
	declare @Quantity int;
	
	select @ProductNameId = ProductNameId, @Quantity = 1 from inserted;

    UPDATE pn
    SET pn.ProductQuantity = pn.ProductQuantity - @Quantity
    FROM ProductName pn
    INNER JOIN OrderDetails od ON pn.ProductNameId = od.ProductNameId
	where pn.ProductNameId = @ProductNameId
END;


GO

insert into OrderDetails (UserDetailsId,ProductNameId,OrderDate,Createdon,Updatedon)
values(1,13,GETDATE(),GETDATE(),GETDATE())