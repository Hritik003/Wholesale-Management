create database dbms_project_1;
use dbms_project_1;
create table Suppliers(
SupplierID varchar(10) PRIMARY KEY,
SupplierName varchar(100) NOT NULL UNIQUE,
SupplierContact int check(SupplierContact>=1000000000 and SupplierContact<=9999999999) UNIQUE NOT NULL,
SupplierEmail varchar(75) UNIQUE,
SupplierAddress varchar(50) NOT NULL
);

select * from Suppliers;

create table Products(
ProductID varchar(10) PRIMARY KEY,
SupplierID varchar(10) NOT NULL UNIQUE REFERENCES Suppliers(SupplierID),
ProductName varchar(100) NOT NULL UNIQUE,
ProductType varchar(100) NOT NULL,
Product_CP decimal(10,2) check(Product_CP>0) NOT NULL,
Product_SP decimal(10,2) check(Product_SP>0) NOT NULL,
ProductDesc varchar(255)
);

create table Customers1(
CustomerID varchar(10) PRIMARY KEY,
CustomerName varchar(100) NOT NULL,
CustomerContact int check(CustomerContact>=1000000000 and CustomerContact<=9999999999) UNIQUE NOT NULL,
CustomerEmail varchar(75) UNIQUE,
CustomerAddress varchar(50) NOT NULL,
PaymentMode varchar(20) NOT NULL
);

create table Orders1(
OrderID varchar(10) PRIMARY KEY,
CustomerID varchar(10) NOT NULL UNIQUE REFERENCES Customers1(CustomerID),
ProductID varchar(10) NOT NULL REFERENCES Products(ProductID),
OrderDate datetime NOT NULL,
Product_SP decimal(10,2) check(Product_SP>0) NOT NULL REFERENCES Products(ProductSP),
OrderQuantity int check(OrderQuantity>0) NOT NULL,
OrderAmount int check(OrderAmount>0) NOT NULL,
OrderStatus varchar(10) check(OrderStatus in ('Confirmed', 'Processing', 'Dispatched', 'Delivered'))
);

insert into Suppliers values ('SUPP101', 'Samsung', 1212121212, 'samsung12@gmail.com', 'Bengaluru');

insert into Products values('PROD101', 'SUPP101', 'Galaxy A7', 'Electronics', 23000, 30000, '8GB RAM, 128GB Storage, Snapdragon 870, 64MP Ultrawide camera, 5200 Mah battery, In-built fingerprint Sensor');

insert into Customers1 values('CUST101', 'Raj Electronics', 1212121212, 'rajelectronics@gmail.com', 'Uttar Pradesh', 'Cash');

insert into Orders1 values('ORDER101', 'CUST101', 'PROD101', '2023-10-06 14:45:32', 30000, 2, 60000, 'Dispatched');


