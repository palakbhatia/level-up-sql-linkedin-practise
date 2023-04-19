-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

select *
from customers as C
left join Reservations as r
on r.customerid = c.CustomerId
where lastname Like ('St%')
and partysize = 4
order by date desc;