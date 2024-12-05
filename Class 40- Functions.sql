#there are some inbuilt functions in database, which can be used in queries
#Types of Functions: 1.Aggeregate Function-these are those functions that require alot(more than 1 input) inorder to get the output
#For example: sum, main max here we need more numbers to get the sum of them
#2.Scaler Function: theses are those functions where we need to give 1 input
#For example: Slice used to cut off the alphabets from a word.
#Another example LCASE-it converts everything into lowercase\
#1. sum() used to add whole column
use studentdb;
select * from markstbl;
select * from markstbl;
select sum(ID) from markstbl;
#2.max-to find the maximum value
select max(ID) from markstbl;
#3.min-used to find the minimum value
select min(ID) from markstbl;
#avg- used to find the medium of number
select avg(ID) from markstbl;
#5. U CASE- means to convert all the text into upper case
select ucase(students_name) from markstbl;
#6. l case- means to convert all the text into lowercase
select lcase(students_name) from markstbl;
#7. mid is used to do slicing or extract the text
select mid(students_name, 2) from markstbl;
#8. round is used to round up the decimal values
select round(marks) from markstbl;
#9.lenght is used to find out size of the input length
select length("apple") as markstbl;
#10 format- means to be diplayed in a particular format
#An example-numbers diplayed in a format of 2 2 numbers
#11now-used to give the current date and time
select now();
#12.count-used to count the number of rows
select count(ID) from markstbl where marks>40;
create table Emp_table (Name text, Age int, Salary varchar(20));
insert into Emp_table(Name, Age, Salary,marks) values("Sarah", 22, 100.000); 
insert into Emp_table(Name, Age, Salary) values("P DIDTY", 30, 150.000); 
insert into Emp_table(Name, Age, Salary) values("Drake", 27, 125.000);
set sql_safe_updates=0;
select count(Age) from Emp_table where Age>22;
select avg(Age) from Emp_table;
select min(Age) from Emp_table;
select lcase(Name) from Emp_table;


