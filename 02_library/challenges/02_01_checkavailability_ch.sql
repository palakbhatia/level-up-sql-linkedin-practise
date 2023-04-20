-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

select *
from books
where title in ('Dracula')
SELECT
(select Count(bookid) 
        from books 
        where title in ('Dracula')) -
(Select count(l.bookid)
        from loans as l 
        left join books as b 
        on b.bookid = l.bookid 
        where title in ('Dracula')
        and returneddate is NULL) as available_copies



