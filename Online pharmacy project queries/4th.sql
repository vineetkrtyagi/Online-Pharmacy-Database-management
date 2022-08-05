use Online_pharmacy;
-- FIND USENAME WHOSE ORDER PAYMENT IS FAILED

select user_name 
from users
where user_id in (select user_id
from orders, payment
where orders.order_id= payment.order_id and payment.payment_status= 'INSUFFICIENT BALANCE'
);