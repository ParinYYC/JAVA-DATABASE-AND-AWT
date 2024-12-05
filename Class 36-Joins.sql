#joining temporarily 2 or more tables together through a common column between them.
#Tables are not actually joined but just to view how it looks, after actual joining
#This join is used in select query, which displays table after joining
#different types of joins are:
#1. NATURAL JOINING-(This means joining all the columns of table 1 and table 2, asm the common column comes only 2 times
# then in natural join it picks up the common column just once.
use studentdb;
create table employee(ID int, EMP_NAME text, dept_NAME text);
create table department(team_NAME text, dept_NAME text);
insert into employee(ID, EMP_NAME, dept_NAME) values(1,"Parin","IT department");
insert into  department(team_NAME, dept_NAME) values("IT","IT department");
insert into employee(ID, EMP_NAME, dept_NAME) values(2,"Sai","Front desk ");
insert into  department(team_NAME, dept_NAME) values("Front desk","Front desk");
insert into employee(ID, EMP_NAME, dept_NAME) values(3,"Sakshi","hr department");
insert into  department(team_NAME, dept_NAME) values("HR","HR department");
select * from employee;
select * from department;
#1. Natural join
select * from employee natural join department;
#2. SELF JOIN: in this we don't use a 2nd table to combine with the first one, rather we create a duplicate copy of the first one.
# We have to create variables in this case to define the column of both tables because here the tables don't combine with the second one rather it combines with the first one.
select a.ID, b.ID from employee a,employee b where a.dept_NAME = b.dept_NAME;
#3. INNER JOIN/ EQUI JOIN:in this 2 tables are joined togehter through common column. The common column becasue it appears 2 times may be taken 2 times
select employee.ID, employee.EMP_NAME, employee.dept_NAME, department.team_NAME, department.dept_NAME from employee inner join department on employee.dept_NAME = department.dept_NAME;
#4. OUTER JOIN: It has 3 categories: left join, right join and full join.
#Left join means that all the columns of the first table and the common table are combined.
#Right join means all the columns from the second table will come.
#Full join means all the common columns in the left and right will join.
select * from employee left join department on employee.ID = department.dept_NAME;
select * from employee right join department on employee.ID = department.dept_NAME;



