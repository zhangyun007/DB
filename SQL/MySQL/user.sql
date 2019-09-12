show databases;

/*
 *
 
创建用户 

CREATE USER  'user_name'@'host'  IDENTIFIED BY  'password'；

user_name：	要创建用户的名字。
host：		表示要这个新创建的用户允许从哪台机登陆，如果只允许从本机登陆，则填‘localhost’，如果允许从远程登陆，则填 ‘%’。
password：	新创建用户的登陆数据库密码，如果没密码可以不写。

*
*/

create user 'drupal'@'%' identified by 'drupal';
create user 'drupal'@127.0.0.1 identified by 'drupal';
create user 'drupal'@localhost identified by 'drupal';
select * from mysql.user;

grant all privileges on drupal.* to drupal@'%' identified by 'drupal';
flush privileges;

DROP USER drupal@'%';