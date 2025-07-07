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
