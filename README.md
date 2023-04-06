# Project_db_lock
- db lock 解開

此項目主要是需製作資料庫解除鎖表 功能
> 原功能 : 
- 已可用畫面 , 讓特定用戶查詢到目前資料庫有哪些表鎖住
- 並通過點選方式解開
> 新功能 : 
### 需要能兼容 原本的 Oracle 與新的 SQL Server , PostgreSQL
1. 特定用戶執行時 , 所使用到的 db user 沒 dba 權限 , 不過還是要可以執行
2. 能夠達到執行後 解除 table lock
