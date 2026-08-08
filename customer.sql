CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Email VARCHAR(100),
    City VARCHAR(50),
    Age INT
);

INSERT INTO Customer (CustomerID, CustomerName, Email, City, Age)
VALUES
(1, 'Rahul', 'rahul@gmail.com', 'Chennai', 25),
(2, 'Priya', 'priya@gmail.com', 'Bangalore', 28),
(3, 'Arun', 'arun@gmail.com', 'Coimbatore', 23),
(4, 'Divya', 'divya@gmail.com', 'Madurai', 30),
(5, 'Karthik', 'karthik@gmail.com', 'Chennai', 27);

select * from Customer;