-- Active: 1785766796380@@127.0.0.1@5432@ecommerce_db
-- Task part1: Database Creation
CREATE DATABASE ecommerce_db;
CREATE TABLE customers(
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    city VARCHAR(50)
);

CREATE TABLE categories(
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

CREATE TABLE products(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    stock INT,
    category_id INT -- FK --> category_id
);

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    customer_id INT, -- FK --> customer_id
    order_date DATE,
    total_amount DECIMAL(10, 2)
);


-- Task part 2: Insert Data
INSERT INTO customers
    (customer_id, name, email, phone, city)
VALUES
    (1, 'Awal', 'awal@mail.com', '+880 1812121212', 'Chattogram'),
    (2, 'Ishan', 'ishan@mail.com', '+880 1812121213', 'Dhaka'),
    (3, 'Ringkon', 'kon@mail.com', '+880 1812121214', 'Rajshahi'),
    (4, 'Radhanath', 'nath@mail.com', '+880 1812121215', 'Chattogram'),
    (5, 'Masum', 'masum@mail.com', '+880 1812121216', 'Khulna'),
    (6, 'Rakib', 'rakib@mail.com', '+880 1812121217', 'Dhaka'),
    (7, 'Akib', 'akib@mail.com', '+880 1812121218', 'Dhaka');

INSERT INTO categories
VALUES
    (1, 'Electronics'),
    (2, 'Fashion'),
    (3, 'Grocery'),
    (4, 'Sports'),
    (5, 'Toys');
-- Another way to insert

INSERT INTO products
    (product_id, product_name, price, stock, category_id)
VALUES
    (1, 'Wireless Earbuds', 6000, 10, 1),
    (2, 'Snack Bars', 80, 15, 3),
    (3, 'Magnetic Building Blocks', 1200, 55, 5),
    (4, 'Hoodies', 2000, 15, 2),
    (5, 'Stainless Steel Water Bottles', 600, 35, 4),
    (6, 'Coffee Beans', 800, 50, 3),
    (7, 'Smartwatches', 3500, 80, 1),
    (8, 'Sneakers', 3000, 50, 2),
    (9, 'DIY Craft Kits', 700, 8, 5),
    (10, 'Chocolate Cookies', 120, 70, 3),
    (11, 'Earphone', 1200, 45, 1),
    (12, 'Quaker Oats', 450, 30, 3),
    (13, 'Resistance Band Sets', 3600, 5, 4);

INSERT INTO orders
    (order_id, customer_id, order_date, total_amount)
VALUES
    (1, 1, '2026-07-15', 9000),
    (2, 3, '2026-07-16', 1800),
    (3, 2, '2026-07-18', 7400),
    (4, 6, '2026-07-18', 8200),
    (5, 4, '2026-07-19', 3000),
    (6, 3, '2026-07-20', 6500),
    (7, 1, '2026-07-22', 3000),
    (8, 4, '2026-07-23', 1800),
    (9, 3, '2026-07-25', 6000);


-- Task part 3: Update Data
UPDATE products
SET price = 1800
WHERE product_id = 3;
-- update product price

UPDATE customers
SET city = 'Sylet'
WHERE customer_id = 4;
-- update customer city

UPDATE products
SET stock = 80
WHERE product_id = 6;
-- update product stock


-- Task part 4: Delete Data
DELETE FROM customers
WHERE customer_id = 2;
-- Delete one customer

DELETE FROM products
WHERE product_id = 3;


-- Task part 5: Basic Queries
SELECT * FROM customers;
-- 1. Show all customers

SELECT * FROM products;
-- 2. Show all products

SELECT *
FROM products
WHERE price > 1000;
-- 3. Show products whose price is greater than 1000

SELECT *
FROM products
WHERE stock < 10;
-- 4. Show products whose stock is less than 10

SELECT *
FROM customers
WHERE city = 'Dhaka';
-- 5. Show customers from Dhaka

SELECT * FROM products
ORDER BY price DESC;
-- 6. Sort products by price (Highest → Lowest)

SELECT * FROM customers
ORDER BY name ASC;
-- 7. Sort customers alphabetically

SELECT * FROM products
ORDER BY product_id
LIMIT 5;
-- 8. Show the first 5 products

SELECT COUNT(customer_id) AS total_customer
FROM  customers
-- 9. Count the total number of customers

SELECT AVG(price) AS "Average product price"
FROM products;
-- 10. Calculate the average product price


-- Task part 6: Aggregate Functions
SELECT MAX(price)
FROM products;
-- Maximum product price

SELECT MIN(price)
FROM products;
-- Minimum product price

SELECT SUM(stock)
FROM products;
-- Total stock

SELECT AVG(stock)
FROM products;
-- Average stock

SELECT COUNT(order_id)
FROM orders;
-- Total number of orders


-- Task part 7: JOIN Queries
SELECT * FROM customers;
SELECT * FROM orders;
SELECT customers.name, orders.order_id
FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id
ORDER BY customers.name ASC;
-- 1. Show customer names with their orders

SELECT * FROM products;
SELECT * FROM categories;

SELECT products.product_name, categories.category_name
FROM products
LEFT JOIN categories
ON products.category_id = categories.category_id
ORDER BY products.product_name;
-- 2. Show product names with category names

SELECT 
    customers.name,
    orders.order_id,
    orders.order_date,
    orders.total_amount
FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id
ORDER BY customers.name;
-- 3. Show order details along with customer names


-- Task part 8: Search Queries
SELECT * FROM products
WHERE product_name LIKE '%Phone%';
-- Products containing the word "Phone"

SELECT * FROM customers
WHERE name LIKE 'A%';
-- Customers whose names start with "A"

SELECT * FROM products
WHERE price BETWEEN 500 AND 3000;
-- Products priced between 500 and 3000


-- Task part 9: Bonus Challenge
SELECT * 
FROM products
ORDER BY price DESC
LIMIT 1;
-- 1. Highest price product...

SELECT 
    customers.customer_id,
    customers.name,
    orders.order_id,
    orders.order_date,
    orders.total_amount
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id
ORDER BY orders.total_amount DESC
LIMIT 1;
-- 2. Largest order by customer...

SELECT categories.category_name, COUNT(category_name)
FROM categories
JOIN products
ON categories.category_id = products.category_id
GROUP BY categories.category_name
ORDER BY COUNT(categories.category_name);
-- 3. products belong to each category...

SELECT categories.category_name, COUNT(category_name)
FROM categories
JOIN products
ON categories.category_id = products.category_id
GROUP BY categories.category_name
ORDER BY COUNT(categories.category_name) DESC
LIMIT 1;
-- 4. Category with most products

SELECT customers.name, COUNT(customers.customer_id) 
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id
HAVING COUNT(customers.customer_id) > 0;
-- 5. List all customers who have placed at least one order.


