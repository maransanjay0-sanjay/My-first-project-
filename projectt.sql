USE library_management_system;

SHOW TABLES;

DESC books;

INSERT INTO books (book_id, title, author,category_name,isbn,publisher,published_year,total_copies,available_copies)
VALUES (1,'Tess of the dUrbervilles','L.A. Confidential','romantic',101,'Felony & Mayhem Press',2020,1000,50);


SELECT  * FROM books;

INSERT INTO books (book_id, title, author,category_name,isbn,publisher,published_year,total_copies,available_copies)
VALUES (2,'Crime and Punishment','L.M. Montgomery', 'Twilight'  ,102,'Manor House Publishing',1998,5200,1000)

INSERT INTO books (book_id, title, author,category_name,isbn,publisher,published_year,total_copies,available_copies)
VALUES (3,'The Aeneid','Guy de Maupassant', 'Aramatic',103,'Fairview Press',1969,10000,2000);

INSERT INTO books (book_id, title, author,category_name,isbn,publisher,published_year,total_copies,available_copies)
VALUES(4, 'Of Mice and Men','Elizabeth Von Arnim','Cartic',104,'Heyday Books',1998,4000,100);

INSERT INTO books (book_id, title, author,category_name,isbn,publisher,published_year,total_copies,available_copies)
VALUES 
(5,'Watchmen','Geoffrey Chaucer','Fundamental things',105,'Manor House Publishing',1995,3000,120);

INSERT INTO books (book_id, title, author,category_name,isbn,publisher,published_year,total_copies,available_copies)
VALUES
(6,'The Time Machine','Suzanne Collins','time',106,'Fairview Press',1990,2000,100);

INSERT INTO books (book_id, title, author,category_name,isbn,publisher,published_year,total_copies,available_copies)
VALUES
(7,'The Magic Mountain','Beatrix Potter','himalayan',107,'Del Rey Books',2000,8000,250);
INSERT INTO books (book_id, title, author,category_name,isbn,publisher,published_year,total_copies,available_copies)
VALUES
(8,'Winnie-the-Pooh','J.K. Rowling','love story',108,'Atlantic Books',1999,6000,10);

INSERT INTO books (book_id, title, author,category_name,isbn,publisher,published_year,total_copies,available_copies)
VALUES
(9,'Republic','Vance Packard','peoples',109,'University of Minnesota Press',1990,7000,700);





INSERT INTO members (first_name,last_name,email,contact,adress,join_date)
VALUES 
('Reece','Kling','Cheyenne_Zemlak@hotmail.com',9876543242,'Apt. 685','1946-03-22');

SELECT * FROM members;

INSERT INTO members (first_name,last_name,email,contact,adress,join_date)
VALUES 
('Genevieve','Kunze','Jonathan.Dooley@hotmail.com',9435678543,'''Apt. 574','1981-07-27');

INSERT INTO members (first_name,last_name,email,contact,adress,join_date)
VALUES 
('Demarco','Blick','Hosea_Casper75@gmail.com',8765439887,'Suite 467','1985-12-14');

INSERT INTO members (first_name,last_name,email,contact,adress,join_date)
VALUES 
('Torey','Lehner','Katharina.Becker25@hotmail.com',7654329021,'Suite 458','1969-07-15');

INSERT INTO members (first_name,last_name,email,contact,adress,join_date)
VALUES 
('Leo','Jacobson','Leon_Grant68@gmail.com',9876543054,'Suite 878','1983-05-20');

INSERT INTO members (first_name,last_name,email,contact,adress,join_date)
VALUES 
('Kirk','Johnson','Leopoldo78@gmail.com',7492938492,'Suite 729','1962-04-09');

INSERT INTO members (first_name,last_name,email,contact,adress,join_date)
VALUES 
('Walton','Morissette','Troy_Mosciski@yahoo.com',8897654345,'Suite 935','1992-07-27');

INSERT INTO members (first_name,last_name,email,contact,adress,join_date)
VALUES 

('Lonnie','Mann','Madaline2@hotmail.com',9876543245,'Suite 834','1965-08-17');

INSERT INTO members (first_name,last_name,email,contact,adress,join_date)
VALUES 
('Mallory','Feil','Juston_Cummerata@yahoo.com',7654323443,'Apt. 232','1977-04-18');

INSERT INTO members (first_name,last_name,email,contact,adress,join_date)
VALUES 
('Chaim','Mante','Nikko7@yahoo.com',9765434504,'Suite 191','2002-10-31');
INSERT INTO members (first_name,last_name,email,contact,adress,join_date)
VALUES 
('Christop','Gorczany','Ernesto_Hegmann83@yahoo.com',7654324905,'Suite 940','1985-07-05');

INSERT INTO books (book_id, title, author,category_name,isbn,publisher,published_year,total_copies,available_copies)



DESC issued_members;
desc issued_books;

INSERT INTO issued_books(issued_id,book_id,member_id,issue_date,due_date,return_date)
VALUES
( 11,1,1,'1960-12-22','1962-05-24','1946-05-09');
SELECT * FROM issued_books;


INSERT INTO issued_books(issued_id,book_id,member_id,issue_date,due_date,return_date)
VALUES
(12,2,2,'1996-07-16','1964-12-14','1969-02-21')


INSERT INTO issued_books(issued_id,book_id,member_id,issue_date,due_date,return_date)
VALUES
(13,3,3,'1990-12-29','1996-10-21','1998-12-04');


INSERT INTO issued_books(issued_id,book_id,member_id,issue_date,due_date,return_date)
VALUES
(14,4,4,'1968-03-18','1951-12-08','1993-09-14');


INSERT INTO issued_books(issued_id,book_id,member_id,issue_date,due_date,return_date)
VALUES
(15,5,5,'1975-03-25','1999-03-23','1977-10-28');


INSERT INTO issued_books(issued_id,book_id,member_id,issue_date,due_date,return_date)
VALUES
(16,6,6,'1946-10-25','2008-04-09','1981-06-25');


INSERT INTO issued_books(issued_id,book_id,member_id,issue_date,due_date,return_date)
VALUES
(17,7,7,'1998-01-15','2002-10-08','2004-02-22');


INSERT INTO issued_books(issued_id,book_id,member_id,issue_date,due_date,return_date)
VALUES
(18,8,8,'1989-10-26','2003-08-23','1947-10-07');


INSERT INTO issued_books(issued_id,book_id,member_id,issue_date,due_date,return_date)
VALUES
(19,9,9,'2003-04-08','1996-12-25','1969-01-14');


INSERT INTO issued_books(issued_id,book_id,member_id,issue_date,due_date,return_date)
VALUES
 (10,10,10,'1981-12-12','1991-04-14','1950-02-02');

UPDATE issued_books SET issued_id = 20
WHERE
issued_id = 21;


SHOW TABLES;

SELECT * FROM books
WHERE total_copies BETWEEN 2000 AND 6000;
SELECT * FROM Books



SELECT * FROM books;


ALTER TABLE books
ADD COLUMN price VARCHAR(500);



UPDATE Books SET price = 1100
WHERE Book_id = 10;



SELECT* FROM issued_books

SHOW DATABASES;
USE library_management_system;

SHOW TABLES;


SELECT * FROM members;

SELECT*FROM books 

JOIN issued_books
ON books.Book_id = issued_books.Book_id  
JOIN members
ON members.member_id = issued_books.member_id;




SELECT
author,
COUNT(*)AS total
FROM books 
GROUP BY author;