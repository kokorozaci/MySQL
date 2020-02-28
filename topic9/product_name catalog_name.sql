/*
 Создайте представление, которое выводит название name товарной позиции из таблицы products 
 и соответствующее название каталога name из таблицы catalogs.
 */
use shop;

CREATE VIEW cat_name AS 
SELECT 
	p.name as product,
	c.name as `catalog`
FROM 
	products p
join
	catalogs c
on
	p.catalog_id = c.id;

-- проверка
select *
from cat_name;