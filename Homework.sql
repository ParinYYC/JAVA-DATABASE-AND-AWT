create database studentdb;
create database if not exists studentdb;
create table studenttable(ID int,Student_Name text, Departmentid int, Date_of_Birth varchar(40));
create table departments(Department_ID int, Department_Name varchar(40));
set sql_safe_updates=0;
select * from studenttable;
insert into studenttable(ID,Student_Name, Departmentid, Date_of_Birth) values(1,"Parin",2001,"1/17/2009");
insert into studenttable(ID,Student_Name, Departmentid, Date_of_Birth) values(2,"Sai",2002,"1/19/2011");
insert into studenttable(ID,Student_Name, Departmentid, Date_of_Birth) values(3,"John",1999,"4/18/1975");
select * from departments;
insert into departments(Department_ID, Department_Name) values(1,"SnowCreek");
insert into departments(Department_ID, Department_Name) values(2,"SnowCreek");
update departments set Department_ID=6 where Department_ID=1;
