-- -78�� +78�� ������ ���Ͻÿ�.
SELECT 	ABS(-78), ABS(+78) FROM Dual;
-- 4.875�� �Ҽ� ù° �ڸ����� �ݿø��� ���� ���Ͻÿ�.
SELECT	ROUND(4.875, 1) FROM Dual;
-- ���� ��� �ֹ� �ݾ��� ��� ������ �ݿø��� ���� ���Ͻÿ�.
SELECT	custid "����ȣ", ROUND(SUM(saleprice)/COUNT(*), -2) "��ձݾ�" FROM	Orders GROUP BY custid;
-- ���� ���� ���߱����� ���Ե� ������ ���󱸡��� ������ �� ���� ����� ���̽ÿ�.
SELECT	bookid, REPLACE(bookname, '�߱�', '��') bookname, publisher, price FROM Book;
--���½����������� ������ ������ ����� ������ ���� ��, ����Ʈ ���� ���̽ÿ�.
SELECT 	bookname "����", LENGTH(bookname) "���ڼ�",	LENGTHB(bookname) "����Ʈ��" FROM Book WHERE 	publisher='�½�����';
-- ���缭���� �� �߿��� ���� ��(��)�� ���� ����� �� ���̳� �Ǵ��� ���� �ο����� ���Ͻÿ�.
SELECT	SUBSTR(name, 1, 1) "��", COUNT(*) "�ο�" FROM Customer GROUP BY	SUBSTR(name, 1, 1);
-- ���缭���� �ֹ��Ϸκ��� 10�� �� ������ Ȯ���Ѵ�. �� �ֹ��� Ȯ�����ڸ� ���Ͻÿ�.
SELECT	orderid "�ֹ���ȣ", orderdate "�ֹ���", orderdate+10 "Ȯ��" FROM Orders;
-- ���缭���� 2020�� 7�� 7�Ͽ� �ֹ����� ������ �ֹ���ȣ, �ֹ���, ����ȣ, ������ȣ�� ��� ���̽ÿ�. �� �ֹ����� ��yyyy-mm-dd ���ϡ� ���·� ǥ���Ѵ�.
SELECT	orderid "�ֹ���ȣ", TO_CHAR(orderdate, 'yyyy-mm-dd dy') "�ֹ���", custid "����ȣ", bookid "������ȣ" FROM Orders
WHERE orderdate=TO_DATE('20200707', 'yyyymmdd');
-- DBMS ������ ������ ���� ��¥�� �ð�, ������ Ȯ���Ͻÿ�.
SELECT	SYSDATE, TO_CHAR(SYSDATE, 'yyyy/mm/dd dy hh24:mi:ss') "SYSDATE_1"  FROM Dual; 		
-- �̸�, ��ȭ��ȣ�� ���Ե� ������� ���̽ÿ�. ��, ��ȭ��ȣ�� ���� ���� ������ó���������� ǥ���Ͻÿ�.
SELECT	name "�̸�", NVL(phone, '����ó����') "��ȭ��ȣ" FROM Customer;
-- ����Ͽ��� ����ȣ, �̸�, ��ȭ��ȣ�� ���� �� �� ���̽ÿ�.
SELECT	ROWNUM "����", custid, name, phone FROM	Customer WHERE ROWNUM <= 2;
