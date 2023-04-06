USE [master]
GO

/****** Object:  StoredProcedure [dbo].[Get_test2]    Script Date: 2020/1/20 下午 05:04:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_test2]
@user_spid INT
with execute as owner
AS
EXEC('KILL '+@user_spid)

GO

