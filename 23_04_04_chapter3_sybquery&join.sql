select *from book;
select *from orders;
select *from customer;
select c.name,o.saleprice from customer c left OUTER JOIN orders o ON c.custid=o.custid;
select c.name,o.saleprice from customer c ,orders o where c.custid=o.custid(+);
--가장 비싼 도서의 이름 및 가격 
select bookname from book where price=(select max(price) from book);
--도서를 구매한 적이 있는 고객의 이름을 검색 
select name from customer where custid in (select  custid from orders);
--출판사 별로 출판사의 평균 도서 가격보다 비싼 도서 구하기 
select b1.bookname from book b1 where b1.price > (select avg(b2.price) from book b2 where b2.publisher=b1.publisher);