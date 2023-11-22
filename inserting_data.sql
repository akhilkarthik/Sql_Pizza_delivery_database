
use pizza_delivery
--- inserting the data to the created tables


---customer

insert into customer (CustomerID,FirstName,LastName,Email,Phone,Address)
values(1,'John','Doe','john.doe@example.com','1234567890','123 Main St'),
(2,'Jane','Smith','jane.smith@example.com','9876543210','456 Oak Ave'),
(3,'Bob','Johnson','bob.johnson@example.com','5551234567','789 Pine Rd'),
(4,'Alice','Williams','alice.williams@example.com','9998887777','101 Elm Ln'),
(5,'Charlie','Brown','charlie.brown@example.com','1112223333','202 Cedar Blvd')

--ingredients
insert into ingredients(IngredientID,IngredientName,UnitMeasure)
values(1,'Tomato Sauce','Cup'),
(2,'Mozzarella Cheese','Ounce'),
(3,'Pepperoni','Slice'),
(4,'Mushrooms','Gram'),
(5,'Green Peppers','Piece')

--orders

insert into orders (OrderID,CustomerID,OrderDate,DeliveryAddress,TotalAmount)
values(1,1,'2023-01-15 12:30:00','123 Main St',25.99),			
(2,2,'2023-02-01 18:45:00','456 Oak Ave',32.50),			
(3,3,'2023-03-10 20:00:00','789 Pine Rd',18.75),			
(4,4,'2023-04-05 15:15:00','101 Elm Ln',42.00),			
(5,5,'2023-05-20 11:00:00','202 Cedar Blvd',28.80)			

--pizzas

insert into pizzas(PizzaID,PizzaName,BasePrice)
values(101,'Margherita',12.99),	
(102,'Pepperoni',15.50),	
(103,'Supreme',9.25),
(104,'Vegetarian',21.00),
(105,'Hawaiian',14.40)	


--OrderDetails

insert into orderdetails(OrderDetailID,OrderID,PizzaID,Quantity)
values(1,1,101,2),
(2,2,102,1),
(3,3,103,3),
(4,4,104,1),
(5,5,105,2)

--pizzaingredients
insert into pizzaingredients(PizzaIngredientID,PizzaID,IngredientID,QuantityRequired)
values(1,101,1,2),
(2,102,2,8),
(3,103,3,10),
(4,104,4,100),
(5,105,5,5)


--staff

insert into staff (StaffID,FirstName,LastName,Position,Salary,EmploymentStartDate)
values(1,'David','Miller','Chef',3000.00,'2022-01-01'),		
(2,'Sarah','Jones','Delivery Driver',2000.00,'2022-02-15'),		
(3,'Michael','Clark','Cashier',2500.00,'2022-03-20'),		
(4,'Emily','Davis','Chef',2800.00,'2022-04-10')		,	
(5,'Daniel','Moore','Manager',4000.00,'2022-05-05')			

--stockorders

insert into stockorders(StockOrderID,IngredientID,OrderDate,QuantityOrdered,Delivered)
values(1,1,'2023-01-20',30,1),	
(2,2,'2023-02-10',20,0),
(3,3,'2023-03-15',40,1),	
(4,4,'2023-04-08',50,0),	
(5,5,'2023-05-25',15,0)	


--stock thresholds

insert into stockthresholds(ThresholdID,IngredientID,ThresholdQuantity)
values(1,1,20),
(2,2,50),
(3,3,30),
(4,4,100),
(5,5,10)



--workschedule

insert into workschedule(ScheduleID,StaffID,Weekday,StartTime,EndTime)
values(1,1,'Monday','08:00:00','15:00:00'),
(2,2,'Tuesday','11:00:00','18:00:00'),
(3,3,'Wednesday','09:30:00','16:30:00'),
(4,4,'Thursday','12:00:00','19:00:00'),
(5,5,'Friday','10:00:00','17:00:00')










