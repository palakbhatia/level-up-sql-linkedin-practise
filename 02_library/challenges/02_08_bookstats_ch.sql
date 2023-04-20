-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

select published, count(distinct title)
from books
group by 1
order by 1;

select title, count(loanid)
from loans as l 
left join books as b 
on b.bookid = l.BookID
group by 1
order by 2 desc
limit 5;
