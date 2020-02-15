
/*������� users ���� �������� ��������������. ������ created_at � updated_at ���� ������ ����� VARCHAR � 
 * � ��� ������ ����� ���������� �������� � ������� "20.10.2017 8:10". 
 * ���������� ������������� ���� � ���� DATETIME, �������� �������� ����� ��������. */

use vk;

alter table users
add created_at VARCHAR(255),
add updated_at VARCHAR(255);

update users
set created_at = '20.10.2017 8:10',
	updated_at = '20.10.2017 8:10';

alter table users
add created_at_dt DATETIME,
add updated_at_dt DATETIME;

update users 
set updated_at_dt = STR_TO_DATE(updated_at,'%d.%m.%Y %h:%i'),
	created_at_dt = STR_TO_DATE(created_at,'%d.%m.%Y %h:%i');

alter table users
drop created_at,
drop updated_at,
change created_at_dt created_at DATETIME,
change updated_at_dt updated_at DATETIME;

