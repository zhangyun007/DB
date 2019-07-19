/* 火车售票 */

drop database if exists testdb;
create database testdb;
use testdb;

create table ticket (checi char(10), qidian int, zhongdian int, chexiang int, zuowei int, id char(20));

delimiter //

/* drop procedure if exists InsertProc; */
create procedure InsertProc()
begin
    declare i int;
    declare j int;
    set i = 1;
    set j = 1;
    while i < 11 do
        while j < 121 do
            insert into ticket(checi, qidian, zhongdian, chexiang, zuowei, id) values ('G162', 1, 14, i, j, NULL);
            set j = j + 1;
        end while;
        set i = i + 1;
        set j = 1;
    end while;        
end//

delimiter ;

call InsertProc();

SHOW INDEX FROM ticket; \G

drop database testdb;
