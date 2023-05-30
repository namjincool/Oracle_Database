-- -78과 +78의 절댓값을 구하시오.
SELECT 	ABS(-78), ABS(+78) FROM Dual;
-- 4.875를 소수 첫째 자리까지 반올림한 값을 구하시오.
SELECT	ROUND(4.875, 1) FROM Dual;
-- 고객별 평균 주문 금액을 백원 단위로 반올림한 값을 구하시오.
SELECT	custid "고객번호", ROUND(SUM(saleprice)/COUNT(*), -2) "평균금액" FROM	Orders GROUP BY custid;
-- 도서 제목에 ‘야구’가 포함된 도서를 ‘농구’로 변경한 후 도서 목록을 보이시오.
SELECT	bookid, REPLACE(bookname, '야구', '농구') bookname, publisher, price FROM Book;
--‘굿스포츠’에서 출판한 도서의 제목과 제목의 글자 수, 바이트 수를 보이시오.
SELECT 	bookname "제목", LENGTH(bookname) "글자수",	LENGTHB(bookname) "바이트수" FROM Book WHERE 	publisher='굿스포츠';
-- 마당서점의 고객 중에서 같은 성(姓)을 가진 사람이 몇 명이나 되는지 성별 인원수를 구하시오.
SELECT	SUBSTR(name, 1, 1) "성", COUNT(*) "인원" FROM Customer GROUP BY	SUBSTR(name, 1, 1);
-- 마당서점은 주문일로부터 10일 후 매출을 확정한다. 각 주문의 확정일자를 구하시오.
SELECT	orderid "주문번호", orderdate "주문일", orderdate+10 "확정" FROM Orders;
-- 마당서점이 2020년 7월 7일에 주문받은 도서의 주문번호, 주문일, 고객번호, 도서번호를 모두 보이시오. 단 주문일은 ‘yyyy-mm-dd 요일’ 형태로 표시한다.
SELECT	orderid "주문번호", TO_CHAR(orderdate, 'yyyy-mm-dd dy') "주문일", custid "고객번호", bookid "도서번호" FROM Orders
WHERE orderdate=TO_DATE('20200707', 'yyyymmdd');
-- DBMS 서버에 설정된 현재 날짜와 시간, 요일을 확인하시오.
SELECT	SYSDATE, TO_CHAR(SYSDATE, 'yyyy/mm/dd dy hh24:mi:ss') "SYSDATE_1"  FROM Dual; 		
-- 이름, 전화번호가 포함된 고객목록을 보이시오. 단, 전화번호가 없는 고객은 ‘연락처없음’으로 표시하시오.
SELECT	name "이름", NVL(phone, '연락처없음') "전화번호" FROM Customer;
-- 고객목록에서 고객번호, 이름, 전화번호를 앞의 두 명만 보이시오.
SELECT	ROWNUM "순번", custid, name, phone FROM	Customer WHERE ROWNUM <= 2;
