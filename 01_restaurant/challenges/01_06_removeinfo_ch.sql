-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

delete from reservations
where customerId In (select customerId 
                      from customers 
                      where firstname IN ('Norby'))
and date >= '2022-07-24'
