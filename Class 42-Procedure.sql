#Procedure
#Procdures are used to store code, means we can store different queries using procedures. When ever we want to reuse these queries again we can call the procedure
#this is the same as funtions. In data base we call it as procedures.
#An example, lets say there are some queries we need to use again, what will you do? One way is that we copy paste(which is quick) but it makes our code long. This is why we use another way, which is procedures where you can do store the code. It makes the code nice short and easy is by using procedures
#Procedure is reusing the same code again by calling it
#4 types of procedures:
#1.Procedure with No Parameter: this means no varibale is passed in the round bracket()
use studentdb;
select * from schooldbs;
#Procedures start from here:
DELIMITER &&  
CREATE PROCEDURE get_merit_student ()  
BEGIN  
    select * from schooldbs;
END &&  
DELIMITER ;  
#Procedure ends here:
#in between begin and end we an store as much as code right we have stored only one line of code that is select query. we can store create , insert, update, delete any query.
#call procedure
call get_merit_student();
#2.Procedure with in parameter: here we pass the variable in the roundbracket of the procedure, and then later when we call the procedure, user gives the input value
#Remebr if we are passing a var we have to use it in our query as well inside the proceudre
DELIMITER &&  
CREATE PROCEDURE get_merit_student1 (in var int)  
#var is the variable name
BEGIN  
    select * from schooldbs limit var;
    #limit means to set the unit of how many records on screen. After limit we give a number, but we gave a variable name which later on we will pass the number. Limit 2 means 2 records will be shown on the screen.
END &&  
DELIMITER ;  
call get_merit_student1(4);
#3. Procedure without parameter: here we don't take any input from the user, rather we give the output
DELIMITER &&  
CREATE PROCEDURE get_merit_student2 (out var1 int)  
BEGIN  
    select max(Marks) into var1 from schooldbs;
END &&  
DELIMITER ;  
#as we have a variable passed, when the procedure is called we have to give some value, but becasue its not in parameter, we cannot give a value like that. Instead we pass a temporarily variable by using
#Example @M
call get_merit_student2(@M);
select @M;
DELIMITER &&
CREATE PROCEDURE get_merit_3()
BEGIN
select * from schooldbs;
END &&
DELIMITER ;
call get_merit_3;
	

DELIMITER &&
CREATE PROCEDURE get_merit_5(in var int)
BEGIN
select * from schooldbs where Marks > var;
END &&
DELIMITER ;
call get_merit_5(60);

##5. Procdure inandout parameter: in this parameter is used together
DELIMITER &&  
CREATE PROCEDURE get_merit_student6 (inout var3 int)  
BEGIN  
    select max(Marks) into var3 from schooldbs where Student_ID = var3;
END &&  
DELIMITER ;  
set @M = "123";
CALL get_merit_student6(@M);  
select @M
#here becasue we are giving input in the form as 123 and output as the maximum marks that is why it is called as inout parameter





