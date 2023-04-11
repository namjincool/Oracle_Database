select *from book;
select *from orders;
select *from customer;
--박지성이 구매한 도서의 출판사 수
select count(distinct publisher) from book b,orders o,customer c where c.custid=o.custid and b.bookid=o.bookid and c.name like '박지성';
--박지성이 구매한 도서의 이름, 가격 ,정가와 판매가격의 차이
select b.price,o.saleprice,b.price-o.saleprice from book b,orders o,customer c where c.custid=o.custid and b.bookid=o.bookid and c.name like '박지성';
--박지성이 구매하지 않은 도서의 이름 
select b.name from book b,orders o,customer c where c.custid=o.custid and b.bookid=o.bookid and c.name like '박지성';
--박지성이 구매하지 않은 도서의 이름 
select Distinct b.bookname from book b,orders o,customer c where not c.custid=o.custid and b.bookid=o.bookid and c.name like '박지성';
--주문하지 않은 고객의 이름(부속 질의 사용)
select name from customer where name not in (select c.name from customer c,orders o where c.custid=o.custid); 
--주문금액의 총액, 주문의 평균금액
select sum(saleprice),avg(saleprice) from orders;
--고객의 이름과 고객별 구매액 
select c.name,sum(saleprice)as total from customer c,orders o where c.custid=o.custid group by name;
--고객의 이름과 고객이 구매한 도서목록
select c.name,b.bookname from customer c , book b ,orders o where o.custid=c.custid and o.bookid=b.bookid;
--도서의 가격과 판매가격의 차이가 가장 많은 주문 
select *from orders o,book b where b.bookid=o.bookid and price-saleprice=(select max(price-saleprice) from book b,orders o where b.bookid=o.bookid);
--도서의 판매액 평균보다 자신의 구매액 평균이 더 높은 고객의 이름
select name,avg(saleprice) from customer,orders where customer.custid=orders.custid group by name having avg(saleprice)>(select avg(saleprice) from orders);