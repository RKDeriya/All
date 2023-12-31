USE [JioMartDatabase]
GO
/****** Object:  StoredProcedure [dbo].[InsertUserDetailsJioMart]    Script Date: 20-08-2023 10:23:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Rajesh
-- Create date: 2023-08-14
-- Description:	<this store procedure is used for inserting the data in the JioMart database table, also perform the update and delete and select operation >
-- =============================================

alter procedure [JioMart].[InsertUserDetails]
	-- Add the parameters for the stored procedure here
	--<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
	--<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
	@userDetailsid int,
	@userFirstName varchar(20),
	@userLastName varchar(20),
	@userAddress varchar(100),
	@userMobileNo varchar(15),
	@userWalletbalance float,
	@opType char(1)
AS
BEGIN

	SET NOCOUNT ON;

	if(@userDetailsid = 0 and @opType = 'I')
	BEGIN
	insert into jiomart.UserDetails values(@userFirstName,@userLastName,@userAddress,@userMobileNo,@userWalletbalance,GETDATE(),GETDATE())
	END
		
	else if(@opType = 'U')
	BEGIN
		update JioMart.UserDetails set UserFirstName=@userFirstName,UserLastName = @userLastName,UserAddress=@userAddress,UserMobileNo=@userMobileNo,UserWalletBalance=@userWalletbalance where UserDetailsid=@userDetailsid
	END

	else if (@opType = 'D')
	BEGIN
		delete from JioMart.UserDetails where UserDetailsid=@userDetailsid
	END

	else if (@userDetailsid !=0)
	begin
		select * from jioMart.UserDetails where UserDetailsId=@userDetailsid
	end
	else
	begin 
		select * from jiomart.UserDetails
	end
END

