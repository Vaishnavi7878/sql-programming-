# 1 create a database named library and a table named books with the following columns:
create database library;
use library;
create table books (
id int,
title varchar (255),
author varchar(100),
year year,
genre varchar(100));
# insert the following book records into the books table. 
insert into books (title,author,year,genre)
values("the great gatsby","F.Scott fitzgerald",1925,"fiction"),
("pride and prejudice","jane austen", 1913,"romance"),
("to kill a mockingbird","harper lee", 1960,"fiction"),
("1834","george orwell", 1949,"Dystopian"),
("Moby Dick","Herman Melville", 1951,"Adventure");
select *from books;


# 3 write a query to select all books where the titles starts with the letter 'T' using LIKE operator.
select * from books where title LIKE "t%";
# 4 write a query to find all books where the author's last name ends with 'son' using the LIKE operator.
select *  from books where author LIKE "%son";
# 5 write a query to find all books where the title ends contains the word 'and' using LIKE operator.
select * from books where title LIKE "%and";
# 6 write a query to retrieve all books where the title ends with the word 'bird' using the LIKE operator.
select * from books where title LIKE "%bird";
# 7 write a query to find all books where the title has exactly 3 characters using the REGEXP OPERATOR.
select * from books where title REGEXP '(gatsby|bird|dick)';
## 8. Write a query to select all books where the title contains a number using the REGEXP operator.
select * from books where title REGEXP '[0-9]';
## 9.Write a query to retrieve all books where the author's name starts with any letter between 'A' and 'J' using the REGEXP operator.
select * from books where author REGEXP '^[A-J]';
## 10.Write a query to select all books where the genre is either 'Fiction' or 'Adventure' using the REGEXP operator.
select * from books where genre REGEXP '^(fiction|adventure)$';
## 11.Write a query to find all books where the title contains at least one uppercase letter using the REGEXP operator.
select * from books where title REGEXP '[a-z]';
## 12. Write a query to find all books where the year of publication is between 1800 and 1950 using the LIKE operator.
select * from books where year between  1800 and 1950;
## 13. Write a query to retrieve all books where the author's name contains exactly two words using the REGEXP operator.
select * from books where author REGEXP '^[^jane]+[^herman]+$';
## 14. Write a query to find all books where the title starts with the letter 'P' and contains exactly two words using the REGEXP operator.
select * from books where title REGEXP '^p[^to]*[^moby]+$';
## 15.Write a query to find all books where the title contains any special characters (e.g., '!', '@', '#', etc.) using the REGEXP operator.
select * from books where title REGEXP '[^a-zA-Z0-9]';



