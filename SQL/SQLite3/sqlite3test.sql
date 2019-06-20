.open test.db

.databases
.table

drop table test;
CREATE TABLE test (name char(10));
insert into test (name) values('zhangfei'), ('liubei'), ('zhugeliang'), ('caocao'), ('guanyu');
select * from test;

.schema test

'导出数据库命令'
.dump