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
insert into Suppliers values ('SUPP102', 'Sony', 1212121213, 'sony13@gmail.com', 'Delhi');
insert into Suppliers values ('SUPP103', 'Apple', 1212121214, 'apple14@gmail.com', 'Mumbai');
insert into Suppliers values ('SUPP104', 'Nokia', 1212121215, 'nokia15@gmail.com', 'Chennai');
insert into Suppliers values ('SUPP105', 'LG', 1212121216, 'lg16@gmail.com', 'Kolkata');
insert into Suppliers values ('SUPP106', 'OnePlus', 1212121217, 'oneplus17@gmail.com', 'Hyderabad');
insert into Suppliers values ('SUPP107', 'Huawei', 1212121218, 'huawei18@gmail.com', 'Pune');
insert into Suppliers values ('SUPP108', 'Google', 1212121219, 'google19@gmail.com', 'Jaipur');
insert into Suppliers values ('SUPP109', 'Asus', 1212121220, 'asus20@gmail.com', 'Lucknow');
insert into Suppliers values ('SUPP110', 'HTC', 1212121221, 'htc21@gmail.com', 'Bhopal');



insert into Products values('PROD101', 'SUPP101', 'Galaxy A7', 'Electronics', 23000, 30000, '8GB RAM, 128GB Storage, Snapdragon 870, 64MP Ultrawide camera, 5200 Mah battery, In-built fingerprint Sensor');
insert into Products values('PROD102', 'SUPP102', 'Sony Xperia Z5', 'Electronics', 25000, 32000, '4GB RAM, 64GB Storage, Snapdragon 865, 48MP Camera, 4000 Mah battery, Waterproof design');
insert into Products values('PROD103', 'SUPP103', 'iPhone 13', 'Electronics', 70000, 80000, '4GB RAM, 128GB Storage, A15 Bionic, 12MP Dual camera, 3100 Mah battery, Face ID');
insert into Products values('PROD104', 'SUPP104', 'Nokia 7 Plus', 'Electronics', 18000, 24000, '4GB RAM, 64GB Storage, Snapdragon 710, 16MP Camera, 3800 Mah battery, Aluminum body');
insert into Products values('PROD105', 'SUPP105', 'LG V40', 'Electronics', 30000, 38000, '6GB RAM, 128GB Storage, Snapdragon 855, 48MP Triple camera, 4000 Mah battery, OLED display');
insert into Products values('PROD106', 'SUPP106', 'OnePlus 9', 'Electronics', 40000, 50000, '8GB RAM, 256GB Storage, Snapdragon 888, 50MP Triple camera, 4500 Mah battery, 120Hz AMOLED display');
insert into Products values('PROD107', 'SUPP107', 'Huawei P40', 'Electronics', 35000, 43000, '8GB RAM, 128GB Storage, Kirin 990, 40MP Triple camera, 4200 Mah battery, AppGallery instead of Google Play');
insert into Products values('PROD108', 'SUPP108', 'Google Pixel 6', 'Electronics', 55000, 62000, '8GB RAM, 128GB Storage, Google Tensor, 50MP Dual camera, 4600 Mah battery, Stock Android');
insert into Products values('PROD109', 'SUPP109', 'Asus Zenfone 8', 'Electronics', 30000, 37000, '6GB RAM, 64GB Storage, Snapdragon 888, 48MP Camera, 4000 Mah battery, Compact design');
insert into Products values('PROD110', 'SUPP110', 'HTC U12+', 'Electronics', 25000, 32000, '6GB RAM, 128GB Storage, Snapdragon 845, 20MP Dual camera, 3500 Mah battery, Edge Sense 2.0');


insert into Customers1 values('CUST101', 'Raj Electronics', 1212121212, 'rajelectronics@gmail.com', 'Uttar Pradesh', 'Cash');
insert into Customers1 values('CUST102', 'Kumar Appliances', 1212121213, 'kumarappliances@gmail.com', 'Delhi', 'Credit');
insert into Customers1 values('CUST103', 'Sonal Tech', 1212121214, 'sonaltech@gmail.com', 'Maharashtra', 'Cash');
insert into Customers1 values('CUST104', 'Preeti Gadgets', 1212121215, 'preetigadgets@gmail.com', 'Gujarat', 'Debit');
insert into Customers1 values('CUST105', 'Arjun Digital Store', 1212121216, 'arjundigital@gmail.com', 'Kerala', 'Credit');
insert into Customers1 values('CUST106', 'Minal Electronic Hub', 1212121217, 'minalelectronic@gmail.com', 'Bihar', 'Cash');
insert into Customers1 values('CUST107', 'Tech Solutions', 1212121218, 'techsolutions@gmail.com', 'West Bengal', 'Debit');
insert into Customers1 values('CUST108', 'Vivaan Tech Plaza', 1212121219, 'vivaantech@gmail.com', 'Tamil Nadu', 'Cash');
insert into Customers1 values('CUST109', 'Rhea_s Gadget Gallery', 1212121220, 'rheagadgets@gmail.com', 'Odisha', 'Credit');
insert into Customers1 values('CUST110', 'Ahaan Electronics', 1212121221, 'ahaanelectronics@gmail.com', 'Rajasthan', 'Debit');



insert into Orders1 values('ORDER101', 'CUST101', 'PROD101', '2023-10-06 14:45:32', 30000, 2, 60000, 'Dispatched');
insert into Orders1 values('ORDER102', 'CUST102', 'PROD102', '2023-10-06 15:10:45', 32000, 3, 96000, 'Confirmed');
insert into Orders1 values('ORDER103', 'CUST103', 'PROD103', '2023-10-06 15:30:20', 80000, 1, 80000, 'Delivered');
insert into Orders1 values('ORDER104', 'CUST104', 'PROD104', '2023-10-06 15:45:10', 24000, 2, 48000, 'Dispatched');
insert into Orders1 values('ORDER105', 'CUST105', 'PROD105', '2023-10-06 16:00:00', 38000, 1, 38000, 'Confirmed');
insert into Orders1 values('ORDER106', 'CUST106', 'PROD106', '2023-10-06 16:15:45', 50000, 1, 50000, 'Delivered');
insert into Orders1 values('ORDER107', 'CUST107', 'PROD107', '2023-10-06 16:30:30', 43000, 3, 129000, 'Dispatched');
insert into Orders1 values('ORDER108', 'CUST108', 'PROD108', '2023-10-06 16:45:00', 62000, 2, 124000, 'Confirmed');
insert into Orders1 values('ORDER109', 'CUST109', 'PROD109', '2023-10-06 17:00:15', 37000, 1, 37000, 'Delivered');
insert into Orders1 values('ORDER110', 'CUST110', 'PROD110', '2023-10-06 17:15:25', 32000, 2, 64000, 'Dispatched');






