# Library Management System (SQL Project)

A simple relational database project that models a library's core operations — managing books, members, and book issue/return records.

## 📌 Overview

This project demonstrates database design and SQL querying skills using a real-world scenario: a library management system. It includes table creation with proper relationships (primary keys, foreign keys), sample data, and analysis queries.

## 🗂️ Database Schema

### 1. books
Stores details of all books available in the library.

### 2. members
Stores details of registered library members.

### 3. issued_books
Tracks which book was issued to which member and when.

## 🔗 Relationships

- issued_books.Book_id → books.Book_id
- issued_books.member_id → members.member_id

This makes issued_books a **junction table** connecting books and members, enabling tracking of borrowing history.

## 🔍 Sample Analysis Queries

sql
-- Books not yet returned
SELECT * FROM issued_books WHERE return_date IS NULL;

-- Number of books issued per member
SELECT member_id, COUNT(*) FROM issued_books GROUP BY member_id;

-- Overdue books
SELECT * FROM issued_books WHERE due_date < CURDATE() AND return_date IS NULL;

-- Most issued (popular) books
SELECT Book_id, COUNT(*) AS times_issued
FROM issued_books
GROUP BY Book_id
ORDER BY times_issued DESC;


## 🛠️ Tech Used

- MySQL
- SQL (DDL + DML + JOIN queries)

## 📁 Files
. projectt.sql — Full schema, sample data, and queries
-
