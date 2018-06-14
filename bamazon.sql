CREATE DATABASE bamazon;

USE bamazon

DROP DATABASE IF EXISTS bamazon;

CREATE TABLE products (
    item_id INTEGER(10) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(300 NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    stock_quantity TINYINT (1) NOT NULL);

INSERT INTO products (product_name, department_name, price,stock_quantity)
    VALUES(Nintendo Switch, Electronics, 300.00, 8),
    VALUES(Fire 7 Tablet, Electronics, 39.99, 20),
    VALUES(Beats Studio Wireless Headphones, Audio ,219.99, 15),
    VALUES(Playstation 4, Electronics,)

