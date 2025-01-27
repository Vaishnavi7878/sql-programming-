create database companies;
use companies;
create table sales(
sale_id int,
product_id int,
customer_id int,
sale_date date,
quantity int,
unit_price int,
region varchar(50));
insert into sales(sale_id,product_id,customer_id,sale_date,quantity,unit_price,region)
values(1, 101, 1001, "2024-01-05", 5, 200, "North"),
(2, 102, 1002, "2024-01-10", 10, 150, "East"),
(3, 103, 1003, "2024-02-15", 2, 300, "North"),
(4, 104, 1001, "2024-02-20", 7, 250, "West"),
(5, 101, 1004, "2024-03-05", 1, 200, "East");
select * from sales;

## !. Write a query to calculate the total sales(Quantity* unitprice) for each product.
select product_id, sum(quantity*unit_price) as "total sales" from sales
group by product_id;

## 2. Write a query to find the total number of product sold in each region.
select region, sum(quantity) as "total number of product" from sales
group by region;

## 3. Write a query to get the average sales amount per product.
select product_id, avg(quantity*unit_price) as "avg sales of product" from sales 
group by product_id;

## 4. Find the region where total sales are more than 3000.
select region, sum(quantity*unit_price) as "total sales" from sales
group by region
having sum(quantity*unit_price)>3000;

## 5. Write a query to get the maximum quantity sold for each product.
select product_id, max(quantity) as "quantity sold" from sales 
group by product_id;

## 6. Write a query to calculate the average quantity of product sold per region.
select region, avg(quantity) as "product sold" from sales 
group by region;

## 7. Find the product Ids that have generated a total sales amount of more than 1000.
select product_id, sum(quantity*unit_price) as "total sales amount" from sales 
group by product_id 
having sum(quantity*unit_price)>1000;

## 8. Write a query to get the total number of sales (rows) made for each customer.
select customer_id, count(quantity*unit_price) as "total no of sales" from sales 
group by customer_id ;

## 9. Find the products for which the average quantity sold is less than 5.
select product_id, avg(quantity) as "avg quantity sold" from sales 
group by product_id 
having avg(quantity)<5;

## 10. Write a query to find the sum of total sales for each customer in each region.
select customer_id,region, sum(quantity*unit_price) as "total sales" from sales 
group by customer_id, region;

## 11. Write a query to calculate the total sales for each month.
select sale_date, sum(quantity*unit_price) as "total sales for each month" from sales
group by sale_date ;

## 12. Find the region where the average unit price is more than 200.
select region, avg(unit_price) as "avg unit price" from sales 
group by region
having avg(unit_price)>200;

## 13. Write a query to get the minimum and maximum quantity sold per region.
select region, min(quantity) as "quantity sold minimum" , max(quantity) as "max quantity sold"from sales 
group by region;


## 15. Write a query to find the total sales for each product and filter only those products where the total sales exceed 1500.
select product_id, sum(quantity*unit_price) as "total sales of each product" from sales
group by product_id
having sum(quantity*unit_price)>1500;



