use shop;

/*
�������� ������ ������� products � �������� catalogs, ������� ������������� ������.
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