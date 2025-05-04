CREATE database test3 ;
use test3;
CREATE TABLE test3. Suppliers (
    SupplierID INT PRIMARY KEY AUTO_INCREMENT,
    SupplierName VARCHAR(100),
    ContactNumber VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(255)
);

CREATE TABLE test3. Medicines (
    MedicineID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10, 2),
    QuantityInStock INT,
    ExpiryDate DATE,
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);
CREATE TABLE test3. Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    ContactNumber VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(255)
);

CREATE TABLE test3. Invoices (
    InvoiceID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    InvoiceDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE test3. InvoiceDetails (
    InvoiceDetailID INT PRIMARY KEY AUTO_INCREMENT,
    InvoiceID INT,
    MedicineID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (InvoiceID) REFERENCES Invoices(InvoiceID),
    FOREIGN KEY (MedicineID) REFERENCES Medicines(MedicineID)
);
INSERT INTO test3. Suppliers (SupplierName, ContactNumber, Email, Address)
VALUES 
('مورد 1', '1234567890', 'supplier1@example.com', 'عنوان المورد 1'),
('مورد 2', '0987654321', 'supplier2@example.com', 'عنوان المورد 2');
INSERT INTO test3. Medicines (Name, Description, Price, QuantityInStock, ExpiryDate, SupplierID)
VALUES 
('دواء A', 'وصف الدواء A', 10.50, 100, '2025-12-31', 1),
('دواء B', 'وصف الدواء B', 15.75, 50, '2024-06-30', 2),
('دواء C', 'وصف الدواء C', 8.00, 200, '2026-01-15', 1);
INSERT INTO test3. Customers (CustomerName, ContactNumber, Email, Address)
VALUES 
('عميل 1', '1112223334', 'customer1@example.com', 'عنوان العميل 1'),
('عميل 2', '4445556667', 'customer2@example.com', 'عنوان العميل 2');
INSERT INTO test3. Invoices (CustomerID, InvoiceDate, TotalAmount)
VALUES 
(1, '2023-10-01', 50.00),
(2, '2023-10-02', 30.00);
INSERT INTO test3. InvoiceDetails (InvoiceID, MedicineID, Quantity, Price)
VALUES 
(1, 1, 2, 10.50),
(1, 2, 1, 15.75),
(2, 3, 3, 8.00);