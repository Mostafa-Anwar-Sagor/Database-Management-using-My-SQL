create database module_02;

create table student(
Roll char(4) primary key,
Name varchar(50) not null,
Email varchar(60)unique,
Adress varchar(225),
Age int check(age>10)

);


insert into student(Roll,Name,Email,Adress,Age)values('002','sagor','sagor304@gmail.com','Malaysia',22);
insert into student(Roll,Name,Email,Age)values('000','sagor','sagor304@ail.com',23);
create table student(
Roll char(4),
Name varchar(50) not null,
Email varchar(60),
Adress varchar(225),
Age int,
constraint pk_rules primary key(Roll),
 constraint unique_rule unique(Email),
constraint check_rule check(age>10)

);

create table Library(
BooKName varchar(50) primary key,
Whohired_Roll char(04),
foreign key(whohired_roll) references student(roll)
);

create table course(
CourseName varchar(10),                                                                                                                                                                       l                                         
University varchar(10),
Credit int,
primary key(CourseName,University)
);
