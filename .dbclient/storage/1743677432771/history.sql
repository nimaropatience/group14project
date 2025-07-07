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
