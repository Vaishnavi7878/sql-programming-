#1 Create a database named company and a table named employees with the following.
create database company;
use company;
create table employees(
id int primary key auto_increment,
name varchar(100),
position varchar(100),
salary decimal(10,2), 
date_of_joining date);
#2 insert the following data into the employees table.
insert into employees(name,position,salary,date_of_joining)
values("John doe","Manager",55000.00,"2020-01-15"),
("Jane smith","Developer",48000.00,"2019-07-10"),
("Alice johnson","Designer",45000.00,"2021-03-22"),
("Bob Brown","Developer",50000.00,"2018-11-01");
select* from employees;
#3 write a query to retrieve all employees who are developers.
select * from employees where position="Developer";
#4 write a query to update the salary of Alice johnson to 46000.00
set sql_safe_updates=0;
update employees 
set salary = 46000.00 where name = "Alice johnson";
# 5 write a query to delete the employee record for Bob Brown.
delete from employees where name= "Bob Brown";
#6 write a query to find the employees who have a salary greater than 48000.
select * from employees where salary >48000.00;
#7 write a query to add a new column email to the employees table.
alter table employees
add email_id varchar (100);
#8 write a query to update the email for john doe to john.doe@company.com.
update employees 
set email_id= "John.doe@company.com" where id=1;
#9 write a query to retrieve only the name and salary of all employees.
select name, salary from employees;
# 10 write a query to count the number of employees who joined after january 1, 2020.
select count(*) from employees where date_of_joining>"2020-01-01";
#11 write a query to order the employees by salary in descending order.
select * from employees order by salary desc;
#12 write a query to drop the email column from the employees table.
alter table employees 
drop column email_id;
#13 write a query to find the employees with the higest salary.
select* from employees where salary = (select max(salary)from employees);




