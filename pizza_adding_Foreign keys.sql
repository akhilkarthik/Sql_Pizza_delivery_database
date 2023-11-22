
--use pizza_delivery

-- adding foreign keys to the table


alter table orders
add constraint fk_ord_cust
foreign key (CustomerID) references customer(CustomerID)

alter table orderdetails
add constraint fk_ordtails_ord
foreign key (OrderID) references orders(OrderID)

alter table orderdetails
add constraint fk_ordtails_pizza
foreign key (PizzaID) references pizzas(PizzaID)

alter table workschedule
add constraint fk_work_staff
foreign key (staffId) references staff(staffId)

alter table pizzaingredients
add constraint fk_pizin_ing
foreign key (IngredientID) references ingredients (IngredientID)


alter table pizzaingredients
add constraint fk_pizin_pizza
foreign key (pizzaID) references pizzas (pizzaID)


alter table stockorders
add constraint fk_stock_ing
foreign key (IngredientID) references Ingredients (IngredientID)


alter table stocklevels
add constraint fk_stockl_ing
foreign key (IngredientID) references Ingredients (IngredientID)


alter table stockthresholds
add constraint fk_stockt_ing
foreign key (IngredientID) references Ingredients (IngredientID)

