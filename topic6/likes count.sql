-- Подсчитать общее количество лайков, которые получили пользователи младше 10 лет..
use vk;

select 
	count(*)
from likes
where 
	media_id 
	in (select id
		from media
		where user_id 
		in (select user_id 
			from profiles 
			where TO_DAYS(NOW()) - TO_DAYS(birthday) <= 10*365.25));
