-- ��� ������ �̸��� ��ġ�� ���̽ÿ� 
CREATE TABLE ����(
    �����ȣ NUMBER primary key,
    �����̸� VARCHAR(10),
    ��ġ VARCHAR(10)
);
ALTER TABLE ���� ADD CONSTRAINT emp_pk PRIMARY KEY (�����ȣ)
CREATE TABLE �󿵰�(
    �����ȣ NUMBER not null,
    �󿵰���ȣ NUMBER,
    ��ȭ���� VARCHAR(10),
    ���� NUMBER,
    �¼��� NUMBER,
    primary key(�����ȣ,�󿵰���ȣ),
    foreign key(�����ȣ) REFERENCES ����(�����ȣ) ON DELETE CASCADE
);
CREATE TABLE ����(
    �����ȣ NUMBER not null,
    �󿵰���ȣ NUMBER not null,
    ����ȣ NUMBER not null,
    �¼���ȣ NUMBER,
    ��¥ DATE,
    foreign key(�����ȣ,�󿵰���ȣ) REFERENCES �󿵰�(�����ȣ,�󿵰���ȣ) ON DELETE CASCADE,
    foreign key(����ȣ) REFERENCES ��(����ȣ) ON DELETE CASCADE
);
CREATE TABLE ��(
    ����ȣ NUMBER primary key,
    �̸� VARCHAR(10),
    �ּ� VARCHAR(10)
);
select *from "����";
select *from "��"; 
select *from "�󿵰�";
select *from "����";
--���� �̹� insert������ ���� ���� 
--1.��� ������ �̸��� ��ġ�� ���̽ÿ�
SELECT �����̸�,��ġ FROM ����;
--2.��ǿ� �ִ� ������ ���̽ÿ�
SELECT �����̸� FROM ���� WHERE ��ġ='���';
--3.��ǿ� ��� ���� �̸��� ������������ ���̽ÿ�
SELECT �̸� FROM �� WHERE �ּ�= '���' ORDER BY �̸� DESC;
--4.������ 8.000�������� ��ȭ�� �ع��ȣ,�󿵰� ��ȣ,��ȭ������ ���̽ÿ�
SELECT �����ȣ,�󿵰���ȣ,��ȭ���� FROM �󿵰� WHERE ����<=8000;
--5.������ġ�� ���� �ּҰ� ���� ���� ���̽ÿ�
SELECT * FROM ��,���� WHERE ��.�ּ� = ����.��ġ;

--1. ������ ���� ��ΰ�
SELECT COUNT(*) FROM  ����;
--2.�󿵵Ǵ� ��ȭ�� ��� ������ ���ΰ�
SELECT AVG(����) FROM �󿵰�;
--3.2020�� 9��1�Ͽ� ��ȭ�� ������ ���� ���� ���ΰ�
SELECT COUNT(�̸�) FROM ����,�� WHERE ����.����ȣ=��.����ȣ AND ��¥='20-09-01';

--1.'����'���忡�� �󿵵� ��ȭ������ ���ÿ�
SELECT �󿵰�.��ȭ���� FROM �󿵰� , ���� WHERE ����.�����ȣ = �󿵰�.�����ȣ AND �����̸� ='����';
--2.���� ���忡�� ��ȭ�� �� ���� �̸��� ���̽ÿ�
SELECT ��.�̸� FROM ����,����,�� WHERE ����.�����ȣ=����.�����ȣ AND ����.����ȣ=��.����ȣ AND �����̸� ='����';

--3.���� ������ ��ü ������ ���̽ÿ�
SELECT SUM(����) FROM �󿵰�,����,���� WHERE ����.�����ȣ = �󿵰�.�����ȣ AND ����.�󿵰���ȣ=�󿵰�.�󿵰���ȣ AND �����̸�='����';

--1.���庰 �󿵰����� ���̽ÿ�
SELECT �����̸�,COUNT(�󿵰���ȣ) FROM ����,�󿵰� WHERE ����.�����ȣ = �󿵰�.�����ȣ GROUP BY �����̸�;

--2.'���'���ִ� ������ �󿵰��� ���̽ÿ�
SELECT �󿵰���ȣ FROM ���� , �󿵰� WHERE ����.�����ȣ = �󿵰�.�����ȣ AND ����.��ġ='���';
--3.2020-09-01���� ���庰 ��� ���� ������ ���̽ÿ�
SELECT  AVG(COUNT(����ȣ)) FROM ���� WHERE ��¥='20-09-01' GROUP BY ����ȣ;

--4.2020-09-01���� ���� ���� ���� ������ ��ȭ�� ���̽ÿ�
SELECT ��ȭ���� FROM �󿵰�
WHERE (�����ȣ, �󿵰���ȣ) IN (
  SELECT �����ȣ, �󿵰���ȣ
  FROM ����
  WHERE ��¥ = '2020-09-01'
)GROUP BY ��ȭ����


    

