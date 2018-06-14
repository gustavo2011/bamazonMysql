CREATE DATABASE bamazon;

USE bamazon;

DROP DATABASE IF EXISTS bamazon;

CREATE TABLE products (
    item_id INT(10) NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(30) NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    stock_quantity TINYINT (1) NOT NULL)
    PRIMARY KEY('item_id')
    );

INSERT INTO products (product_name, department_name, price,stock_quantity)
    VALUES  ('Nintendo Switch', 'Electronics', '300.00', '8'),
            ('Fire 7 Tablet', 'Electronics', '39.99', '20'),
            ('Beats Studio Wireless Headphones', 'Audio' ,'219.99', '15'),
            ('Playstation 4', 'Electronics', '250.00', '6'),
            ('Ipad Pro' , 'Electronics', '400.00', '2'),
            ('Cool Water Cologne', 'Fragrance', '40.00', '18'),
            ('God of War', 'Video Games', '39.99', '15'),
            ('Logitech Mouse', 'Computer Hardware', '50.00', '9'),
            ('Despicable Me' , 'Movies', '10.99', '11'),
            ('Xbox One X', 'Electronics', '500.00', '1');

SELECT * FROM products;


