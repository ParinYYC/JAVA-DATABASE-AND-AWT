#dml commands- Means data manipulation language/Those commands which allows you to make changes to your data.
#to insert data into the table, use insert query inside which, first mention all the column names of the table, and then the data on which you want to insert.
#For every data, we have to use insert query again. Always in the begining go inside the database.
use db;
insert into student(ID,Student_Name ,Email ,Phone_Number) values(1,"Parin","Parin.yyc@gmail.com","403-8327-5023");
select * from student;
insert into student(ID,Student_Name,Email,Phone_Number) values(2,"Sai","sai.yyc@gmail.com","405-3553-6546");
insert into student(ID,Student_Name,Email,Phone_Number) values(3,"Dylan","dylan.yyc@gmail.com","405-3553-8946");
#for update use update query, set keyword is used to tell what exactly we want to update to, and after that we use where here we mention the detail whose detail we want to update
update student set Student_Name="Parin Kasanaboina" where ID=1;
set sql_safe_updates=0;
#this previous line is uesed to activate the update query and delete query whenever your updating anything/deleting use it one time/execute one time before that
#to delete the data use delte query
delete from student where ID=3;
#TCL COMMANDS/(Transaction.Control.Language): is commands which are used to control your transactions. You have two queries. 
#1.Commit which is used at the end of all queries to save the query and data which we excuted. Its like CONTROL + s to save things.alter
#after using commit all the queries will become permanent.
commit;
#After using one commit = one save. If you make the changes again in your queries or add new queries then you have to use commit again to save the new changes.
#2 Rollback: it is used to undo all the changes, but rollback will only work if you used commit.
#Ex. There 3 commits we used. In the rollback we mention which commit you want to go back to.
#If there no commit we can not tell the rollback where you want to go back to.
rollback ;
#3 safepoint: this means you have to giva a name to all commits. So that when we use rollback we can mention the name of the commit.
savepoint nameparin;