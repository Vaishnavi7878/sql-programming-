## ASSIGNMENT 5
create database companyy;
use companyy;
create table employees( emp_id int, emp_name varchar(50),department_id int);
insert into employees values (1,"Alice",10),
(2,"Bob",20),
(3,"Charlie",30),
(4,"David",10),
(5,"Eve",40);

create table departments (dept_id int,dept_name varchar(50));
insert into departments values(10,"HR"),
(20,"Finance"),
(30,"IT"),
(40,"Admin"),
(50,"Marketing");	

 create table projects (project_id int, emp_id int, project_name varchar(50));
 insert into projects values (101,1,"Alpha"),
 (102,2,"Beta"),
 (103,3,"Gamma"),
 (104,4,"Delta");
 
 insert into employees(emp_id, emp_name,department_id)
 values(6,"sikha",15);
select * from employees;
 
 # 1 write a query to get emp and dept details using join 
 select emp_name , dept_name , dept_id from employees e
 right join departments d 
 on e.department_id = d.dept_id ;
 
 
 
 
 select employees.emp_name , departments.dept_name  from employees
 right join departments 
 on departments.dept_id = employees.department_id;
 
 
# 2 write a query to retrieve all emp with thier dept even if the depart is missing
select emp_name , emp_id , dept_name from employees e 
left join departments d 
on e.department_id = d.dept_id ;


select employees.emp_name, departments.dept_name from employees 
left join departments 
on departments.dept_id = employees.department_id;

# 3 write a query to get depart details even if there are no employees in that departments
select dept_name , dept_id,  emp_name from employees e 
right join departments d 
on d.dept_id = e.department_id;




select dept_id, dept_name , emp_name from employees e  
right join departments d 
on  e.department_id  = d.dept_id  ;



SELECT  d.dept_name, e.emp_id, e.emp_name
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.department_id;



# 4 write a query to get all emp and depart whether matched or not 
select emp_name , emp_id, dept_name, dept_id from employees e
right join departments d 
on d.dept_id = e.department_id ;


select e.emp_name , e.emp_id, d.dept_name, d.dept_id from employees e 
left join departments d on d.dept_id = e.department_id
union select e.emp_name ,e.emp_id , d.dept_name, d.dept_id from employees e
right join employees e on  d.dept_id = e.department_id ;

# 5 join there tables (emp, depart, project) to get emp ,depart,and project information
select e.*,d.*,p.*
from employees e 
join departments d on d.dept_id = e.department_id 
join projects p on p.emp_id = e. emp_id;

select e.*,d.*,p.*
from employees e 
join departments d on d.dept_id = e.department_id 
join projects p on p.emp_id = e. emp_id;

# 6 find the emp who are not assigned to any project
select e.emp_name,e.emp_id,p.project_name,p.project_id from employees e 
left   join projects p 
on p.emp_id = e.emp_id
where p.project_id is null;



select e.emp_name ,p.project_name
from employees e
left join projects p on p.emp_id = e. emp_id
where p.project_id is null;

# 7 find depart with no emp using  a right join 
select dept_id , dept_name ,emp_name from employees e 
right join departments d 
on d.dept_id = e.department_id
where emp_id is null;


select d.dept_name,dept_id from employees e
right join departments d on d.dept_id = e.department_id
where e.emp_id is null ;

# 8 write a query to get emp and depart details using join with aliases
select e.emp_name as employees_name , e.emp_id  as employees_id, d.dept_name as department_name ,d.dept_id as department_id from employees e
right join departments d on e.department_id = d.dept_id ;

####9 write a query to find emp in the same department as other emp
select  emp_name , dept_name from employees e 
join departments d on d.dept_id = e.department_id
where e.department_id= d.dept_id;

select e.emp_name as emp_name , department_id, d.dept_id,dept_name from employees e 
right join departments d on e.department_id = d.dept_id 
where d.dept_id = e.department_id;

select emp_name , emp_id , department_id  from employees e 
where department_id = emp_id;

# 10 wriyte a query to find projects managed by employees in the IT departments 
select p.project_id, p.project_name , d.dept_name,e.emp_name from  employees e
join departments d on e.department_id = d.dept_id 
join projects p on e.emp_id = p.emp_id
where d.dept_name = 'IT';

# 11 write a query to show emp and thier projects information (even if not assigned to a project)
select e.emp_name, e.emp_id, p.project_id , p.project_name from employees e 
left join projects p on e.emp_id = p.emp_id;



select e.emp_name , p.project_name , e.emp_id from employees e 
left join projects p on e.emp_id = p.emp_id ;

# 12 find emp who work in depart with names starting with A 
select e.emp_name , d. dept_name from employees e 
left join departments d on e.department_id = d.dept_id 
where e.emp_name like 'a%';

# 13 find the total no of emp in each depart using group by and join 
select d.dept_id , count(emp_id)  from employees e
join departments d on e.department_id = d.dept_id
group by d.dept_id ;




select d.dept_name , count(emp_id) from employees e
join departments d on e.department_id = d.dept_id
group by d.dept_name ;

# 14 get the list of dept with more than one employyees
select  d.dept_name ,count(emp_id) from departments d 
join employees e on  e.department_id = d.dept_id
group by  d.dept_name 
having count(emp_id)>1;

select d.dept_id , d.dept_name , count(emp_id )from employees e 
right join departments d on e.department_id = d.dept_id
group by d.dept_id , d.dept_name
having count(emp_id)>1;



  

 
