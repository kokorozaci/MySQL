/*
 �� ������� users ���������� ������� �������������, ���������� � ������� � ���. 
 ������ ������ � ���� ������ ���������� �������� ('may', 'august')
 */
use vk;

select * from users
where id in (select user_id from profiles where monthname(profiles.birthday) in ('may', 'august'))