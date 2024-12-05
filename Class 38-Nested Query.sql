use studentdb;
select * from studenttable;
create table Course_Table(C_ID int, C_name text);
create table Student_Course_Table(S_ID int, C_ID int);
create table Marks_Table(S_ID int, S_MARKS int);
create table Student_Table(S_ID int, S_name text,S_ADDRESS text, S_PHONE varChar(100),S_AGE int);
insert into Course_Table(C_ID,C_name) value(1,"Science");
insert into Student_Course_Table(S_ID,C_ID) value(2,2);
insert into Marks_Table(S_ID,S_MARKS) value(1,100);
insert into Student_Table(S_ID,S_name,S_ADDRESS,S_PHONE,S_AGE) value(3,"Parin","Airdrie","911",15);
#select S_name from student where exsists (select * from student_course sc where S.s_id=sc.s_d and sc.c_id=3);
select S_ID from Student_Course_Table where C_ID in (select C_ID from Course_Table where C_name = "scinece");
#Nested query means query inside the query. Inner query is excuted first. Outer query is excuted last. Inner query is also called as the sub query.
#in keyword is used to connect 2 queries along with not in which means its not insert
select S_ID from student_table where S_ID not in(select S_ID from student_course_table where C_ID in(select C_ID from course_table where C_NAME = "Science"));
#3 queries are written above question first the always inner most query is excuted then later on it checks but student id from the course_table  whose coure id is there in the course table
#here we are trying to find the course id who has enrolled in science
#1. how to figure out when to use nested queries as in the above question student id is in a different table that is why we need to use more than 1 query to get the detail if they would've been in one table we wouldn't have done this
#2. we need to get the details of the student who has thew max age
select * from student_table  where S_AGE = (select max(S_AGE) from student_table);
select * from marks_table where S_MARKS=100;
#fetch and the last record of the student
select * from student_table order by S_ID DESC limit 1;
#DESC means decreasing order so from the top it shows i record
select * from student_table order by S_ID ASC limit 1;
select * from marks_table where S_MARKS>60 and S_MARKS<80;