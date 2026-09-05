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
 
 
 
 --members table
 
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

INSERT INTO books (title, author, category_name, isbn, publisher, published_year, total_copies, available_copies)
VALUES
('The Alchemist', 'Paulo Coelho', 'Fiction', '9725631219101', 'HarperOne', 1985, 4, 1),
('Clean Code', 'Robert C. Martin', 'Programming', '9720932266036', 'Simon & Schuster', 2004, 1, 0),
('Atomic Habits', 'James Clear', 'Self-help', '9736172221786', 'Harper', 2014, 1, 0),
('Sapiens', 'Yuval Noah Harari', 'History', '9798974626737', 'Macmillan', 2019, 7, 3),
('Introduction to Algorithms', 'Thomas H. Cormen', 'Programming', '9789238749482', 'MIT Press', 1950, 3, 3),
('1984', 'George Orwell', 'Fiction', '9745821103222', 'Avery', 1977, 6, 0),
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', '9761937947921', 'Prentice Hall', 1995, 6, 4),
('The Pragmatic Programmer', 'Andrew Hunt', 'Programming', '9784987658854', 'Prentice Hall', 1998, 2, 2),
('Deep Work', 'Cal Newport', 'Self-help', '9794304365998', 'Penguin', 2023, 4, 0),
('Educated', 'Tara Westover', 'Biography', '9761973405392', 'MIT Press', 2008, 6, 1),
('The Silent Patient', 'Alex Michaelides', 'Thriller', '9758834555400', 'Harper', 1984, 2, 2),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', '9734202047459', 'Bloomsbury', 1981, 3, 3),
('A Brief History of Time', 'Stephen Hawking', 'Science', '9745989487095', 'Pearson', 2021, 4, 2),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', '9717627861561', 'Harper', 1954, 6, 3),
('Thinking Fast and Slow', 'Daniel Kahneman', 'Psychology', '9719739872926', 'Harper', 2022, 6, 1),
('The Power of Habit', 'Charles Duhigg', 'Self-help', '9777239597077', 'Random House', 2008, 3, 2),
('Ikigai', 'Hector Garcia', 'Self-help', '9740664478749', 'Macmillan', 2021, 5, 5),
('Wings of Fire', 'A.P.J. Abdul Kalam', 'Biography', '9768345352569', 'Simon & Schuster', 2001, 6, 1),
('The Da Vinci Code', 'Dan Brown', 'Thriller', '9779313607044', 'Reilly Media', 1961, 1, 0),
('Freakonomics', 'Steven Levitt', 'Economics', '9796555794399', 'Avery', 2004, 2, 1),
('Zero to One', 'Peter Thiel', 'Business', '9793243420962', 'Reilly Media', 2017, 5, 4),
('The Lean Startup', 'Eric Ries', 'Business', '9725980378553', 'Pearson', 2018, 5, 5),
('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy', '9724345944431', 'MIT Press', 2005, 3, 3),
('The Kite Runner', 'Khaled Hosseini', 'Fiction', '9747450743307', 'Bloomsbury', 1972, 2, 2),
('Man''s Search for Meaning', 'Viktor Frankl', 'Psychology', '9781463743911', 'Simon & Schuster', 1975, 3, 2),
('The Subtle Art of Not Giving a F*ck', 'Mark Manson', 'Self-help', '9734749795425', 'Bloomsbury', 2017, 1, 1),
('Guns Germs and Steel', 'Jared Diamond', 'History', '9712098545541', 'Prentice Hall', 1996, 5, 1),
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', '9740313557786', 'Simon & Schuster', 1960, 2, 2),
('Pride and Prejudice', 'Jane Austen', 'Classic', '9786281205445', 'Avery', 1966, 8, 8),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', '9745068953259', 'Bloomsbury', 2004, 4, 4),
('Animal Farm', 'George Orwell', 'Fiction', '9738732762716', 'Macmillan', 1989, 7, 5),
('Brave New World', 'Aldous Huxley', 'Fiction', '9772352513460', 'Prentice Hall', 1981, 4, 0),
('The Innovators', 'Walter Isaacson', 'Technology', '9711452066459', 'Simon & Schuster', 2020, 4, 4),
('Steve Jobs', 'Walter Isaacson', 'Biography', '9710945826486', 'Prentice Hall', 1957, 4, 0),
('The Design of Everyday Things', 'Don Norman', 'Design', '9718183716646', 'Penguin', 1959, 4, 2),
('Grit', 'Angela Duckworth', 'Self-help', '9777297747111', 'Harper', 2019, 3, 3),
('Outliers', 'Malcolm Gladwell', 'Psychology', '9737518113010', 'Prentice Hall', 1962, 7, 5),
('The Tipping Point', 'Malcolm Gladwell', 'Psychology', '9767653831185', 'Reilly Media', 1956, 2, 0),
('Sapient Code', 'Anonymous', 'Programming', '9726585757278', 'Harper', 1974, 4, 4),
('Database System Concepts', 'Silberschatz', 'Programming', '9729106649725', 'Random House', 1973, 5, 3),
('Operating System Concepts', 'Silberschatz', 'Programming', '9722555330172', 'Reilly Media', 2020, 2, 0),
('Computer Networks', 'Andrew Tanenbaum', 'Programming', '9732490078656', 'Random House', 2012, 8, 3),
('The C Programming Language', 'Kernighan & Ritchie', 'Programming', '9765253252721', 'HarperOne', 1971, 7, 0),
('Python Crash Course', 'Eric Matthes', 'Programming', '9765771476808', 'MIT Press', 2008, 5, 3),
('Fluent Python', 'Luciano Ramalho', 'Programming', '9786378956174', 'Pearson', 2012, 3, 1),
('Head First Design Patterns', 'Eric Freeman', 'Programming', '9737044154194', 'HarperOne', 2019, 1, 1),
('You Don''t Know JS', 'Kyle Simpson', 'Programming', '9714540490283', 'Simon & Schuster', 2011, 3, 0),
('Eloquent JavaScript', 'Marijn Haverbeke', 'Programming', '9782845990690', 'Prentice Hall', 1973, 2, 2),
('The Art of War', 'Sun Tzu', 'Philosophy', '9743766256364', 'Random House', 1965, 4, 4),
('Meditations', 'Marcus Aurelius', 'Philosophy', '9716848407638', 'Simon & Schuster', 1960, 7, 5);


INSERT INTO members (first_name, last_name, email, contact, address, join_date)
VALUES
('Rahul', 'Sharma', 'rahul.sharma0@email.com', '9379995032', 'Bangalore, India', '2024-04-09'),
('Priya', 'Patel', 'priya.patel1@email.com', '9524971817', 'Pune, India', '2024-08-11'),
('Aman', 'Kapoor', 'aman.kapoor2@email.com', '9907308348', 'Mumbai, India', '2022-08-20'),
('Sneha', 'Bhatt', 'sneha.bhatt3@email.com', '9704509817', 'Mumbai, India', '2022-09-07'),
('Karan', 'Kaur', 'karan.kaur4@email.com', '9643189555', 'Chennai, India', '2023-06-03'),
('Neha', 'Rathi', 'neha.rathi5@email.com', '9362298393', 'Kolkata, India', '2024-03-15'),
('Vikram', 'Grover', 'vikram.grover6@email.com', '9995226828', 'Jaipur, India', '2024-10-26'),
('Anjali', 'Sen', 'anjali.sen7@email.com', '9802201721', 'Jaipur, India', '2022-11-27'),
('Rohit', 'Nair', 'rohit.nair8@email.com', '9695499669', 'Chennai, India', '2022-03-09'),
('Pooja', 'Rao', 'pooja.rao9@email.com', '9223940587', 'Mumbai, India', '2023-05-10'),
('Arjun', 'Agarwal', 'arjun.agarwal10@email.com', '9749431082', 'Bangalore, India', '2024-04-22'),
('Divya', 'Shah', 'divya.shah11@email.com', '9781007818', 'Chennai, India', '2025-05-28'),
('Sanjay', 'Tiwari', 'sanjay.tiwari12@email.com', '9154544899', 'Mumbai, India', '2025-05-02'),
('Meera', 'Arora', 'meera.arora13@email.com', '9103807155', 'Kolkata, India', '2023-11-09'),
('Nikhil', 'Roy', 'nikhil.roy14@email.com', '9273497327', 'Ahmedabad, India', '2025-09-01'),
('Kavya', 'Reddy', 'kavya.reddy15@email.com', '9220123666', 'Mumbai, India', '2023-09-02'),
('Suresh', 'Chatterjee', 'suresh.chatterjee16@email.com', '9996139578', 'Kolkata, India', '2023-07-05'),
('Ritu', 'Yadav', 'ritu.yadav17@email.com', '9144913399', 'Chennai, India', '2024-01-12'),
('Manish', 'Desai', 'manish.desai18@email.com', '9325567963', 'Bangalore, India', '2022-06-25'),
('Swati', 'Pandey', 'swati.pandey19@email.com', '9701170349', 'Hyderabad, India', '2023-04-28'),
('Ajay', 'Khanna', 'ajay.khanna20@email.com', '9274484941', 'Pune, India', '2025-01-06'),
('Isha', 'Ghosh', 'isha.ghosh21@email.com', '9890880074', 'Kolkata, India', '2025-11-28'),
('Deepak', 'Singh', 'deepak.singh22@email.com', '9889262019', 'Bangalore, India', '2024-03-26'),
('Nisha', 'Das', 'nisha.das23@email.com', '9852991721', 'Mumbai, India', '2025-01-28'),
('Vivek', 'Mishra', 'vivek.mishra24@email.com', '9605399561', 'Bangalore, India', '2023-08-12'),
('Tanvi', 'Trivedi', 'tanvi.trivedi25@email.com', '9427696198', 'Bangalore, India', '2023-01-22'),
('Rakesh', 'Dubey', 'rakesh.dubey26@email.com', '9307371533', 'Hyderabad, India', '2024-05-28'),
('Simran', 'Anand', 'simran.anand27@email.com', '9174539964', 'Chennai, India', '2024-11-17'),
('Gaurav', 'Ganguly', 'gaurav.ganguly28@email.com', '9529151399', 'Jaipur, India', '2024-01-04'),
('Payal', 'Iyer', 'payal.iyer29@email.com', '9380477683', 'Pune, India', '2024-01-04'),
('Harish', 'Kumar', 'harish.kumar30@email.com', '9740563507', 'Hyderabad, India', '2024-12-26'),
('Komal', 'Chauhan', 'komal.chauhan31@email.com', '9436808455', 'Hyderabad, India', '2022-07-19'),
('Sandeep', 'Sinha', 'sandeep.sinha32@email.com', '9304095531', 'Chennai, India', '2022-12-14'),
('Ritika', 'Saxena', 'ritika.saxena33@email.com', '9101815992', 'Jaipur, India', '2023-06-14'),
('Naveen', 'Sethi', 'naveen.sethi34@email.com', '9175133802', 'Kolkata, India', '2024-11-28'),
('Shreya', 'Dutta', 'shreya.dutta35@email.com', '9233815413', 'Chennai, India', '2024-11-14'),
('Ashok', 'Gupta', 'ashok.gupta36@email.com', '9450236225', 'Hyderabad, India', '2024-09-05'),
('Bhavna', 'Joshi', 'bhavna.joshi37@email.com', '9305986733', 'Hyderabad, India', '2025-11-24'),
('Yash', 'Bose', 'yash.bose38@email.com', '9286860433', 'Lucknow, India', '2024-07-18'),
('Aarti', 'Menon', 'aarti.menon39@email.com', '9995205588', 'Delhi, India', '2024-05-07'),
('Rajesh', 'Bhatia', 'rajesh.bhatia40@email.com', '9561588882', 'Lucknow, India', '2024-08-15'),
('Preeti', 'Ahluwalia', 'preeti.ahluwalia41@email.com', '9574765466', 'Bangalore, India', '2025-12-06'),
('Manoj', 'Chandra', 'manoj.chandra42@email.com', '9807435606', 'Mumbai, India', '2024-09-22'),
('Kiran', 'Verma', 'kiran.verma43@email.com', '9779615069', 'Lucknow, India', '2024-02-27'),
('Anil', 'Mehta', 'anil.mehta44@email.com', '9906528433', 'Bangalore, India', '2024-04-26'),
('Sunita', 'Malhotra', 'sunita.malhotra45@email.com', '9313814138', 'Pune, India', '2022-01-08'),
('Amit', 'Pillai', 'amit.pillai46@email.com', '9610173760', 'Lucknow, India', '2022-08-14'),
('Sonal', 'Chopra', 'sonal.chopra47@email.com', '9776205431', 'Lucknow, India', '2023-12-23'),
('Vishal', 'Bhalla', 'vishal.bhalla48@email.com', '9512293741', 'Ahmedabad, India', '2025-04-05'),
('Radha', 'Bakshi', 'radha.bakshi49@email.com', '9804436922', 'Delhi, India', '2022-07-08');


INSERT INTO issued_books (Book_id, member_id, issue_date, due_date, return_date)
VALUES
(12, 45, '2025-01-18', '2025-02-04', '2025-02-04'),
(8, 30, '2024-08-22', '2024-09-08', '2024-09-08'),
(36, 39, '2025-08-20', '2025-09-06', NULL),
(33, 28, '2025-03-24', '2025-04-10', NULL),
(29, 17, '2024-11-09', '2024-11-23', NULL),
(34, 32, '2024-05-15', '2024-06-01', '2024-06-01'),
(19, 16, '2025-06-11', '2025-06-25', NULL),
(6, 9, '2024-04-13', '2024-04-27', NULL),
(46, 14, '2024-07-14', '2024-07-28', '2024-07-28'),
(30, 27, '2024-04-27', '2024-05-13', '2024-05-13'),
(50, 38, '2024-10-13', '2024-10-27', '2024-10-27'),
(23, 20, '2025-07-18', '2025-08-04', NULL),
(35, 39, '2024-08-08', '2024-08-22', '2024-08-22'),
(32, 2, '2025-06-22', '2025-07-08', NULL),
(26, 47, '2024-08-05', '2024-08-19', NULL),
(35, 2, '2025-10-19', '2025-11-05', NULL),
(6, 42, '2025-03-28', '2025-04-14', '2025-04-14'),
(4, 17, '2025-06-07', '2025-06-21', '2025-06-21'),
(22, 49, '2025-05-25', '2025-06-11', NULL),
(27, 17, '2024-08-01', '2024-08-15', NULL),
(4, 23, '2024-11-03', '2024-11-17', NULL),
(42, 3, '2024-04-07', '2024-04-21', NULL),
(40, 10, '2024-03-16', '2024-04-02', NULL),
(37, 14, '2025-12-09', '2025-12-23', NULL),
(11, 39, '2024-03-10', '2024-03-24', '2024-03-24'),
(2, 20, '2025-07-23', '2025-08-09', '2025-08-09'),
(38, 45, '2024-02-23', '2024-03-09', NULL),
(44, 39, '2024-10-26', '2024-11-12', '2024-11-12'),
(35, 28, '2025-02-17', '2025-03-03', NULL),
(1, 27, '2025-02-14', '2025-02-28', NULL),
(41, 30, '2024-07-06', '2024-07-20', NULL),
(42, 18, '2025-08-14', '2025-08-28', NULL),
(38, 18, '2025-04-27', '2025-05-13', NULL),
(18, 29, '2024-08-19', '2024-09-05', NULL),
(25, 22, '2024-08-28', '2024-09-14', '2024-09-14'),
(32, 14, '2025-05-11', '2025-05-25', '2025-05-25'),
(39, 45, '2025-09-01', '2025-09-15', '2025-09-15'),
(13, 6, '2024-12-14', '2024-12-28', '2024-12-28'),
(49, 16, '2025-11-23', '2025-12-09', '2025-12-09'),
(2, 6, '2025-04-13', '2025-04-27', NULL),
(20, 43, '2025-08-18', '2025-09-04', '2025-09-04'),
(28, 48, '2025-06-23', '2025-07-09', '2025-07-09'),
(20, 17, '2024-02-24', '2024-03-10', '2024-03-10'),
(8, 48, '2024-04-07', '2024-04-21', NULL),
(18, 47, '2025-02-27', '2025-03-13', '2025-03-13'),
(15, 24, '2024-05-01', '2024-05-15', NULL),
(9, 18, '2024-01-18', '2024-02-04', '2024-02-04'),
(9, 41, '2025-02-28', '2025-03-14', '2025-03-14'),
(19, 31, '2025-08-11', '2025-08-25', '2025-08-25'),
(4, 17, '2025-02-27', '2025-03-13', '2025-03-13');


# NULL VALUES 

SELECT * FROM issued_books
WHERE return_date IS NULL;

# CTE (Common Table Expressions)

WITH overdue AS (
 SELECT * FROM issued_books
 WHERE due_date < CURDATE() AND 
return_date IS NULL
)
SELECT member_id, COUNT(*) AS overdue_count
FROM overdue
GROUP BY member_id;

# WINDOW FUNCTIONS

SELECT issued_id, Book_id,
  COUNT(*) OVER (PARTITION BY Book_id)
AS total_times_issued
FROM issued_books;

# JOIN (INNER,SELF,CROSS)

FROM issued_books ib
INNER JOIN members m ON ib.member_id = 
m.member_id
INNER JOIN books b ON ib.Book_id = 
b.Book_id
WHERE ib.return_date IS NULL;

# SELF JOIN 

SELF b1.title AS book1, b2.title AS
book2, b1 author
FROM booksb1
JOIN books b2 ON b1.author = b2.author AND
b1.Book_id < b2.Book_id;

#CROSS JOIN 

SELECT m.first_name, c.category_name
FROM members m
CROSS JOIN ( SELECT DISTINCT category_name
FROM books) c
LIMIT 20;

# SUBQUERY

SELECT * FROM books
WHERE available_copies = (SELECT
MAX (available_copies) FROM books);

# AGGREGATE / GROUP BY

SELECT Category_name, COUNT(*) AS
total_titles,SUM(available_copies) AS 
total_available
FROM books
GROUP BY category_name
ORDER BY total_titles DESC;












