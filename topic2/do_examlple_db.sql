/*������������ ������� �� ���� ����������� �Ĕ
�������� ���� ������ example, ���������� � ��� ������� users, 
��������� �� ���� ��������, ��������� id � ���������� name.
*/

create database if not exists example;
show databases;
use example
drop table if exists users;
create table users(
  id INT unsigned not NULL,
  name VARCHAR(255)
 );
show tables;
select * from users;