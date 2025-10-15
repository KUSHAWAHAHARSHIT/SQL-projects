use startersql;	
create table Employee (
Emp_ID int(10),
First_Name varchar(10),
Last_Name varchar(10),
Dept_code int (3));

select * from employee;

insert into Employee (Emp_ID, First_Name, Last_Name, Dept_Code)
values
(248132604,"Shivam", "Deo",76),
(815242165,"Parijat", "Shankar",43),
(416122768,"rahul", "Srivastava", 66),
(960828909,"Kumar","Swamy",47),
(440361783,"Shankh","Khurana",23),
(851591490,"Swapnil", "Mehta", 43),
(668957687,"Arvind", "Chattejee",23),
(585068105,"Jalpesh", "Modi",33),
(379882096,"Kavita", "Yadav", 23),
(718929853,"Syed", "Zaheer", 66),
(873840890,"Sanjay", "Shukla",76),
(941877566,"Ragini", "Malhotra",33),
(998809976,"Javed","Khan", 23),
(669391133, "Vikram","Singh",43),
(861199021,"Ajay","Kumar",23),
(980140890,"Pankaj","Verma",43),
(750603819,"Roshan","Singh",47),
(558885983,"Sunaina","Yadav",76),
(392214056,"Bhavna","Sharma",66),
(164880802,"Pooja","Kumari",47);
select * from employee;


create table Department(
Dept_Code int (10),
Dept_Name varchar(25),
Dept_Budget int (12));

insert into Department (Dept_Code,Dept_Name,Dept_Budget)
values
(23,"Sales and Marketing",50000000),
(66,"Information Technology",100000000),
(43,"Customer Service",30000000),
(33, "Human Resources",20000000),
(76, "Finance and Accounting",40000000),
(47,"Operations",60000000);

select * from Department;


#1.	What are the unique Last_Names from the Employee Table?
	select distinct(First_Name) from employee;

#2.	What is the total number of employees in the company?
	select count(*)from employee;

#3.	What is the total budget for the company?
	select sum(Dept_Budget) from department d ;

#4.	What is the department code and budget for the "Operations" department?
	select Dept_Code, Dept_Name,Dept_Budget  from department d;

#5.	What is the total budget for the "Information Technology" and "Finance and Accounting" departments?
	select sum("Information Technology" + "Finance and Accounting")from department d;

#6.	Who are the employees working in the "Sales and Marketing" department?
	 select * from department d 
	 where Dept_Name ="Sales and Marketing";


#7.	What is the name of the employee with Emp_ID 718929853?
	select * from employee e 
	where Emp_ID =718929853; 

#8.	What is the budget for the "Customer Service" department?
	select * from department d 
	where Dept_Name ="Customer Service";


#9.	What is the total budget for all departments except "Operations"?
	select sum(Dept_Budget)from department d ;

#10. What is the Emp_ID, First_Name and department_code of the employee with the last name "Shukla"?
	select Emp_ID, First_Name, dept_code from employee e 
	where last_name ="shukla";
#11.What is the average budget for the departments with Dept_Code 23 and 43?
	select avg(Dept_Budget)  from department d 
	where Dept_Code in(23, 43);

#12.How many employees are there whose first name starts with the letter "S"?
	select * from employee e where first_name like "S%";


#13.List the name of Employees whose First_name starts with "S".
	select * from employee e where first_name like "S%";

#14.List the name of Employees whose First_name starts with "S" and ends with "A".
	select * from employee e where first_name like "S%A";

	
#15.Fetch Top 3 records of all the Departments in descending order based on the budget of the department.
	select * from department d 
	order by d.Dept_Budget desc limit 3 ;


#16. Fetch data of all employees from the employee table whose dept_code is an odd number
	select * from employee e 
	where Dept_code %2; 
#17. Create a clone of the table employee with a name Clone_table and having two columns, one with full name and the other with the department code with an alias D_Code	
	create table Clone_table 
	select concat(First_name, " ", Last_name) as Full_name, dept_code as D_Code from employee;
 
	select * from clone_table;

#-- 18.Delete employee details of "Ajay Kumar" from Clone_Table
-- 	delete from clone_table where Full_name = "Ajay Kumar";

-- #19.The name of the employee "rahul Srivasatava" has a lower case 'r', make changes in the clone table so that the full_name is written as "Rahul Srivastava" 	
-- 	update clone_table set Full_name="Rahul Srivastava"
-- 	where Full_name="rahul Srivastava";

#20.Convert Full_name from clone table into uppercase.
	select upper(full_name) from clone_table ct ;
#21.Fetch second to fifth record from the department table based on the Highest Budget.
	select  * from department d 
	order by Dept_Budget  desc limit 1,4 ;
	

-- #22.The employee with the name "Jalpesh Modi" has decided to move into another department, delete the D_code value corresponding to "Jalpesh_Modi" from the clone_table
-- 	update clone_table set D_code=null 
-- 	where full_name="Jalpesh Modi";

#23.Change the name of the column D_Code to Department_code in clone table
alter  table clone_table rename D_code to Department_code;

#24. Since no mathematical operation will be performed on emp_id in employee table, convert its data type from int to varchar
	alter  table employee  modify column emp_id varchar(10);

#25.The Company has decided to increase the budget of all the department by 10% , make changes accordingly to fetch old and new budget
	select * from department d ;
	select Dept_code, Dept_name, Dept_Budget Old_Budget, 
	Dept_budget * 1.1 as new_budget from department;

#26.What is the name of the department with the lowe
	SELECT Dept_Name, Dept_Budget FROM Department 
	WHERE Dept_Budget = (SELECT MIN(Dept_Budget) FROM Department);

#27.	Who are the employees working in the departments with budgets greater than 40,000,000?
	select * from employee e 
	where Dept_code in(select Dept_code from department d 
	where Dept_budget  > 40000000);
	
#28.	What is the name of the department with the second highest budget?
	select * from Department where dept_budget = ( 
SELECT MAX(Dept_Budget) FROM Department 
where Dept_Budget< (SELECT MAX(Dept_Budget) FROM Department));