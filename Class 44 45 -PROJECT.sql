create database db6;

use db6;

create table department9(dename varchar(30) not null, dnumber int not null, location varchar(30), primary key(dnumber));
create table project(pnumber int not null, dnumber int not null, pname varchar(40) not null, primary key(pnumber), foreign key(dnumber) references department9(dnumber));
create table payment(Salary real not null, Tax real, pension real, deduction real, primary key(Salary));
create table employee(Ename varchar(20) not null, SSN varchar(30) not null, Salary real not null, dnumber int not null, Sex varchar(8) not null, pnumber int not null, primary key(SSN), foreign key (dnumber) references department9(dnumber),foreign key(salary) references payment(salary), foreign key(pnumber) references project(pnumber));
create table payroll5(H_worked real not null, SSN varchar(30) not null, primary key (H_worked, SSN), foreign key(SSN) references employee(SSN));
create table ledger(SSN varchar(30) not null, Ldate varchar(10) not null, primary key (SSN), foreign key (SSN) references  employee(SSN));

insert into department9(dename, dnumber, location) values("CS",1,'Nekemte');
insert into department9(dename, dnumber, location) values("Business",2,'Jimbo');
insert into department9(dename, dnumber, location) values("IT",3,'Patel');
insert into department9(dename, dnumber, location) values("Agri",4,'Arjit');

insert into project(pname, pnumber, dnumber) values("sisco",001,3);
insert into project(pname, pnumber, dnumber) values("plantscience",002,4);
insert into project(pname, pnumber, dnumber) values("prolong",003,1);
insert into project(pname, pnumber, dnumber) values("Marketing",004,2);
select * from department9;
select * from project;
select * from payment;
select * from employee;
select * from payroll;
insert into payment(Salary, Tax, pension, deduction) values(500,3,5,6);
insert into payment(Salary, Tax, pension, deduction) values(1500,5,6,10);
insert into payment(Salary, Tax, pension, deduction) values(5000,45,78,23);
insert into payment(Salary, Tax, pension, deduction) values(2000,123,23,90);
insert into payment(Salary, Tax, pension, deduction) values(3500,3,55,60);
select * from payment;

update payment set tax=salary*0.0-0 where salary<=150;
update payment set tax=salary*0.1-15 where salary<=650;
update payment set tax=salary*0.15-47.5 where salary<=1400;
update payment set tax=salary*0.2-117.5 where salary<=2350;
update payment set tax=salary*0.25-262 where salary<=3500;
update payment set tax=salary*0.3-412.5 where salary<=5000;
update payment set tax=salary*0.35-662.5 where salary<=5000;

insert into employee values("Beresa", "0987",5000,004,'M',1);
insert into employee values("hawaii", "0967",1500,003,'F',3);
insert into employee values("Bontu", "0900",3500,002,'M',4);
insert into employee values("Megersa", "0787",5000,003,'M',2);
insert into employee values("Bula", "0887",2000,005,'M',3);
insert into employee values("Abdena", "0687",5000,002,'M',1);
insert into employee values("Gemada", "0587",501,004,'M',4);
select * from employee;

insert into payroll5 values (1, '0787');
insert into payroll5 values (4,'0900');
insert into payroll5 values (2, '0967');
insert into payroll5 values(3, '0987');
select * from payroll5;

insert into ledger(SSN, ldate) values('0787','12/05/2007');
insert into ledger(SSN, ldate) values('0900','16/06/2007');
select * from ledger;
select count(*) as count from employee , payroll  where SSN=SSN and salary <=500;
select avg(salary) as Avg_salary from employee;
select sum(salary) as sum_salary from employee;
select max (salary) as Max_salary, min(salary) as min_salary, max(pension) as max_pension, min(pension) as min(pension), max(tax) as max_pension, max(deduction) as max_deduction, min(deduction) as min_deduction from payment;
select ename, salary, SSN from employee order by ename;
select employee.ename,employee.pnumber, department.dname from employee cross join department;
#count all the employye whose salaey <=500
#Find the avg salry of employee from payment table
#Write a query to find the sum of salary, pention, deduction from the payment table
#calculate the min and max of all salary, pension, tax deduction of employee from payment table. Here we have to use 6 queries
#write a query to find the employee salary, id from the order of employee names from employee table
#write a queery to cross join between emplyee and department table
#write a query to select all the records from ledger table sorting() in asc order of date
#create a procdure inside that use select query to display highest tax from payment table
#TAKE HELP FROM S45 SLIDES!!!!!!!!!!!!! and do S44 assignment


