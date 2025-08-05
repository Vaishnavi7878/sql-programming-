## CTE 
create database some;
use some;
CREATE TABLE Employeess (
    EmpID INT,
    EmpName VARCHAR(100),
    ManagerID INT,
    Salary INT,
    Department VARCHAR(50)
);

INSERT INTO Employeess VALUES
(1, 'Alice', NULL, 90000, 'HR'),
(2, 'Bob', 1, 80000, 'HR'),
(3, 'Charlie', 1, 85000, 'Finance'),
(4, 'David', 2, 75000, 'HR'),
(5, 'Eva', 2, 70000, 'Finance'),
(6, 'Frank', 3, 72000, 'Finance'),
(7, 'Grace', 3, 69000, 'Finance');



-- 1. Basic CTE Usage
-- Q1: Get all employees with salary above 75000 using a CTE.

with highsalary as(select * from Employeess where salary>75000) 
select * from highsalary;

--  Use CTE to find average salary by department and list departments with average salary > 75000.
with deptsalary as(select department, avg(salary) as avgsalary from Employeess
group by department 
having avgsalary>75000)
select * from deptsalary ;

-- : Use CTE to show employee name along with their manager’s name.
with EmpManager as (select e.EmpName as Employeess ,m.EmpName as manager 
from Employeess e 
left join Employeess m on e.EmpID = m.ManagerID)
select * from  EmpManager;



--  Find employees who work in the same department as their manager
with samedept as 
(select e.EmpName ,e.EmpID, e.ManagerID from Employeess e
join Employeess m on e.EmpID = M.ManagerID 
where e.department = m.department)
select * from samedept;

 -- Show average salary of each department using CTE
 with avgsalarydept as (select department ,avg(salary) as avgsalary from employeess  
 group by department )
 select * from avgsalarydept;
 
--   Show manager names with total number of employees under them
 with totalemp as(select m.empname , count(e.empid) from employeess e 
 join employeess m on e.empid= m.managerid 
 group by m.empname)
 select * from totalemp;
 
 
 

