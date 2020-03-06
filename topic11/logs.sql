/*
�������� ������� logs ���� Archive. ����� ��� ������ �������� ������ � �������� users, catalogs � products � ������� logs 
���������� ����� � ���� �������� ������, �������� �������, ������������� ���������� ����� � ���������� ���� name.
*/

use shop;

DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `created_at` DATETIME DEFAULT NOW() COMMENT '����� � ���� �������� ������',
  `table_name` varchar(10) COMMENT '�������� �������',
  `primary_key_value` BIGINT COMMENT '������������� ���������� �����',
  `value_name` varchar(255) COMMENT '���������� ���� name'
) ENGINE=ARCHIVE;


DELIMITER $$

DROP TRIGGER IF EXISTS insert_logs_users;
CREATE TRIGGER insert_logs_users AFTER INSERT ON users
FOR EACH ROW
begin
	insert into logs (created_at, table_name, primary_key_value, value_name)
	values (new.created_at, 'users', new.id, new.name);
end$$


DROP TRIGGER IF EXISTS shop.insert_logs_catalogs;
CREATE TRIGGER insert_logs_catalogs AFTER INSERT ON catalogs
FOR EACH ROW
begin
	insert into logs (table_name, primary_key_value, value_name)
	values ('catalogs', new.id, new.name);
end$$

DROP TRIGGER IF EXISTS insert_logs_products;
CREATE TRIGGER insert_logs_products AFTER INSERT ON products
FOR EACH ROW
begin
	insert into logs (created_at, table_name, primary_key_value, value_name)
	values (new.created_at, 'products', new.id, new.name);
end$$

DELIMITER ;

INSERT INTO `users` (`name`, `birthday_at`) VALUES
  ('����', '1988-04-29');