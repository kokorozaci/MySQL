

/* ����� � ������� users ���� created_at � updated_at 
��������� ��������������. ��������� �� �������� ����� � ��������.
 */
use vk;
/*
alter table users
add created_at DATETIME;

alter table users
add updated_at DATETIME;*/


update users 
set created_at = NOW()
where created_at = null;

update users 
set updated_at = NOW()
where updated_at = null;