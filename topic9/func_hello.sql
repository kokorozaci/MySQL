/*
 �������� �������� ������� hello(), ������� ����� ���������� �����������, 
 � ����������� �� �������� ������� �����. 
 � 6:00 �� 12:00 ������� ������ ���������� ����� "������ ����", 
 � 12:00 �� 18:00 ������� ������ ���������� ����� "������ ����", 
 � 18:00 �� 00:00 � "������ �����", � 00:00 �� 6:00 � "������ ����"
 */
DELIMITER //

-- � ������� ��������, ��� ������ �� ���

drop function if exists hello//

create function hello ()
RETURNS TEXT DETERMINISTIC
begin
	declare dat int;
	set dat = hour(now());
	if(dat >= 6 and dat <= 12) then return '������ ����';
	elseif(dat >= 13 and dat <= 18) then return '������ ����';
	elseif(dat >= 19) then return '������ �����';
	else
		return '������ ����';
	end if;
end//

select hello()//

