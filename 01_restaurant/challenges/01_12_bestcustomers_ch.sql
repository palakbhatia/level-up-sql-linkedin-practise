-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

select firstname, lastname, email, count(orderid)
from orders
left join customers
on customers.customerid = orders.customerid
group by 1,2,3
order by 4 desc;