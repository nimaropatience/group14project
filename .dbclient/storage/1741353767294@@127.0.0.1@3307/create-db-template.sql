-- Step 1: Create the database
CREATE DATABASE chapters
DEFAULT CHARACTER SET utf8mb4;

-- Step 2: Use the database
USE chapters;

-- Step 3: Create the table
CREATE TABLE chapter_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
     title VARCHAR(100),
    author VARCHAR(100),
    pages INT,
    published_date DATE
);

-- Step 4: Insert sample data
INSERT INTO chapter_details (title, author, pages, published_date)
VALUES
('Introduction to Databases', 'John Doe', 25, '2023-01-15'),
('Relational Models', 'Jane Smith', 30, '2023-02-10'),
('SQL Basics', 'Michael Brown', 28, '2023-03-05'),
('Advanced Queries', 'Emily Davis', 32, '2023-04-01'),
('Database Security', 'Chris Wilson', 27, '2023-05-20');
;