/*
 »з таблицы users необходимо извлечь пользователей, родившихс€ в августе и мае. 
 ћес€цы заданы в виде списка английских названий ('may', 'august')
 */
use vk;

select * from users
where id in (select user_id from profiles where monthname(profiles.birthday) in ('may', 'august'))