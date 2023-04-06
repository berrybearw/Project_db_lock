預存程序
---
```
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
```
權限
---
```
use [master]
GO
GRANT ALTER ON [dbo].[Get_test2] TO [public] WITH GRANT OPTION 
GO
use [master]
GO
GRANT EXECUTE ON [dbo].[Get_test2] TO [public] WITH GRANT OPTION 
GO
```
