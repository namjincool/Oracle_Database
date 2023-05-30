-- ��� �ֹ��ݾ� ������ �ֹ��� ���ؼ� �ֹ���ȣ�� �ݾ��� ���̽ÿ�.
SELECT	orderid, saleprice FROM	Orders
WHERE saleprice <= (SELECT AVG(saleprice) FROM   Orders);

-- �� ���� ��� �ֹ��ݾ׺��� ū �ݾ��� �ֹ� ������ ���ؼ� �ֹ���ȣ, ����ȣ, �ݾ��� ���̽ÿ�.
SELECT	orderid, custid, saleprice FROM	Orders md WHERE	saleprice > (SELECT   AVG(saleprice)
FROM Orders so WHERE md.custid=so.custid);

-- �����ѹα����� �����ϴ� ������ �Ǹ��� ������ �� �Ǹž��� ���Ͻÿ�.
SELECT SUM(saleprice) "total" FROM	Orders WHERE custid IN 
(SELECT custid FROM Customer WHERE address LIKE '%���ѹα�%');

-- 3�� ���� �ֹ��� ������ �ְ� �ݾ׺��� �� ��� ������ ������ �ֹ��� �ֹ���ȣ�� �ݾ��� ���̽ÿ�.
SELECT	orderid, saleprice FROM	Orders WHERE saleprice > ALL 
(SELECT saleprice FROM Orders WHERE custid='3');

-- EXISTS �����ڸ� ����Ͽ� �����ѹα����� �����ϴ� ������ �Ǹ��� ������ �� �Ǹž��� ���Ͻÿ�.
SELECT	SUM(saleprice) "total" FROM	Orders od WHERE	EXISTS 
(SELECT  * FROM Customer cs WHERE address LIKE '%���ѹα�%' AND cs.custid=od.custid);