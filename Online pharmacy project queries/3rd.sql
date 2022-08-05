use Online_pharmacy;

-- FIND UERNAME WHO ORDERS DRUF OF CIPLA COMPANY OR WHO ORDER DRUG WHOSE SELLING PRICE > 20000

select user_name
from Users
where user_id in (select user_id
from orders, company
where orders.com_id= company.com_id and company.com_name= 'CIPLA'
)
union
select user_name
from Users
where user_id in (select user_id
from cart, drugs
where cart.d_code= drugs.d_code and drugs.sellin_price>20000
)