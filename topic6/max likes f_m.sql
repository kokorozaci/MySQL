-- ���������� ��� ������ �������� ������ (�����) - ������� ��� �������?

use vk;

select 
count(*) as n_likes,
case(select gender from profiles where user_id = likes.user_id) 
	when 'm' then '�������'
	when 'f' then '�������'
	else '-'
end as 'gender'
from likes
group by gender
order by n_likes DESC
LIMIT 1;
