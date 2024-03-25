# Ejercicios de prueba

Basic Exercises

- Select All Customers: Write a SQL query to select all records from the customers table.

```sql
SELECT * FROM customers;
```

- Select Specific Columns: Write a query to select only the first_name and last_name of all customers.

```sql
SELECT first_name, last_name FROM customers;
```

- Filter Customers by Country: Write a query to find all customers from a specific country (e.g., 'USA').

```sql
SELECT * FROM customers WHERE country = 'USA';
```

- Sort Customers by Score: Write a SQL query to list all customers, sorted by their score in descending order.

```sql
SELECT * FROM customers ORDER BY score DESC;
```

Intermediate Exercises

- Aggregate Functions: Write a query to find the average score of all customers.

```sql
SELECT AVG(score) as AVG_Score FROM customers
```

- Group By Country: Write a SQL query to count the number of customers in each country.

```sql
SELECT country, COUNT(*) AS NUM_CUSTOMERS FROM customers GROUP BY country
```

- Find High Scorers: Write a query to select customers with a score above a certain threshold (e.g., 80).

```sql
SELECT * FROM customers where score > 80
```

Advanced Exercises

- Use of Joins: Assuming there's another table orders that includes customer_id, write a query to display all customers and the number of orders they have made. This will require a LEFT JOIN.

```sql
SELECT c.customer_id, c.first_name, c.last_name, COUNT(o.quantity) as NUM_ORDERS FROM customers as c
LEFT JOIN orders AS o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;
```

- Subqueries: Write a query that selects the names of customers who have a higher score than the average score of all customers.

```sql
SELECT first_name, last_name
FROM customers
WHERE score > (SELECT AVG(score) FROM customers);

```

- CTEs and Window Functions: If your database supports it, write a query using a Common Table Expression (CTE) and a window function to rank customers within their respective countries by their score.

```sql
WITH RankedCustomers AS (
  SELECT
    customer_id,
    first_name,
    last_name,
    country,
    score,
    RANK() OVER (PARTITION BY country ORDER BY score DESC) AS country_rank
  FROM
    customers
)
SELECT
  customer_id,
  first_name,
  last_name,
  country,
  score,
  country_rank
FROM
  RankedCustomers
ORDER BY
  country,
  country_rank;

```

---

Users
user_id (Primary Key)
username
email
registration_date

Products
product_id (Primary Key)
name
price
category_id

Orders
order_id (Primary Key)
user_id (Foreign Key referencing Users)
order_date

OrderDetails
order_detail_id (Primary Key)
order_id (Foreign Key referencing Orders)
product_id (Foreign Key referencing Products)
quantity

Categories
category_id (Primary Key)
category_name

- Write a SQL query to list all product names and their prices in descending order of price.
- Write a SQL query to display each order's username, order date, and total number of items ordered.
- Write a SQL query to find the total number of products sold for each category.
- Write a SQL query to find products that are more expensive than the average price of all products in their category

---

1. Basic SQL Syntax and Operations
   Question: Explain the difference between INNER JOIN, LEFT JOIN, and RIGHT JOIN.

2. Aggregate Functions
   Question: What are aggregate functions? Can you give an example of a situation where you might use the HAVING clause with an aggregate function?

3. Subqueries and Joins
   Question: How do subqueries differ from joins? Provide an example where a subquery could be more beneficial than a join.

4. Indexing
   Question: What is an index in SQL? How does it improve query performance, and when might using an index be disadvantageous?

5. Normalization and Denormalization
   Question: Explain the concepts of normalization and denormalization. Why might you denormalize a database?

6. Transactions
   Question: What is a transaction in SQL? How do transactions ensure data integrity?

7. Window Functions
   Question: What are window functions, and how do they differ from aggregate functions? Provide an example of a scenario where a window function is useful.

8. Common Table Expressions (CTEs)
   Question: What is a Common Table Expression (CTE), and when would you use it? Provide an example query that demonstrates its use.

9. Performance Optimization
   Question: What strategies can you use to optimize SQL queries for better performance?

10. Database Design
    Question: Describe the considerations you would take into account when designing a database schema for a new application.
