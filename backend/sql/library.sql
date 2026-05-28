-- Active: 1778540266056@@127.0.0.1@3306@mysql
DROP DATABASE if EXISTS library;

CREATE DATABASE IF NOT EXISTS library;

USE library;

CREATE TABLE authors (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(250) UNIQUE NOT NULL
);

CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    isbn VARCHAR(16) UNIQUE NOT NULL,
    title VARCHAR(250) NOT NULL,
    author INT NOT NULL,
    year CHAR(4),
    pages INT,

    FOREIGN KEY (author) REFERENCES authors(id)
);

DELETE FROM books
WHERE id = 11198;

-- INSERT INTO authors (
--     name
-- ) VALUES (
--     ?
-- );

-- INSERT INTO books (
    -- isbn,
    -- title,
    -- author,
    -- year,
    -- pages
-- ) VALUES (
--     ?,
--     ?,
--     ?,
--     ?,
--     ?
-- );

-- SELECT 
--     id,
--     name
-- FROM
--     authors
-- WHERE
--     name = 'albert';

-- SELECT
--     books.id,
--     isbn,
--     title,
--     author,
--     name,
--     year,
--     pages
-- FROM
--     books
-- JOIN 
--     authors
-- ON
--     books.author = authors.id
-- LIMIT
--     20;