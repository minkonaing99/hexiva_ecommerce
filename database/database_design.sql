CREATE DATABASE commerce;
USE commerce;
CREATE TABLE user (
    user_id VARCHAR(50) PRIMARY KEY,
    username VARCHAR(100),
    password VARCHAR(100),
    firstname VARCHAR(100),
    lastname VARCHAR(100),
    email VARCHAR(100),
    last_login DATE,
    create_acc DATE
);
CREATE TABLE address (
    address_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id VARCHAR(50),
    addressline1 VARCHAR(255),
    addressline2 VARCHAR(255),
    city VARCHAR(100),
    country VARCHAR(100),
    zip_code VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);