select *from book;
select *from orders;
select *from customer;
select c.name,o.saleprice from customer c left OUTER JOIN orders o ON c.custid=o.custid;
select c.name,o.saleprice from customer c ,orders o where c.custid=o.custid(+);
--���� ��� ������ �̸� �� ���� 
select bookname from book where price=(select max(price) from book);
--������ ������ ���� �ִ� ���� �̸��� �˻� 
select name from customer where custid in (select  custid from orders);
--���ǻ� ���� ���ǻ��� ��� ���� ���ݺ��� ��� ���� ���ϱ� 
select b1.bookname from book b1 where b1.price > (select avg(b2.price) from book b2 where b2.publisher=b1.publisher);