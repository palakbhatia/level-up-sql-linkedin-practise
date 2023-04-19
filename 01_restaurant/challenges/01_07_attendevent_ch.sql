-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

select customerid as id
from customers where email in ('atapley2j@kinetecoinc.com')
;

insert into AnniversaryAttendees
values(92, 3);

select * from AnniversaryAttendees