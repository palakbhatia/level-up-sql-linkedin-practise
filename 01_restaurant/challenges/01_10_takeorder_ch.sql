-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

select *
from customers 
where firstname in ('Loretta')
and lastname in ('Hundey')
and address in ('6939 Elka Place');
-- Customer Id 70
-- Create a new order in the Orders table
insert into orders(customerid, orderdate)
values(70, '2022-09-20 14:00:00');

-- Find order Id to order dishes
select *
from Orders
where customerid = 70
and orderdate = '2022-09-20 14:00:00';

-- OrderId = 1001
--Get all dish Ids
select * from Dishes
where name in ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie');

delete from ordersdishes where orderid = 1001;
-- House salad is id 7, mini cheeseburgers is 4 and tropical blue smoothie is 20
insert into ordersdishes(orderid, dishid)
values(1001, (Select dishid from dishes where name in ('House Salad')));
insert into ordersdishes(orderid, dishid)
values(1001, (Select dishid from dishes where name in ('Mini Cheeseburgers')));
insert into ordersdishes(orderid, dishid)
values(1001, (Select dishid from dishes where name in ('Tropical Blue Smoothie')));

select * from ordersdishes where orderid = 1001;

select SUM(price)
from Dishes
where name in ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie');