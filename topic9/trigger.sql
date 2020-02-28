/*
 *¬ таблице products есть два текстовых пол€: name с названием товара и description с его описанием. 
 *ƒопустимо присутствие обоих полей или одно из них. 
 *—итуаци€, когда оба пол€ принимают неопределенное значение NULL неприемлема. 
 *»спользу€ триггеры, добейтесь того, чтобы одно из этих полей или оба пол€ были заполнены. 
 *ѕри попытке присвоить пол€м NULL-значение необходимо отменить операцию.
 */
use shop;

CREATE TRIGGER check_null_update BEFORE UPDATE ON products
for each row
begin
	IF (new.name is null and new.description is null) then 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'UPDATE canceled';
  	END IF;
end//

CREATE TRIGGER check_null_insert BEFORE insert ON products
for each row
begin
	IF (new.name is null and new.description is null) then 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT canceled';
  	END IF;
end//