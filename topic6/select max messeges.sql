/*Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.*/

use vk;

select 
	sum(mess_to) as max_messeges,
	mess_user
from 
	(select 
		count(*) as mess_to,
		from_user_id as mess_user
	from messages
	where
		to_user_id = 1
	group by from_user_id
	union
	select 
		count(*) as mess_from,
		to_user_id as mess_user
	from messages
	where
		from_user_id  = 1
	group by to_user_id) src
group by mess_user
order by max_messeges DESC
LIMIT 1;

	
	
	
	