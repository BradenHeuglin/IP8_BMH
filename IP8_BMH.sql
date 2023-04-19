-- Selecting premier_products as the dataset we will work with
use premier_products;

-- Selecting all rows and columns from the dataset
Select * from customer, order_line, orders, part, sales_rep;

-- Printing all rows, last name, first name, sales rep number
-- and city from sales rep table --
Select last_name, first_name, sales_rep_num, city from sales_rep;

-- Selecting order and customer num from orders
Select order_date, customer_num from orders; 

-- Selecting only two rows from order line
Select num_ordered, quoted_price from order_line;

-- Selecting all of the entries from customer where sales rep num=20
Select * from customer
where sales_rep_num > 20;

-- Select only customer name, balance, credit limit from customer where sales rep num=20
Select customer_name, balance, credit_limit from customer
where sales_rep_num = 20;

-- Select part num, num ordered, quoted price and total price where total price is (num_ordered * quoted_price) where only 1 num ordered and the order number is 21617
select part_num, total_price as num_ordered, quoted_price from order_line;

-- Show all the orders from order date between '2010-10-20’ and '2010-10-22'
select * from orders
where '2010-10-20' < order_date < '2010-10-22';

-- List all of parts where the part description starts with ‘D’ and end with  ‘er’
select * from part
where part_description like 'D%' and '%er';

-- Show total balance from customer
select sum(balance)
from customer;

-- Show minimum balance from customer
select balance from customer
order by balance
limit 1;

-- Count number of customers in customer table
select count(*) from customer;

-- Select order number where the quote price is more than 500 but less than 1000
select order_num, quoted_price from order_line
where quoted_price > 500 and quoted_price < 1000;

-- Create a new table of customer name, last name, and first name from customer and sales rep table by matching up their primary key
select c.customer_name, s.last_name, s.first_name
from customer c
join sales_rep s on s.sales_rep_num=c.sales_rep_num;

CREATE TABLE Customer_Rep AS
SELECT last_name, first_name
FROM customer c;
