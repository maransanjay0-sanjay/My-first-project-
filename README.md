# Library Management System (SQL Project)

A simple relational database project that models a library's core operations — managing books, members, and book issue/return records.

## 📌 Overview

This project demonstrates database design and SQL querying skills using a real-world scenario: a library management system. It includes table creation with proper relationships (primary keys, foreign keys), sample data, and analysis queries.

## 🗂️ Database Schema

### 1. books
Stores details of all books available in the library.

| Column | Type | Description |
|---|---|---|
| Book_id | SERIAL (PK) | Unique ID for each book |
| title | VARCHAR(500) | Book title |
| author | VARCHAR(500) | Author name |
| category_name | VARCHAR(500) | Genre/category |
| isbn | VARCHAR(500) | Unique ISBN number |
| publisher | VARCHAR(500) | Publisher name |
| published_year | INT | Year of publication |
| total_copies | INT | Total copies owned by library |
| available_copies | INT | Copies currently available |

### 2. members
Stores details of registered library members.

| Column | Type | Description |
|---|---|---|
| member_id | SERIAL (PK) | Unique ID for each member |
| first_name | VARCHAR(500) | Member's first name |
| last_name | VARCHAR(500) | Member's last name |
| email | VARCHAR(500) | Unique email |
| contact | VARCHAR(500) | Contact number |
| adress | TEXT | Member's address |
| join_date | DATE | Date member joined |

### 3. issued_books
Tracks which book was issued to which member, and when.

| Column | Type | Description |
|---|---|---|
| issued_id | SERIAL (PK) | Unique record ID |
| Book_id | FK → books | References the issued book |
| member_id | FK → members | References the borrowing member |
| issue_date | DATE | Date the book was issued |
| due_date | DATE | Date the book is due |
| return_date | DATE | Date the book was actually returned |

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
