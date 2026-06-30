-- Q1 senior most employee based on job title

select * from employee
select * from employee order by levels desc limit 1


-- Q2 which countries have most invoices?

select * from invoice
select count(*) as count_of_invoices, billing_country from invoice group by billing_country order by count_of_invoices desc

-- Q3 what are the top 3 values of total invoice

select * from invoice order by total desc limit 3


--Q4 which city has the best customers? We would like to throw a promotional music festival in the city we made the most money
--Write a query that returns one city that has the highest sum of invoice totals. Return both city name & sum of all invoice totals

select billing_city, sum(total) as total_money from invoice group by billing_city order by total_money desc limit 1


-- Q5 who is the best customer? The person who have spent the most money will be declared the best customer. Write a query that returns the person who has spent the most money

select first_name, last_name, sum(total) as total_spent from customer c join invoice i on c.customer_id=i.customer_id group by first_name, last_name order by total_spent desc


