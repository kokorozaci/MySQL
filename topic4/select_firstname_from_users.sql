-- ii. Ќаписать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном пор€дке

USE vk;

select distinct firstname
from users