CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE product (
    id INIT NOT NULL AUTO_INCREMENT,
    porduct_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    price DECIMAL (10.2) NOT NULL,
    stock_quantity INT NOT NULL,
    PRIMARY KEY (id)
);