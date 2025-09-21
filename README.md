# ☕ Coffee Shop Sales Analysis (SQL Project)
This project analyzes coffee shop sales data using SQL. The dataset (from Kaggle) contains transactions with details such as date, payment type, coffee type, and transaction amount.
The goal is to practice SQL queries for data analysis, including filtering, grouping, aggregation, and advanced reporting.

Dataset
The SQL script assumes a database named coffee_shop with two tables: index_1 and index_2. These tables likely contain transaction data with columns such as:

order_date: Date of the transaction
coffee_name: Type of coffee sold
money: Transaction amount
cash_type (or cash_mode in index_2): Payment method (e.g., cash, card)
card: Customer identifier (used in index_1)

Queries

1. Cash Transactions: Retrieves all transactions paid in cash from both tables.
2. Distinct Coffee Types Sold: Lists unique coffee types and their purchase counts, limited to the top 10
3. Orders on a Specific Date: Shows all orders placed on March 1, 2024.
4. High-Value Transactions: Identifies transactions with amounts greater than 30, ordered by amount.
5. Total Revenue: Calculates the total revenue across all transactions.
6. Total Transactions: Counts the total number of transactions.
7. Average Spending: Computes the average spending per transaction.
8. Coffee Purchase Frequency: Shows how many times each coffee type was purchased.
9. Top 5 Expensive Transactions: Identifies the most expensive transaction for each coffee type, limited to the top 5.
10. Daily Total Sales: Aggregates daily sales by order count and total revenue.
11. Top 3 Best-Selling Coffees: Ranks coffee types by total revenue, limited to the top 3.
12. Revenue by Payment Method: Breaks down transaction counts and revenue by payment method.
13. Average Order Value per Coffee: Calculates the average transaction amount for each coffee type.
14. Customer Purchase Dates: Finds the first and last purchase dates for each customer (based on card in index_1).
15. Top 5 Popular Coffees: Lists the top 5 coffee types by purchase frequency.

Insights 

    The queries in kaggle.sql are designed to uncover the following insights about the coffee shop's sales:
1. Popular Products: Queries 2, 8, 11, and 15 identify the most frequently purchased and highest revenue-generating coffee types, helping to understand customer preferences and top-selling products.
2. Revenue Trends: Queries 5, 10, and 11 provide insights into total revenue, daily sales patterns, and the contribution of specific coffee types to overall revenue.
3. Payment Preferences: Query 12 reveals the distribution of payment methods (e.g., cash vs. card), which can inform decisions about payment processing or promotions.
4. High-Value Transactions: Queries 4 and 9 highlight expensive transactions, useful for identifying premium products or outliers in spending behavior.
5. Customer Behavior: Query 14 tracks the first and last purchase dates for customers, enabling analysis of customer retention and purchase frequency.
6. Spending Patterns: Queries 7 and 13 provide the average transaction value overall and per coffee type, offering insights into pricing strategies and customer spending habits.
7. Sales on Specific Dates: Query 3 allows analysis of sales on a particular date (e.g., March 1, 2024), useful for studying seasonal or promotional impacts.

Notes
1. The script uses UNION and UNION ALL to combine data from index_1 and index_2. Ensure column names and data types are consistent across both tables.
2. Some queries rename cash_type to cash_mode for consistency (e.g., Query 12).
3. Query 14 assumes the card column exists only in index_1. If index_2 also contains customer identifiers, you may need to modify the query.
4. Adjust the LIMIT clauses (e.g., in Queries 2, 9, 11, 15) based on your analysis needs.

Contributing
Feel free to fork this repository, modify the queries, or add new analyses. Submit a pull request with your changes or open an issue to suggest improvements.

License
This project is licensed under the MIT License. See the LICENSE file for details.
