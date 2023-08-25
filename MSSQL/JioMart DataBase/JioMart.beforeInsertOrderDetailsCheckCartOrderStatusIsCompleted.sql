SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Rajesh>
-- Create date: <2023-08-20>
-- Description:	<before insert into orderdetails check the cartorderstatus is Not completed or completed>
-- =============================================
create TRIGGER JioMart.beforeInsertOrderDetailsCheckCartOrderStatusIsCompleted
   ON JioMart.OrderDetails
   INSTEAD OF insert
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	/*
	SET NOCOUNT ON;
	declare @cartDetailsId;
	select @cartDetailsId = CartDetailsId from inserted;
	
    -- Insert statements for trigger here
	select *
	from JioMart.OrderDetails as OD
	inner join jiomart.CartDetails as CD on OD.CartDetailsId=CD.CartDetailsId
	where CD.CartOrderStatus='Completed'
	*/

	-- Create the trigger
    DECLARE @CartOrderStatus varchar(15);
	declare @cartDetailsId int;

    -- Assuming you're inserting a single row at a time
    
	select @CartOrderStatus = CartOrderStatus from JioMart.CartDetails where @cartDetailsId=CartDetailsId;
    -- Check if CartOrderStatus is Completed
    
	IF (@CartOrderStatus Like 'Completed')
    BEGIN
       
        Return;
       
    END;

    -- If CartOrderStatus is not Completed, proceed with the INSERT
	
    INSERT INTO JioMart.OrderDetails (CartDetailsId, OrderPaymentMode, OrderTotalPrice)
    SELECT CartDetailsId, OrderPaymentMode, OrderTotalPrice
    FROM inserted;
		
END
gO
