/*
 ����������� ���������� ���� ��������, ������� ���������� �� ������ 
 �� ���� ������. ������� ������, ��� ���������� ��� ������ 
 �������� ����, � �� ���� ��������
 */
use vk;

SELECT weekday(concat('-', DATE_FORMAT(now(), %Y), DATE_FORMAT(birthday, %m-%d))
from profiles;

select 
	count(*) as total,
	weekday (concat( year(now()), '-', DATE_FORMAT(birthday, '%m-%d'))) as days
from profiles
GROUP by
	days
order by
	days;