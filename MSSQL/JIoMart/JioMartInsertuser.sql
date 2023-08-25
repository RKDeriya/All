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
-- Author:		Rajesh
-- Create date: 2023-08-14
-- Description:	<this store procedure is used for inserting the data in the JioMart database table, also perforn >
-- =============================================
--CREATE PROCEDURE <Procedure_Name, sysname, ProcedureName> 
Alter procedure insertUserDetails
	-- Add the parameters for the stored procedure here
	--<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
	--<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
	@userDetailsid int,
	@userName varchar(20),
	@userAddress varchar(100),
	@userMobileno varchar(15),
	@optype char(1)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--SELECT <@Param1, sysname, @p1>, <@Param2, sysname, @p2>
	if(@userDetailsid = 0)
	BEGIN
	insert into UserDetails values(@userName,@userAddress,@userMobileno,GETDATE(),GETDATE())
	END
		if(@optype = 'U')
		BEGIN
		update UserDetails set UserName=@userName,UserAddress=@userAddress,UserMobileno=@userMobileno where UserDetailsid=@userDetailsid
		END
		else
		BEGIN
		delete from UserDetails where UserDetailsid=@userDetailsid
		END
END
GO
