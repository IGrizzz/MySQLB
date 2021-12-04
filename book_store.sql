-- Show Database --
SHOW DATABASES;

-- Create Database --
CREATE DATABASE bookstore;

-- Using Database --
USE bookstore;

-- Show Tables --
SHOW Tables;

-- Create Table --
CREATE TABLE books
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    author1 VARCHAR(100) NOT NULL,
    author2 VARCHAR(100),
    author3 VARCHAR(100),
    title VARCHAR(100),
    description TEXT,
    place_sell CHAR(3),
    stock INT DEFAULT(0),
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Add New Column --
ALTER TABLE books
ADD price INT DEFAULT(0),
    status ENUM('available', 'out of stock', 'limited');

-- Delete Column --
ALTER TABLE books
DROP COLUMN place_sell;

-- Insert Data --
INSERT INTO books (author1, author2, author3, title, description, stock, price, status)
    VALUES 
    (
        'Madun', 'Bapaknya Madun', 'Musuhnya Madun', 'Tendangan Si Madun', 'Tendangan Madun Season Pertama',
        10, 90000, 'limited'
    ), 
    (
        'Harry Puter', 'Bapak Heri', 'Temen Bapak Heri', 'Jeli Puter', 'Jeli-jelian',
        20, 100000, 'limited'
    ),
    (
        'Joko', 'Asep', 'Ujang', '3 Sekawan', 'kawan tapi sekarang musuhan',
        50, 90000, 'limited'
    );

-- Select All Books --
SELECT * from books;

-- Select Alias on table books --
SELECT id AS ID, author1 AS A1, author2 AS A2, author3 AS A3 from books;

-- Select with Where -- 
SELECT * FROM books WHERE id = 1;

-- Select with Where combined AND --
SELECT * FROM books WHERE stock < 20 AND price < 100000;

-- Select with Where combined OR --
SELECT * FROM books WHERE id = 1 OR id = 2;

-- Select with Where combined NOT --
SELECT * FROM books WHERE NOT id = 1;

-- Select ASC --
SELECT * FROM books ORDER BY id ASC;

-- Select LIMIT 2 --
SELECT * FROM books LIMIT 2;

-- Select Update --
UPDATE books
SET author1 = 'KOKO' price = 20000
WHERE id = 2;

-- Delete Row -- 
DELETE FROM books
WHERE id = 3;








