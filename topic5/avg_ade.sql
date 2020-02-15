/*
 Подсчитайте средний возраст пользователей в таблице users
 */
use vk;

select
  round(AVG(TIMESTAMPDIFF(YEAR, birthday, NOW()))) as avg_age
from profiles;