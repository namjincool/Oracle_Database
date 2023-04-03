select *from book;
select *from orders;
select *from customer;
-- 1번 내용 --
select bookname from book where bookid=1;
select bookname from book where price>=20000;
select sum(saleprice) from orders where custid=1;
select sum(o.saleprice) from orders o,customer c where c.custid=o.custid and c.name like '박지성';
select count(*) from orders where custid=1;
select count(*) from orders o,customer c where c.custid=o.custid and c.name like '박지성';
--아래부터 5번 

-- 1번 내용 --
-- 2번 내용 --
select count(*) from book;
select count(Distinct publisher) from book;
select name,address from customer;

select orderid from orders where orderdate BETWEEN '20/07/04' AND '20/07/07';
select orderid from orders where orderdate NOT BETWEEN '20/07/04' AND '20/07/07';

select name,address from customer where substr(name,0,1)='김';
select name,address from customer where substr(name,0,1)='김' AND substr(name,-1)='아';
-- 2번 내용 --