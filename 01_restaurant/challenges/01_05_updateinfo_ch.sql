-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.
update Customers
set Address = '74 Pine St.', City = 'New York', State = 'NY'
where firstname = 'Taylor'
and lastname = 'Jenkins'
and City = 'Washington'
and Address = '27170 6th Ave.'
and State = 'DC';

