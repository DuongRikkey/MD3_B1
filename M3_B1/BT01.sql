create database BT02;
use bt02;
create table if not exists Account(
id int primary key auto_increment,
firstName varchar(100),
lastName varchar(100),
email varchar(255),
passwork varchar(255),
address varchar(255),
phone varchar(11),
dateOfBirth date,
status bit
);
