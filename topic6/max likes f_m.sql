-- Определить кто больше поставил лайков (всего) - мужчины или женщины?

use vk;

select 
count(*) as n_likes,
case(select gender from profiles where user_id = likes.user_id) 
	when 'm' then 'мужчины'
	when 'f' then 'женщины'
	else '-'
end as 'gender'
from likes
group by gender
order by n_likes DESC
LIMIT 1;
