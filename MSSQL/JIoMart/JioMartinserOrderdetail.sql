-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
alter procedure InsertOrderDetails
	@orderDetailsId int,
	@userDetailsId int,
	@productNameId int,
	@opType VARCHAR(1)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--SELECT <@Param1, sysname, @p1>, <@Param2, sysname, @p2>
	IF(@orderDetailsId = 0 and @opType='I')
	begin
	insert into OrderDetails values(@userDetailsId,@productNameId,GETDATE(),GETDATE(),GETDATE())
	END
		IF(@opType = 'U')
		begin
		update OrderDetails set  UserDetailsId=@userDetailsId, ProductNameId=@productNameId,Updatedon=GETDATE() where OrderDetailsId=@orderDetailsId
		end
		else if(@opType= 'D')
		begin
		Delete from OrderDetails where OrderDetailsId = @orderDetailsId
		end
	else
	select * from OrderDetails
END
GO
