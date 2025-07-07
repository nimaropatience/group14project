/* 2025-03-06 20:43:19 [9 ms] */ 
USE csechapters;
/* 2025-03-06 20:43:21 [87 ms] */ 
CREATE TABLE users (
       id INT AUTO_INCREMENT PRIMARY KEY,
       name VARCHAR(100) NOT NULL,
       email VARCHAR(100) UNIQUE NOT NULL,
       password VARCHAR(255) NOT NULL,
       role ENUM('student', 'president', 'admin') NOT NULL
   );
/* 2025-03-06 20:43:33 [22 ms] */ 
SELECT * FROM users LIMIT 100;
