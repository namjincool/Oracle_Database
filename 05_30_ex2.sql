-- 평균 주문금액 이하의 주문에 대해서 주문번호와 금액을 보이시오.
SELECT	orderid, saleprice FROM	Orders
WHERE saleprice <= (SELECT AVG(saleprice) FROM   Orders);

-- 각 고객의 평균 주문금액보다 큰 금액의 주문 내역에 대해서 주문번호, 고객번호, 금액을 보이시오.
SELECT	orderid, custid, saleprice FROM	Orders md WHERE	saleprice > (SELECT   AVG(saleprice)
FROM Orders so WHERE md.custid=so.custid);

-- ‘대한민국’에 거주하는 고객에게 판매한 도서의 총 판매액을 구하시오.
SELECT SUM(saleprice) "total" FROM	Orders WHERE custid IN 
(SELECT custid FROM Customer WHERE address LIKE '%대한민국%');

-- 3번 고객이 주문한 도서의 최고 금액보다 더 비싼 도서를 구입한 주문의 주문번호와 금액을 보이시오.
SELECT	orderid, saleprice FROM	Orders WHERE saleprice > ALL 
(SELECT saleprice FROM Orders WHERE custid='3');

-- EXISTS 연산자를 사용하여 ‘대한민국’에 거주하는 고객에게 판매한 도서의 총 판매액을 구하시오.
SELECT	SUM(saleprice) "total" FROM	Orders od WHERE	EXISTS 
(SELECT  * FROM Customer cs WHERE address LIKE '%대한민국%' AND cs.custid=od.custid);