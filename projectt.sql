-- Create Database
 

CREATE DATABASE library_management_system; 

-- connect

USE library_management_system;

--books table
 
 CREATE TABLE books (
    Book_id SERIAL PRIMARY KEY,
    title VARCHAR(500) NOT NULL,
    author VARCHAR(500) NOT NULL,
    category_name VARCHAR(500),
    isbn VARCHAR(500) UNIQUE,
    publisher VARCHAR(500),
    published_year INT,
    total_copies INT NOT NULL,
    available_copies INT NOT NULL
);
 
 
 
 --member table
 
 CREATE TABLE members(
    member_id SERIAL PRIMARY KEY ,
    first_name VARCHAR(500) NOT NULL,
    last_name VARCHAR(500),
    email VARCHAR(500)UNIQUE,
    contact VARCHAR(500)UNIQUE,
    adress TEXT,
    join_date DATE
);

--issued_books table

CREATE TABLE issued_books (
    issued_id SERIAL PRIMARY KEY,
    Book_id BIGINT UNSIGNED,
    member_id BIGINT UNSIGNED,
    issue_date DATE,
    due_date DATE NOT NULL,
    return_date DATE,
    
    FOREIGN KEY (Book_id) REFERENCES books(Book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
    ON DELETE CASCADE

);


JOIN issued_books
ON books.Book_id = issued_books.Book_id  
JOIN members
ON members.member_id = issued_books.member_id;
