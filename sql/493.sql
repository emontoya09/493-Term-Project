CREATE TABLE Blogs
(
    blogID INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title VARCHAR(60) NOT NULL,
    body VARCHAR(1500) NOT NULL,
    tag VARCHAR(20)
);
CREATE TABLE CardsPic
(
    imageID INT(50) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    imageName VARCHAR(255) NOT NULL,
    imagePath VARCHAR(255) NOT NULL
);
CREATE TABLE Employee
(
    employeeId INT(50) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);
CREATE TABLE Merchandise
(
    card_id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    figureName VARCHAR(255) NOT NULL,
    figurePath VARCHAR(255) NOT NULL,
    cardPrice FLOAT NOT NULL,
    cardDescription VARCHAR(1500) NOT NULL
);
CREATE TABLE Products
(
    ProductId INT(50) PRIMARY KEY NOT NULL,
    price INT(50) NOT NULL,
    imageID INT(50)
);
CREATE TABLE Test
(
    ProductId INT(11) NOT NULL,
    ProductName VARCHAR(40) NOT NULL,
    Price FLOAT NOT NULL,
    ProductDescription VARCHAR(1000) NOT NULL,
    ProductImage VARCHAR(40) NOT NULL,
    CONSTRAINT `PRIMARY` PRIMARY KEY (ProductId, ProductName)
);
CREATE TABLE Users
(
    uid INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    uname VARCHAR(60) NOT NULL,
    password VARCHAR(60) NOT NULL
);
ALTER TABLE Products ADD FOREIGN KEY (imageID) REFERENCES CardsPic (imageID);
CREATE INDEX fk_imageID ON Products (imageID)CREATE PROCEDURE highestPrice_NW();
CREATE PROCEDURE sp_ImagePath();
CREATE PROCEDURE cw_customer(var2 VARCHAR);
CREATE PROCEDURE sp_ImageName();
CREATE PROCEDURE sp_ImageNameAscend();
CREATE PROCEDURE sp_ImageNameDescend();
CREATE PROCEDURE cw_products(var1 VARCHAR);
CREATE PROCEDURE cw_images(var3 VARCHAR);
CREATE PROCEDURE cw_remove(var4 VARCHAR);
CREATE PROCEDURE sp_AddBlog();