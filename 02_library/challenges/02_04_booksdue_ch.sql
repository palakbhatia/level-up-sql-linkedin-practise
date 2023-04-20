-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

select title, firstname, email, duedate
from loans as l 
left join books as b 
on b.bookid = l.bookid
left join patrons as p 
on p.patronid = l.patronid
where duedate = '2022-07-13'
and ReturnedDate is NULL;