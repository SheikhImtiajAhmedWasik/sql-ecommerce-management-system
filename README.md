<div align="center">

# 🛒 SQL E-Commerce Management System

### 📦 A Simple E-Commerce Database Project Using SQL

![SQL](https://img.shields.io/badge/SQL-Database-blue?style=for-the-badge)
![Database](https://img.shields.io/badge/Project-E--Commerce-success?style=for-the-badge)
![CRUD](https://img.shields.io/badge/Operations-CRUD-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Assignment-red?style=for-the-badge)

</div>

---

# 🎯 Objective

Build a simple **E-Commerce Database System** using SQL.

This project helps students understand fundamental database concepts by designing and managing a relational database for an online shopping platform.

---

# 📚 Learning Outcomes

After completing this project, students should be able to:

- 🗄️ Create a database
- 📋 Create tables
- 🔑 Use Primary Keys
- 🔗 Use Foreign Keys
- ➕ Insert records
- ✏️ Update records
- 🗑️ Delete records
- 🔍 Retrieve data using SQL queries
- 📊 Perform sorting, filtering, joins, and aggregation

---

# 🏗️ Database Information

### Database Name

```text
ecommerce_db
```

---

# 📂 Database Schema

## 👤 Customers

| Column | Data Type | Constraint |
|---------|-----------|------------|
| customer_id | INT | PRIMARY KEY |
| name | VARCHAR(100) | NOT NULL |
| email | VARCHAR(100) | UNIQUE |
| phone | VARCHAR(20) | |
| city | VARCHAR(50) | |

---

## 📦 Categories

| Column | Data Type | Constraint |
|---------|-----------|------------|
| category_id | INT | PRIMARY KEY |
| category_name | VARCHAR(50) | |

### Example Categories

- 💻 Electronics
- 👕 Fashion
- 🛒 Grocery

---

## 🛍️ Products

| Column | Data Type | Constraint |
|---------|-----------|------------|
| product_id | INT | PRIMARY KEY |
| product_name | VARCHAR(100) | |
| price | DECIMAL(10,2) | |
| stock | INT | |
| category_id | INT | FOREIGN KEY |

---

## 🧾 Orders

| Column | Data Type | Constraint |
|---------|-----------|------------|
| order_id | INT | PRIMARY KEY |
| customer_id | INT | FOREIGN KEY |
| order_date | DATE | |
| total_amount | DECIMAL(10,2) | |

---

# 📥 Sample Data Requirements

Insert at least:

| Table | Minimum Records |
|--------|:---------------:|
| Customers | 5 |
| Categories | 5 |
| Products | 10 |
| Orders | 8 |

---

# 🚀 Project Tasks

## 🏗️ Part 1 — Database Creation

Create:

- Database
- All tables
- Primary Keys
- Foreign Keys

---

## ➕ Part 2 — Insert Data

Insert sample records into every table.

---

## ✏️ Part 3 — Update Data

Perform update operations on:

- Product price
- Customer city
- Product stock

### Example Tasks

- Update Laptop price
- Update Customer city
- Update Product stock after selling

---

## 🗑️ Part 4 — Delete Data

Delete:

- One customer
- One product

---

## 🔍 Part 5 — Basic Queries

Write SQL queries to:

1. Show all customers.
2. Show all products.
3. Show products whose price is greater than **1000**.
4. Show products whose stock is less than **10**.
5. Show customers from **Dhaka**.
6. Sort products by price (**Highest → Lowest**).
7. Sort customers alphabetically.
8. Show the first **5** products.
9. Count the total number of customers.
10. Calculate the average product price.

---

## 📊 Part 6 — Aggregate Functions

Write SQL queries to calculate:

- 🔺 Maximum product price
- 🔻 Minimum product price
- 📦 Total stock
- 📈 Average stock
- 🛒 Total number of orders

---

## 🔗 Part 7 — JOIN Queries

Write SQL queries to:

1. Show customer names with their orders.
2. Show product names with category names.
3. Show order details along with customer names.

---

## 🔎 Part 8 — Search Queries

Write SQL queries to find:

- 📱 Products containing the word **"Phone"**
- 👤 Customers whose names start with **"A"**
- 💰 Products priced between **500** and **3000**

---

## 🏆 Part 9 — Bonus Challenge

Write SQL queries to answer the following:

1. Which product has the highest price?
2. Which customer placed the largest order?
3. How many products belong to each category?
4. Which category has the most products?
5. List all customers who have placed at least one order.

---

# 📋 Project Workflow

```text
Create Database
        │
        ▼
Create Tables
        │
        ▼
Define Primary Keys
        │
        ▼
Define Foreign Keys
        │
        ▼
Insert Sample Data
        │
        ▼
Perform CRUD Operations
        │
        ▼
Execute SQL Queries
        │
        ▼
Generate Reports
```

---

# 🛠️ SQL Concepts Used

| Concept | Used |
|---------|:----:|
| Database Creation | ✅ |
| Table Creation | ✅ |
| Primary Keys | ✅ |
| Foreign Keys | ✅ |
| INSERT | ✅ |
| UPDATE | ✅ |
| DELETE | ✅ |
| SELECT | ✅ |
| WHERE | ✅ |
| ORDER BY | ✅ |
| LIMIT | ✅ |
| Aggregate Functions | ✅ |
| JOIN | ✅ |
| LIKE | ✅ |
| BETWEEN | ✅ |

---

# 📁 Suggested Project Structure

```text
sql-ecommerce-management-system/
│
├── README.md
├── ecommerce_db.sql
├── schema.sql
├── insert_data.sql
├── update_queries.sql
├── delete_queries.sql
├── basic_queries.sql
├── aggregate_queries.sql
├── join_queries.sql
├── search_queries.sql
└── bonus_queries.sql
```

---

<div align="center">

## ⭐ Built with SQL

A beginner-friendly SQL project that demonstrates database design, relational modeling, CRUD operations, joins, filtering, sorting, and aggregation using a simple E-Commerce Management System.

If you found this project helpful, consider giving it a ⭐ on GitHub!

</div>
