SELECT concat(t1.topping_name,',',t2.topping_name,',',t3.topping_name) as pizza,
t1.ingredient_cost+t2.ingredient_cost+t3.ingredient_cost as total_cost
FROM pizza_toppings t1 cross join pizza_toppings t2 
cross join pizza_toppings t3 WHERE
t1.topping_name < t2.topping_name and
t2.topping_name < t3.topping_name
order by total_cost desc, pizza asc;
