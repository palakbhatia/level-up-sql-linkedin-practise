-- Prepare a report of the library patrons
-- who have checked out the fewest books.
select firstname, lastname, email, count(loanid)
from patrons as p 
left join loans as l 
on l.patronid = p.patronid
group by 1,2,3
order by 4;