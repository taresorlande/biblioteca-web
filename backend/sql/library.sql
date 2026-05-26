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

-- INSERT INTO authors (
--     name
-- ) VALUES (
--     ?
-- );

-- INSERT INTO books (
--     isbn,
--     title,
--     author,
--     year,
--     pages
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