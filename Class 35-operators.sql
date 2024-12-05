#operators means the different kinds of signs used in the database.
#1 arthimatic: +,-,/,*,%
#2 comparison operator <, >, <=,>=,,=,!=
#3 logical operators :and, or, not
use studentdb;
select * from studenttable;
select id+200 as new_ID from studenttable;
#the query above is used to add 200 to the whole ID column, and give the name of the column as new_ID.
#It will not permantently make the changes to the table, it is only used for viewing.
select id-200 as new_ID from studenttable;
select id*200 as new_ID from studenttable;
select id/200 as new_ID from studenttable;


select * from studenttable where ID>1;
select * from studenttable where ID<3;
select* from studenttable where ID<=2;
select*from studenttable where ID >=2;

#try all the arthimatic and comparison operators. Refernece Codevidyha if in need of help.
select * from studenttable where ID > 1 and Student_Name = "John";
#where after we always give the conditions
select * from studenttable where ID > 2 or Student_Name = " Parin"; 
select * from studenttable where not ID =1;