-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

select title, author, published, count(barcode)
from books as b 
where published between 1890 and 1899
and bookid not in (select bookid from loans where returneddate is NULL)
group by 1
order by title

select *
from loans 
where bookid in 
  (select bookid from books where barcode in (1291355714, 2054382275,2119519594)) 