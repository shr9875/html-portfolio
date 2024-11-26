-- CREATE DATABASE book_shop;
-- USE book_shop;

-- CREATE TABLE books 
-- 	(
-- 		book_id INT NOT NULL AUTO_INCREMENT,
-- 		title VARCHAR(100),
-- 		author_fname VARCHAR(100),
-- 		author_lname VARCHAR(100),
-- 		released_year INT,
-- 		stock_quantity INT,
-- 		pages INT,
-- 		PRIMARY KEY(book_id)
-- 	);

-- INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
-- VALUES
-- ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
-- ('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
-- ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
-- ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
-- ('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
-- ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
-- ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
-- ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
-- ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
-- ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
-- ('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
-- ("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
-- ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
-- ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
-- ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
-- ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

-- SELECT* FROM books;

-- SELECT CONCAT(author_fname," ",author_lname) AS author_name FROM books;

-- SELECT CONCAT_WS('-',title,author_fname,author_lname) AS author_name FROM books;

-- SELECT SUBSTR(title,1,15) FROM books;
-- SELECT SUBSTR(author_lname,1,1) FROM books;
-- SELECT CONCAT(SUBSTR(title,1,10),'.....') AS short_title FROM books;
-- SELECT CONCAT(substr(author_fname,1,1),'.',substr(author_lname,1,1),'.') AS author_initials FROM books;

-- SELECT *FROM books;
-- SELECT REPLACE(title, ' ', '-') FROM books; 
 
 -- SELECT REVERSE(title)  FROM books;
--  SELECT CONCAT(author_fname,REVERSE(author_fname)) FROM books;

-- SELECT char_length(title) FROM books;
-- SELECT author_fname ,char_length(author_fname) AS lenght FROM books;
-- SELECT CONCAT(author_fname, ' is ' , char_length(author_fname)) FROM books;
-- SELECT upper(title) FROM books;
-- SELECT CONCAT('I LOVE', UPPER(title), '!!!') FROM books;
-- SELECT CONCAT(upper(author_fname),REVERSE(author_fname)) FROM books;
-- SELECT CONCAT(upper(author_fname), ' is ' , char_length(author_fname)) FROM books;

-- SELECT INSERT(title,5,0,' Hi ') FROM books; 
-- SELECT LEFT(title,4) FROM books;
-- SELECT REPEAT( title, 3) FROM books;

-- SELECT REPLACE(title, ' ', '->') FROM books; 
 -- SELECT author_lname AS forwards,reverse(author_lname)AS backwards  FROM books;
-- SELECT UPPER(CONCAT(author_fname, '  ' , author_lname)) AS 'full name in caps' FROM books;
-- select * from books;
-- SELECT CONCAT(title, ' was released in ', released_year) FROM books;
-- SELECT title, CHAR_LENGTH(title) AS character_count FROM books;

-- SELECT 
--    CONCAT(SUBSTR(title,1,10), '....') AS short_title,
--    CONCAT(author_lname, ',',author_fname) AS author,
--    CONCAT(stock_quantity, ' in stock') AS quantity 
-- FROM books;

-- INSERT INTO books
--     (title, author_fname, author_lname, released_year, stock_quantity, pages)
--     VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
--            ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
--            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

-- SELECT DISTINCT author_lname FROM books;
-- SELECT DISTINCT author_fname, author_lname FROM books;
-- SELECT DISTINCT CONCAT(author_fname,' ',author_lname) FROM books;

-- SELECT book_id,title,author_lname FROM books;
-- INSERT  INTO books(title, author_lname) Values ('my life', 'steele');
-- SELECT book_id,title,author_lname FROM books;

-- SELECT author_fname,author_lname FROM books ORDER BY author_lname;
-- SELECT author_fname,author_lname FROM books ORDER BY author_lname DESC
-- SELECT author_fname,author_lname FROM books ORDER BY author_fname DESC;
-- SELECT title,pages FROM books ORDER BY pages DESC;
-- select * from books;
 -- SELECT author_fname,author_lname,pages FROM books ORDER BY author_lname,pages;
 -- SELECT CONCAT (author_fname, ' ',author_lname) AS author FROM books ORDER BY author;
 
 
 
--  SELECT book_id,title,released_year FROM books ORDER BY released_year LIMIT 7;
 -- SELECT book_id,title,released_year FROM books ORDER BY released_year LIMIT 2,6;
 
 -- SELECT title,author_fname,author_lname FROM books WHERE author_fname  LIKE '%l%';
 
 -- SELECT title FROM books WHERE title  LIKE '%stories%';
 -- SELECT title,pages FROM books ORDER BY pages DESC LIMIT 1;
-- SELECT  CONCAT (title, '-', released_year) AS summary 
-- FROM (SELECT DISTINCT title,released_year FROM books) AS A ORDER BY released_year DESC LIMIT 3;
 -- SELECT title,author_lname FROM books WHERE author_lname LIKE '%foster%';
 -- SELECT DISTINCT title,released_year,stock_quantity FROM books  ORDER BY stock_quantity LIMIT 1,3;
--  SELECT title, author_lname FROM books ORDER BY author_lname,title;
-- SELECT upper(CONCAT (' my favorite author is' ,' ' ,author_fname,' ', author_lname)) AS yell FROM books ORDER BY author_lname;
-- SELECT COUNT(*) FROM books;
-- SELECT COUNT(author_fname) FROM books;
-- SELECT COUNT(DISTINCT author_fname) FROM books;
-- SELECT COUNT(DISTINCT released_year) FROM books;
-- SELECT COUNT(DISTINCT author_lname) FROM books;
-- SELECT COUNT(*) FROM books WHERE title LIKE '% The%';

-- SELECT author_lname FROM books GROUP BY author_lname;
-- SELECT author_lname,COUNT(*)  FROM books GROUP BY author_lname;
-- SELECT author_lname,COUNT(*) AS books_written FROM books GROUP BY author_lname ORDER BY books_written;

-- SELECT author_lname,COUNT(*) AS books_written FROM books GROUP BY author_lname ORDER BY books_written DESC;
-- SELECT released_year FROM books GROUP BY released_year;
-- SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

-- SELECT MIN(released_year) FROM books;
-- SELECT MAX(pages) FROM books;
-- SELECT title,pages FROM books  WHERE pages = (SELECT MAX(pages) FROM books);
-- SELECT title,released_year FROM books  WHERE released_year = (SELECT Min(released_year) FROM books);


-- SELECT author_fname, author_lname FROM books  ORDER BY  author_lname;

-- SELECT author_lname, author_fname, COUNT(*)
-- FROM books  
-- GROUP BY author_lname, author_fname ;

-- SELECT CONCAT (author_lname, ' ' ,author_fname) AS author, COUNT(*)
-- FROM books  
-- GROUP BY author;


-- SELECT author_lname, author_fname, MIN(released_year)
-- FROM books  
-- GROUP BY author_lname, author_fname;

-- SELECT author_lname, MIN(released_year), MAX(released_year)
-- FROM books  
-- GROUP BY author_lname;

-- SELECT author_lname, COUNT(*) AS books_written, MIN(released_year) AS latest_release, MAX(released_year) AS earliest_release
-- FROM books  
-- GROUP BY author_lname;

-- SELECT author_lname,author_fname, COUNT(*) AS books_written, 
-- MIN(released_year) AS latest_release, MAX(released_year) AS earliest_release
-- FROM books  
-- GROUP BY author_lname,author_fname;

-- SELECT SUM(pages) FROM books;

-- SELECT author_lname,SUM(pages) FROM books GROUP BY author_lname;
 
-- SELECT author_lname,COUNT(*),SUM(released_year) FROM books GROUP BY author_lname;

-- SELECT AVG(pages) FROM books;
-- SELECT AVG(released_year) FROM books;


-- SELECT  COUNT(*) from books;

-- SELECT released_year, COUNT(*) from books GROUP BY released_year;

-- select sum(stock_quantity) from books;

-- SELECT author_fname, author_lname, AVG(released_year) FROM books GROUP BY author_fname, author_lname ;


-- SELECT  CONCAT (author_fname,' ' ,author_lname) AS fullname ,pages
-- FROM books 
-- WHERE pages= (SELECT MAX(pages) FROM books);

--  SELECT  CONCAT (author_fname,' ' ,author_lname) AS fullname, pages
--  FROM books ORDER BY pages DESC LIMIT 1;

-- SELECT released_year AS "year", COUNT(*) AS "#books",AVG(pages) AS "avg pages" 
-- FROM books GROUP BY released_year ORDER BY released_year;

-- SELECT * FROM books WHERE released_year!= 2017;
-- SELECT author_lname,title FRom books WHERE author_lname != 'Gaiman';
-- SELECT title FROM books WHERE title NOT LIKE '% %';
-- SELECT title, author_lname, author_fname FROM books WHERE author_fname NOT LIKE '%da%';
-- SELECT title FROM books WHERE title NOT LIKE '%e%';
-- SELECT title FROM books WHERE title NOT LIKE '%a%';

-- SELECT * FROM books WHERE released_year >2010;
-- SELECT * FROM books WHERE pages >500;
-- SELECT * FROM books WHERE stock_quantity >600;
-- SELECT title,pages FROM books WHERE pages >500;
-- SELECT title,released_year FROM books WHERE released_year <2000;
-- SELECT title,pages FROM books WHERE pages <200;

-- USE book_shop;
-- SELECT * FROM books WHERE author_lname = 'eggers' AND released_year >2010;
-- SELECT * FROM books WHERE author_lname = 'eggers' AND released_year >2010 AND title LIKE '%Novel%';
-- SELECT title ,pages,stock_quantity  FROM books WHERE char_length(title) >30 AND pages >220 AND stock_quantity <100;

-- SELECT title,author_lname, released_year FROM books WHERE author_lname = 'eggers' OR released_year >2010;
-- SELECT title,pages FROM books WHERE pages < 200 OR title LIKE '%stories%';

-- SELECT title,released_year FROM books WHERE released_year >=2004 AND released_year <= 2015;

-- SELECT DISTINCT title,released_year FROM books WHERE released_year BETWEEN 2004 AND 2015 ;

-- SELECT title,author_lname FROM books WHERE author_lname = 'carver' OR  author_lname = 'smith';

-- SELECT title,author_lname FROM books WHERE author_lname IN ('carver','smith','lahiri');

-- SELECT title,author_lname FROM books WHERE author_lname NOT IN  ('carver','smith','lahiri');

 -- SELECT title,released_year FROM books WHERE released_year >=2000 AND released_year %2!=0;

-- SELECT title,released_year, 
--        CASE 
-- 	     WHEN released_year >=2000 THEN 'modern lit'
--          ELSE '20th century lit'
--          END AS genre
-- FROM books;

-- SELECT title, stock_quantity,
-- CASE
-- WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
-- WHEN stock_quantity BETWEEN 50 AND 100 THEN '**'
-- WHEN stock_quantity BETWEEN 100 AND 200 THEN '***'
-- ELSE '****'
-- END AS STOCK
-- FROM books;

-- SELECT title, stock_quantity,
-- CASE
-- WHEN stock_quantity <=50 THEN '*'
-- WHEN stock_quantity <= 100 THEN '**'
-- WHEN stock_quantity <= 200 THEN '***'
-- ELSE '****'
-- END AS STOCK
-- FROM books;

-- SELECT title,released_year FROM books WHERE released_year <1980;
-- SELECT title,author_lname FROM books WHERE author_lname = 'eggers' OR author_lname = 'Chabon';
-- SELECT title,author_lname,released_year FROM books WHERE author_lname = 'lahiri' AND released_year>2000;
-- SELECT title,pages FROM books WHERE pages BETWEEN 100 AND 200;
-- SELECT title, author_lname FROM books WHERE author_lname LIKE 'c%' OR author_lname LIKE 's%'
-- SELECT title,author_lname FROM books WHERE SUBSTR(author_lname,1,1) IN ('C','S') ;

-- SELECT title,author_lname,
-- CASE
-- WHEN title LIKE '%stories%' THEN 'short stories'
-- WHEN title ='just kids' OR  title = 'a heartbreaking work of Staggering Genius' THEN 'memoir'
-- ELSE 'novel'
-- END AS TYPE
-- FROM books;

-- SELECT author_fname,author_lname,
-- CASE
-- WHEN COUNT(*) = 1 THEN '1 books'
-- ELSE  CONCAT (COUNT(*),' ', 'books')
-- END AS COUNT
-- FROM books  
-- WHERE author_fname IS NOT NULL
-- GROUP BY author_fname,author_lname;

 -- CREATE TABLE companies (
--  supplier_id INT AUTO_INCREMENT,
--  name VARCHAR(255) NOT NULL,
-- address VARCHAR(255) NOT NULL,
-- PRIMARY KEY (supplier_id)
--  );

-- ALTER TABLE companies
-- ADD COLUMN phone VARCHAR(15);

-- ALTER TABLE companies
-- ADD COLUMN employee_count INT NOT NULL DEFAULT 1;

-- ALTER TABLE companies
-- DROP COLUMN employee_count;

-- RENAME TABLE companies TO suppliers;
-- select*from suppliers;

-- ALTER TABLE suppliers RENAME TO companies;

-- ALTER TABLE companies
-- RENAME COLUMN name TO company_name;

-- select*from companies;

-- ALTER TABLE companies
-- MODIFY company_name VARCHAR (100) DEFAULT 'unknown';

-- DESC companies

-- ALTER TABLE companies
-- CHANGE company_name company VARCHAR (200);






