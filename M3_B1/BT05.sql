create database bt05;
use bt05;
create table if not exists class(
class_id int primary key auto_increment,
class_name varchar(100),
start_date datetime,
status bit

);

create table if not exists student(
student_id int  primary key auto_increment,
student_name varchar(100),
address varchar(255),
phone varchar(11),
class_id int,
constraint linked_01 foreign key(class_id) references class(class_id)

);
create table if not exists subject(
subject_id int primary key auto_increment,
subject_name  varchar(100),
credit  int,
status bit 
);
create table if not exists mark(
id  int,
subject_id  int,
constraint lienket_02 foreign key(subject_id) references subject(subject_id),
student_id  int,
constraint lienket_03 foreign key(student_id) references student(student_id),
point double,
exam_time datetime
)

