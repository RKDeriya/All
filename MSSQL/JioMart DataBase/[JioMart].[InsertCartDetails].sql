USE [JioMartDataBase]
GO
/****** Object:  StoredProcedure [JioMart].[InsertCartDetails]    Script Date: 20-08-2023 08:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Rajesh>
-- Create date: <2023-08-20>
-- Description:	<i,u,d,s Cartdetails>
-- =============================================
ALTER PROCEDURE [JioMart].[InsertCartDetails]
	@cartDetailsId int,
	@productDetaisId int,
	@productQuantity int,
	@cartTotalPrice float,
	@userDetailsId int,
	@opType char(1)
AS
BEGIN

	SET NOCOUNT ON;

	if(@cartDetailsId = 0 and @opType = 'I')
	begin
		insert into JioMart.CartDetails values(@productDetaisId,@productQuantity,@cartTotalPrice,default,@userDetailsId,getdate(),getdate())
	end
	else if (@opType = 'U')
	begin
		Update JioMart.Cartdetails set ProductDetailsId=@productDetaisId,ProductQuantity = @productQuantity,CartTotalPrice=@cartTotalPrice,UserDetailsId=@userDetailsId where CartDetailsId=@cartDetailsId
	end
	else if (@opType = 'D')
	begin
		delete from JioMart.CartDetails Where CartDetailsId =@cartDetailsId
	end
	else if (@cartDetailsId != 0)
	begin 
		select * from JioMart.CartDetails where CartDetailsId =@cartDetailsId
	end
	else
	begin
		select *from JioMart.CartDetails
	end
END
