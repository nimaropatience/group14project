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
/* 2025-03-12 09:07:28 [11 ms] */ 
SHOW DATABASES;
/* 2025-03-12 09:07:30 [71 ms] */ 
CREATE DATABASE shop;
/* 2025-03-12 09:10:22 [8 ms] */ 
USE shop;
/* 2025-03-12 09:14:59 [5 ms] */ 
SHOW DATABASES;
/* 2025-03-12 09:27:11 [17 ms] */ 
USE shop;
/* 2025-03-12 09:27:23 [136 ms] */ 
CREATE TABLE product2(
    pdtID int primary key,
    productname varchar(20),
    price int(20),
    stockQty varchar(20)
);
/* 2025-03-12 09:27:50 [75 ms] */ 
CREATE TABLE products(
    pdtID int primary key,
    productname varchar(20),
    price int(20),
    stockQty varchar(20)
);
/* 2025-03-12 09:27:55 [23 ms] */ 
desc products;
/* 2025-03-12 09:28:20 [76 ms] */ 
CREATE TABLE product1(
    pdtID int primary key,
    productname varchar(20),
    price int(20),
    stockQty varchar(20)
);
/* 2025-03-12 09:28:25 [9 ms] */ 
desc product1;
/* 2025-03-12 09:28:59 [7 ms] */ 
USE shop;
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
/* 2025-03-20 12:47:37 [59 ms] */ 
CREATE DATABASE market;
/* 2025-03-20 12:47:38 [8 ms] */ 
SHOW DATABASES;
/* 2025-03-20 12:47:39 [5 ms] */ 
USE market;
/* 2025-03-20 12:47:40 [113 ms] */ 
CREATE TABLE item(
    prdtID int(20) primary key,
    fname VARCHAR(20),
    price int(30),
    stockQty int(40)


);
/* 2025-03-20 12:48:40 [122 ms] */ 
CREATE TABLE customer(
    custID int(30) primary key,
    fname VARCHAR (25),
    lname VARCHAR (25),
    email VARCHAR (30),
    phonenumber VARCHAR (20),
    prdtID int,
    FOREIGN KEY (prdtID) REFERENCES item(prdtID)
);
/* 2025-03-20 12:49:37 [3 ms] */ 
USE market;
/* 2025-03-20 12:50:21 [5 ms] */ 
SHOW DATABASES;
/* 2025-03-20 12:50:39 [114 ms] */ 
CREATE TABLE customer1(
    custID int(30) primary key,
    fname VARCHAR (25),
    lname VARCHAR (25),
    email VARCHAR (30),
    phonenumber VARCHAR (20),
    prdtID int,
    FOREIGN KEY (prdtID) REFERENCES item(prdtID)
);
/* 2025-03-20 12:50:50 [26 ms] */ 
desc customer1;
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
/* 2025-03-23 14:25:21 [36 ms] */ 
CREATE DATABASE my_database;
/* 2025-03-23 14:26:56 [4 ms] */ 
use my_database;
/* 2025-03-23 14:33:34 [124 ms] */ 
CREATE table users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40),
    email VARCHAR(40) UNIQUE,
    age INT
);
/* 2025-03-23 14:38:34 [43 ms] */ 
INSERT INTO users (name, email, age) VALUES ('John Doe', 'john@example.com', 30);
/* 2025-03-23 14:38:35 [42 ms] */ 
INSERT INTO users (name, email, age) VALUES ('Jane Doe', 'jane@example.com',20);
/* 2025-03-23 14:38:36 [39 ms] */ 
INSERT INTO users (name, email, age) VALUES ('Bob Smith', 'bob@example.com',19);
/* 2025-03-23 14:39:48 [19 ms] */ 
SELECT * FROM users WHERE age > 20 LIMIT 100;
/* 2025-03-23 14:49:16 [3 ms] */ 
use my_database;
/* 2025-03-23 14:49:18 [20 ms] */ 
SELECT * FROM users WHERE name LIKE 'J%' LIMIT 100;
/* 2025-03-25 09:43:39 [31 ms] */ 
CREATE DATABASE NIMAROS24B38_029
    DEFAULT CHARACTER SET = 'utf8mb4';
/* 2025-03-25 09:49:23 [79 ms] */ 
DROP DATABASE IF EXISTS NIMAROS24B38_029;
/* 2025-03-25 09:49:25 [33 ms] */ 
CREATE DATABASE NIMAROS24B38_029;
/* 2025-03-25 09:51:37 [2 ms] */ 
use NIMAROS24B38_029;
/* 2025-03-25 10:02:29 [78 ms] */ 
CREATE TABLE Patient
(
    PatientID INT(20) PRIMARY KEY,
    PatientName VARCHAR(30),
    Age INT,
    Gender VARCHAR(10),
    Contact VARCHAR(10)

);
/* 2025-03-25 10:04:49 [4 ms] */ 
use NIMAROS24B38_029;
/* 2025-03-25 10:05:20 [59 ms] */ 
CREATE TABLE Doctor(
    DoctorID INT(20) PRIMARY KEY,
    DoctorName VARCHAR(30),
    Specialization VARCHAR(50),
    Contact VARCHAR(10)

);
/* 2025-03-25 10:05:39 [72 ms] */ 
DROP DATABASE IF EXISTS NIMAROS24B38_029;
/* 2025-03-25 10:05:55 [26 ms] */ 
CREATE DATABASE NIMAROS24B38_029;
/* 2025-03-25 10:06:00 [24 ms] */ 
DROP DATABASE IF EXISTS NIMAROS24B38_029;
/* 2025-03-25 10:07:10 [48 ms] */ 
CREATE DATABASE NIMAROS24B38_029
    DEFAULT CHARACTER SET = 'utf8mb4';
/* 2025-03-25 10:07:12 [4 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 10:08:23 [63 ms] */ 
CREATE TABLE Doctor(
    DoctorID INT(20) PRIMARY KEY,
    DoctorName VARCHAR(30),
    Specialization VARCHAR(50),
    Contact VARCHAR(20)
);
/* 2025-03-25 10:08:25 [65 ms] */ 
CREATE TABLE Patient
(
    PatientID INT(20) PRIMARY KEY,
    PatientName VARCHAR(30),
    Age INT,
    Gender VARCHAR(10),
    Contact VARCHAR(20)
);
/* 2025-03-25 10:22:12 [3 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 10:22:14 [110 ms] */ 
CREATE TABLE Appointment(
    AppointmentID INT(20) PRIMARY KEY,
    PatientID INT(20) ,
    DoctorID INT(20) ,
    Date DATE,
    Time TIME, 
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
/* 2025-03-25 10:28:18 [3 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 10:28:22 [125 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 11:30:11 [4 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 11:34:23 [122 ms] */ 
DROP DATABASE IF EXISTS NIMAROS24B38_029;
/* 2025-03-25 11:34:25 [20 ms] */ 
CREATE DATABASE NIMAROS24B38_029
    DEFAULT CHARACTER SET = 'utf8mb4';
/* 2025-03-25 11:34:29 [3 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 11:34:31 [43 ms] */ 
CREATE TABLE Patient(
    PatientID INT(20) PRIMARY KEY,
    PatientName VARCHAR(30),
    Age INT,
    Gender VARCHAR(10),
    Contact VARCHAR(20)
);
/* 2025-03-25 11:34:37 [49 ms] */ 
CREATE TABLE Doctor(
    DoctorID INT(20) PRIMARY KEY,
    DoctorName VARCHAR(30),
    Specialization VARCHAR(50),
    Contact VARCHAR(20)
);
/* 2025-03-25 11:34:38 [84 ms] */ 
CREATE TABLE Appointment(
    AppointmentID INT(20) PRIMARY KEY,
    PatientID INT(20) ,
    DoctorID INT(20) ,
    Date DATE,
    Time TIME, 
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
/* 2025-03-25 11:34:43 [71 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 11:40:02 [3 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 11:40:23 [112 ms] */ 
DROP DATABASE IF EXISTS NIMAROS24B38_029;
/* 2025-03-25 11:40:27 [26 ms] */ 
CREATE DATABASE NIMAROS24B38_029;
/* 2025-03-25 11:40:34 [3 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 11:40:48 [87 ms] */ 
CREATE TABLE Patient(
    PatientID VARCHAR(20) PRIMARY KEY,
    PatientName VARCHAR(30),
    Age INT,
    Gender VARCHAR(10),
    Contact VARCHAR(20)
);
/* 2025-03-25 11:40:55 [61 ms] */ 
CREATE TABLE Doctor(
    DoctorID INT(20) PRIMARY KEY,
    DoctorName VARCHAR(30),
    Specialization VARCHAR(50),
    Contact VARCHAR(20)
);
/* 2025-03-25 11:41:38 [115 ms] */ 
CREATE TABLE Appointment(
    AppointmentID INT(20) PRIMARY KEY,
    PatientID VARCHAR(20) ,
    DoctorID INT(20) ,
    Date DATE,
    Time TIME, 
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
/* 2025-03-25 11:41:45 [91 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 11:41:52 [20 ms] */ 
INSERT INTO  Patient(PatientID,PatientName,Age,Gender,Contact)
VALUES('P001', 'John Kintu',35,'Male','0700111111'),
      ('P002', 'Sarah Nambi',28,'Female' ,'0700222222'),
      ('P003','Paul Okello',42, 'Male','0700333333');
/* 2025-03-25 11:42:14 [5 ms] */ 
SELECT * FROM Patient LIMIT 100;
/* 2025-03-25 11:45:12 [73 ms] */ 
CREATE TABLE Pharmacist(
    PharmacistID INT(20) PRIMARY KEY,
    PharmacistName VARCHAR(30),
    Qualification VARCHAR(50),
    ContactNumber VARCHAR(20)
);
/* 2025-03-25 11:51:29 [5 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 11:51:32 [16 ms] */ 
INSERT INTO Pharmacist(PharmacistID ,PharmacistName,Qualification, ContactNumber)
VALUES(102,'Diana Musoke','BPharm', '0701222222'),
(103,'Samuel Opio','DPharm', '0701333333');
/* 2025-03-25 11:51:57 [5 ms] */ 
SELECT * FROM Pharmacist LIMIT 100;
/* 2025-03-25 12:16:56 [3 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 12:17:25 [48 ms] */ 
CREATE TABLE Medicine(
    MedicineID INT(20) PRIMARY KEY,
    MedicineName VARCHAR(30),
    Type VARCHAR(50),
    Price_Per_Unit DECIMAL(10,2),
    Stock_Quantity INT
);
/* 2025-03-25 12:17:27 [13 ms] */ 
INSERT INTO Medicine(MedicineID ,MedicineName,Type,Price_Per_Unit,Stock_Quantity)
VALUES(201,'Paracetamol','Painkiller','5000.00', '100'),
(202,'Amoxicillin','Antibiotic','8000.50', '50'),
(203,'Ibuprofen','Painkiller','7000.25', '75');
/* 2025-03-25 12:17:29 [6 ms] */ 
SELECT * FROM Medicine LIMIT 100;
/* 2025-03-25 12:22:23 [2 ms] */ 
SELECT * FROM Pharmacist LIMIT 100;
/* 2025-03-25 12:22:57 [3 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 12:26:11 [151 ms] */ 
DROP DATABASE IF EXISTS NIMAROS24B38_029;
/* 2025-03-25 12:26:23 [24 ms] */ 
CREATE DATABASE NIMAROS24B38_029;
/* 2025-03-25 12:26:28 [3 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 12:26:33 [57 ms] */ 
CREATE TABLE Patient(
    PatientID VARCHAR(20) PRIMARY KEY,
    PatientName VARCHAR(30),
    Age INT,
    Gender VARCHAR(10),
    Contact VARCHAR(20)
);
/* 2025-03-25 12:26:43 [65 ms] */ 
CREATE TABLE Doctor(
    DoctorID INT(20) PRIMARY KEY,
    DoctorName VARCHAR(30),
    Specialization VARCHAR(50),
    Contact VARCHAR(20)
);
/* 2025-03-25 12:26:51 [112 ms] */ 
CREATE TABLE Appointment(
    AppointmentID INT(20) PRIMARY KEY,
    PatientID VARCHAR(20) ,
    DoctorID INT(20) ,
    Date DATE,
    Time TIME, 
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
/* 2025-03-25 12:27:09 [89 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 12:27:14 [24 ms] */ 
INSERT INTO  Patient(PatientID,PatientName,Age,Gender,Contact)
VALUES('P001', 'John Kintu',35,'Male','0700111111'),
      ('P002', 'Sarah Nambi',28,'Female' ,'0700222222'),
      ('P003','Paul Okello',42, 'Male','0700333333');
/* 2025-03-25 14:56:43 [5 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 15:04:23 [75 ms] */ 
DROP TABLE IF  EXISTS Prescription;
/* 2025-03-25 15:06:21 [85 ms] */ 
DROP DATABASE IF EXISTS NIMAROS24B38_029;
/* 2025-03-25 15:06:22 [25 ms] */ 
CREATE DATABASE NIMAROS24B38_029
    DEFAULT CHARACTER SET = 'utf8mb4';
/* 2025-03-25 15:06:24 [6 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 15:06:25 [27 ms] */ 
DROP TABLE IF EXISTS Patient;
/* 2025-03-25 15:06:27 [70 ms] */ 
CREATE TABLE Patient(
    PatientID VARCHAR(20) PRIMARY KEY,
    PatientName VARCHAR(30),
    Age INT,
    Gender VARCHAR(10),
    Contact VARCHAR(20)
);
/* 2025-03-25 15:06:29 [60 ms] */ 
CREATE TABLE Doctor(
    DoctorID INT(20) PRIMARY KEY,
    DoctorName VARCHAR(30),
    Specialization VARCHAR(50),
    Contact VARCHAR(20)
);
/* 2025-03-25 15:06:44 [22 ms] */ 
DROP TABLE IF EXISTS Appointment;
/* 2025-03-25 15:06:45 [126 ms] */ 
CREATE TABLE Appointment(
    AppointmentID INT(20) PRIMARY KEY,
    PatientID VARCHAR(20) ,
    DoctorID INT(20) ,
    Date DATE,
    Time TIME, 
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
/* 2025-03-25 15:07:14 [117 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 15:07:33 [29 ms] */ 
INSERT INTO  Patient(PatientID,PatientName,Age,Gender,Contact)
VALUES('P001', 'John Kintu',35,'Male','0700111111'),
      ('P002', 'Sarah Nambi',28,'Female' ,'0700222222'),
      ('P003','Paul Okello',42, 'Male','0700333333');
/* 2025-03-25 15:07:36 [5 ms] */ 
SELECT * FROM Patient LIMIT 100;
/* 2025-03-25 15:10:29 [91 ms] */ 
ALTER TABLE Patient CHANGE Contact Contact_Number VARCHAR(20);
/* 2025-03-25 15:10:45 [8 ms] */ 
SELECT * FROM Patient LIMIT 100;
/* 2025-03-25 15:11:08 [85 ms] */ 
CREATE TABLE Pharmacist(
    PharmacistID INT(20) PRIMARY KEY,
    PharmacistName VARCHAR(30),
    Qualification VARCHAR(50),
    ContactNumber VARCHAR(20)
);
/* 2025-03-25 15:11:10 [30 ms] */ 
INSERT INTO Pharmacist(PharmacistID ,PharmacistName,Qualification, ContactNumber)
VALUES(101,'Alex Bukenya','BPharm','0701111111'),
    (102,'Diana Musoke','BPharm', '0701222222'),
    (103,'Samuel Opio','DPharm', '0701333333');
/* 2025-03-25 15:11:13 [4 ms] */ 
SELECT * FROM Pharmacist LIMIT 100;
/* 2025-03-25 15:25:08 [4 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 15:29:51 [52 ms] */ 
DROP TABLE IF EXISTS Pharmacist;
/* 2025-03-25 15:29:53 [65 ms] */ 
CREATE TABLE Pharmacist(
    PharmacistID INT(20) PRIMARY KEY,
    PharmacistName VARCHAR(30),
    Qualification VARCHAR(50),
    ContactNumber VARCHAR(20)
);
/* 2025-03-25 15:29:54 [32 ms] */ 
INSERT INTO Pharmacist(PharmacistID ,PharmacistName,Qualification, ContactNumber) VALUES(101,'Alex Bukenya','BPharm','0701111111'),
    (102,'Diana Musoke','BPharm', '0701222222'),
    (103,'Samuel Opio','DPharm', '0701333333');
/* 2025-03-25 15:29:57 [5 ms] */ 
SELECT * FROM Pharmacist LIMIT 100;
/* 2025-03-25 15:30:04 [68 ms] */ 
CREATE TABLE Medicine(
    MedicineID INT(20) PRIMARY KEY,
    MedicineName VARCHAR(30),
    Type VARCHAR(50),
    Price_Per_Unit DECIMAL(10,2),
    Stock_Quantity INT
);
/* 2025-03-25 15:30:07 [26 ms] */ 
INSERT INTO Medicine(MedicineID ,MedicineName,Type,Price_Per_Unit,Stock_Quantity)
VALUES(201,'Paracetamol','Painkiller','5000.00', '100'),
(202,'Amoxicillin','Antibiotic','8000.50', '50'),
(203,'Ibuprofen','Painkiller','7000.25', '75');
/* 2025-03-25 15:30:09 [9 ms] */ 
SELECT * FROM Medicine LIMIT 100;
/* 2025-03-25 15:30:35 [4 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 15:31:36 [54 ms] */ 
DROP TABLE IF  EXISTS Prescription;
/* 2025-03-25 15:45:38 [4 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 15:45:51 [32 ms] */ 
DROP TABLE IF  EXISTS Prescription;
/* 2025-03-25 15:46:05 [138 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 15:46:16 [15 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 15:46:24 [62 ms] */ 
DROP TABLE IF  EXISTS Prescription;
/* 2025-03-25 16:05:42 [13 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 16:06:05 [167 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 16:06:33 [4 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 16:07:06 [59 ms] */ 
DROP TABLE IF  EXISTS Prescription;
/* 2025-03-25 16:07:07 [81 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 16:07:11 [58 ms] */ 
DROP TABLE IF  EXISTS Prescription;
/* 2025-03-25 16:07:13 [89 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 16:09:42 [63 ms] */ 
ALTER TABLE Prescription DROP FOREIGN KEY Prescription_ibfk_1;
/* 2025-03-25 16:09:52 [164 ms] */ 
ALTER TABLE Prescription CHANGE AppointmentID PatientID VARCHAR(20);
/* 2025-03-25 16:14:30 [170 ms] */ 
ALTER TABLE Prescription CHANGE Medicine  Pharmacist_ID INT(20);
/* 2025-03-25 16:19:50 [189 ms] */ 
ALTER TABLE Prescription CHANGE Dosage Medicine_ID INT(20);
/* 2025-03-25 16:24:51 [182 ms] */ 
ALTER TABLE Prescription ADD Dosage DECIMAL(10,2),ADD DURATION INT;
/* 2025-03-25 16:32:47 [5 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 16:32:56 [160 ms] */ 
ALTER TABLE Prescription ADD FOREIGN KEY (PatientID) REFERENCES Patient(PatientID);
/* 2025-03-25 16:36:26 [196 ms] */ 
ALTER TABLE Prescription ADD FOREIGN KEY(Medicine_ID) REFERENCES Medicine(MedicineID);
/* 2025-03-25 16:37:15 [15 ms] */ 
SELECT * FROM Prescription LIMIT 100;
/* 2025-03-25 16:43:17 [4 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 16:44:17 [48 ms] */ 
INSERT INTO Prescription(PrescriptionID,PatientID,Pharmacist_ID,Medicine_ID,Dosage,DURATION) VALUES
(301,'P001',101,201, '500.50', 5),
(302,'P002',102,202, '250.25', 7),
(303,'P003',103,203, '400.75', 3);
/* 2025-03-25 16:44:19 [15 ms] */ 
SELECT * FROM Prescription LIMIT 100;
/* 2025-03-25 16:52:09 [6 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 16:54:03 [102 ms] */ 
CREATE TABLE Sales_Transaction(
    TransactionID INT PRIMARY key,
    PrescriptionID INT(20),
    Date DATE,
    Quantity_Sold INT(10),
    Total_Amount DECIMAL(10,2),
    FOREIGN KEY (PrescriptionID) REFERENCES Prescription(PrescriptionID)
    );
/* 2025-03-25 16:54:09 [46 ms] */ 
INSERT INTO Sales_Transaction(
    TransactionID,PrescriptionID,Date,Quantity_Sold,Total_Amount)
VALUES(
    '401',301,'2024-01-16', 10, 50000.10),
    (402,302,'2024-02-11', 5, 40002.50),
    (403,303,'2024-03-06', 7, 49001.75);
/* 2025-03-25 16:54:11 [6 ms] */ 
SELECT * FROM Sales_Transaction LIMIT 100;
/* 2025-03-25 17:00:38 [9 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 17:00:43 [32 ms] */ 
UPDATE Patient SET PatientName ='Jim Page' WHERE PatientName = 'John Kintu';
/* 2025-03-25 17:01:45 [9 ms] */ 
SELECT PatientName FROM Patient LIMIT 100;
/* 2025-03-25 17:02:41 [7 ms] */ 
SELECT * FROM Patient LIMIT 100;
/* 2025-03-25 17:09:17 [23 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 17:09:24 [62 ms] */ 
CREATE VIEW view2b AS SELECT * FROM Medicine WHERE Type = 'Painkiller';
/* 2025-03-25 17:18:58 [4 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 17:19:20 [42 ms] */ 
CREATE VIEW view2c AS SELECT SUM(Total_Amount) FROM Sales_Transaction;
/* 2025-03-25 17:19:27 [10 ms] */ 
SELECT * FROM view2c LIMIT 100;
/* 2025-03-25 17:22:47 [46 ms] */ 
DROP VIEW IF EXISTS view2c;
/* 2025-03-25 17:22:49 [23 ms] */ 
CREATE VIEW view2c AS SELECT SUM(Total_Amount) AS Total_Sales FROM Sales_Transaction;
/* 2025-03-25 17:22:50 [7 ms] */ 
SELECT * FROM view2c LIMIT 100;
/* 2025-03-25 18:12:24 [3 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 18:12:47 [177 ms] */ 
DROP DATABASE IF EXISTS NIMAROS24B38_029;
/* 2025-03-25 18:12:49 [15 ms] */ 
CREATE DATABASE NIMAROS24B38_029
    DEFAULT CHARACTER SET = 'utf8mb4';
/* 2025-03-25 18:12:50 [2 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 18:15:06 [66 ms] */ 
CREATE TABLE Patient(
    PatientID VARCHAR(20) PRIMARY KEY,
    PatientName VARCHAR(30),
    Age INT,
    Gender VARCHAR(10),
    Contact VARCHAR(20)
);
/* 2025-03-25 18:16:08 [11 ms] */ 
INSERT INTO  Patient(PatientID,PatientName,Age,Gender,Contact)
VALUES('P001', 'John Kintu',35,'Male','0700111111'),
      ('P002', 'Sarah Nambi',28,'Female' ,'0700222222'),
      ('P003','Paul Okello',42, 'Male','0700333333');
/* 2025-03-25 18:16:32 [69 ms] */ 
CREATE TABLE Doctor(
    DoctorID INT(20) PRIMARY KEY,
    DoctorName VARCHAR(30),
    Specialization VARCHAR(50),
    Contact VARCHAR(20)
);
/* 2025-03-25 18:16:34 [23 ms] */ 
DROP TABLE IF EXISTS Appointment;
/* 2025-03-25 18:16:35 [87 ms] */ 
CREATE TABLE Appointment(
    AppointmentID INT(20) PRIMARY KEY,
    PatientID VARCHAR(20) ,
    DoctorID INT(20) ,
    Date DATE,
    Time TIME, 
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
/* 2025-03-25 18:16:37 [20 ms] */ 
DROP TABLE IF  EXISTS Prescription;
/* 2025-03-25 18:16:39 [92 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 18:41:54 [4 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 18:44:18 [27 ms] */ 
CREATE VIEW view3c AS SELECT * FROM Patient WHERE patientName LIKE '%N';
/* 2025-03-25 18:44:20 [20 ms] */ 
SELECT * FROM view3c LIMIT 100;
/* 2025-03-25 18:45:30 [18 ms] */ 
CREATE VIEW view3b AS SELECT AVG(Dosage) AS Average_Dosage FROM Prescription;
/* 2025-03-25 18:45:35 [6 ms] */ 
SELECT * FROM view3b LIMIT 100;
/* 2025-03-25 18:48:46 [4 ms] */ 
SELECT * FROM Prescription LIMIT 100;
/* 2025-03-25 18:49:30 [177 ms] */ 
ALTER TABLE Prescription CHANGE Medicine  Pharmacist_ID INT(20);
/* 2025-03-25 18:49:32 [126 ms] */ 
ALTER TABLE Prescription CHANGE Dosage Medicine_ID INT(20);
/* 2025-03-25 18:49:33 [114 ms] */ 
ALTER TABLE Prescription ADD Dosage DECIMAL(10,2),ADD DURATION INT;
/* 2025-03-25 18:49:51 [42 ms] */ 
DROP TABLE IF  EXISTS Prescription;
/* 2025-03-25 18:49:53 [101 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 18:50:20 [30 ms] */ 
ALTER TABLE Prescription DROP FOREIGN KEY Prescription_ibfk_1;
/* 2025-03-25 18:50:22 [187 ms] */ 
ALTER TABLE Prescription CHANGE AppointmentID PatientID VARCHAR(20);
/* 2025-03-25 18:50:28 [150 ms] */ 
ALTER TABLE Prescription CHANGE Medicine  Pharmacist_ID INT(20);
/* 2025-03-25 18:50:32 [129 ms] */ 
ALTER TABLE Prescription CHANGE Dosage Medicine_ID INT(20);
/* 2025-03-25 18:50:38 [165 ms] */ 
ALTER TABLE Prescription ADD FOREIGN KEY (PatientID) REFERENCES Patient(PatientID);
/* 2025-03-25 18:55:58 [43 ms] */ 
ALTER TABLE Prescription DROP FOREIGN KEY Prescription_ibfk_1;
/* 2025-03-25 18:56:31 [20 ms] */ 
ALTER TABLE Prescription MODIFY Medicine_ID INT(20);
/* 2025-03-25 18:56:34 [23 ms] */ 
ALTER TABLE Prescription MODIFY Pharmacist_ID INT(20);
/* 2025-03-25 18:56:37 [33 ms] */ 
ALTER TABLE Prescription MODIFY Medicine_ID INT(20);
/* 2025-03-25 20:41:41 [3 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 20:42:01 [51 ms] */ 
DROP TABLE IF  EXISTS Prescription;
/* 2025-03-25 20:42:02 [91 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 20:42:52 [38 ms] */ 
DROP TABLE IF  EXISTS Prescription;
/* 2025-03-25 20:42:54 [76 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 20:43:42 [29 ms] */ 
ALTER TABLE Prescription DROP FOREIGN KEY Prescription_ibfk_1;
/* 2025-03-25 20:43:43 [154 ms] */ 
ALTER TABLE Prescription CHANGE AppointmentID PatientID VARCHAR(20);
/* 2025-03-25 20:45:17 [53 ms] */ 
CREATE TABLE Pharmacist(
    PharmacistID INT(20) PRIMARY KEY,
    PharmacistName VARCHAR(30),
    Qualification VARCHAR(50),
    ContactNumber VARCHAR(20)
);
/* 2025-03-25 20:48:35 [150 ms] */ 
ALTER TABLE Prescription CHANGE Medicine Pharmacist_ID INT(20);
/* 2025-03-25 20:49:12 [155 ms] */ 
ALTER TABLE Prescription CHANGE Dosage Medicine_ID INT(20);
/* 2025-03-25 20:50:14 [41 ms] */ 
DROP TABLE IF EXISTS Pharmacist;
/* 2025-03-25 20:50:15 [43 ms] */ 
CREATE TABLE Pharmacist(
    PharmacistID INT(20) PRIMARY KEY,
    PharmacistName VARCHAR(30),
    Qualification VARCHAR(50),
    ContactNumber VARCHAR(20)
);
/* 2025-03-25 20:50:23 [12 ms] */ 
INSERT INTO Pharmacist(PharmacistID ,PharmacistName,Qualification, ContactNumber) VALUES(101,'Alex Bukenya','BPharm','0701111111'),
    (102,'Diana Musoke','BPharm', '0701222222'),
    (103,'Samuel Opio','DPharm', '0701333333');
/* 2025-03-25 20:50:34 [3 ms] */ 
SELECT * FROM Pharmacist LIMIT 100;
/* 2025-03-25 20:51:35 [190 ms] */ 
ALTER TABLE Prescription ADD FOREIGN KEY (Pharmacist_ID) REFERENCES Pharmacist(PharmacistID);
/* 2025-03-25 21:06:17 [3 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 21:06:34 [47 ms] */ 
DROP TABLE IF  EXISTS Prescription;
/* 2025-03-25 21:06:35 [91 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 21:07:04 [136 ms] */ 
DROP DATABASE IF EXISTS NIMAROS24B38_029;
/* 2025-03-25 21:07:06 [34 ms] */ 
CREATE DATABASE NIMAROS24B38_029
    DEFAULT CHARACTER SET = 'utf8mb4';
/* 2025-03-25 21:07:08 [3 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 21:07:09 [20 ms] */ 
DROP TABLE IF EXISTS Patient;
/* 2025-03-25 21:07:11 [61 ms] */ 
CREATE TABLE Patient(
    PatientID VARCHAR(20) PRIMARY KEY,
    PatientName VARCHAR(30),
    Age INT,
    Gender VARCHAR(10),
    Contact VARCHAR(20)
);
/* 2025-03-25 21:07:17 [56 ms] */ 
CREATE TABLE Doctor(
    DoctorID INT(20) PRIMARY KEY,
    DoctorName VARCHAR(30),
    Specialization VARCHAR(50),
    Contact VARCHAR(20)
);
/* 2025-03-25 21:07:21 [19 ms] */ 
DROP TABLE IF EXISTS Appointment;
/* 2025-03-25 21:07:22 [107 ms] */ 
CREATE TABLE Appointment(
    AppointmentID INT(20) PRIMARY KEY,
    PatientID VARCHAR(20) ,
    DoctorID INT(20) ,
    Date DATE,
    Time TIME, 
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
/* 2025-03-25 21:07:35 [8 ms] */ 
DROP TABLE IF  EXISTS Prescription;
/* 2025-03-25 21:07:37 [100 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 21:07:45 [27 ms] */ 
INSERT INTO  Patient(PatientID,PatientName,Age,Gender,Contact)
VALUES('P001', 'John Kintu',35,'Male','0700111111'),
      ('P002', 'Sarah Nambi',28,'Female' ,'0700222222'),
      ('P003','Paul Okello',42, 'Male','0700333333');
/* 2025-03-25 21:08:48 [90 ms] */ 
DROP DATABASE IF EXISTS NIMAROS24B38_029;
/* 2025-03-25 21:08:49 [30 ms] */ 
CREATE DATABASE NIMAROS24B38_029
    DEFAULT CHARACTER SET = 'utf8mb4';
/* 2025-03-25 21:08:50 [3 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 21:08:51 [20 ms] */ 
DROP TABLE IF EXISTS Patient;
/* 2025-03-25 21:08:53 [58 ms] */ 
CREATE TABLE Patient(
    PatientID VARCHAR(20) PRIMARY KEY,
    PatientName VARCHAR(30),
    Age INT,
    Gender VARCHAR(10),
    Contact VARCHAR(20)
);
/* 2025-03-25 21:09:01 [23 ms] */ 
INSERT INTO  Patient(PatientID,PatientName,Age,Gender,Contact)
VALUES('P001', 'John Kintu',35,'Male','0700111111'),
      ('P002', 'Sarah Nambi',28,'Female' ,'0700222222'),
      ('P003','Paul Okello',42, 'Male','0700333333');
/* 2025-03-25 21:09:04 [4 ms] */ 
SELECT * FROM Patient LIMIT 100;
/* 2025-03-25 21:09:36 [46 ms] */ 
ALTER TABLE Patient CHANGE Contact Contact_Number VARCHAR(20);
/* 2025-03-25 21:09:39 [4 ms] */ 
SELECT * FROM Patient LIMIT 100;
/* 2025-03-25 21:09:44 [12 ms] */ 
DROP TABLE IF EXISTS Pharmacist;
/* 2025-03-25 21:09:45 [64 ms] */ 
CREATE TABLE Pharmacist(
    PharmacistID INT(20) PRIMARY KEY,
    PharmacistName VARCHAR(30),
    Qualification VARCHAR(50),
    ContactNumber VARCHAR(20)
);
/* 2025-03-25 21:09:47 [25 ms] */ 
INSERT INTO Pharmacist(PharmacistID ,PharmacistName,Qualification, ContactNumber) VALUES(101,'Alex Bukenya','BPharm','0701111111'),
    (102,'Diana Musoke','BPharm', '0701222222'),
    (103,'Samuel Opio','DPharm', '0701333333');
/* 2025-03-25 21:09:49 [4 ms] */ 
SELECT * FROM Pharmacist LIMIT 100;
/* 2025-03-25 21:09:58 [72 ms] */ 
CREATE TABLE Medicine(
    MedicineID INT(20) PRIMARY KEY,
    MedicineName VARCHAR(30),
    Type VARCHAR(50),
    Price_Per_Unit DECIMAL(10,2),
    Stock_Quantity INT
);
/* 2025-03-25 21:10:05 [10 ms] */ 
INSERT INTO Medicine(MedicineID ,MedicineName,Type,Price_Per_Unit,Stock_Quantity)
VALUES(201,'Paracetamol','Painkiller','5000.00', '100'),
(202,'Amoxicillin','Antibiotic','8000.50', '50'),
(203,'Ibuprofen','Painkiller','7000.25', '75');
/* 2025-03-25 21:10:06 [2 ms] */ 
SELECT * FROM Medicine LIMIT 100;
/* 2025-03-25 21:10:37 [6 ms] */ 
DROP TABLE IF  EXISTS Prescription;
/* 2025-03-25 21:11:53 [26 ms] */ 
DROP TABLE IF EXISTS Appointment;
/* 2025-03-25 21:13:47 [71 ms] */ 
CREATE TABLE Doctor(
    DoctorID INT(20) PRIMARY KEY,
    DoctorName VARCHAR(30),
    Specialization VARCHAR(50),
    Contact VARCHAR(20)
);
/* 2025-03-25 21:13:49 [17 ms] */ 
DROP TABLE IF EXISTS Appointment;
/* 2025-03-25 21:13:50 [97 ms] */ 
CREATE TABLE Appointment(
    AppointmentID INT PRIMARY KEY,
    PatientID VARCHAR(20),
    DoctorID INT,
    Date DATE,
    Time TIME, 
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
/* 2025-03-25 21:14:09 [51 ms] */ 
DROP TABLE IF EXISTS Appointment;
/* 2025-03-25 21:14:10 [109 ms] */ 
CREATE TABLE Appointment(
    AppointmentID INT PRIMARY KEY,
    PatientID VARCHAR(20),
    DoctorID INT,
    Date DATE,
    Time TIME, 
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
/* 2025-03-25 21:14:18 [8 ms] */ 
DROP TABLE IF  EXISTS Prescription;
/* 2025-03-25 21:14:20 [86 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 21:15:50 [3 ms] */ 
SELECT * FROM Patient LIMIT 100;
/* 2025-03-25 21:16:39 [46 ms] */ 
DROP TABLE IF EXISTS Pharmacist;
/* 2025-03-25 21:16:40 [43 ms] */ 
CREATE TABLE Pharmacist(
    PharmacistID INT(20) PRIMARY KEY,
    PharmacistName VARCHAR(30),
    Qualification VARCHAR(50),
    ContactNumber VARCHAR(20)
);
/* 2025-03-25 21:16:42 [23 ms] */ 
INSERT INTO Pharmacist(PharmacistID ,PharmacistName,Qualification, ContactNumber) VALUES(101,'Alex Bukenya','BPharm','0701111111'),
    (102,'Diana Musoke','BPharm', '0701222222'),
    (103,'Samuel Opio','DPharm', '0701333333');
/* 2025-03-25 21:16:43 [3 ms] */ 
SELECT * FROM Pharmacist LIMIT 100;
/* 2025-03-25 21:16:58 [3 ms] */ 
SELECT * FROM Medicine LIMIT 100;
/* 2025-03-25 21:17:26 [53 ms] */ 
ALTER TABLE Prescription DROP FOREIGN KEY Prescription_ibfk_1;
/* 2025-03-25 21:17:28 [102 ms] */ 
ALTER TABLE Prescription CHANGE AppointmentID PatientID VARCHAR(20);
/* 2025-03-25 21:17:29 [151 ms] */ 
ALTER TABLE Prescription CHANGE Medicine MedicineID INT(20);
/* 2025-03-25 21:18:54 [112 ms] */ 
ALTER TABLE Prescription DROP COLUMN Dosage;
/* 2025-03-25 21:21:11 [124 ms] */ 
ALTER TABLE Prescription ADD COLUMN Dosage DECIMAL(10,2);
/* 2025-03-25 21:21:15 [129 ms] */ 
ALTER TABLE Prescription ADD COLUMN Duration INT(20);
/* 2025-03-25 21:21:30 [160 ms] */ 
ALTER TABLE Prescription ADD FOREIGN KEY (MedicineID) REFERENCES Medicine(MedicineID);
/* 2025-03-25 21:24:05 [109 ms] */ 
ALTER TABLE Prescription ADD COLUMN PharmacistID INT(20);
/* 2025-03-25 21:24:16 [108 ms] */ 
ALTER TABLE Prescription ADD FOREIGN KEY (PharmacistID) REFERENCES Pharmacist(PharmacistID);
/* 2025-03-25 21:24:20 [104 ms] */ 
ALTER TABLE Prescription ADD FOREIGN KEY (MedicineID) REFERENCES Medicine(MedicineID);
/* 2025-03-25 21:24:29 [3 ms] */ 
SELECT * FROM Prescription LIMIT 100;
/* 2025-03-25 21:25:42 [157 ms] */ 
ALTER TABLE Prescription ADD FOREIGN KEY (PharmacistID) REFERENCES Pharmacist(PharmacistID);
/* 2025-03-25 21:25:48 [210 ms] */ 
ALTER TABLE Prescription ADD FOREIGN KEY (MedicineID) REFERENCES Medicine(MedicineID);
/* 2025-03-25 21:26:51 [4 ms] */ 
SELECT * FROM Prescription LIMIT 100;
/* 2025-03-25 21:28:17 [132 ms] */ 
ALTER TABLE Prescription ADD COLUMN Pharmacist_ID INT(20);
/* 2025-03-25 21:28:32 [194 ms] */ 
ALTER TABLE Prescription ADD FOREIGN KEY (PharmacistID) REFERENCES Pharmacist(PharmacistID);
/* 2025-03-25 21:28:40 [289 ms] */ 
ALTER TABLE Prescription ADD FOREIGN KEY (Pharmacist_ID) REFERENCES Pharmacist(PharmacistID);
/* 2025-03-25 21:29:43 [48 ms] */ 
ALTER TABLE Prescription DROP FOREIGN KEY Prescription_ibfk_1;
/* 2025-03-25 21:29:59 [181 ms] */ 
ALTER TABLE Prescription ADD FOREIGN KEY (Pharmacist_ID) REFERENCES Pharmacist(PharmacistID);
/* 2025-03-25 21:30:06 [4 ms] */ 
SELECT * FROM Prescription LIMIT 100;
/* 2025-03-25 21:31:43 [172 ms] */ 
ALTER TABLE Prescription ADD FOREIGN KEY (Pharmacist_ID) REFERENCES Pharmacist(PharmacistID);
/* 2025-03-25 21:32:33 [3 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 21:32:44 [170 ms] */ 
ALTER TABLE Prescription ADD FOREIGN KEY (Pharmacist_ID) REFERENCES Pharmacist(PharmacistID);
/* 2025-03-25 21:35:06 [3 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 21:35:30 [59 ms] */ 
DROP TABLE IF  EXISTS Prescription;
/* 2025-03-25 21:35:31 [68 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20) PRIMARY KEY,
    AppointmentID  INT(20),
    Medicine VARCHAR(50),
    Dosage VARCHAR(20),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
/* 2025-03-25 21:35:37 [4 ms] */ 
SELECT * FROM Patient LIMIT 100;
/* 2025-03-25 21:35:48 [43 ms] */ 
DROP TABLE IF EXISTS Pharmacist;
/* 2025-03-25 21:35:55 [3 ms] */ 
SELECT * FROM Patient LIMIT 100;
/* 2025-03-25 21:36:01 [19 ms] */ 
DROP TABLE IF EXISTS Pharmacist;
/* 2025-03-25 21:36:02 [56 ms] */ 
CREATE TABLE Pharmacist(
    PharmacistID INT(20) PRIMARY KEY,
    PharmacistName VARCHAR(30),
    Qualification VARCHAR(50),
    ContactNumber VARCHAR(20)
);
/* 2025-03-25 21:36:07 [8 ms] */ 
INSERT INTO Pharmacist(PharmacistID ,PharmacistName,Qualification, ContactNumber) VALUES(101,'Alex Bukenya','BPharm','0701111111'),
    (102,'Diana Musoke','BPharm', '0701222222'),
    (103,'Samuel Opio','DPharm', '0701333333');
/* 2025-03-25 21:36:09 [2 ms] */ 
SELECT * FROM Pharmacist LIMIT 100;
/* 2025-03-25 21:37:13 [3 ms] */ 
SELECT * FROM Medicine LIMIT 100;
/* 2025-03-25 21:37:20 [26 ms] */ 
ALTER TABLE Prescription DROP FOREIGN KEY Prescription_ibfk_1;
/* 2025-03-25 21:37:22 [165 ms] */ 
ALTER TABLE Prescription CHANGE AppointmentID PatientID VARCHAR(20);
/* 2025-03-25 21:37:24 [158 ms] */ 
ALTER TABLE Prescription CHANGE Medicine Medicine_ID INT(20);
/* 2025-03-25 21:37:40 [118 ms] */ 
ALTER TABLE Prescription ADD COLUMN Pharmacist_ID INT(20);
/* 2025-03-25 21:38:24 [119 ms] */ 
ALTER TABLE Prescription DROP COLUMN Dosage;
/* 2025-03-25 21:38:28 [132 ms] */ 
ALTER TABLE Prescription ADD COLUMN Dosage DECIMAL(10,2);
/* 2025-03-25 21:39:54 [129 ms] */ 
ALTER TABLE Prescription ADD COLUMN Duration INT(20);
/* 2025-03-25 21:39:56 [180 ms] */ 
ALTER TABLE Prescription ADD FOREIGN KEY (Pharmacist_ID) REFERENCES Pharmacist(PharmacistID);
/* 2025-03-25 21:40:00 [136 ms] */ 
ALTER TABLE Prescription ADD FOREIGN KEY (Medicine_ID) REFERENCES Medicine(MedicineID);
/* 2025-03-25 21:40:10 [22 ms] */ 
INSERT INTO Prescription(PrescriptionID,PatientID,Pharmacist_ID,Medicine_ID,Dosage,DURATION) VALUES
(301,'P001',101,201, 500.50, 5),
(302,'P002',102,202, 250.25, 7),
(303,'P003',103,203, 400.75, 3);
/* 2025-03-25 21:40:12 [4 ms] */ 
SELECT * FROM  Prescription LIMIT 100;
/* 2025-03-25 21:40:45 [90 ms] */ 
CREATE TABLE Sales_Transaction(
    TransactionID INT PRIMARY key,
    PrescriptionID INT(20),
    Date DATE,
    Quantity_Sold INT(10),
    Total_Amount DECIMAL(10,2),
    FOREIGN KEY (PrescriptionID) REFERENCES Prescription(PrescriptionID)
    );
/* 2025-03-25 21:40:48 [7 ms] */ 
INSERT INTO Sales_Transaction(
    TransactionID,PrescriptionID,Date,Quantity_Sold,Total_Amount)
VALUES(
    '401',301,'2024-01-16', 10, 50000.10),
    (402,302,'2024-02-11', 5, 40002.50),
    (403,303,'2024-03-06', 7, 49001.75);
/* 2025-03-25 21:40:53 [4 ms] */ 
SELECT * FROM Sales_Transaction LIMIT 100;
/* 2025-03-25 21:41:01 [29 ms] */ 
UPDATE Patient SET PatientName ='Jim Page' WHERE PatientName = 'John Kintu';
/* 2025-03-25 21:41:05 [51 ms] */ 
CREATE VIEW view2b AS SELECT * FROM Medicine WHERE Type = 'Painkiller';
/* 2025-03-25 21:41:06 [5 ms] */ 
SELECT * FROM view2b LIMIT 100;
/* 2025-03-25 21:41:29 [19 ms] */ 
DROP VIEW IF EXISTS view2c;
/* 2025-03-25 21:41:38 [32 ms] */ 
CREATE VIEW view2c AS SELECT SUM(Total_Amount) AS Total_Sales FROM Sales_Transaction;
/* 2025-03-25 21:41:39 [4 ms] */ 
SELECT * FROM view2c LIMIT 100;
/* 2025-03-25 21:41:58 [35 ms] */ 
CREATE VIEW view2d AS SELECT p.PatientName AS Patient_Name, m.MedicineName AS Medicine_Name
FROM Patient p
JOIN Prescription pr ON p.PatientID = pr.PatientID
JOIN Medicine m ON pr.Medicine_ID = m.MedicineID;
/* 2025-03-25 21:42:02 [2 ms] */ 
SELECT * FROM view2d LIMIT 100;
/* 2025-03-25 21:42:56 [30 ms] */ 
CREATE VIEW viewleast AS SELECT MIN(Dosage) AS Smallest_dosage FROM Prescription;
/* 2025-03-25 22:42:59 [188 ms] */ 
DROP DATABASE IF EXISTS NIMAROS24B38_029;
/* 2025-03-25 22:43:00 [29 ms] */ 
CREATE DATABASE NIMAROS24B38_029
    DEFAULT CHARACTER SET = 'utf8mb4';
/* 2025-03-25 22:43:40 [12 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-25 22:44:06 [80 ms] */ 
CREATE TABLE Patient(
    PatientID VARCHAR(20) PRIMARY KEY,
    PatientName VARCHAR(30),
    Age INT,
    Gender VARCHAR(10),
    Contact VARCHAR(20)
);
/* 2025-03-25 22:44:32 [9 ms] */ 
UPDATE Patient SET PatientName ='Jim Page' WHERE PatientName = 'John Kintu';
/* 2025-03-25 22:46:49 [63 ms] */ 
CREATE TABLE Medicine(
    MedicineID INT(20) PRIMARY KEY,
    MedicineName VARCHAR(30),
    Type VARCHAR(50),
    Price_Per_Unit DECIMAL(10,2),
    Stock_Quantity INT
);
/* 2025-03-25 22:46:53 [26 ms] */ 
INSERT INTO Medicine(MedicineID ,MedicineName,Type,Price_Per_Unit,Stock_Quantity)
VALUES(201,'Paracetamol','Painkiller',5000.00, 100),
(202,'Amoxicillin','Antibiotic',8000.50, 50),
(203,'Ibuprofen','Painkiller',7000.25, 75);
/* 2025-03-25 22:46:57 [5 ms] */ 
SELECT * FROM Medicine LIMIT 100;
/* 2025-03-25 22:47:32 [3 ms] */ 
UPDATE Patient SET PatientName ='Jim Page' WHERE PatientName = 'John Kintu';
/* 2025-03-25 22:47:34 [57 ms] */ 
CREATE VIEW view2b AS SELECT * FROM Medicine WHERE Type = 'Painkiller';
/* 2025-03-25 22:47:39 [6 ms] */ 
SELECT * FROM view2b LIMIT 100;
/* 2025-03-25 22:48:35 [20 ms] */ 
DROP VIEW IF EXISTS view2c;
/* 2025-03-26 21:22:44 [3 ms] */ 
USE NIMAROS24B38_029;
/* 2025-03-26 21:30:20 [89 ms] */ 
ALTER TABLE Patient ADD COLUMN Email VARCHAR(255);
/* 2025-03-26 21:31:04 [2 ms] */ 
SELECT * FROM Patient LIMIT 100;
/* 2025-03-26 21:32:10 [27 ms] */ 
DROP TABLE IF EXISTS Medicine;
/* 2025-03-26 21:32:25 [42 ms] */ 
CREATE TABLE Medicine(
    MedicineID INT(20) PRIMARY KEY,
    MedicineName VARCHAR(30),
    Type VARCHAR(50),
    Price_Per_Unit DECIMAL(10,2),
    Stock_Quantity INT
);
/* 2025-03-26 21:32:28 [12 ms] */ 
INSERT INTO Medicine(MedicineID ,MedicineName,Type,Price_Per_Unit,Stock_Quantity)
VALUES(201,'Paracetamol','Painkiller',5000.00, 100),
(202,'Amoxicillin','Antibiotic',8000.50, 50),
(203,'Ibuprofen','Painkiller',7000.25, 75);
/* 2025-03-26 21:32:29 [2 ms] */ 
SELECT * FROM Medicine LIMIT 100;
/* 2025-03-26 21:32:45 [54 ms] */ 
DROP TABLE IF EXISTS Medicine;
/* 2025-03-26 21:39:04 [14 ms] */ 
CREATE VIEW view3c AS SELECT * FROM Patient WHERE PatientName LIKE '%N';
/* 2025-03-26 21:58:51 [27 ms] */ 
CREATE DATABASE MakeupBusinessDB;
/* 2025-03-26 21:58:52 [4 ms] */ 
USE MakeupBusinessDB;
/* 2025-03-26 21:58:53 [39 ms] */ 
drop database MakeupBusinessDB;
/* 2025-03-26 21:59:18 [20 ms] */ 
CREATE DATABASE MakeupBusinessDB;
/* 2025-03-26 21:59:19 [2 ms] */ 
USE MakeupBusinessDB;
/* 2025-03-26 21:59:20 [25 ms] */ 
drop database MakeupBusinessDB;
/* 2025-03-26 22:02:36 [31 ms] */ 
CREATE DATABASE MakeupBusinessDB;
/* 2025-03-26 22:02:38 [4 ms] */ 
USE MakeupBusinessDB;
/* 2025-03-26 22:02:39 [66 ms] */ 
CREATE TABLE Billing (
    BillingID INT PRIMARY KEY,
    TotalAmount DECIMAL(10,2),
    PaymentStatus VARCHAR(24),
    PaymentDate DATE,
    PaymentMethod VARCHAR(50)
);
/* 2025-03-26 22:02:43 [6 ms] */ 
SELECT * FROM Billing LIMIT 100;
/* 2025-03-26 22:10:53 [2 ms] */ 
USE MakeupBusinessDB;
/* 2025-03-26 22:18:49 [20 ms] */ 
INSERT INTO Billing( BillingID, TotalAmount, PaymentStatus, PaymentDate, PaymentMethod)
VALUES(122,100000,'Pending','2025-03-25','cash'),(123,200000,'Paid','2025-04-5','credit card'),
(124,400000,'Cancelled','2025-03-25','mobile_money'),
(125,600000,'Paid', '2025-07-20','bank transfer');
/* 2025-03-26 22:18:51 [4 ms] */ 
SELECT * FROM Billing LIMIT 100;
/* 2025-03-26 22:20:20 [98 ms] */ 
create table patient(
    ID VARCHAR(10) primary key,
    names VARCHAR(255),
    date_of_birth DATE,
    gender VARCHAR(20),
    number VARCHAR(10),
    email VARCHAR(20),
    address VARCHAR(20),
    medical_history VARCHAR(20),
    BillingID int(20),
    Foreign Key Billing(BillingID) REFERENCES Billing(BillingID)
);
/* 2025-03-27 06:02:38 [6 ms] */ 
USE MakeupBusinessDB;
/* 2025-03-27 06:02:47 [112 ms] */ 
CREATE TABLE Staff (
    StaffID INT(20) PRIMARY KEY,
    Names VARCHAR(255),
    Speciality VARCHAR(25),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(55),
    Experience INT,
    Availability BOOLEAN,
    Feedback TEXT,
    RoutinePeriod VARCHAR(50)
);
/* 2025-03-27 06:09:11 [30 ms] */ 
INSERT  INTO staff(StaffID, Names, Speciality, PhoneNumber, Email, Experience, Availability, Feedback,RoutinePeriod)
values(1, 'Emily Nakaddu', 'Dermatologist', '0703456789', 'emilynakaddu@gmail.com', 5, TRUE, 'Gentle and patient with clients.', 'Morning'),
(2, 'Geofrey Oyaka', 'Pediatric Dermatologist', '0701111789', 'geofreyoyaka@gmail.com', 15, FALSE, 'Highly skilled in emergency procedures.', 'Afternoon'),
(3, 'Nimaro Patience', 'Cosmetic Dermatologist', '0702345678', 'nimaropatience@gmail.com', 10, TRUE, 'Excellent in diagnosing heart conditions.', 'Evening'),
(4, 'Travis Paul', 'Mohs Surgeon', '0702347324', 'travispaul@gmail.com', 7, FALSE, 'Very professional and punctual.', 'Morning');
/* 2025-03-27 06:09:13 [9 ms] */ 
SELECT * FROM Staff LIMIT 100;
/* 2025-03-27 06:16:29 [185 ms] */ 
CREATE TABLE Appointments (
    AppointmentID INT(30) PRIMARY KEY,
    StaffID INT,
    AppointmentDate DATE,
    AppointmentTime TIME,
    ConsultationReview TEXT,
    Status varchar(30),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);
/* 2025-03-27 06:20:40 [59 ms] */ 
DROP TABLE Appointments;
/* 2025-03-27 06:20:44 [123 ms] */ 
CREATE TABLE Appointment (
    AppointmentID INT(30) PRIMARY KEY,
    StaffID INT,
    AppointmentDate DATE,
    AppointmentTime TIME,
    ConsultationReview VARCHAR(50),
    Status varchar(30),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);
/* 2025-03-27 06:20:55 [30 ms] */ 
INSERT INTO Appointment(AppointmentID, StaffID, AppointmentDate, AppointmentTime, ConsultationReview, Status)
VALUES(23, 2, '2025-03-22', '03:40:00', 'General health review', 'Cancelled'),
(24, 3, '2025-02-05', '06:00:00', 'General skin review', 'Scheduled'),
(25, 4, '2025-01-23', '08:40:00', 'Routine checkup', 'Cancelled');
/* 2025-03-27 06:22:34 [4 ms] */ 
SELECT * FROM Appointment LIMIT 100;
/* 2025-03-27 06:23:32 [123 ms] */ 
CREATE TABLE Prescription(
    PrescriptionID INT(20)PRIMARY KEY,
    StaffID INT,
    Dosage VARCHAR(50),
    Duration VARCHAR(50),
    Instructions VARCHAR(100),
    ItemName VARCHAR(25),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID) ON DELETE CASCADE
);
/* 2025-03-27 06:24:46 [17 ms] */ 
insert into Prescription(PrescriptionID, StaffID, Dosage, Duration, Instructions, ItemName)
values(22, 1, '500mg', '7 days', 'Take after meals', ' Retinoids'),
(20, 2, '250mg', '5 days', 'Take before bedtime', 'Benzoyl peroxide'),
(19, 3, '1 tablet', '3 times a day for 10 days', 'Shake well before use', 'Hydrocortisone'),
(18, 4, '500mg', '3 days', 'Take after meals', 'Retinoid pills');
/* 2025-03-27 06:25:20 [6 ms] */ 
SELECT * FROM Prescription LIMIT 100;
/* 2025-03-27 06:26:14 [35 ms] */ 
INSERT INTO Billing (BillingID, TotalAmount, PaymentStatus, PaymentDate, PaymentMethod)
VALUES 
(101, 150000.00, 'Paid', '2025-01-15', 'Credit Card'),
(102, 75000.00, 'Pending', '2025-02-10', 'Cash'),
(103, 200000.00, 'Cancelled', '2025-03-05', 'Bank Transfer'),
(104, 50000.00, 'Paid', '2025-04-20', 'Mobile Money');
/* 2025-03-27 06:26:19 [5 ms] */ 
SELECT * FROM Billing LIMIT 100;
/* 2025-03-27 11:07:53 [5 ms] */ 
USE MakeupBusinessDB;
/* 2025-03-27 11:08:29 [2 ms] */ 
SELECT * FROM patient LIMIT 100;
/* 2025-03-27 11:09:46 [74 ms] */ 
drop table patient;
/* 2025-03-27 11:09:48 [129 ms] */ 
create table patient(
    ID VARCHAR(10) primary key,
    name VARCHAR(255),
    date_of_birth DATE,
    gender VARCHAR(20),
    email VARCHAR(50),  
    address VARCHAR(20),
    medical_history VARCHAR(20),
    BillingID int(20),
    Foreign Key (BillingID) REFERENCES Billing(BillingID)
);
/* 2025-03-27 11:09:57 [25 ms] */ 
INSERT INTO patient (ID, name, date_of_birth, gender, email, address, medical_history, BillingID)
VALUES 
('P001', 'Edgar Kasozi', '1990-05-15', 'Female', 'edgar.kasozi@gmail.com', '123 Main St', 'Asthma', 101),
('P002', 'Bana Samali', '1985-08-20', 'Male', 'banasamali@gmail.com', '456 Elm St', 'Diabetes', 102),
('P003', 'Cathy Katereggga', '1992-11-30', 'Male', 'cathykateregga@gmail.com', '789 Oak St', 'Hypertension', 103),
('P004', 'David Tendo', '1988-03-25', 'Male', 'david.tendo@gmail.com', '321 Pine St', 'None', 104);
/* 2025-03-27 11:09:59 [4 ms] */ 
SELECT * FROM patient LIMIT 100;
/* 2025-03-27 11:11:24 [49 ms] */ 
drop table patient;
/* 2025-03-27 11:11:26 [62 ms] */ 
create table patient(
    ID VARCHAR(10) primary key,
    name VARCHAR(255),
    date_of_birth DATE,
    gender VARCHAR(20),
    email VARCHAR(50),  
    address VARCHAR(20),
    medical_history VARCHAR(20),
    BillingID int(20),
    Foreign Key (BillingID) REFERENCES Billing(BillingID)
);
/* 2025-03-27 11:11:27 [37 ms] */ 
INSERT INTO patient (ID, name, date_of_birth, gender, email, address, medical_history, BillingID)
VALUES 
('P001', 'Edgar Kasozi', '1990-05-15', 'Female', 'edgar.kasozi@gmail.com', '123 Luvum street', 'Asthma', 101),
('P002', 'Bana Samali', '1985-08-20', 'Male', 'banasamali@gmail.com', '456 BishopTucker St', 'Diabetes', 102),
('P003', 'Cathy Katereggga', '1992-11-30', 'Male', 'cathykateregga@gmail.com', '789 Buganda St', 'Hypertension', 103),
('P004', 'David Tendo', '1988-03-25', 'Male', 'david.tendo@gmail.com', '321 Kampala St', 'None', 104);
/* 2025-03-27 11:11:35 [46 ms] */ 
drop table patient;
/* 2025-03-27 11:11:36 [104 ms] */ 
create table patient(
    ID VARCHAR(10) primary key,
    name VARCHAR(255),
    date_of_birth DATE,
    gender VARCHAR(20),
    email VARCHAR(50),  
    address VARCHAR(20),
    medical_history VARCHAR(20),
    BillingID int(20),
    Foreign Key (BillingID) REFERENCES Billing(BillingID)
);
/* 2025-03-27 11:11:43 [25 ms] */ 
INSERT INTO patient (ID, name, date_of_birth, gender, email, address, medical_history, BillingID)
VALUES 
('P001', 'Edgar Kasozi', '1990-05-15', 'Female', 'edgar.kasozi@gmail.com', '123 Luvum street', 'Asthma', 101),
('P002', 'Bana Samali', '1985-08-20', 'Male', 'banasamali@gmail.com', '456 BishopTucker St', 'Diabetes', 102),
('P003', 'Cathy Katereggga', '1992-11-30', 'Male', 'cathykateregga@gmail.com', '789 Buganda St', 'Hypertension', 103),
('P004', 'David Tendo', '1988-03-25', 'Male', 'david.tendo@gmail.com', '321 Kampala St', 'None', 104);
/* 2025-03-27 11:11:44 [4 ms] */ 
SELECT * FROM patient LIMIT 100;
/* 2025-03-27 14:31:08 [6 ms] */ 
USE MakeupBusinessDB;
/* 2025-03-27 14:31:34 [5 ms] */ 
SELECT * FROM Billing LIMIT 100;
/* 2025-03-27 16:22:14 [4 ms] */ 
USE MakeupBusinessDB;
/* 2025-03-27 16:22:17 [5 ms] */ 
SELECT * FROM Billing LIMIT 100;
/* 2025-03-27 16:23:23 [9 ms] */ 
SELECT * FROM Staff LIMIT 100;
/* 2025-03-27 16:36:46 [8 ms] */ 
USE MakeupBusinessDB;
/* 2025-03-27 16:39:37 [10 ms] */ 
SELECT * FROM Billing LIMIT 100;
/* 2025-04-03 13:55:35 [47 ms] */ 
CREATE DATABASE usere;
/* 2025-04-03 13:58:46 [31 ms] */ 
CREATE DATABASE USERS;
/* 2025-04-06 19:39:14 [53 ms] */ 
CREATE DATABASE GCDL;
/* 2025-04-06 19:39:15 [7 ms] */ 
USE GCDL;
/* 2025-04-06 19:39:17 [106 ms] */ 
CREATE TABLE users(
    username VARCHAR(10),
    password VARCHAR(10),
    email VARCHAR(20)
);
/* 2025-04-06 19:39:20 [67 ms] */ 
CREATE TABLE Produce(
    ProduceId VARCHAR(10) PRIMARY KEY,
    ProduceName VARCHAR(10),
    Type VARCHAR(10),
    Date DATE,
    Time TIME,
    Tonnage INT(10),
    Cost INT(10),
    DealerName VARCHAR(10),
    Branch VARCHAR(10),
    Contact VARCHAR(10),
    SellingPrice INT(10)
);
/* 2025-04-06 19:39:27 [40 ms] */ 
CREATE TABLE Sales(
    SalesId VARCHAR(10) PRIMARY KEY,
    ProduceName VARCHAR(10),
    Tonnage INT(10),
    AmountPaid INT(10),
    BuyersName VARCHAR(10),
    SalesAgentsName VARCHAR(10),
    Date DATE,
    Time TIME,
    BuyersContact VARCHAR(10)
);
/* 2025-04-06 19:39:32 [39 ms] */ 
CREATE TABLE Receipt(
    ReceiptID VARCHAR(10) PRIMARY KEY,
    AmountPaid INT(10),
    SalesAgentsName VARCHAR(10),
    BuyersName VARCHAR(10),
    ProduceName VARCHAR(10)
);
/* 2025-04-06 19:39:39 [60 ms] */ 
CREATE TABLE creditSales(
    BuyersName VARCHAR(10),
    NIN VARCHAR (15),
    Location VARCHAR(10), 
    AmountDue INT(10),
    DueDate DATE,
    ProduceId VARCHAR(10),
    FOREIGN KEY (ProduceId) REFERENCES Produce(ProduceId)
);
/* 2025-04-06 19:39:44 [54 ms] */ 
CREATE TABLE stockManagement(
    ProduceName VARCHAR(20),
    ProduceId VARCHAR(20),
    TonnageSold INT(10),
    TonnageBought INT(10),
    CurrentTonnage INT(10),
    FOREIGN KEY (ProduceId) REFERENCES Produce(ProduceId)
);
/* 2025-04-11 04:40:18 [137 ms] */ 
CREATE DATABASE ICT_Scholarships;
/* 2025-04-11 04:40:58 [8 ms] */ 
USE ICT_Scholarships;
/* 2025-04-11 04:48:34 [123 ms] */ 
CREATE TABLE Applicant(
    ApplicantID INT(20) PRIMARY KEY,
    Applicantname VARCHAR(50),
    Age INT(20),
    District VARCHAR(30),
    Program VARCHAR(50),
    ScholarshipAmount DECIMAL(20)
);
/* 2025-04-11 05:19:34 [4 ms] */ 
USE ICT_Scholarships;
/* 2025-04-11 05:19:54 [62 ms] */ 
INSERT  INTO  Applicant(ApplicantID, Applicantname,Age, District,Program, ScholarshipAmount)
VALUES(1,"Alice John",18,"DisctrictA","Engineering",1000),
(2,"Brian Smith",19,"DisctrictB","Mathematics",1200),
(3,"Cathy Brown",20,"DisctrictC","Science",1100),
(4,"David Wilson",21,"DisctrictA","Engineering",1000),
(5,"Eva Green",19,"DisctrictB","Mathematics",1200);
/* 2025-04-11 05:20:08 [19 ms] */ 
SELECT * FROM Applicant LIMIT 100;
/* 2025-04-11 05:22:58 [61 ms] */ 
CREATE TABLE institution(
    InstitutionID INT(20) PRIMARY KEY,
    InstitutionName VARCHAR(50),
    Location VARCHAR(50),
    Type VARCHAR(30)
);
/* 2025-04-11 05:25:24 [3 ms] */ 
USE ICT_Scholarships;
/* 2025-04-11 05:28:46 [5 ms] */ 
SELECT * FROM institution LIMIT 100;
/* 2025-04-11 05:31:07 [4 ms] */ 
USE ICT_Scholarships;
/* 2025-04-11 05:31:15 [4 ms] */ 
SELECT * FROM institution LIMIT 100;
/* 2025-04-11 05:34:10 [68 ms] */ 
DROP TABLE IF EXISTS Applicant;
/* 2025-04-11 05:34:12 [39 ms] */ 
DROP TABLE IF EXISTS institution;
/* 2025-04-11 05:34:13 [72 ms] */ 
CREATE TABLE Applicant(
    ApplicantID INT(30) PRIMARY KEY,
    Applicantname VARCHAR(50),
    Age INT,
    District VARCHAR(30),
    Program VARCHAR(50),
    ScholarshipAmount DECIMAL(20,2)
);
/* 2025-04-11 05:34:14 [30 ms] */ 
INSERT  INTO  Applicant(ApplicantID, Applicantname,Age, District,Program, ScholarshipAmount)
VALUES(1,"Alice John",18,"DisctrictA","Engineering",1000),
(2,"Brian Smith",19,"DisctrictB","Mathematics",1200),
(3,"Cathy Brown",20,"DisctrictC","Science",1100),
(4,"David Wilson",21,"DisctrictA","Engineering",1000),
(5,"Eva Green",19,"DisctrictB","Mathematics",1200);
/* 2025-04-11 05:34:17 [4 ms] */ 
SELECT * FROM Applicant LIMIT 100;
/* 2025-04-11 05:34:21 [91 ms] */ 
CREATE TABLE institution(
    InstitutionID INT PRIMARY KEY,
    ApplicantID INT(30),
    InstitutionName VARCHAR(50),
    Location VARCHAR(50),
    Type VARCHAR(30),
    FOREIGN KEY (ApplicantID) REFERENCES Applicant(ApplicantID) 
    
);
/* 2025-04-11 05:34:29 [27 ms] */ 
INSERT INTO institution(InstitutionID, ApplicantID, InstitutionName, Location, Type)
VALUES(1,1,"University A","Location A","Public"),
(2,2,"University B","Location B","Private"),
(3,3,"University C","Location C","Public"),
(4,4,"University D","Location D","Private"),
(5,5,"University E","Location E","Public");
/* 2025-04-11 05:34:32 [5 ms] */ 
SELECT * FROM institution LIMIT 100;
/* 2025-04-11 05:39:49 [35 ms] */ 
CREATE VIEW viewone AS SELECT * FROM institution;
/* 2025-04-11 05:40:35 [7 ms] */ 
SELECT* FROM viewone;
/* 2025-04-11 05:46:02 [5 ms] */ 
USE ICT_Scholarships;
/* 2025-04-11 05:46:08 [42 ms] */ 
CREATE VIEW viewtwo AS SELECT Applicantname,Program  FROM Applicant;
/* 2025-04-11 05:46:09 [5 ms] */ 
SELECT* FROM viewtwo;
/* 2025-04-11 05:59:34 [3 ms] */ 
USE ICT_Scholarships;
/* 2025-04-11 05:59:37 [33 ms] */ 
CREATE VIEW viewthree AS SELECT COUNT(*) AS Applicant_number FROM Applicant;
/* 2025-04-11 05:59:40 [16 ms] */ 
SELECT* FROM viewthree;
/* 2025-04-11 06:02:34 [21 ms] */ 
CREATE VIEW viewfour AS SELECT COUNT(*) AS District_number from Applicant WHERE District = "DistrictA";
/* 2025-04-11 06:02:36 [19 ms] */ 
SELECT* FROM viewfour;
/* 2025-04-11 06:05:03 [3 ms] */ 
USE ICT_Scholarships;
/* 2025-04-11 06:05:16 [5 ms] */ 
SELECT * FROM Applicant LIMIT 100;
/* 2025-04-11 06:05:28 [3 ms] */ 
SELECT* FROM viewfour;
/* 2025-04-11 06:06:46 [31 ms] */ 
DROP VIEW IF EXISTS viewfour;
/* 2025-04-11 06:06:48 [39 ms] */ 
CREATE VIEW viewfour AS SELECT COUNT(*) AS District_number FROM Applicant WHERE District = "DistrictB";
/* 2025-04-11 06:06:49 [5 ms] */ 
SELECT* FROM viewfour;
/* 2025-04-11 06:07:41 [30 ms] */ 
DROP VIEW IF EXISTS viewfour;
/* 2025-04-11 06:07:42 [14 ms] */ 
CREATE VIEW viewfour AS SELECT COUNT(*) AS District_number FROM Applicant WHERE LOWER(District) = LOWER("DistrictB");
/* 2025-04-11 06:07:43 [5 ms] */ 
SELECT* FROM viewfour;
/* 2025-04-11 06:12:10 [27 ms] */ 
CREATE VIEW viewfive AS  SELECT COUNT(*) AS Program_number FROM Applicant WHERE Program = "Engineering";
/* 2025-04-11 06:12:11 [2 ms] */ 
SELECT* FROM viewfive;
/* 2025-04-11 06:17:00 [32 ms] */ 
CREATE VIEW VIEWSIX as SELECT  Program, COUNT(*) AS prognumber FROM Applicant GROUP BY Program;
/* 2025-04-11 06:17:01 [19 ms] */ 
SELECT* FROM VIEWSIX;
/* 2025-04-11 06:22:09 [54 ms] */ 
CREATE  VIEW viewseven as SELECT AVG(ScholarshipAmount) AS Totalscholarship FROM Applicant;
/* 2025-04-11 06:22:10 [5 ms] */ 
SELECT* FROM viewseven;
/* 2025-04-11 06:30:22 [4 ms] */ 
USE ICT_Scholarships;
/* 2025-04-11 06:30:24 [5 ms] */ 
SELECT DISTINCT Program FROM Applicant LIMIT 100;
/* 2025-04-11 11:41:41 [13 ms] */ 
USE ICT_Scholarships;
/* 2025-04-11 11:41:48 [5 ms] */ 
SELECT* FROM viewfive;
/* 2025-04-11 11:42:42 [22 ms] */ 
CREATE VIEW vieweight AS SELECT  DISTINCT District FROM Applicant;
/* 2025-04-11 11:42:43 [6 ms] */ 
SELECT* FROM viewfive;
/* 2025-04-11 11:43:05 [6 ms] */ 
SELECT* FROM vieweight;
/* 2025-04-11 11:45:20 [17 ms] */ 
CREATE VIEW viewnine AS SELECT * FROM Applicant WHERE Age <19;
/* 2025-04-11 11:45:22 [21 ms] */ 
SELECT* FROM viewnine;
/* 2025-04-11 11:57:40 [8 ms] */ 
USE ICT_Scholarships;
/* 2025-04-11 11:57:50 [34 ms] */ 
CREATE VIEW viewten AS SELECT Applicant.Applicantname and institution.InstitutionName FROM Applicant JOIN institution ON Applicant.ApplicantID=Institution.ApplicantID;
/* 2025-04-11 11:57:51 [20 ms] */ 
SELECT* FROM viewten;
/* 2025-04-11 12:01:31 [7 ms] */ 
SELECT * FROM viewten LIMIT 100;
/* 2025-04-11 12:09:17 [34 ms] */ 
DROP VIEW IF EXISTS viewten;
/* 2025-04-11 12:09:18 [41 ms] */ 
CREATE VIEW viewten AS 
SELECT Applicant.Applicantname, institution.InstitutionName 
FROM Applicant 
JOIN institution 
ON Applicant.ApplicantID = institution.ApplicantID;
/* 2025-04-11 12:09:20 [43 ms] */ 
SELECT * FROM viewten LIMIT 100;
/* 2025-04-11 12:14:00 [33 ms] */ 
CREATE VIEW viewtwelVe  AS SELECT Applicant.ApplicantName,institution.Institutionname 
FROM Applicant
JOIN
Institution
ON Applicant.ApplicantID= Institution.ApplicantID;
/* 2025-04-11 12:14:24 [16 ms] */ 
SELECT * FROM viewtwelve LIMIT 100;
/* 2025-06-18 15:51:28 [91 ms] */ 
CREATE DATABASE chapters;
