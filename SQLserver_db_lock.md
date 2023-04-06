執行語法	SQL SERVER	
---
- PREPARE stmt FROM "exec master.dbo.Get_test2 @user_spid=?"
- EXECUTE stmt USING ls_spid IN"
- 執行 (sa)	SQL SERVER	
- KILL SPID
---		
procedure 程序	SQL SERVER	
- exec master.dbo.Get_test2 @user_spid=90
