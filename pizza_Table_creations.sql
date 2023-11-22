--drop database pizza_delivery
--create database pizza_delivery
--use pizza_delivery

--customer table
drop table if exists customer
create table customer (
CustomerID int primary key,
FirstName varchar(50),
LastName varchar(50),
Email varchar(100),
Phone bigint,
Address varchar(50))


--orders table

drop table if exists orders
create table orders (
OrderID int primary key,
CustomerID int,
OrderDate datetime,
DeliveryAddress varchar(100),
TotalAmount float)

--order_details table

drop table if exists OrderDetails
create table OrderDetails (
OrderDetailID int primary key ,
OrderID int,
PizzaID int,
Quantity int)

---Ingredients table

drop table if exists ingredients
create table ingredients(
IngredientID int primary key,
IngredientName varchar (50),
UnitMeasure varchar(20)
)

--PizzaIngredients
drop table if exists PizzaIngredients
create table PizzaIngredients (
PizzaIngredientID int primary key,
PizzaID int,
IngredientID int, 
QuantityRequired int
)

--StockLevels

drop table if exists stocklevels
create table stocklevels(
StockLevelID int primary key,
IngredientID int,
QuantityInStock int,
LastUpdated date
)

--StockThresholds

drop table if exists StockThresholds
create table StockThresholds(
ThresholdID int primary key,
IngredientID int,
ThresholdQuantity int
)

--StockOrders

drop table if exists StockOrders
create table StockOrders(
StockOrderID int primary key, 
IngredientID int,
OrderDate date,
QuantityOrdered int,
Delivered int
)

--Staff
drop table if exists staff 
create table staff(
StaffID int primary key,
FirstName varchar(50),
LastName varchar(50),
Position varchar(50),
Salary float,
EmploymentStartDate date
)

--WorkSchedule

drop table if exists WorkSchedule
create table WorkSchedule(
ScheduleID int primary key,
StaffID int ,
Weekday varchar(50),
StartTime time,
EndTime time
)

--Pizzas
drop table if exists Pizzas
create table Pizzas(
PizzaID int primary key,
PizzaName varchar(50),
BasePrice float
)













