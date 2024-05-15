create database OrderManagementSystemCoding
use OrderManagementSystemCoding


CREATE TABLE Products (
    productId INT PRIMARY KEY,
    productName NVARCHAR(255),
    description NVARCHAR(MAX),
    price FLOAT,
    quantityInStock INT,
    type NVARCHAR(50)
);

CREATE TABLE Users (
    userId INT PRIMARY KEY,
    username NVARCHAR(255),
    password NVARCHAR(255),
    role NVARCHAR(50) CHECK (role IN ('Admin', 'User'))
);

CREATE TABLE [Order] (
    OrderId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT,
    FOREIGN KEY (UserId) REFERENCES Users(UserId)
);

CREATE TABLE OrderProduct (
    OrderId INT,
    ProductId INT,
    Quantity INT,
    PRIMARY KEY (OrderId, ProductId),
    FOREIGN KEY (OrderId) REFERENCES [Order](OrderId),
    FOREIGN KEY (ProductId) REFERENCES Products(ProductId)
);


INSERT INTO Products (productId, productName, description, price, quantityInStock, type)
VALUES 
    (1, 'Laptop', 'High-performance laptop', 1000.00, 10, 'Electronics'),
    (2, 'T-shirt', 'Cotton T-shirt', 20.00, 50, 'Clothing'),
    (3, 'Smartphone', 'Latest smartphone model', 800.00, 20, 'Electronics'),
    (4, 'Headphones', 'Noise-cancelling headphones', 150.00, 15, 'Electronics');


INSERT INTO Users (userId, username, password, role)
VALUES 
    (1, 'john_doe', 'password123', 'Admin'),
    (2, 'jane_smith', 'password456', 'User'),
    (3, 'mike_jones', 'password789', 'User'),
    (4, 'alice_brown', 'password101', 'User');


INSERT INTO [Order] (UserId)
VALUES 
    (1), 
    (2), 
    (3), 
    (4); 


INSERT INTO OrderProduct (OrderId, ProductId, Quantity)
VALUES 
    (1, 1, 1),
    (1, 2, 2), 
    (2, 3, 1),
    (3, 4, 1), 
    (4, 2, 3);