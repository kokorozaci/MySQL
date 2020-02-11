-- iii. Написать скрипт, отмечающий несовершеннолетних пользователей как неактивных (поле is_active = false). Предварительно добавить такое поле в таблицу profiles со значением по умолчанию = true (или 1)

USE vk;

alter table profiles
add is_active CHAR(1) default 1;

update profiles
set
	is_active = 0
where 
	TO_DAYS(NOW()) - TO_DAYS(birthday) <= 18*365;