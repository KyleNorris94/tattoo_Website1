-- create and select the database
DROP DATABASE IF EXISTS coffee;
CREATE DATABASE coffee;
USE coffee;  -- MySQL command

-- create the tables
CREATE TABLE categories (
  categoryID       INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryName     VARCHAR(255)   NOT NULL,
  PRIMARY KEY (categoryID)
);

CREATE TABLE products (
  productID        INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryID       INT(11)        NOT NULL,
  productCode      VARCHAR(10)    NOT NULL   UNIQUE,
  productName      VARCHAR(255)   NOT NULL,
  listPrice        DECIMAL(10,2)  NOT NULL,
  PRIMARY KEY (productID)
);

CREATE TABLE orders (
  orderID        INT(11)        NOT NULL   AUTO_INCREMENT,
  customerID     INT            NOT NULL,
  orderDate      DATETIME       NOT NULL,
  PRIMARY KEY (orderID)
);

-- insert data into the database
INSERT INTO categories VALUES
(1, 'Americanos'),
(2, 'Mochas'),
(3, 'Lattes'),
(4, 'Cortado'),
(5, 'Irish'),
(6, 'Doppio');

INSERT INTO products VALUES
(1, 1, 'PSL', 'Latte', '$2.25'),
(2, 1, 'White Chocolate', 'Mocha', '$1.75'),
(3, 1, 'Murica', 'Americano', '1.25'),
(4, 1, 'Magic Fresh', 'Cortado', '1.50'),
(5, 1, 'Baileys', 'Irish', '1.90'),
(6, 1, 'Jojo!!', 'Doppio', '1.25');
