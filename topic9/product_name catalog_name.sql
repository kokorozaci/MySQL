/*
 �������� �������������, ������� ������� �������� name �������� ������� �� ������� products 
 � ��������������� �������� �������� name �� ������� catalogs.
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

-- ��������
select *
from cat_name;