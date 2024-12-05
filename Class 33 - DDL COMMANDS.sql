#DDL commands :
#data definition langauge means here we have all commands which helps us to define data or declare them  eg create database


#1. create database : this is first always first create database, multiple databases can also be created

#syntax : create database databasename;
#or
create database if not exists databasename;

#2. to show all databases : 
#syntax show databases;

#3. switch to other database :
#syntax : Use databasename;

#4. create table :
#syntax : craete table tablename(columnname1 datatyp1, columname2 datatype2, columname3 dataatype3, columnname4 datatyp4....)
#or create table if not exists tablename(columname1 dattatyp1, columname2 datatype2, columname3 datteyp3, columnaem4 datatype4...)

#5. To delete all data from table  Truncate :
#Truncate table tablename;

#6. Drop database : delete databse
#syntax : drop database databasename;

# create database
create database db;
create database if not exists db;
#to go inside the database
use db;
#create table
create table student(ID int,Student_Name text,Email varchar(40),Phone_Number varchar(20));
#to view table
select * from student;
#to delete the database
create database db2;
drop database db2;
show databases;
create database db2;
show databases;
#delete all data from table
truncate table student;

