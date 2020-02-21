use shop;

/*
 —оставьте список пользователей users, 
 которые осуществили хот€ бы один заказ orders в интернет магазине. 
  
 INSERT INTO orders
  (user_id)
VALUES
  (1),
  (1),
  (3),
  (6),
  (6),
  (4);
  
 INSERT INTO orders_products
  (order_id, product_id, total)
VALUES
  (1, 1, 1),
  (2, 5, 1),
  (3, 4, 1),
  (4, 5, 2),
  (5, 4, 1),
  (3, 1, 1),
  (5, 7, 1),
  (5, 2, 1),
  (6, 6, 1);*/

select
	u.name,
	count(*) as n_orders
from
	orders as o
left join
	users as u
on
	u.id = o.user_id
group by (u.name);