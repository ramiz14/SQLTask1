create database NTDHoldingDb

create table 
Employees
(
Id int Primary Key Identity,
Name nvarchar(100),
Surname nvarchar(100),
Position nvarchar(100),
Salary float
)

Insert Into 
Employees 
Values
('Namiq','Abilov','back-end developer',1500),
('Mishahin','Alizade','Driver',1400),
('Balaga','aliyev','Lawyer',2000)


select AVG(Salary) from Employees

select * from Employees where Salary>(select AVG(Salary) from Employees)

select MIN(Salary)from Employees

select MAX(Salary)from Employees

create database Market

create table 
Products
(
Id int Primary key identity,
Name nvarchar(100),
Price float
)
Alter table Products
add  Brand nvarchar(100)

Insert Into 
Products 
Values
('Milk',2.5,'Milla'),
('Waffle',3,'Hoshbesh'),
('Bread',0.7,'Bine')

Select * from Products where Price<(select AVG(Price) from Products)

select * from Products where Price>1

select Id, (Name+' '+Brand) as ProductInfo, Price from Products where LEN(Brand)>=5


