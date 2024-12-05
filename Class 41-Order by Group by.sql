#1.order by: means placing the things in order which means alpahbetically or lowest to highest order along with the order by will sort the values so we use asc or desc
#write a query to display all the details of the student arrange in ascending order of names-alpahbetically
use studentdb;
select * from Emp_table;
select * from Emp_table order by Age;
#by default if you don't use any keyword then it is in the order of asc
#desplay all the details of the students in the desc order
select * from Emp_table order by Age desc;
#desplay all the student details in asc order
select * from Emp_table order by Name asc;
#2.group by: is grouping similar data together in a group. It is used along the select query.
#We can sometime use the aggregate functions like count, sum, avg, and max, ect.
#If order by group by all the things come together in one line follow the following order
#select > where > order by > group by
#write a query to count the number of students
select name, count(*) from  Emp_table group by  Name;
#group by with some function on Age column
select sum(Age) as Age from Emp_table group by Age;
#display Name and Age of the students getting minimum age grouping by Name
select min(Age) as minimum_Age from Emp_Table group by Age;
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
create table schooldb(Subject_ID int, Name_Subject text, Student_Teacher text, Student_ID int, Marks int);
insert into schooldb(Subject_ID, Name_Subject, Student_ID, Marks) values (2211, "Math", 123, 90);
create table schooldbs(Subject_ID int, Name_Subject text, Student_Teacher text, Student_ID int, Marks int);
insert into schooldbs(Subject_ID, Name_Subject, Student_Teacher, Student_ID, Marks) values (2211, "Math", "Diddy", 123, 90);
insert into schooldbs(Subject_ID, Name_Subject, Student_Teacher, Student_ID, Marks) values (3211, "Science", "Sza", 223, 80);
insert into schooldbs(Subject_ID, Name_Subject, Student_Teacher, Student_ID, Marks) values (4211, "PE", "Drake", 323, 60);
insert into schooldbs(Subject_ID, Name_Subject, Student_Teacher, Student_ID, Marks) values (5211, "Social", "Weeknd", 423, 70);
insert into schooldbs(Subject_ID, Name_Subject, Student_Teacher, Student_ID, Marks) values (2211, "Religion", "Chris Tyson", 523, 40);
select Marks from schooldbs order by Marks asc;
select * from schooldbs order by Subject_ID and Marks;





