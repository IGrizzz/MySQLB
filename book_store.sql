SHOW DATABASES;

CREATE DATABASE bookstore;

SHOW TABLE bookstore;

USE bookstore;

SHOW TABLES;

CREATE TABLE books(
    id INT AUTO_INCREMENT PRIMARY KEY,
    author1 VARCHAR(100) NOT NULL,
    author2 VARCHAR(100),
    author3 VARCHAR(1000,
    title VARCHAR(100),
    description VARCHAR,
    place_sell CHAR(3),
    stock int DEFAULT 0,
    creation_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    ;)
    
    ALTER TABLES books ADD price INT DEFAULT 0
    ALTER TABLES books ADD status ENUM 'available' 'out of stock' 'limited'
    ALTER TABLES books DROP place_sell;
    
    INSERT INTO books ( author1, author2, author3, title, description, status, price, stock)
    VALUES ('Udin', 'Butet', 'Pipik', 'Dragon-Slayer', 'A Clanky Party that Slays the Wormy', 'Available', 9999, 10),
      		('Fulan', 'Fulana', 'Gulup', 'Ada Apa dengan Isekai?', 'Perjalanan Gulup Ke Isekai', 'Limited', 10, 999),
    		('Blecki', 'Snowy', 'reini', 'Magic Pet', 'Gave us Treats, We Clear your Threats', 'out of stock', 5999,0);
    
    SELECT * FROM books;
    SELECT id AS ID,author1 AS A1,author2 AS A2,author3 AS A3;
    SELECT * FROM books WHERE id = 2;
    SELECT * FROM books WHERE stock > 2 AND price > 1000;
    SELECT * FROM books WHERE price > 1000 OR price < 20000;
    SELECT * FROM books WHERE NOT id = 0;
    SELECT * FROM books ORDER BY id ASC;
    SELECT * FROM books LIMIT 2;
    UPDATE books SET author1 = 'BUTET' price = 5500 WHERE id = 4;
    DELETE FROM books books WHERE id = 3;
 
    
    
    
    
    
    
    
    