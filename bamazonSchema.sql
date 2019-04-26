DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT,
    porduct_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    stock_quantity INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO products (porduct_name, department_name, price, stock_quantity)
VALUES ("candy", "grocery", 2.50, 20);

INSERT INTO products (porduct_name, department_name, price, stock_quantity)
VALUES ("chips", "grocery", 4.00, 20);

INSERT INTO products (porduct_name, department_name, price, stock_quantity)
VALUES ("fruit", "grocery", 1.00, 20);

INSERT INTO products (porduct_name, department_name, price, stock_quantity)
VALUES ("DVD", "electronics", 15.00, 20);

INSERT INTO products (porduct_name, department_name, price, stock_quantity)
VALUES ("CD", "electronics", 10.00, 20);

INSERT INTO products (porduct_name, department_name, price, stock_quantity)
VALUES ("laptop", "electronics", 899.99, 20);

INSERT INTO products (porduct_name, department_name, price, stock_quantity)
VALUES ("plate", "kitchen", 7.25, 20);

INSERT INTO products (porduct_name, department_name, price, stock_quantity)
VALUES ("pan", "kitchen", 20.00, 20);

INSERT INTO products (porduct_name, department_name, price, stock_quantity)
VALUES ("towel", "bath", 15.00, 20);

INSERT INTO products (porduct_name, department_name, price, stock_quantity)
VALUES ("soap", "bath", 5.00, 20);