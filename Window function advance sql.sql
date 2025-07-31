# window function 
create database winn;
use winn;

SELECT * FROM winn.`window function`;

# 1 Q: Get running total of sales amount for each employee month-wise.
select employee, month,amount ,sum(amount) over(partition by employee order by month) as running_total from winn.`window function`;

# 2. Q: Get the difference between current and previous month's sales for each employee.
select employee, month, amount, 
lag(amount, 1) over (partition by employee order by month ) as sales_diff from winn.`window function`;

# 3. Q: Get the rank of employees based on their sales each month.
select employee , month, amount ,
rank() over(partition by month order by amount ) as sales_rank from winn.`window function`;

# 4. Q: Get the top 1 sale per employee (latest month only).
SELECT * FROM (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY Employee ORDER BY Month DESC) AS rn
  FROM  winn.`window function`) AS ranked
WHERE rn = 1;
  
# 5 Q: Show the next month’s sales for each employee.
select employee, month, amount, 
lead(amount) over (partition by employee order by month) as nex_month from winn.`window function`;

# 6. Q: Get cumulative average of sales for each employee.
select employee, month, amount,
avg(amount) over(partition by employee order by month) as cum_avg from winn.`window function`;
# 7 . Q: What is the difference between RANK() and DENSE_RANK()?
select employee, amount, 
rank() over (order by amount) as rn , 
dense_rank() over  (order by amount) as dr from  winn.`window function`;

# 8. Q: Get the highest sale for each employee (without using GROUP BY).
SELECT * FROM (
  SELECT *,
         RANK() OVER (PARTITION BY Employee ORDER BY Amount DESC) AS rk
  FROM Sales
) AS ranked
WHERE rk = 1;

