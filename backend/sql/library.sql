-- Active: 1778540266056@@127.0.0.1@3306@mysql
DROP DATABASE if EXISTS library;

CREATE DATABASE IF NOT EXISTS library;

USE library;

CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    isbn VARCHAR(16) UNIQUE NOT NULL,
    title VARCHAR(250) NOT NULL,
    author VARCHAR(250) NOT NULL,
    year CHAR(4),
    pages INT
);

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