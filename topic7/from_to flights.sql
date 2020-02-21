-- create database flights;

use flights;

/*
  ����� ������� ������� ������ flights (id, from, to) � ������� ������� cities (label, name). 
  ���� from, to � label �������� ���������� �������� �������, ���� name � �������. 
  �������� ������ ������ flights � �������� ���������� �������.
 
  
 
 CREATE TABLE flights (
	id SERIAL PRIMARY key,
	`from` VARCHAR(50),
	`to` VARCHAR(50)
	
);

CREATE TABLE cities (
	label VARCHAR(50),
	name VARCHAR(50)
	
);

 INSERT INTO flights
  (`from`, `to`)
VALUES
  ('moscow', 'omsk'),
  ('novgorod', 'kazan'),
  ('irkutsk', 'moscow'),
  ('omsk', 'irkutsk'),
  ('moscow', 'kazan');
 
  INSERT INTO cities
  (label, name)
VALUES
  ('moscow', '������'),
  ('novgorod', '��������'),
  ('irkutsk', '�������'),
  ('omsk', '����'),
  ('kazan', '������');*/

select 
	(select name from cities where label = `from`) as `from`,
	(select name from cities where label = `to`) as `to`
from flights;
  
 