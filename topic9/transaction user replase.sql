/*
 *� ���� ������ shop � sample ������������ ���� � �� �� �������, ������� ���� ������. 
 *����������� ������ id = 1 �� ������� shop.users � ������� sample.users. 
 *����������� ����������.
 */

START TRANSACTION;

INSERT INTO
  sample.users
SELECT
  id, name 
FROM
  shop.users
where id = 1;

delete from shop.users where id = 1;

COMMIT;