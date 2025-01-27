## ASSIGNMENT 6
CREATE DATABASE COMPANIESS;
USE COMPANIESS;
CREATE TABLE EMPLOYEE(emp_id int,name varchar(50),department varchar (50), salary int );
INSERT INTO  EMPLOYEE VALUES(1,"john","HR",5000),
(2,"alice","IT",7000),
(3,"bob","finance",6000),
(4,"eve","IT",8000),
(5,"charlie","finance",7500);

CREATE TABLE DEPARTMENTS(dept_id int,dept_name varchar(50));
INSERT INTO DEPARTMENTS VALUES(1,"HR"),
(2,"IT"),
(3,"Finance");

# 1  FIND EMPLOYEE WITH SALARIES GRETER THAN THE AVG SALARY OF ALL EMPLOYEES
select name,salary from EMPLOYEE
where salary > (select avg(salary) from EMPLOYEE);

#2 FIND EMPLOYEE WHOSE SALARY IS HIGHER THAN THE SALARY OF ALICE 
select name, salary from EMPLOYEE 
where salary > (select salary from EMPLOYEE where name = "Alice");


# 3 LIST EMPLOYEE WHO BELONG TO A DEPARTMENT THAT HAS THE NAME IT
select * from EMPLOYEE
where department = "IT";
#or
select * from EMPLOYEE
where department =(select dept_name from DEPARTMENTS where dept_name = "IT");


# 4 GET THE NAMES OF EMPLOYEE WHO EARN THE HIGEST SALARY IN THIER DEPARTMENT 

select department, salary,name from EMPLOYEE 
where salary in (select max(salary) from EMPLOYEE group by department);

# 5 RETRIEVE THE DEPARTMENT WHERE AT LEAST ONE EMPLOYEE EARNS MORE THAN 7000
select department, salary from EMPLOYEE
where salary >7000
limit 1;

# 6 LIST EMP WHO DO NOT BELONG TO ANY DEPARTMENT IN THE DEPARTMENT TABLE
select * from EMPLOYEE 
where emp_id not in (select dept_id from DEPARTMENTS );

# 7 FIND THE SECOND HIGEST SALARY AMONG EMPLOYEE 
select max(salary)  as second_highest_salary from EMPLOYEE 
where salary <(select max(salary) from EMPLOYEE);


# 8 RETRIEVE THE NAMES OF EMP WHO WORK IN THE DEPARTMENT WITH THE HIGEST NUMBER OF EMP 
select department,count(*) from employee 
group by department 
order by count(*)desc
limit 1;

# 9 FIND EMP WHO EARN MORE THAN THE AVG SALARY IN THIER DEPARTMENT
select department, name from EMPLOYEE 
where salary > (select avg(salary) from EMPLOYEE );

# 10 RETRIEVE EMP WHOSE SALARY IS ABOVE 7000 AND BELONG TO DEPARTMENT IN THE DEPARTMENT TABLE 
select name, department from EMPLOYEE where salary in (select salary from departments where salary >7000);
# or
select name ,department from EMPLOYEE 
where salary>7000 ;
# or (with the help of join)
select salary, department from employee e
join departments d on e.department= d.dept_name
where salary>7000;
# 11 LIST ALL DEPARTMENTS THAT HAVE NO EMP.
select dept_name ,dept_id from DEPARTMENTS d
left join EMPLOYEE e
on e.department = d.dept_name 
where emp_id is null;

# 12 FIND EMP WHO HAVE THE SAME SALARY AS ANOTHER EMP IN A DIIFERENT DEPARTMENTS.
select department,salary from EMPLOYEE
group by department,salary;
# 13 GET THE TOTAL SALARY OF THE DEAPARTMENT WITH THE MAXIMUM TOTAL SALARY.
select department, sum(salary) as "total salary",max(salary) as "max salary" from EMPLOYEE
group by department
having max(salary);

# 14 RETRIEVE EMPLOYEE WHOSE DEPARTMENT HAS MORE THAN TWO EMPLOYEE
select department, count(emp_id) from employee 
group by  department
having count(emp_id)>1;

# 15 FIND EMP WHOSE SALARY IS HIGHER THAN THE AVERAGE SALARY OF EMP IN THE "IT" DEPARTMENT 
select emp_id ,name ,salary ,department from EMPLOYEE
where salary >(select avg(salary) from EMPLOYEE where department = "IT" )



