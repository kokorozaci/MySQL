-- iv. �������� ������, ��������� ��������� ��� �������� (���� ����� �����������)

use vk;

delete from messages
where to_days(created_at) >= to_days(now());