-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

select *
from customers
where firstname IN ('Sam')
and lastname in ('McAdams')
and email in ('smac@kinetecoinc.com');

-- The customer does not exist. We first need to create this customer in the database
Insert Into Customers (FirstName, LastName, Email)
VALUES('Sam','McAdams','smac@kinetecoinc.com');

-- We generate the new customer with customer id 102

Insert into Reservations(customerid, date, partysize)
values(102,'2022-08-12 18:00:00',5)

select *
from Reservations
where CustomerID = 102;

