執行方式 :
> 執行語法 Oracle + Genero
- PREPARE stmt FROM "begin system.top_sp_kill_session(?,?,?); end;" 
- EXECUTE stmt USING ls_sid IN, ls_serial IN, ls_inst_id IN" 
---
搭配 : 
> 由 sys 建立的程序 
- system.top_sp_kill_session 
> 執行 (sys) 
- Oracle ALTER SYSTEM KILL SESSION 'SID,SERIAL ID,INST ID'
