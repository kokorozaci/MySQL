/*развернуть дамп в новую базу
*/

create database if not exists sample;
use sample;
SOURCE example.sql;
show tables;
