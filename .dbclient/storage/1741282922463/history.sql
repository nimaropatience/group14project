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
/* 2025-03-18 22:17:35 [32 ms] */ 
CREATE DATABASE market;
/* 2025-03-18 22:17:37 [8 ms] */ 
SHOW DATABASES;
/* 2025-03-18 22:19:17 [6 ms] */ 
USE market;
/* 2025-03-19 06:13:00 [82 ms] */ 
CREATE TABLE item(
    prdtID int(20) primary key,
    fname VARCHAR(20),
    price int(30),
    stockQty int(40)


);
/* 2025-03-19 06:13:27 [62 ms] */ 
desc item;
/* 2025-03-19 06:13:48 [9 ms] */ 
SELECT * FROM item LIMIT 100;
/* 2025-03-19 06:27:23 [8 ms] */ 
USE market;
/* 2025-03-19 06:29:37 [21 ms] */ 
INSERT INTO item(prdtID,fname,price,stockQty)
VALUES( 1,'salt',2000,10);
/* 2025-03-19 06:29:41 [5 ms] */ 
SELECT * FROM item LIMIT 100;
/* 2025-03-19 06:34:46 [5 ms] */ 
USE market;
/* 2025-03-19 06:34:48 [6 ms] */ 
SELECT * FROM item LIMIT 100;
/* 2025-03-19 06:35:28 [19 ms] */ 
INSERT INTO item(prdtID,fname,price,stockQty)
VALUES( 2,'sugar',3000,20);
/* 2025-03-19 06:35:29 [20 ms] */ 
INSERT INTO item(prdtID,fname,price,stockQty)
VALUES( 3,'juice',5000,5);
/* 2025-03-19 06:35:31 [6 ms] */ 
SELECT * FROM item LIMIT 100;
/* 2025-03-19 07:08:49 [2 ms] */ 
USE market;
/* 2025-03-19 09:13:56 [15 ms] */ 
CREATE DATABASE Home;
/* 2025-03-19 09:13:58 [6 ms] */ 
SHOW DATABASES;
/* 2025-03-19 09:13:59 [7 ms] */ 
USE Home;
/* 2025-03-19 09:16:28 [91 ms] */ 
CREATE  TABLE Customer(
custID int(20) primary key,
custName varchar(20),
Location VARCHAR(20)
);
/* 2025-03-19 09:27:38 [5 ms] */ 
USE Home;
/* 2025-03-19 09:27:44 [57 ms] */ 
CREATE TABLE Product(
    productID int(20) primary key,
    productname varchar(20),
    price VARCHAR(20)
);
/* 2025-03-19 09:28:38 [9 ms] */ 
SELECT * FROM Product LIMIT 100;
/* 2025-03-19 09:28:41 [21 ms] */ 
INSERT INTO  Product(productID,productName,price)VALUES(101,'Laptop',2500);
/* 2025-03-19 09:28:43 [7 ms] */ 
INSERT INTO  Product(productID,productName,price)VALUES(102,'Phone',800.5);
/* 2025-03-19 09:28:43 [10 ms] */ 
iNSERT INTO  Product(productID,productName,price)VALUES(103,'Tablet',1200);
/* 2025-03-19 09:28:45 [8 ms] */ 
SELECT * FROM Product LIMIT 100;
/* 2025-03-19 09:30:33 [40 ms] */ 
desc Product;
/* 2025-03-19 09:40:46 [2 ms] */ 
USE Home;
/* 2025-03-19 09:55:19 [47 ms] */ 
desc Customer;
/* 2025-03-19 09:57:00 [71 ms] */ 
CREATE TABLE Orders(
    orderID int(20) primary key,
    custID int(20),
    productID int(20),
    OrderDate VARCHAR(20),
    FOREIGN KEY (custID) REFERENCES Customer(custID),
    FOREIGN KEY (productID) REFERENCES Product(productID)
);
/* 2025-03-19 09:57:07 [6 ms] */ 
SELECT * FROM Orders LIMIT 100;
/* 2025-03-19 09:58:12 [58 ms] */ 
CREATE TABLE Order1(
    orderID int(20) primary key,
    custID int(20),
    productID int(20),
    OrderDate VARCHAR(20),
    FOREIGN KEY (custID) REFERENCES Customer(custID),
    FOREIGN KEY (productID) REFERENCES Product(productID)
);
/* 2025-03-19 09:58:36 [34 ms] */ 
desc Order1;
/* 2025-03-19 09:59:24 [4 ms] */ 
SELECT * FROM Order1 LIMIT 100;
/* 2025-03-20 12:55:39 [3 ms] */ 
USE market;
/* 2025-03-20 12:55:44 [66 ms] */ 
CREATE TABLE customer1(
    custID int(30) primary key,
    fname VARCHAR (25),
    lname VARCHAR (25),
    email VARCHAR (30),
    phonenumber VARCHAR (20),
    prdtID int,
    FOREIGN KEY (prdtID) REFERENCES item(prdtID)
);
/* 2025-03-20 12:56:05 [4 ms] */ 
SHOW DATABASES;
/* 2025-03-20 12:56:07 [4 ms] */ 
USE market;
/* 2025-03-20 12:56:12 [4 ms] */ 
SELECT * FROM customer1 LIMIT 100;
/* 2025-03-20 12:57:08 [49 ms] */ 
desc customer1;
/* 2025-03-20 12:58:01 [4 ms] */ 
SELECT * FROM customer1 LIMIT 100;
/* 2025-03-20 12:59:00 [3 ms] */ 
SELECT*FROM customer1;
/* 2025-03-20 12:59:53 [18 ms] */ 
SELECT * FROM item LIMIT 100;
/* 2025-03-20 13:00:06 [43 ms] */ 
desc item;
/* 2025-03-20 14:31:40 [20 ms] */ 
CREATE DATABASE shop;
/* 2025-03-20 14:31:41 [4 ms] */ 
USE shop;
/* 2025-03-20 14:31:42 [41 ms] */ 
CREATE TABLE product(
    pdtID INT PRIMARY KEY,
    productname VARCHAR(20),
    price INT,
    stockQty INT
);
/* 2025-03-20 14:32:34 [8 ms] */ 
CREATE DATABASE skincare;
/* 2025-03-20 14:32:46 [5 ms] */ 
use skincare;
/* 2025-03-20 14:33:00 [6 ms] */ 
show DATABASEs;
/* 2025-03-20 14:44:53 [6 ms] */ 
use skincare;
/* 2025-03-20 14:44:58 [7 ms] */ 
show DATABASEs;
/* 2025-03-20 15:04:01 [9 ms] */ 
use skincare;
/* 2025-03-20 15:04:07 [38 ms] */ 
CREATE TABLE Patient(
    PatientID INT PRIMARY KEY,
    Patientname VARCHAR(30),
    DateOfBirth DATE,
    Patientnumber INT(20),
    Email VARCHAR(40),
    Address VARCHAR(100),
    MedicalHistory TEXT,
    BillingID INT
);
/* 2025-03-20 15:04:09 [7 ms] */ 
SELECT * FROM Patient LIMIT 100;
/* 2025-03-20 15:12:13 [5 ms] */ 
use skincare;
/* 2025-03-20 15:12:19 [46 ms] */ 
CREATE TABLE Billing (
    BillingID INT AUTO_INCREMENT PRIMARY KEY,
    TotalAmount DECIMAL(20) ,
    PaymentStatus ENUM('Pending', 'Paid', 'Cancelled'),
    PaymentDate DATE,
    PaymentMethod VARCHAR(50)
);
/* 2025-03-20 15:12:20 [6 ms] */ 
SELECT * FROM Billing LIMIT 100;
/* 2025-03-20 15:47:35 [5 ms] */ 
use skincare;
/* 2025-03-20 15:47:44 [36 ms] */ 
CREATE TABLE Staff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Staffname VARCHAR(30),
    Speciality VARCHAR(30),
    PhoneNumber VARCHAR(10),
    Email VARCHAR(25),
    Experience VARCHAR(30),
    Availability BOOLEAN DEFAULT TRUE,
    Feedback TEXT,
    RoutinePeriod VARCHAR(50)
);
/* 2025-03-20 15:47:45 [5 ms] */ 
SELECT * FROM Staff LIMIT 100;
