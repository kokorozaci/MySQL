use shop;

/*
Выведите список товаров products и разделов catalogs, который соответствует товару.
*/

select 
	p.name,
	c.name
from 
	products as p
left join
	catalogs as c
on
	p.catalog_id = c.id;