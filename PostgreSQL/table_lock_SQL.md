gzwl_t 是其他程序的應用表 如要使用可移除此 table
```
SELECT 'N' ,
pg_namespace.nspname ,
pg_class.relname ,
pg_stat_activity.usename ,
CASE WHEN gzwl002 <> '' THEN gzwl002 ELSE SUBSTR(pg_stat_activity.application_name,1,10) END ,
gzwl008 ,
gzwl003 ,
gzwl007 ,
pg_stat_activity.application_name ,
'' ,
CASE WHEN gzwl007 <> '' THEN gzwl007 ELSE ' ' END ,
'' ,
'' ,
pg_stat_activity.pid ,
'' ,
pg_locks.mode
 FROM pg_class
 JOIN pg_locks on pg_locks.relation = pg_class.oid
 JOIN pg_database on pg_database.oid = pg_locks.database
 JOIN pg_namespace on pg_namespace.oid = pg_class.relnamespace
 JOIN pg_stat_activity on pg_stat_activity.pid = pg_locks.pid
 LEFT JOIN gzwl_t on gzwl016 = pg_locks.pid
 WHERE pg_class.relkind = 'r'
 AND pg_database.datname = current_database()
```
