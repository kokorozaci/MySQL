/*
 � ������� ��������� ������� storehouses_products � ���� 
 value ����� ����������� ����� ������ �����: 0, ���� ����� 
 ���������� � ���� ����, ���� �� ������ ������� ������. 
 ���������� ������������� ������ ����� �������, ����� ��� 
 ���������� � ������� ���������� �������� value. 
 ������, ������� ������ ������ ���������� � �����, ����� ���� 
 �������.
 */

use shop;

/*
INSERT INTO storehouses_products
  (value)
VALUES
  (0),
  (2500),
  (0),
  (30),
  (500),
  (1);
*/
select 
   value
FROM
  storehouses_products
ORDER BY
  value = 0 , value;