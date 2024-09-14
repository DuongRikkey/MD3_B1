create database if not exists bt01;
use bt01;
create table if not exists categories(
id int primary key auto_increment,
name varchar(100),
status bit
);
create table if not exists product(
id int primary key auto_increment,
name varchar(100),
price double,
stock int,
category_id int not null,
foreign key(category_id) references categories(id),
status bit
);