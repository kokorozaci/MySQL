

/* ѕусть в таблице users пол€ created_at и updated_at 
оказались незаполненными. «аполните их текущими датой и временем.
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