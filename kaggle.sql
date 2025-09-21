use coffee_shop;
select * from index_1;
select * from index_2;

-- Querry 1  All transactions where payment was made in cash
select order_date, money, coffee_name from index_1
UNION
select order_date, money, coffee_name from index_2
order by money desc;

-- Querry 2 Distinct coffee types sold
select coffee_name, count(*) as total_purchase
from index_1
group by coffee_name
UNION
select coffee_name, count(*) as total_purchase 
from index_2
group by coffee_name
order by total_purchase desc
limit 10;

-- Querry 3 all orders made on 2024-03-01
select order_date, coffee_name, cash_type as cash_mode
from index_1
where order_date = '2024-03-01'
union all
select order_date, coffee_name, cash_mode
from index_2
where order_date = '2024-03-01';

-- Querry 4. transactions where the amount is greater than 30
select order_date, cash_type as cash_mode, money, coffee_name
from index_1
where money>30
union
select * from index_2 
where money>30
order by money desc;

-- Querry 5. total revenue generated
select sum(money) as Total_revenue
from(
select money from index_1
union all
select money from index_2
) as combined_table;

-- Querry 6. Total number of transactions
SELECT COUNT(*) AS total_transactions
FROM (
select money from index_1
union all
SELECT money from index_2
) combined_table;

-- Querry 7. average spending per transaction
select avg(money) as avg_spending 
from(
select money from index_1
union all
select money from index_2
) combined_table;

-- Querry 8. how many times each coffee type was purchased
select coffee_name,
count(*) as total_transction
from(
select coffee_name
from index_1
Union all
select coffee_name
from index_2
) combined 
group by coffee_name
order by total_transction desc;

-- Querry 9. Top 5 most expensive transaction
select coffee_name, max(money) as expensive_transction
from index_1
group by coffee_name
union all 
select coffee_name, max(money) as expensive_transction
from index_2 
group by coffee_name
order by expensive_transction desc
limit 5;

-- Querry 10. Daily total sales

select order_date, count(*)as order_count, sum(money) as total_transction
from index_1
group by order_date
union all 
select order_date, count(*)as order_count, sum(money) as total_transction
from index_2
group by order_date;

-- Querry 11. Top 3 best selling coffee types
select coffee_name, sum(money) as total_transction
from(
select coffee_name, money
from index_1
union all 
select coffee_name, money
from index_2
) combined_table
group by coffee_name
order by total_transction desc
limit 3;

-- Querry 12. Total revenue by payment methods
select cash_type, count(*), sum(money) as total_transction
from (
select cash_type, money
from index_1
union all
select cash_mode as cash_type, money
from index_2
)combined_table
group by cash_type;

-- Querry 13. Average order value per coffee
select * from index_1;
select coffee_name, Round(avg(money),0) as average_order
from (
select coffee_name, money
from index_1
union all 
select coffee_name, money
from index_2
) combined_table
group by coffee_name
order by average_order desc;

-- Querry 14. First and last date purchase of each customer
SELECT
    card AS customer_id,
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date
FROM
    index_1
    group by card
    order by first_order_date;

-- Querry 15. Top 5 most popular coffee
select * from index_1;
Select coffee_name, count(*)as total_purchase
from(
select coffee_name
from index_1
union all
select coffee_name
from index_2
) combined_table
group by coffee_name
order by total_purchase desc
limit 5;