/*
  �� ������� catalogs ����������� ������ ��� ������ �������. SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
  ������������ ������ � �������, �������� � ������ IN
 */
use shop;

SELECT * FROM catalogs WHERE id IN (5, 1, 2)
order by FIELD(id, 5, 1, 2);