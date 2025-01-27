create database companyyy;
use companyyy;
create table workers(emp_id int,name varchar(50),depart varchar(50),salary int,joining_year int);
insert into workers (emp_id,name,depart,salary,joining_year)
values (101,"ALice","HR",60000,2020), 
(102,"Bob","IT",75000,2018), 
(103,"Charlie","Finance",50000,2021), 
(104,"david","IT",80000,2015), 
(105,"Eve","HR",45000,2022);

# 1 write a query to calculate a 10% bonus if the salary is greater than or equal to 60000 other wise, calaculate a 5% bonus. display emp_id, name and the calculate bonus
select emp_id, name ,
if (salary>=60000,salary*0.10,salary*0.05) as bonus from workers;

# 2 write a query to classify workers as "experienced" if their joininng is before 2020 and "newcomer" otherwise. display emp_id name and the category.
select emp_id ,name,
if(joining_year<2020,"experienced", "newcomer") as category from workers;

# 3 write a query to display emp_id, name and a status of "high earner" or "average earner" for workers in the IT depart , depanding on whether their salary exceeds 75000.
select emp_id,name,
if(salary < 75000 , "average earner" , "high earner") as status from workers
where depart = "IT";



# 5 determine if emp_id in the workers table is even or odd. 
select emp_id, 
if(emp_id%2=0, "even","odd" ) as even_odd from workers;

# 6 check whether joining_year is a leap year or not 
select joining_year ,
if(joining_year%4 = 0, "leap year","not leap year")as year  from workers;

