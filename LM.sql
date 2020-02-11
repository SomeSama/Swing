#删除LibraryMS如果存在
drop database if exists `LibraryManage`;
#创建一个新的LibraryMS数据库,且设置字符编码以及排序规则
create database `LibraryManage` CHARACTER SET utf8 COLLATE utf8_general_ci;
#使用LibraryMS进行操作
use `LibraryManage`;
#将存储引擎修改为INNODB
#set default_storage_engine=INNODB;
#管理员信息
create table `su`
(
  `id` int primary key auto_increment,
  `username` varchar(40) unique not null,
  `password` varchar(60) not null
);
insert into su(username,password) values(reverse(concat((select floor(0+rand()*2)),'00110010us')),'123456');

select * from su where username='su010011001' and password='123456';