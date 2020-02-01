/*ѕрактическое задание по теме У”правление ЅƒФ
—оздайте базу данных example, разместите в ней таблицу users, 
состо€щую из двух столбцов, числового id и строкового name.
*/

create database if not exists example;
show databases;
use example
drop table if exists users;
create table users(
  id INT unsigned not NULL,
  name VARCHAR(255)
 );
show tables;
select * from users;