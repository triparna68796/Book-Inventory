CREATE DATABASE my_books;
USE my_books;

CREATE TABLE BOOKS (
     book_id INT PRIMARY KEY AUTO_INCREMENT,
     title VARCHAR(500) NOT NULL,
	 author VARCHAR(500),
     genre VARCHAR(200),
     published_year YEAR,
     pages INT,
     status ENUM('read', 'unread', 'reading','forgotten might read it 50000 years later') DEFAULT 'unread',
     last_updated DATE,
     added_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
     my_comments TEXT
);


SELECT * FROM BOOKS;

ALTER TABLE BOOKS
ADD COLUMN language VARCHAR(200);

UPDATE BOOKS
SET author= 'Satyajit Ray'
WHERE book_id=2;

INSERT INTO BOOKS (title,author,genre,published_year,pages,status, last_updated,my_comments)
VALUES ('Beyond Good and Evil', 'Friedrich Nietzsche','philosphy',2019,200,'reading','2025-05-06','really hard translation, 
pretty hard to understand, should have picked a copy with easier translation !');

INSERT INTO BOOKS (title,author,genre,language,published_year,pages,status,my_comments)
values ('Feluda Samagra', 'Friedrich Nietzsche','detective','bengali',2014,449,'read','one of my fav books and always will be!');

INSERT INTO BOOKS (title,author,genre,language,published_year,pages,status,my_comments)
values ('The Silent Patient', 'Alex Michaelides','psycho thriller','english',2019,341,'reading',
'I feel guilty for reading at such a slow pace but definitely good, will definately complete it in 2025'),
('Bangalir Sanskriti', 'Dr. Suniti Kumar Chattopadhyay','Beng Cultural Studies','bengali',2023,102,'reading',
'interesting, it has so many unique infos about our bengali culture, glad I bought this book in book fair 2024'),
('Priyo 25', 'Alokranjan Dasgupta','poetry','bengali',2015,40,'unread','will start soon')
;





INSERT INTO BOOKS (title,author,genre,language,published_year,pages,status,my_comments)
values ('When breath becomes air', 'Paul Kalanithi','non-fic autobio','english',2016,228,'unread',
'will start soon'),
('Candide', 'Voltaire','Philo satire','french',2017,127,'reading',
'humbles me everytime cause why my french is so bad but yes, the story is unique and feels like shakespeare some times !'),
('Circe', 'Madeline Miller','mythic fantasy','english',2019,336,'unread','will start soon')
;
