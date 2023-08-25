
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Rajesh>
-- Create date: <2023-08-20>
-- Description:	<After update product price update cartTotalprice>
-- =============================================
Alter TRIGGER JioMart.AfterUpdatePriceupdateinCartTotalPrice
   ON JioMart.Productdetails
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	/*
	declare @productDetailsId int;
	declare @productQuantity int;
	declare @ProductPrice int;
	
	select @productDetailsId=JioMart.ProductDetails.ProductDetailsId,@productQuantity=JioMart.CartDetails.ProductQuantity,@ProductPrice=inserted.ProductPrice from inserted,JioMart.CartDetails,JioMart.ProductDetails;
	declare @newPrice int = @productQuantity * @ProductPrice;
	--update Cartdetails table>>carttotalprice
    /*update CD set CD.CartTotalPrice = (CD.ProductQuantity * PD.ProductPrice)
	from JioMart.CartDetails as CD
	inner join JioMart.ProductDetails as PD on PD.ProductDetailsId=CD.ProductDetailsId
	where PD.ProductDetailsId=@productDetailsId
	*/
	update JioMart.CartDetails set CartTotalPrice=@newPrice where ProductDetailsId=@productDetailsId
	*/
	UPDATE cd
    SET CartTotalPrice = i.ProductPrice * cd.ProductQuantity
    FROM JioMart.CartDetails cd
    INNER JOIN inserted i ON cd.ProductDetailsId = i.ProductDetailsId
    INNER JOIN deleted d ON cd.ProductDetailsId = d.ProductDetailsId
    WHERE i.ProductPrice <> d.ProductPrice

END
GO
