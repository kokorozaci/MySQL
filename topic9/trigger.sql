/*
 *� ������� products ���� ��� ��������� ����: name � ��������� ������ � description � ��� ���������. 
 *��������� ����������� ����� ����� ��� ���� �� ���. 
 *��������, ����� ��� ���� ��������� �������������� �������� NULL �����������. 
 *��������� ��������, ��������� ����, ����� ���� �� ���� ����� ��� ��� ���� ���� ���������. 
 *��� ������� ��������� ����� NULL-�������� ���������� �������� ��������.
 */
use shop;

CREATE TRIGGER check_null_update BEFORE UPDATE ON products
for each row
begin
	IF (new.name is null and new.description is null) then 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'UPDATE canceled';
  	END IF;
end//

CREATE TRIGGER check_null_insert BEFORE insert ON products
for each row
begin
	IF (new.name is null and new.description is null) then 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT canceled';
  	END IF;
end//