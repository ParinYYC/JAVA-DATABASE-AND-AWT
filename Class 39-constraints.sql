# Constraints
#Means like putting restrictiction on column or the whole table so that there is no duplicaity of the data
#Accuracy, Security, Columns are not left empty and ect.
#2 ways of constraints:
#1. Column constraint:here we put constrain on either one column or more than one column
#2.Table Constraint:this means all the columns are constrained
#Note: Constraints are always given when the table is created
#5 types of constraint are:
#1.Not Null: If we put not null to a column then that coulmn cannot have empty values
#an example lets say there is a column folder without not null we have a choice to make that phone number column empty, if someone doesn't have a phone number
#but when not null is given to that column then whatever type of record we store we have to always give the phone number we cannot leave that column empty
use db;
create table student10(name text, email varchar(30), phone_number varChar(20) not null); 
desc student10;
#2.Unique: this type of constraint that the column data has to be unique, and that no duplicay is allowed.
create table student11(name text, email varchar(30) unique, phone_number varchar(20) unique);
#3.Primary Key!!: it is the combination of not null and unique, the column cannot have empty data and same data
create table student13(name text, email varchar(30) unique not null, phone_number varchar(20) primary key);
desc student13;
#NOTE: PRIMARY KEY cannot be applied to more than one column at a time. Instead you could use unique and not null for the another column.
#4.Check:Check is used to be apply to any kind of condition.
create table student14(ID int not null, F_NAME varchar(20), L_NAME varchar(30) unique, age int, check(age<18));
#NOTE:the check constraint is always used in the end
#5.Default: it is used means 1 default value will be given and all the data will be given that value example if we set the city column to calgary default, then whatever data you will put it will be set to calgary by default
create table student15(ID int not null, F_NAME varchar(20), L_NAME varchar(30) unique, age int,  city varchar(30) default"calgary");
desc student15;
#6.Foreign Key: it is used to connect two tables. For example if 2 tables share the same column name, then the second table can take the data from the first table in this way the data in the 2 tables will be the same
#Example: student1 and student2 two tables both of them have columns called name, to make sure that data is accurate 1 column can take data from the other column to make it the same in this way they have the same data in the column name
#if we dont use the foreign key there is chances that the data will be mismatching of the data, which is why sharing of the data is important between the 2 tables of the foreign key that are connected
 
