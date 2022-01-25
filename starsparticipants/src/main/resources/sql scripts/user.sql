
create database if not exists stars;
Drop database stars;
use stars;

create table user(
userid int primary key auto_increment,
firstname varchar(10) not null,
lastname varchar(10) not null,
dateOfBirth date not null,
gender varchar(10) not null,
contactNo varchar(10) not null,
username varchar(50) not null unique,
password varchar(50) not null,
usercat varchar(50) not null,
adminAccess boolean default false);

select * from user;

insert into user(firstname, lastname, dateofbirth, gender, contactNo, username, password, usercat, adminAccess) 
values("Sonic", "Somanna", "1999-07-31", "Male", 8310000235, "sonicsomanna", "1234", "admin", true);

drop table user;