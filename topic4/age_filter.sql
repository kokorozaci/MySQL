-- iii. �������� ������, ���������� ������������������ ������������� ��� ���������� (���� is_active = false). �������������� �������� ����� ���� � ������� profiles �� ��������� �� ��������� = true (��� 1)

USE vk;

alter table profiles
add is_active CHAR(1) default 1;

update profiles
set
	is_active = 0
where 
	TO_DAYS(NOW()) - TO_DAYS(birthday) <= 18*365;