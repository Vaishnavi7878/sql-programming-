## ASSIGNMENT 

CREATE DATABASE OFFICE;
USE OFFICE;
CREATE TABLE worker(
emp_id int,
first_name varchar(50),
last_name varchar(50),
department varchar(50),
salary int,
hire_date date);
INSERT INTO worker(emp_id,first_name,last_name,department,salary,hire_date)
VALUES(1,"john","doe","IT",60000.00,"2019-01-10"),
(2,"jane","smith","HR",55000.00,"2018-03-05"),
(3,"emily","jones","IT",62000.00,"2020-07-23"),
(4,"michael","brown","Finance",70000.00,"2016-05-14"),
(5,"sarah","davis","Finance",69000.00,"2017-11-18"),
(1,"david","johnson","HR",48000.00,"2021-09-10");
select * from worker;

### 1. Find the average salary of employees in each department.
select department, avg(salary) from worker
group by department;

### 2. Find the total number of employees hired after 2019.
select count(emp_id) as total_emp_hire_after_2019 from  worker
where hire_date>'2019-12-31';

### 3. List the departments and the total salary of all employees in each departmnt ordered by the total salary.
select department, sum(salary) as total_salary_of_all_employees from worker
group by department
order by sum(salary);  

### 4. Find the higest salary in the finance department.
select max(salary) as higest_salary from worker
where department='finance';

### 5. get the top 3 higest-paid employees.
select * from worker
order by (salary) desc
limit 3;


### 6. Find the department with the minimum average salary.
select department, avg(salary) as average_salary from worker
group by department
order by average_salary asc
limit 1;


### 7.display the total number of employees in each deapartment,ordeeres by the number of employees.
select department, count(emp_id) as number_of_employees from worker 
group by department 
order by number_of_employees;

### 8. find the average salary of employes who were hired before2020.
select avg(salary) as average_salary from worker
where hire_date< '2020-01-01';

### 9. List the names of employees in the IT deapartment ordered by hire date, with the most recently hired employees first.
select first_name from worker
where department = 'IT'
order by hire_date desc
limit 1;

### 10. Find the sum of salaries for all employees hired after jan 1,2019, ordered by salary.
select sum(salary) as total_salary from worker 
where hire_date>'2019-01-01'
order by (salary);

### 11. Get the employees with the lowest salary in the HR department.
select* from worker 
where department = 'HR department'
order by salary asc;

### 12. Find the total salary paid to employees in each deaprtment, but limit the result to the top 2 higest-paying deparatments.
select department, sum(salary) as total_salary from worker
group by department
order by total_salary desc
limit 2; 

### 13. List all employees hired after 2018,ordered  by salary , and show only the first 4 employess.
select *from worker 
where hire_date > '2018-01-01'
order by salary asc 
limit 4 ;

### 14. Find the higest salary in the IT deaprtment, but limit the results to the top 1 result.
select * from worker
where department = 'IT'
order by salary desc
limit 1;

###15. Get the average salary of employees in each deapartment and list only deaprtments with an averge salary grater than $60000.
select department, avg(salary) as average_salary from worker
group by department 
having  avg(salary)>60000;











