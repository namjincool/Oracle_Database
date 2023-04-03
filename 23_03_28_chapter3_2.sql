-- 1번 내용 --
select *from book;
select *from orders;
select *from customer;
select bookname from book where bookid=1; --도서 번호가 1인 도서의 이름 
select bookname from book where price>=20000; -- 가격이 20000원 이상인 도서의 이름 
select sum(saleprice) from orders where custid=1; -- 박지성의 총구매액
select sum(o.saleprice) from orders o,customer c where c.custid=o.custid and c.name like '박지성'; --박지성의 총구매액
select count(*) from orders where custid=1; -- 박지성이 구매한 도서의 수 
select count(*) from orders o,customer c where c.custid=o.custid and c.name like '박지성'; --박지성이 구매한 도서의 수 
-- 1번 내용 --
-- 2번 내용 --
select *from book;
select *from orders;
select *from customer;
select count(*) from book; --마당 서점 도서의 총수 
select count(Distinct publisher) from book; -- 마당서점에 도서를 출간하는 출판사의 수 
select name,address from customer; -- 고객의 이름과 주소

select orderid from orders where orderdate BETWEEN '20/07/04' AND '20/07/07'; --20년 7월 4일부터 7월 7일까지의 도서 주문 번호
select orderid from orders where orderdate NOT BETWEEN '20/07/04' AND '20/07/07'; --20년 7월 4일부터 7월 7일까지의 도서 주문 번호를 제외한 도서 주문 번호 

select name,address from customer where substr(name,0,1)='김'; --이름이 김으로 시작하는 고객의 이름과 주소  
select name,address from customer where name like '김%';
select name,address from customer where substr(name,0,1)='김' AND substr(name,-1)='아'; --이름이 김으로 시작하고 아로 끝나는 고객의 이름과 주소 
select name,address from customer where name like '김_아';
-- 2번 내용 --