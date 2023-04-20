-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

update customers
set favoritedish = (select dishid from dishes where name IN ('Quinoa Salmon Salad'))
where firstname = 'Cleo' and lastname ='Goldwater'

select dishid from dishes where name IN ('Quinoa Salmon Salad')

select * from customers where customerid = 42;