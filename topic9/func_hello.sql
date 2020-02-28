/*
 Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
 в зависимости от текущего времени суток. 
 С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
 с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
 с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи"
 */
DELIMITER //

-- в консоли работает, тут почему то нет

drop function if exists hello//

create function hello ()
RETURNS TEXT DETERMINISTIC
begin
	declare dat int;
	set dat = hour(now());
	if(dat >= 6 and dat <= 12) then return 'Доброе утро';
	elseif(dat >= 13 and dat <= 18) then return 'Добрый день';
	elseif(dat >= 19) then return 'Добрый вечер';
	else
		return 'Доброй ночи';
	end if;
end//

select hello()//

