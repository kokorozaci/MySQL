-- iv. Ќаписать скрипт, удал€ющий сообщени€ Ђиз будущегої (дата позже сегодн€шней)

use vk;

delete from messages
where to_days(created_at) >= to_days(now());