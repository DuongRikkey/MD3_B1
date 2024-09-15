create database bt06;
use bt06;
create table if not exists Catalog(
id int primary key auto_increment,
name varchar(100),
status bit
);
create table if not exists exam(
id int primary key auto_increment,
name varchar(100),
duration int,
catalog_id int,
constraint foreign key(catalog_id) references Catalog(id),
status bit
);
create table if not exists question(
id int primary key auto_increment,
exam_id int,
constraint foreign key(exam_id) references exam(id)
);
create table if not exists answer(
id int primary key auto_increment,
question_id int,
constraint foreign key(question_id) references question(id)
);
