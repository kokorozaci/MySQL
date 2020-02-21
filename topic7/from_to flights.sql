-- create database flights;

use flights;

/*
  Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
  Поля from, to и label содержат английские названия городов, поле name — русское. 
  Выведите список рейсов flights с русскими названиями городов.
 
  
 
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
  ('moscow', 'Москва'),
  ('novgorod', 'Новгород'),
  ('irkutsk', 'Иркутск'),
  ('omsk', 'Омск'),
  ('kazan', 'Казань');*/

select 
	(select name from cities where label = `from`) as `from`,
	(select name from cities where label = `to`) as `to`
from flights;
  
 