# E-Commerce Database Management System

## Overview

The E-Commerce Database Management System is a MySQL-based project designed to manage customers, products, shopping carts, orders, order items, and payments. The project demonstrates database design, SQL queries, joins, subqueries, views, indexes, transactions, triggers, and stored procedures.

---

## Features

### Customer Management

* Store customer information
* Manage customer records
* Search customers by city and name

### Product Management

* Store product details
* Track product prices and stock
* Categorize products based on price range

### Shopping Cart Management

* Add products to cart
* Track cart quantities
* Manage customer carts

### Order Management

* Create orders
* Track order status
* View order history

### Payment Management

* Store payment details
* Track payment status
* Calculate revenue and sales reports

---

## Database Tables

* Customers
* Products
* Cart
* Orders
* Order Items
* Payments

---

## Technologies Used

* MySQL
* SQL
* MySQL Workbench

---

## SQL Concepts Implemented

### DDL Commands

* CREATE DATABASE
* CREATE TABLE
* ALTER TABLE
* CREATE INDEX
* CREATE VIEW

### DML Commands

* INSERT
* UPDATE
* DELETE

### Query Operations

* SELECT
* WHERE
* ORDER BY
* GROUP BY
* HAVING
* LIMIT
* DISTINCT

### Joins

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* CROSS JOIN

### Aggregate Functions

* COUNT()
* SUM()
* AVG()
* MAX()
* MIN()

### String Functions

* UPPER()
* LOWER()
* LENGTH()
* CONCAT()

### Subqueries

* EXISTS
* NOT IN
* Nested Queries

### Advanced Database Concepts

* Indexing
* Views
* Transactions (COMMIT & ROLLBACK)
* Triggers
* Stored Procedures
* Query Optimization using EXPLAIN

---

## Project Highlights

* 50 Customer Records
* 40 Product Records
* Cart Management System
* Order Processing System
* Payment Tracking
* Revenue Analysis
* Inventory Management
* Automated Stock Reduction using Trigger

---

## Sample Functionalities

* Find top-selling products
* Calculate customer spending
* Generate revenue reports
* Track pending and completed payments
* View customer order history
* Monitor inventory stock

---

## How to Run

1. Open MySQL Workbench.
2. Create a new database:

```sql id="7w0hy4"
CREATE DATABASE ecommerce;
USE ecommerce;
```

3. Execute the SQL script.
4. Run queries to view and analyze data.

---

## Advanced Features

### Trigger

Automatically reduces product stock after a new order item is inserted.

### Stored Procedure

Retrieve all orders for a specific customer.

### View

Generate order summaries with customer, order, and payment information.

### Transactions

Demonstrates COMMIT and ROLLBACK operations.

---

## Learning Outcomes

* Relational Database Design
* Database Normalization
* Query Optimization
* Data Analysis using SQL
* Transaction Management
* Database Automation using Triggers and Procedures

---

## Author

**Aruna P**

B.Tech Information Technology

MySQL Developer | Python Full Stack Developer

GitHub: https://github.com/arunaperumal2005-glitch
