/* Write your T-SQL query statement below */
select u.user_id as buyer_id, min(join_date) as join_date, count(o.item_id) as orders_in_2019
from orders o
right join users u
on o.buyer_id = u.user_id and year(order_date) = '2019'
group by u.user_id