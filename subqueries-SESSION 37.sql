#subqueries: means queries inside query
#the outer query is called as the main query
#the inner query is called nested/sub query
#you can apply the subquery with select update or delete, insert
#we first put an main query after we give a condition use any operator, and in the () we will write down the subquery
#1. Using select query 
use studentdb;
select * from employee where ID in (select ID from employee where EMP_NAME ="Parin");
#2.Using insert query
#when we insert the data we have to make sure that 2 tables are there in the same columns then in this case 
#1 table already has all the data and we take the data from that table, and insert that into the second table using sub query
create table employee1(ID int, EMP_NAME text, dept_NAME text);
#we will copy everything from employee to employee1.
insert into employee1 select * from employee where ID in (select ID from employee);
select * from employee1;
#3. subquery update
update employee set ID= ID*5 where dept_NAME in (select dept_NAME from employee1 where ID>= 1);
set sql_safe_updates=0;
#4.delete from subqueries
delete from employee where dept_NAME in (select dept_NAME from employee1 where ID>= 1);
select * from employee1 where ID=(select max(ID)from employee1);
#max means the highest number that is being displayed of that employee.
